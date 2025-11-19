@interface REVideoRequestOptions
- (REVideoRequestOptions)initWithCoder:(id)a3;
- (REVideoRequestOptions)initWithReceiverEndpoint:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REVideoRequestOptions

- (REVideoRequestOptions)initWithReceiverEndpoint:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = REVideoRequestOptions;
  v6 = [(REResourceRequestOptions *)&v13 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_receiverEndpoint, a3), !v7->_receiverEndpoint))
  {
    v10 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_FAULT, "Expected a non-nil video receiver endpoint", v12, 2u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (REVideoRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = REVideoRequestOptions;
  v5 = [(REResourceRequestOptions *)&v16 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "Expected to decode an REVideoRequestOptions from an NSXPCCoder", v15, 2u);
    }

    goto LABEL_11;
  }

  v7 = v4;
  v8 = [v7 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"receiverEndpoint"];
  receiverEndpoint = v5->_receiverEndpoint;
  v5->_receiverEndpoint = v8;

  if (!v5->_receiverEndpoint)
  {
    v13 = *re::assetTypesLogObjects(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Failed to decode video receiver endpoint", v15, 2u);
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v11 = v5;
LABEL_12:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 encodeXPCObject:self->_receiverEndpoint forKey:@"receiverEndpoint"];
  }

  else
  {
    v6 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Expected to encode an REVideoRequestOptions into an NSXPCCoder", v7, 2u);
    }
  }
}

@end