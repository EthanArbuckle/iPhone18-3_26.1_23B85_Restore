@interface PKCloudRecordAssetURL
- (PKCloudRecordAssetURL)initWithCoder:(id)coder;
- (PKCloudRecordAssetURL)initWithRecords:(id)records;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)assetData;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordAssetURL

- (PKCloudRecordAssetURL)initWithRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v18.receiver = self;
  v18.super_class = PKCloudRecordAssetURL;
  v5 = [(PKCloudRecordObject *)&v18 initWithRecords:recordsCopy];
  v6 = v5;
  if (v5)
  {
    v5->_fd = -1;
    anyObject = [recordsCopy anyObject];
    recordType = [anyObject recordType];
    v9 = [recordType isEqualToString:@"RemoteAsset"];

    if (v9)
    {
      v10 = [anyObject objectForKey:@"asset"];
      v11 = v10;
      if (v10)
      {
        fileURL = [v10 fileURL];
        v13 = open([fileURL fileSystemRepresentation], 4);
        if (v13 < 0)
        {
          v16 = PKLogFacilityTypeGetObject(0xAuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = fileURL;
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
        fileURL = PKLogFacilityTypeGetObject(0xAuLL);
        if (os_log_type_enabled(fileURL, OS_LOG_TYPE_DEFAULT))
        {
          recordID = [anyObject recordID];
          recordName = [recordID recordName];
          *buf = 138412290;
          v20 = recordName;
          _os_log_impl(&dword_1AD337000, fileURL, OS_LOG_TYPE_DEFAULT, "There is no asset associated with recordName: %@.", buf, 0xCu);
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

- (PKCloudRecordAssetURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAssetURL;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fd"];
    v7 = v6;
    if (v6)
    {
      v5->_fd = xpc_fd_dup(v6);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKCloudRecordAssetURL;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v6 encodeWithCoder:coderCopy];
  v5 = xpc_fd_create(self->_fd);
  [coderCopy encodeXPCObject:v5 forKey:{@"fd", v6.receiver, v6.super_class}];
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordAssetURL *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAssetURL;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
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

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (itemCopy)
  {
    [string appendFormat:@"fd: %d", self->_fd];
  }

  return v6;
}

@end