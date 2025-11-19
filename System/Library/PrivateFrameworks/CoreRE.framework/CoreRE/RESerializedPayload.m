@interface RESerializedPayload
- (RESerializedPayload)initWithCoder:(id)a3;
- (RESerializedPayload)initWithTypeName:(id)a3 serializedBytes:(const void *)a4 size:(unint64_t)a5 blobBytes:(const void *)a6 size:(unint64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RESerializedPayload

- (RESerializedPayload)initWithTypeName:(id)a3 serializedBytes:(const void *)a4 size:(unint64_t)a5 blobBytes:(const void *)a6 size:(unint64_t)a7
{
  v13 = a3;
  v23.receiver = self;
  v23.super_class = RESerializedPayload;
  v14 = [(RESharedResourcePayload *)&v23 init];
  if (v14)
  {
    v15 = MEMORY[0x1E69E9668];
    v16 = MEMORY[0x1E69E9668];
    if (a4 && a5)
    {
      v15 = dispatch_data_create(a4, a5, 0, 0);
    }

    v17 = MEMORY[0x1E69E9668];
    v18 = MEMORY[0x1E69E9668];
    if (a6 && a7)
    {
      v17 = dispatch_data_create(a6, a7, 0, 0);
    }

    objc_storeStrong(&v14->_typeName, a3);
    serializedData = v14->_serializedData;
    v14->_serializedData = v15;
    v20 = v15;

    blobData = v14->_blobData;
    v14->_blobData = v17;
  }

  return v14;
}

- (RESerializedPayload)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RESerializedPayload;
  v5 = [(RESharedResourcePayload *)&v21 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
  typeName = v5->_typeName;
  v5->_typeName = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedData"];
  v9 = [v8 _createDispatchData];
  serializedData = v5->_serializedData;
  v5->_serializedData = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blobData"];
  v12 = [v11 _createDispatchData];
  blobData = v5->_blobData;
  v5->_blobData = v12;

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

- (void)encodeWithCoder:(id)a3
{
  typeName = self->_typeName;
  v5 = a3;
  [v5 encodeObject:typeName forKey:@"typeName"];
  [v5 encodeObject:self->_serializedData forKey:@"serializedData"];
  [v5 encodeObject:self->_blobData forKey:@"blobData"];
}

@end