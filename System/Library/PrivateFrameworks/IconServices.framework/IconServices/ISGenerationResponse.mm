@interface ISGenerationResponse
- (ISGenerationResponse)initWithCoder:(id)a3;
- (ISGenerationResponse)initWithData:(id)a3 uuid:(id)a4 validationToken:(id)a5;
- (ISGenerationResponse)initWithError:(id)a3;
- (NSData)data;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISGenerationResponse

- (ISGenerationResponse)initWithData:(id)a3 uuid:(id)a4 validationToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ISGenerationResponse;
  v11 = [(ISGenerationResponse *)&v15 init];
  if (v11)
  {
    [v8 bytes];
    [v8 length];
    readonly = xpc_shmem_create_readonly();
    sharedMemory = v11->_sharedMemory;
    v11->_sharedMemory = readonly;

    objc_storeStrong(&v11->_uuid, a4);
    objc_storeStrong(&v11->_validationToken, a5);
  }

  return v11;
}

- (ISGenerationResponse)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISGenerationResponse;
  v6 = [(ISGenerationResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  if (error)
  {
    v4 = a3;
    v5 = @"error";
    validationToken = error;
  }

  else
  {
    sharedMemory = self->_sharedMemory;
    v9 = a3;
    [v9 encodeXPCObject:sharedMemory forKey:@"sharedMemory"];
    [v9 encodeObject:self->_uuid forKey:@"uuid"];
    validationToken = self->_validationToken;
    v5 = @"validationToken";
    v4 = v9;
  }

  [v4 encodeObject:validationToken forKey:v5];
}

- (ISGenerationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ISGenerationResponse;
  v5 = [(ISGenerationResponse *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    if (!v5->_error)
    {
      v8 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"sharedMemory"];
      sharedMemory = v5->_sharedMemory;
      v5->_sharedMemory = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
      uuid = v5->_uuid;
      v5->_uuid = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validationToken"];
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