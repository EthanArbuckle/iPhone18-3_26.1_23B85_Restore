@interface PKCloudRecordAssetURL
- (PKCloudRecordAssetURL)initWithCoder:(id)a3;
- (PKCloudRecordAssetURL)initWithRecords:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)assetData;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordAssetURL

- (PKCloudRecordAssetURL)initWithRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKCloudRecordAssetURL;
  v5 = [(PKCloudRecordObject *)&v18 initWithRecords:v4];
  v6 = v5;
  if (v5)
  {
    v5->_fd = -1;
    v7 = [v4 anyObject];
    v8 = [v7 recordType];
    v9 = [v8 isEqualToString:@"RemoteAsset"];

    if (v9)
    {
      v10 = [v7 objectForKey:@"asset"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 fileURL];
        v13 = open([v12 fileSystemRepresentation], 4);
        if (v13 < 0)
        {
          v16 = PKLogFacilityTypeGetObject(0xAuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v12;
            _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Error trying to open CloudKit remote asset file %@", buf, 0xCu);
          }
        }

        else
        {
          v6->_fd = v13;
        }
      }

      else
      {
        v12 = PKLogFacilityTypeGetObject(0xAuLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v7 recordID];
          v15 = [v14 recordName];
          *buf = 138412290;
          v20 = v15;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "There is no asset associated with recordName: %@.", buf, 0xCu);
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = PKCloudRecordAssetURL;
  [(PKCloudRecordAssetURL *)&v4 dealloc];
}

- (id)assetData
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0 && !self->_data)
  {
    memset(&v15, 0, sizeof(v15));
    v4 = fstat(fd, &v15);
    st_size = v15.st_size;
    if (!v4 && v15.st_size >= 1)
    {
      v7 = mmap(0, v15.st_size, 1, 1, self->_fd, 0);
      if (v7 != -1)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:st_size];
        data = self->_data;
        self->_data = v9;

        if (munmap(v8, st_size))
        {
          v11 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *v14 = 0;
            _os_log_fault_impl(&dword_1AD337000, v11, OS_LOG_TYPE_FAULT, "Failed to unmap file! Leaking mapping...", v14, 2u);
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to unmap file! Leaking mapping...", v14, 2u);
          }
        }
      }
    }
  }

  v12 = self->_data;

  return v12;
}

- (PKCloudRecordAssetURL)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAssetURL;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fd"];
    v7 = v6;
    if (v6)
    {
      v5->_fd = xpc_fd_dup(v6);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKCloudRecordAssetURL;
  v4 = a3;
  [(PKCloudRecordObject *)&v6 encodeWithCoder:v4];
  v5 = xpc_fd_create(self->_fd);
  [v4 encodeXPCObject:v5 forKey:{@"fd", v6.receiver, v6.super_class}];
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordAssetURL *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAssetURL;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordAssetURL *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordAssetURL;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = v5;
  if (v3)
  {
    [v5 appendFormat:@"fd: %d", self->_fd];
  }

  return v6;
}

@end