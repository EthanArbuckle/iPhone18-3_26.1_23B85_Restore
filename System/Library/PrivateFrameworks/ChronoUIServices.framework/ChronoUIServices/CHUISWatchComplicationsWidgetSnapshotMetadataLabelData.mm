@interface CHUISWatchComplicationsWidgetSnapshotMetadataLabelData
- (BOOL)isEqual:(id)equal;
- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithBSXPCCoder:(id)coder;
- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithData:(id)data;
- (NSData)data;
- (id)copyForEncodingAtUrlDirectory:(id)directory;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHUISWatchComplicationsWidgetSnapshotMetadataLabelData

- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CHUISWatchComplicationsWidgetSnapshotMetadataLabelData;
  v6 = [(CHUISWatchComplicationsWidgetSnapshotMetadataLabelData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (id)copyForEncodingAtUrlDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->_data)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [directoryCopy URLByAppendingPathComponent:uUIDString];

    data = self->_data;
    v20 = 0;
    LOBYTE(uUIDString) = [(NSData *)data writeToURL:v7 options:1 error:&v20];
    v9 = v20;
    if (uUIDString)
    {
      v19 = v9;
      v10 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v7 error:&v19];
      v11 = v19;

      if (v10)
      {
        v9 = v11;
        v12 = v10;
LABEL_12:
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtURL:v7 error:0];

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

    readDataToEndOfFile = [(NSFileHandle *)dataFileHandle readDataToEndOfFile];
    v6 = self->_data;
    self->_data = readDataToEndOfFile;

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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_data];
  v5 = [builder appendObject:self->_dataFileHandle];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  builder = [MEMORY[0x1E698E6A0] builder];
  data = self->_data;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__CHUISWatchComplicationsWidgetSnapshotMetadataLabelData_isEqual___block_invoke;
  v18[3] = &unk_1E85756F0;
  v7 = equalCopy;
  v19 = v7;
  v8 = [builder appendObject:data counterpart:v18];
  dataFileHandle = self->_dataFileHandle;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__CHUISWatchComplicationsWidgetSnapshotMetadataLabelData_isEqual___block_invoke_2;
  v16 = &unk_1E85756F0;
  v10 = v7;
  v17 = v10;
  v11 = [builder appendObject:dataFileHandle counterpart:&v13];
  LOBYTE(v7) = [builder isEqual];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CHUISWatchComplicationsWidgetSnapshotMetadataLabelData allocWithZone:?]];
  objc_storeStrong(&v4->_data, self->_data);
  objc_storeStrong(&v4->_dataFileHandle, self->_dataFileHandle);
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if (self->_data)
  {
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CHUISWatchComplicationsWidgetSnapshotMetadataLabelData encodeWithBSXPCCoder:v5];
    }
  }

  [coderCopy encodeObject:self->_dataFileHandle forKey:@"dataFileHandle"];
}

- (CHUISWatchComplicationsWidgetSnapshotMetadataLabelData)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CHUISWatchComplicationsWidgetSnapshotMetadataLabelData;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadataLabelData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataFileHandle"];
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