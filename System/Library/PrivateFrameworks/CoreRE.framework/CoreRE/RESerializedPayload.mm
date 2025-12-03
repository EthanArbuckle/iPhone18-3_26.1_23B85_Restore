@interface RESerializedPayload
- (RESerializedPayload)initWithCoder:(id)coder;
- (RESerializedPayload)initWithTypeName:(id)name serializedBytes:(const void *)bytes size:(unint64_t)size blobBytes:(const void *)blobBytes size:(unint64_t)a7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RESerializedPayload

- (RESerializedPayload)initWithTypeName:(id)name serializedBytes:(const void *)bytes size:(unint64_t)size blobBytes:(const void *)blobBytes size:(unint64_t)a7
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = RESerializedPayload;
  v14 = [(RESharedResourcePayload *)&v23 init];
  if (v14)
  {
    v15 = MEMORY[0x1E69E9668];
    v16 = MEMORY[0x1E69E9668];
    if (bytes && size)
    {
      v15 = dispatch_data_create(bytes, size, 0, 0);
    }

    v17 = MEMORY[0x1E69E9668];
    v18 = MEMORY[0x1E69E9668];
    if (blobBytes && a7)
    {
      v17 = dispatch_data_create(blobBytes, a7, 0, 0);
    }

    objc_storeStrong(&v14->_typeName, name);
    serializedData = v14->_serializedData;
    v14->_serializedData = v15;
    v20 = v15;

    blobData = v14->_blobData;
    v14->_blobData = v17;
  }

  return v14;
}

- (RESerializedPayload)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = RESerializedPayload;
  v5 = [(RESharedResourcePayload *)&v21 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
  typeName = v5->_typeName;
  v5->_typeName = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedData"];
  _createDispatchData = [v8 _createDispatchData];
  serializedData = v5->_serializedData;
  v5->_serializedData = _createDispatchData;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blobData"];
  _createDispatchData2 = [v11 _createDispatchData];
  blobData = v5->_blobData;
  v5->_blobData = _createDispatchData2;

  if (!v5->_serializedData)
  {
    v16 = *re::foundationSerializationLogObjects(v14);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }

    v17 = v5->_typeName;
    *buf = 138412290;
    v23 = v17;
    v18 = "Failed to decode serialized data object for serialized payload of type %@";
LABEL_11:
    _os_log_fault_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_8;
  }

  if (!v5->_blobData)
  {
    v16 = *re::foundationSerializationLogObjects(v14);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v20 = v5->_typeName;
    *buf = 138412290;
    v23 = v20;
    v18 = "Failed to decode blob data object for serialized payload of type %@";
    goto LABEL_11;
  }

LABEL_4:
  v15 = v5;
LABEL_9:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  typeName = self->_typeName;
  coderCopy = coder;
  [coderCopy encodeObject:typeName forKey:@"typeName"];
  [coderCopy encodeObject:self->_serializedData forKey:@"serializedData"];
  [coderCopy encodeObject:self->_blobData forKey:@"blobData"];
}

@end