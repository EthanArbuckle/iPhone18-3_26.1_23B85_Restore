@interface DSFileOperation
- (BOOL)isEqual:(id)a3;
- (DSFileOperation)init;
- (DSFileOperation)initWithCoder:(id)a3;
- (UTType)utType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSFileOperation

- (DSFileOperation)init
{
  v6.receiver = self;
  v6.super_class = DSFileOperation;
  v2 = [(DSFileOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DSFileOperationID);
    operationID = v2->_operationID;
    v2->_operationID = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  operationID = self->_operationID;
  v5 = NSStringFromSelector(sel_operationID);
  [v10 encodeObject:operationID forKey:v5];

  dateStarted = self->_dateStarted;
  v7 = NSStringFromSelector(sel_dateStarted);
  [v10 encodeObject:dateStarted forKey:v7];

  utType = self->_utType;
  v9 = NSStringFromSelector(sel_utType);
  [v10 encodeObject:utType forKey:v9];
}

- (DSFileOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DSFileOperation;
  v5 = [(DSFileOperation *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_operationID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    operationID = v5->_operationID;
    v5->_operationID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_dateStarted);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    dateStarted = v5->_dateStarted;
    v5->_dateStarted = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_utType);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    utType = v5->_utType;
    v5->_utType = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4[1] isEqual:self->_operationID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UTType)utType
{
  v11 = *MEMORY[0x1E69E9840];
  utType = self->_utType;
  if (!utType)
  {
    v4 = LogObj(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(DSFileOperationID *)self->_operationID uuid];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Operation %{public}@ missing UTType, using generic type instead", &v9, 0xCu);
    }

    utType = *MEMORY[0x1E6982E48];
  }

  v6 = utType;
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end