@interface CHUISWatchComplicationsWidgetSnapshotMetadataLabelData
- (BOOL)isEqual:(id)a3;
- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithBSXPCCoder:(id)a3;
- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithData:(id)a3;
- (NSData)data;
- (id)copyForEncodingAtUrlDirectory:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHUISWatchComplicationsWidgetSnapshotMetadataLabelData

- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHUISWatchComplicationsWidgetSnapshotMetadataLabelData;
  v6 = [(CHUISWatchComplicationsWidgetSnapshotMetadataLabelData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (id)copyForEncodingAtUrlDirectory:(id)a3
{
  v4 = a3;
  if (self->_data)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 URLByAppendingPathComponent:v6];

    data = self->_data;
    v20 = 0;
    LOBYTE(v6) = [(NSData *)data writeToURL:v7 options:1 error:&v20];
    v9 = v20;
    if (v6)
    {
      v19 = v9;
      v10 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v7 error:&v19];
      v11 = v19;

      if (v10)
      {
        v9 = v11;
        v12 = v10;
LABEL_12:
        v14 = [MEMORY[0x1E696AC08] defaultManager];
        [v14 removeItemAtURL:v7 error:0];

        goto LABEL_13;
      }

      v13 = CHUISLogViewController();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CHUISWatchComplicationsWidgetSnapshotMetadataLabelData copyForEncodingAtUrlDirectory:];
      }

      v9 = v11;
    }

    else
    {
      v13 = CHUISLogViewController();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CHUISWatchComplicationsWidgetSnapshotMetadataLabelData copyForEncodingAtUrlDirectory:];
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:
  v15 = [(CHUISWatchComplicationsWidgetSnapshotMetadataLabelData *)self copy];
  v16 = v15[1];
  v15[1] = 0;

  v17 = v15[2];
  v15[2] = v12;

  return v15;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    dataFileHandle = self->_dataFileHandle;
    if (!dataFileHandle)
    {
      goto LABEL_5;
    }

    v5 = [(NSFileHandle *)dataFileHandle readDataToEndOfFile];
    v6 = self->_data;
    self->_data = v5;

    v7 = self->_dataFileHandle;
    self->_dataFileHandle = 0;

    data = self->_data;
  }

  dataFileHandle = data;
LABEL_5:

  return dataFileHandle;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_data];
  v5 = [v3 appendObject:self->_dataFileHandle];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builder];
  data = self->_data;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__CHUISWatchComplicationsWidgetSnapshotMetadataLabelData_isEqual___block_invoke;
  v18[3] = &unk_1E85756F0;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:data counterpart:v18];
  dataFileHandle = self->_dataFileHandle;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__CHUISWatchComplicationsWidgetSnapshotMetadataLabelData_isEqual___block_invoke_2;
  v16 = &unk_1E85756F0;
  v10 = v7;
  v17 = v10;
  v11 = [v5 appendObject:dataFileHandle counterpart:&v13];
  LOBYTE(v7) = [v5 isEqual];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CHUISWatchComplicationsWidgetSnapshotMetadataLabelData allocWithZone:?]];
  objc_storeStrong(&v4->_data, self->_data);
  objc_storeStrong(&v4->_dataFileHandle, self->_dataFileHandle);
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  if (self->_data)
  {
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CHUISWatchComplicationsWidgetSnapshotMetadataLabelData encodeWithBSXPCCoder:v5];
    }
  }

  [v4 encodeObject:self->_dataFileHandle forKey:@"dataFileHandle"];
}

- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHUISWatchComplicationsWidgetSnapshotMetadataLabelData;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadataLabelData *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataFileHandle"];
    dataFileHandle = v5->_dataFileHandle;
    v5->_dataFileHandle = v6;
  }

  return v5;
}

- (void)copyForEncodingAtUrlDirectory:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D928E000, v0, OS_LOG_TYPE_ERROR, "%s: failed to encode: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)copyForEncodingAtUrlDirectory:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D928E000, v0, OS_LOG_TYPE_ERROR, "%s: failed to create file handle: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end