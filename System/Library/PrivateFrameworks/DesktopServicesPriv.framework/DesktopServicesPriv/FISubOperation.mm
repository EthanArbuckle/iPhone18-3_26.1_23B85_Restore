@interface FISubOperation
- (FIOperation)operation;
- (FISubOperation)initWithOperation:(id)operation;
- (id)isValidSuboperation:(unsigned int)suboperation callingFunc:(TString)func;
- (void)cancel;
- (void)done;
- (void)postCancelSuboperation;
@end

@implementation FISubOperation

- (FISubOperation)initWithOperation:(id)operation
{
  v15 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = FISubOperation;
  v5 = [(FISubOperation *)&v12 init];
  operationType = [operationCopy operationType];
  if (operationType <= 0xF && ((1 << operationType) & 0x8C00) != 0)
  {
    objc_storeWeak(&v5->_operation, operationCopy);
    v7 = v5;
  }

  else
  {
    operationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%s' does not support suboperations: %@", Description(operationType), operationCopy];
    v9 = LogObj(8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = operationCopy;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)isValidSuboperation:(unsigned int)suboperation callingFunc:(TString)func
{
  v32 = *MEMORY[0x1E69E9840];
  operation = [(FISubOperation *)self operation];
  operationType = [operation operationType];
  operationRef = [operation operationRef];
  if (suboperation > 19)
  {
    if (suboperation - 20 >= 3)
    {
      if (suboperation != 23)
      {
        goto LABEL_15;
      }

      v10 = operationType == 15;
    }

    else
    {
      v10 = operationType == 11;
    }
  }

  else
  {
    if (suboperation - 1 >= 8)
    {
      if (suboperation != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v10 = operationType == 10;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (operationRef)
  {
    v12 = 0;
    goto LABEL_21;
  }

LABEL_15:
  if (operationRef)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = Description(operationType);
    [v13 stringWithFormat:@"'%s' and '%s' are not compatible: %@", v14, Description(suboperation), operation];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"The operation has not been scheduled yet: %@", operation];
  }
  v15 = ;
  v12 = ErrorWithOSStatus(-8072, v15);
  *buf = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ":", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v22 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v22, *buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  v16 = TString::IndexOf(func.fString.fRef, &v22);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22);
  v17 = LogObj(8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    TString::SubString(func.fString.fRef, 0, v16, &v22);
    v18 = v22;
    v19 = Description(suboperation);
    *buf = 138544386;
    *&buf[4] = v18;
    v24 = 2082;
    v25 = v19;
    v26 = 2114;
    v27 = operation;
    v28 = 2114;
    selfCopy = self;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_ERROR, "%{public}@: %{public}s failed\n\toperation: %{public}@\n\tsuboperation: %{public}@\n\t%{public}@", buf, 0x34u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22);
  }

LABEL_21:
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)done
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = LogObj(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEFAULT, "done - %{public}@", &v5, 0xCu);
  }

  [(FISubOperation *)self postCancelSuboperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = LogObj(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEFAULT, "cancel - %{public}@", &v5, 0xCu);
  }

  [(FISubOperation *)self postCancelSuboperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)postCancelSuboperation
{
  v18 = *MEMORY[0x1E69E9840];
  operation = [(FISubOperation *)self operation];
  if ([operation operationRef])
  {
    operationType = [operation operationType];
    if (operationType == 11)
    {
      v11 = 0;
      v5 = &v11;
      [(FISubOperation *)self startFileSystemSuboperation:0xFFFFFFFFLL newAliasOrFolderName:0 propertyList:0 aliasTarget:0 error:&v11];
    }

    else
    {
      if (operationType != 15)
      {
        goto LABEL_10;
      }

      v10 = 0;
      v5 = &v10;
      [(FISubOperation *)self startTagStampingSuboperation:0xFFFFFFFFLL error:&v10];
    }

    v6 = *v5;
    if (v6)
    {
      v7 = v6;
      v8 = LogObj(8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v13 = operation;
        v14 = 2114;
        selfCopy = self;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "Cancel failed - %{public}@ %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
}

- (FIOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end