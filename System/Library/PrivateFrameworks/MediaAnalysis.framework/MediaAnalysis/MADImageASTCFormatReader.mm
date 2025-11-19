@interface MADImageASTCFormatReader
- (CGImageSource)readNextImageSource;
- (CGImageSource)readOneImageSource;
- (MADImageASTCFormatReader)initWithData:(id)a3;
- (int)readDataToBuffer:(void *)a3 Position:(unint64_t)a4 Length:(unint64_t)a5;
- (int)readPList;
@end

@implementation MADImageASTCFormatReader

- (MADImageASTCFormatReader)initWithData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MADImageASTCFormatReader;
  v6 = [(MADImageASTCFormatReader *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_dataStream, a3);
  dataStream = v7->_dataStream;
  if (dataStream)
  {
    v7->_start = 0;
    v7->_end = [(NSData *)dataStream length];
    v7->_numImagesRemaining = 0;
LABEL_4:
    v9 = v7;
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138412290;
    v15 = v10;
    v11 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] initWithFilePath: Invalid data stream", buf, 0xCu);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (int)readDataToBuffer:(void *)a3 Position:(unint64_t)a4 Length:(unint64_t)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (self->_start > a4 || ((end = self->_end, end > a4) ? (v6 = a5 + a4 > end) : (v6 = 1), v6))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = objc_opt_class();
        v7 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readDataToBuffer:Position:Length: Attempt to read beyond data limit", &v10, 0xCu);
      }

      return -18;
    }

    else
    {
      [NSData getBytes:"getBytes:range:" range:?];
      return 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readDataToBuffer:Position:Length: Invalid output buffer", &v10, 0xCu);
    }

    return -50;
  }
}

- (int)readPList
{
  v29 = *MEMORY[0x1E69E9840];
  end = self->_end;
  v24 = 0;
  v4 = [(MADImageASTCFormatReader *)self readDataToBuffer:&v24 Position:end - 4 Length:4];
  if (!v4)
  {
    if (v24 != 1129005385)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138412290;
        v26 = v8;
        v9 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readPList: Failed magic check", buf, 0xCu);
      }

      return -18;
    }

    v23 = 0;
    v4 = [(MADImageASTCFormatReader *)self readDataToBuffer:&v23 Position:end - 12 Length:8];
    if (!v4)
    {
      if (v23 == -1)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          *buf = 138412290;
          v26 = v10;
          v11 = v10;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readPList: Invalid numImagesRemaining", buf, 0xCu);
        }

        return -18;
      }

      v22 = 0;
      v5 = end - 20;
      v4 = [(MADImageASTCFormatReader *)self readDataToBuffer:&v22 Position:end - 20 Length:8];
      if (!v4)
      {
        if (v5 < v22)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v6 = objc_opt_class();
            *buf = 138412290;
            v26 = v6;
            v7 = v6;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readPList: Invalid plistLength", buf, 0xCu);
          }

          return -18;
        }

        v13 = [(NSData *)self->_dataStream subdataWithRange:v5 - v22];
        if (v13)
        {
          v14 = v22;
          v21 = 0;
          v15 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:&v21];
          v16 = v21;
          if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            self->_end = v5 - v14;
            objc_storeStrong(&self->_plist, v15);
            v4 = 0;
            self->_numImagesRemaining = v23;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v17 = objc_opt_class();
              *buf = 138412546;
              v26 = v17;
              v27 = 2112;
              v28 = v16;
              v18 = v17;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readPList: Failed to create plist with err: %@", buf, 0x16u);
            }

            v4 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            *buf = 138412290;
            v26 = v19;
            v20 = v19;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readPList: Invalid plistData", buf, 0xCu);
          }

          v4 = -18;
        }
      }
    }
  }

  return v4;
}

- (CGImageSource)readOneImageSource
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_numImagesRemaining)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = objc_opt_class();
      v7 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readOneImage: Already read out all images", buf, 0xCu);
    }

    return 0;
  }

  start = self->_start;
  v17 = 0;
  if (![(MADImageASTCFormatReader *)self readDataToBuffer:&v17 Position:start Length:8])
  {
    v4 = start + 8;
    if (v17 + start + 8 > self->_end)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = objc_opt_class();
        *buf = 138412290;
        v19 = v5;
        v6 = v5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readOneImage: Invalid imageLength", buf, 0xCu);
      }

      return 0;
    }

    v10 = [(NSData *)self->_dataStream subdataWithRange:start + 8];
    v11 = v10;
    if (v10)
    {
      v12 = v17;
      v8 = CGImageSourceCreateWithData(v10, 0);
      if (v8)
      {
        --self->_numImagesRemaining;
        self->_start = v12 + v4;
LABEL_22:

        return v8;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138412290;
        v19 = v15;
        v16 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readOneImage: Failed to create imageSource", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138412290;
      v19 = v13;
      v14 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] readOneImage: Invalid imageData", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_22;
  }

  return 0;
}

- (CGImageSource)readNextImageSource
{
  if (!self->_plist && [(MADImageASTCFormatReader *)self readPList])
  {
    return 0;
  }

  return [(MADImageASTCFormatReader *)self readOneImageSource];
}

@end