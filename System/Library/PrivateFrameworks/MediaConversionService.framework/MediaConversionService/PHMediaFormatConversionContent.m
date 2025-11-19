@interface PHMediaFormatConversionContent
- (NSString)fileSignature;
- (NSString)fileType;
- (id)description;
- (id)typeFromFileExtensionWithError:(id *)a3;
- (unint64_t)length;
@end

@implementation PHMediaFormatConversionContent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHMediaFormatConversionContent *)self fileURL];
  v7 = [v6 path];
  v8 = [v3 stringWithFormat:@"<%@ %p path=%@>", v5, self, v7];

  return v8;
}

- (NSString)fileSignature
{
  v17 = *MEMORY[0x277D85DE8];
  fileSignature = self->_fileSignature;
  if (!fileSignature)
  {
    v4 = MEMORY[0x277CCA9F8];
    v5 = [(PHMediaFormatConversionContent *)self fileURL];
    v14 = 0;
    v6 = [v4 fileHandleForReadingFromURL:v5 error:&v14];
    v7 = v14;

    if (v6)
    {
      v13 = v7;
      v8 = [MEMORY[0x277D3B3E8] fingerPrintForFileDescriptor:objc_msgSend(v6 error:{"fileDescriptor"), &v13}];
      v9 = v13;

      v10 = self->_fileSignature;
      self->_fileSignature = v8;

      if (!self->_fileSignature && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to calculate file signature: %@", buf, 0xCu);
      }

      [v6 closeFile];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to read file for signature calculation: %@", buf, 0xCu);
      }

      v9 = v7;
    }

    fileSignature = self->_fileSignature;
  }

  v11 = *MEMORY[0x277D85DE8];

  return fileSignature;
}

- (NSString)fileType
{
  v2 = [(PHMediaFormatConversionContent *)self typeFromFileExtensionWithError:0];
  v3 = [v2 identifier];

  return v3;
}

- (id)typeFromFileExtensionWithError:(id *)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSURL *)self->_fileURL pathExtension];
  if ([v5 length])
  {
    if (self->_mediaType == 1)
    {
      v6 = *MEMORY[0x277CE1E00];
    }

    else
    {
      v6 = 0;
    }

    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v5 conformingToType:v6];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (a3)
    {
      v11 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"Unable to determine source media type from filename extension";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a3 = [v11 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v12];
    }

    goto LABEL_12;
  }

  if (a3)
  {
    v7 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Unable to determine source media type for filename without extension";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v7 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v6];
    *a3 = v8 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)length
{
  result = self->_length;
  if (!result)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [(PHMediaFormatConversionContent *)self fileURL];
    v6 = [v5 path];
    v8 = 0;
    v7 = [v4 attributesOfItemAtPath:v6 error:&v8];

    self->_length = [v7 fileSize];
    return self->_length;
  }

  return result;
}

@end