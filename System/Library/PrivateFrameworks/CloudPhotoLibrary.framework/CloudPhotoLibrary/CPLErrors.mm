@interface CPLErrors
+ (id)cplErrorCausedBySharedSyncForError:(id)error;
+ (id)cplErrorWithCode:(int64_t)code description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description arguments:(char *)arguments;
+ (id)errorsForIdentifiers:(id)identifiers error:(id)error;
+ (id)incorrectMachineStateErrorWithReason:(id)reason;
+ (id)invalidClientCacheErrorWithReason:(id)reason;
+ (id)invalidCloudCacheErrorWithReason:(id)reason;
+ (id)posixErrorForURL:(id)l;
+ (id)posixErrorForURL:(id)l errorCode:(int)code;
+ (id)preventWipeErrorWithReason:(id)reason preventedByUser:(BOOL)user;
+ (id)unableToDeserializeRecordInStorage:(id)storage;
+ (id)unableToSerializeRecordError:(id)error inStorage:(id)storage;
+ (id)underlyingErrorWithReason:(id)reason;
@end

@implementation CPLErrors

+ (id)cplErrorCausedBySharedSyncForError:(id)error
{
  v3 = MEMORY[0x1E695DF90];
  errorCopy = error;
  v5 = [v3 alloc];
  userInfo = [errorCopy userInfo];
  v7 = [v5 initWithDictionary:userInfo];

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CPLErrorIsCausedBySharedSync"];
  v8 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v11 = [v8 errorWithDomain:domain code:code userInfo:v7];

  return v11;
}

+ (id)errorsForIdentifiers:(id)identifiers error:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  errorCopy = error;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:errorCopy forKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)preventWipeErrorWithReason:(id)reason preventedByUser:(BOOL)user
{
  userCopy = user;
  v15[1] = *MEMORY[0x1E69E9840];
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"no reason";
  }

  v14 = @"CPLErrorResetReason";
  v15[0] = reasonCopy;
  v7 = MEMORY[0x1E695DF20];
  reasonCopy2 = reason;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = @"Automatically prevented";
  if (userCopy)
  {
    v10 = @"User prevented";
  }

  v11 = [self cplErrorWithCode:1014 underlyingError:0 userInfo:v9 description:{@"%@ wipe for reason '%@'", v10, reasonCopy2}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description arguments:(char *)arguments
{
  errorCopy = error;
  infoCopy = info;
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:descriptionCopy arguments:arguments];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if (infoCopy)
  {
    [v15 addEntriesFromDictionary:infoCopy];
  }

  if (v14)
  {
    [v16 setObject:v14 forKey:*MEMORY[0x1E696A578]];
  }

  if (errorCopy)
  {
    [v16 setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CloudPhotoLibraryErrorDomain" code:code userInfo:v16];

  return v17;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description
{
  v6 = [self cplErrorWithCode:code underlyingError:error userInfo:info description:description arguments:&v9];

  return v6;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v5 = [self cplErrorWithCode:code underlyingError:error userInfo:0 description:description arguments:&v8];

  return v5;
}

+ (id)cplErrorWithCode:(int64_t)code description:(id)description
{
  v4 = [self cplErrorWithCode:code description:description arguments:&v7];

  return v4;
}

+ (id)posixErrorForURL:(id)l errorCode:(int)code
{
  v37[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!code)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v28 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Trying to create a POSIX error without any error!", &v31, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLErrors.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v30 lineNumber:143 description:@"Trying to create a POSIX error without any error!"];

    abort();
  }

  v8 = lCopy;
  v9 = strerror(code);
  if (v9 && (v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9]) != 0)
  {
    v11 = v10;
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A578];
    if (v8)
    {
      v15 = *MEMORY[0x1E696A998];
      v36[0] = *MEMORY[0x1E696A578];
      v36[1] = v15;
      v37[0] = v10;
      v37[1] = v8;
      v16 = MEMORY[0x1E695DF20];
      v17 = v37;
      v18 = v36;
      v19 = 2;
    }

    else
    {
      v34 = *MEMORY[0x1E696A578];
      v35 = v10;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v35;
      v18 = &v34;
      v19 = 1;
    }

    v25 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    v24 = [v12 errorWithDomain:v13 code:code userInfo:v25];
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A798];
    codeCopy = code;
    if (v8)
    {
      v32 = *MEMORY[0x1E696A998];
      v33 = v8;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v24 = [v20 errorWithDomain:v21 code:codeCopy userInfo:v23];
    }

    else
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:0];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)posixErrorForURL:(id)l
{
  lCopy = l;
  v5 = [self posixErrorForURL:lCopy errorCode:*__error()];

  return v5;
}

+ (id)unableToDeserializeRecordInStorage:(id)storage
{
  v4 = MEMORY[0x1E696AEC0];
  storageCopy = storage;
  v6 = [v4 alloc];
  name = [storageCopy name];

  v8 = [v6 initWithFormat:@"Unable to deserialize record in %@", name];
  v9 = [self invalidClientCacheErrorWithReason:v8];

  return v9;
}

+ (id)unableToSerializeRecordError:(id)error inStorage:(id)storage
{
  v6 = MEMORY[0x1E696AEC0];
  storageCopy = storage;
  errorCopy = error;
  v9 = [v6 alloc];
  v10 = objc_opt_class();

  name = [storageCopy name];

  v12 = [v9 initWithFormat:@"Unable to serialize %@ in %@", v10, name];
  v13 = [self invalidClientCacheErrorWithReason:v12];

  return v13;
}

+ (id)invalidCloudCacheErrorWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v9 = @"CPLErrorResetReason";
    reasonCopy = reason;
    v3 = MEMORY[0x1E695DF20];
    reasonCopy2 = reason;
    v5 = [v3 dictionaryWithObjects:&reasonCopy forKeys:&v9 count:1];
    v6 = [CPLErrors cplErrorWithCode:21 underlyingError:0 userInfo:v5 description:@"Cloud cache is invalid: %@", reasonCopy2, v9, reasonCopy, v11];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:21 description:@"Cloud cache is invalid"];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)invalidClientCacheErrorWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v9 = @"CPLErrorResetReason";
    reasonCopy = reason;
    v3 = MEMORY[0x1E695DF20];
    reasonCopy2 = reason;
    v5 = [v3 dictionaryWithObjects:&reasonCopy forKeys:&v9 count:1];
    v6 = [CPLErrors cplErrorWithCode:20 underlyingError:0 userInfo:v5 description:@"Client cache is invalid: %@", reasonCopy2, v9, reasonCopy, v11];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:20 description:@"Client cache is invalid"];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)underlyingErrorWithReason:(id)reason
{
  v3 = [self cplErrorWithCode:256 description:reason arguments:&v6];

  return v3;
}

+ (id)incorrectMachineStateErrorWithReason:(id)reason
{
  v3 = [self cplErrorWithCode:100 description:reason arguments:&v6];

  return v3;
}

@end