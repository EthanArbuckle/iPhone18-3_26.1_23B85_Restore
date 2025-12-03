@interface ISGenerationResponse
- (ISGenerationResponse)initWithCoder:(id)coder;
- (ISGenerationResponse)initWithData:(id)data uuid:(id)uuid validationToken:(id)token;
- (ISGenerationResponse)initWithError:(id)error;
- (NSData)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISGenerationResponse

- (ISGenerationResponse)initWithData:(id)data uuid:(id)uuid validationToken:(id)token
{
  dataCopy = data;
  uuidCopy = uuid;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = ISGenerationResponse;
  v11 = [(ISGenerationResponse *)&v15 init];
  if (v11)
  {
    [dataCopy bytes];
    [dataCopy length];
    readonly = xpc_shmem_create_readonly();
    sharedMemory = v11->_sharedMemory;
    v11->_sharedMemory = readonly;

    objc_storeStrong(&v11->_uuid, uuid);
    objc_storeStrong(&v11->_validationToken, token);
  }

  return v11;
}

- (ISGenerationResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = ISGenerationResponse;
  v6 = [(ISGenerationResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  if (error)
  {
    coderCopy = coder;
    v5 = @"error";
    validationToken = error;
  }

  else
  {
    sharedMemory = self->_sharedMemory;
    coderCopy2 = coder;
    [coderCopy2 encodeXPCObject:sharedMemory forKey:@"sharedMemory"];
    [coderCopy2 encodeObject:self->_uuid forKey:@"uuid"];
    validationToken = self->_validationToken;
    v5 = @"validationToken";
    coderCopy = coderCopy2;
  }

  [coderCopy encodeObject:validationToken forKey:v5];
}

- (ISGenerationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ISGenerationResponse;
  v5 = [(ISGenerationResponse *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    if (!v5->_error)
    {
      v8 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"sharedMemory"];
      sharedMemory = v5->_sharedMemory;
      v5->_sharedMemory = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
      uuid = v5->_uuid;
      v5->_uuid = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validationToken"];
      validationToken = v5->_validationToken;
      v5->_validationToken = v12;
    }
  }

  return v5;
}

- (NSData)data
{
  region = 0;
  v2 = xpc_shmem_map(self->_sharedMemory, &region);
  v3 = 0;
  if (region)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);
    v3 = [v5 initWithBytesNoCopy:region length:v2 deallocator:&__block_literal_global_9];
  }

  return v3;
}

@end