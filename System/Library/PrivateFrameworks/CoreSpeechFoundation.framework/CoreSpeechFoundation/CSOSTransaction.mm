@interface CSOSTransaction
- (CSOSTransaction)initWithDescription:(id)description;
- (void)dealloc;
@end

@implementation CSOSTransaction

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 136315394;
    v8 = "[CSOSTransaction dealloc]";
    v9 = 2114;
    v10 = description;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Release OS Transaction for %{public}@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = CSOSTransaction;
  [(CSOSTransaction *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (CSOSTransaction)initWithDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = CSOSTransaction;
  v5 = [(CSOSTransaction *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [descriptionCopy copy];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [v6 stringWithFormat:@"%@-%@", v7, uUIDString];
    description = v5->_description;
    v5->_description = v10;

    [(NSString *)v5->_description UTF8String];
    v12 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v12;

    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v5->_description;
      *buf = 136315394;
      v20 = "[CSOSTransaction initWithDescription:]";
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Creating OS Transaction for %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end