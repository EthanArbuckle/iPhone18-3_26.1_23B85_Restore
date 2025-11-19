@interface IMNicknameAvatarImage
- (BOOL)_writeImageData:(id)a3 path:(id)a4 error:(id *)a5;
- (BOOL)hasImage;
- (BOOL)imageExists;
- (IMNicknameAvatarImage)initWithCoder:(id)a3;
- (IMNicknameAvatarImage)initWithDictionaryRepresentation:(id)a3;
- (IMNicknameAvatarImage)initWithImageName:(id)a3 imageData:(id)a4 imageFilePath:(id)a5 contentIsSensitive:(BOOL)a6 error:(id *)a7;
- (IMNicknameAvatarImage)initWithImageName:(id)a3 imageFilePath:(id)a4 contentIsSensitive:(BOOL)a5;
- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)a3;
- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)a3 imageData:(id)a4 imageFilePath:(id)a5 contentIsSensitive:(BOOL)a6 error:(id *)a7;
- (id)dictionaryRepresentation;
- (id)imageData;
- (id)publicDictionaryMetadataRepresentation;
- (id)publicDictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMNicknameAvatarImage

- (IMNicknameAvatarImage)initWithImageName:(id)a3 imageFilePath:(id)a4 contentIsSensitive:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = IMNicknameAvatarImage;
  v10 = [(IMNicknameAvatarImage *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    imageName = v10->_imageName;
    v10->_imageName = v11;

    v13 = [v9 copy];
    imageFilePath = v10->_imageFilePath;
    v10->_imageFilePath = v13;

    v10->_contentIsSensitive = a5;
  }

  return v10;
}

- (IMNicknameAvatarImage)initWithImageName:(id)a3 imageData:(id)a4 imageFilePath:(id)a5 contentIsSensitive:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a5;
  v13 = a3;
  [(IMNicknameAvatarImage *)self _writeImageData:a4 path:v12 error:a7];
  v14 = [(IMNicknameAvatarImage *)self initWithImageName:v13 imageFilePath:v12 contentIsSensitive:v8];

  return v14;
}

- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)a3
{
  v4 = [a3 objectForKey:@"imageName"];
  v5 = [(IMNicknameAvatarImage *)self initWithImageName:v4 imageFilePath:0 contentIsSensitive:0];

  return v5;
}

- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)a3 imageData:(id)a4 imageFilePath:(id)a5 contentIsSensitive:(BOOL)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a3;
  [(IMNicknameAvatarImage *)self _writeImageData:a4 path:v12 error:a7];
  self->_contentIsSensitive = a6;
  v14 = [(IMNicknameAvatarImage *)self initWithPublicDictionaryMetadataRepresentation:v13];

  if (v14)
  {
    v15 = [v12 copy];
    imageFilePath = v14->_imageFilePath;
    v14->_imageFilePath = v15;
  }

  return v14;
}

- (IMNicknameAvatarImage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"imageName"];
  v6 = [v4 objectForKey:@"imageFilePath"];
  v7 = [v4 objectForKey:@"contentIsSensitive"];

  v8 = -[IMNicknameAvatarImage initWithImageName:imageFilePath:contentIsSensitive:](self, "initWithImageName:imageFilePath:contentIsSensitive:", v5, v6, [v7 BOOLValue]);
  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  imageName = self->_imageName;
  if (imageName)
  {
    CFDictionarySetValue(v3, @"imageName", imageName);
  }

  imageFilePath = self->_imageFilePath;
  if (imageFilePath)
  {
    CFDictionarySetValue(v4, @"imageFilePath", imageFilePath);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_contentIsSensitive];
  if (v7)
  {
    CFDictionarySetValue(v4, @"contentIsSensitive", v7);
  }

  return v4;
}

- (id)publicDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  imageName = self->_imageName;
  if (imageName)
  {
    CFDictionarySetValue(v3, @"imageName", imageName);
  }

  return v4;
}

- (id)publicDictionaryMetadataRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  imageName = self->_imageName;
  if (imageName)
  {
    CFDictionarySetValue(v3, @"imageName", imageName);
  }

  return v4;
}

- (BOOL)_writeImageData:(id)a3 path:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 stringByDeletingLastPathComponent];
  IMSharedHelperEnsureDirectoryExistsAtPath(v9);

  v15 = 0;
  v10 = [v7 writeToFile:v8 options:1073741825 error:&v15];
  v11 = v15;
  if ((v10 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Failed to write avatar image data to path %@ with error %@ (imageExists will be NO)", buf, 0x16u);
      }
    }

    if (a5)
    {
      v13 = v11;
      *a5 = v11;
    }
  }

  return v10;
}

- (BOOL)hasImage
{
  v3 = [(IMNicknameAvatarImage *)self imageFilePath];
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(IMNicknameAvatarImage *)self imageFilePath];
    v6 = [v4 fileExistsAtPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageData
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_imageFilePath length])
  {
    imageFilePath = self->_imageFilePath;
    v8 = 0;
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:imageFilePath options:0 error:&v8];
    v5 = v8;
    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Error reading nickname avatar image data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)imageExists
{
  v2 = [(IMNicknameAvatarImage *)self imageFilePath];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 fileExistsAtPath:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IMNicknameAvatarImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageFilePath"];
  v7 = [v4 decodeBoolForKey:@"contentIsSensitive"];

  v8 = [(IMNicknameAvatarImage *)self initWithImageName:v5 imageFilePath:v6 contentIsSensitive:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(IMNicknameAvatarImage *)self imageName];
  [v6 encodeObject:v4 forKey:@"imageName"];

  v5 = [(IMNicknameAvatarImage *)self imageFilePath];
  [v6 encodeObject:v5 forKey:@"imageFilePath"];

  [v6 encodeBool:-[IMNicknameAvatarImage contentIsSensitive](self forKey:{"contentIsSensitive"), @"contentIsSensitive"}];
}

@end