@interface PKPassIngestionPayload
- (PKPassIngestionPayload)initWithCoder:(id)coder;
- (PKPassIngestionPayload)initWithFileDescriptor:(int)descriptor;
- (id)_initWithData:(id)data fileDescriptor:(id)descriptor pass:(id)pass;
- (id)createPass;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PKPassIngestionPayload

- (PKPassIngestionPayload)initWithFileDescriptor:(int)descriptor
{
  v4 = [[PKFileDescriptorXPCContainer alloc] initWithFileDescriptor:*&descriptor];
  v5 = [(PKPassIngestionPayload *)self _initWithData:0 fileDescriptor:v4 pass:0];

  return v5;
}

- (id)_initWithData:(id)data fileDescriptor:(id)descriptor pass:(id)pass
{
  dataCopy = data;
  descriptorCopy = descriptor;
  passCopy = pass;
  v15.receiver = self;
  v15.super_class = PKPassIngestionPayload;
  v12 = [(PKPassIngestionPayload *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    objc_storeStrong(p_isa + 2, descriptor);
    objc_storeStrong(p_isa + 3, pass);
  }

  return p_isa;
}

- (void)dealloc
{
  [(PKPassIngestionPayload *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKPassIngestionPayload;
  [(PKPassIngestionPayload *)&v3 dealloc];
}

- (id)createPass
{
  v24 = *MEMORY[0x1E69E9840];
  data = self->_data;
  if (!data)
  {
    fd = self->_fd;
    if (!fd)
    {
      pass = self->_pass;
      if (pass)
      {
        v2 = pass;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__62;
    v19 = __Block_byref_object_dispose__62;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__PKPassIngestionPayload_createPass__block_invoke;
    v14[3] = &unk_1E79DDFA0;
    v14[4] = buf;
    [(PKFileDescriptorXPCContainer *)fd accessFileDescriptorWithBlock:v14];
    v7 = *(v16 + 5);
    if (v7)
    {
      v13 = 0;
      v2 = [(PKObject *)PKPass createWithFileDataAccessor:v7 validationOptions:14 warnings:0 error:&v13];
      v8 = v13;
      if (v8)
      {
        v9 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v22 = 138412290;
          v23 = v8;
          _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Failed to create pass due to validation error: %@", v22, 0xCu);
        }

        goto LABEL_12;
      }

      if (!v2)
      {
LABEL_12:

        v10 = 1;
        goto LABEL_18;
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

LABEL_18:
    _Block_object_dispose(buf, 8);

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v21 = 0;
  v2 = [(PKObject *)PKPass createWithData:data warnings:0 error:&v21];
  if (v2)
  {
    goto LABEL_20;
  }

  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "Cannot add pass: pass cannot be instantiated from data.", buf, 2u);
  }

LABEL_19:
  v2 = 0;
LABEL_20:

  return v2;
}

void __36__PKPassIngestionPayload_createPass__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PKSerializedDataAccessor alloc] initWithFileDescriptor:a2 error:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)invalidate
{
  [(PKFileDescriptorXPCContainer *)self->_fd invalidate];
  fd = self->_fd;
  self->_fd = 0;

  data = self->_data;
  self->_data = 0;

  pass = self->_pass;
  self->_pass = 0;
}

- (PKPassIngestionPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPassIngestionPayload;
  v5 = [(PKPassIngestionPayload *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fd"];
    fd = v5->_fd;
    v5->_fd = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_fd forKey:@"fd"];
  if (self->_pass)
  {
    v4 = self->_data == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    archiveData = [(PKObject *)self->_pass archiveData];
    [coderCopy encodeObject:archiveData forKey:@"data"];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [coderCopy encodeObject:? forKey:?];
  }

  [coderCopy encodeObject:self->_properties forKey:@"properties"];
}

@end