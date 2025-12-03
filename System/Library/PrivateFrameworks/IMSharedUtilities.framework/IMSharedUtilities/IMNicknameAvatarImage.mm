@interface IMNicknameAvatarImage
- (BOOL)_writeImageData:(id)data path:(id)path error:(id *)error;
- (BOOL)hasImage;
- (BOOL)imageExists;
- (IMNicknameAvatarImage)initWithCoder:(id)coder;
- (IMNicknameAvatarImage)initWithDictionaryRepresentation:(id)representation;
- (IMNicknameAvatarImage)initWithImageName:(id)name imageData:(id)data imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive error:(id *)error;
- (IMNicknameAvatarImage)initWithImageName:(id)name imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive;
- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)representation;
- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)representation imageData:(id)data imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive error:(id *)error;
- (id)dictionaryRepresentation;
- (id)imageData;
- (id)publicDictionaryMetadataRepresentation;
- (id)publicDictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMNicknameAvatarImage

- (IMNicknameAvatarImage)initWithImageName:(id)name imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive
{
  nameCopy = name;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = IMNicknameAvatarImage;
  v10 = [(IMNicknameAvatarImage *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    imageName = v10->_imageName;
    v10->_imageName = v11;

    v13 = [pathCopy copy];
    imageFilePath = v10->_imageFilePath;
    v10->_imageFilePath = v13;

    v10->_contentIsSensitive = sensitive;
  }

  return v10;
}

- (IMNicknameAvatarImage)initWithImageName:(id)name imageData:(id)data imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive error:(id *)error
{
  sensitiveCopy = sensitive;
  pathCopy = path;
  nameCopy = name;
  [(IMNicknameAvatarImage *)self _writeImageData:data path:pathCopy error:error];
  v14 = [(IMNicknameAvatarImage *)self initWithImageName:nameCopy imageFilePath:pathCopy contentIsSensitive:sensitiveCopy];

  return v14;
}

- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)representation
{
  v4 = [representation objectForKey:@"imageName"];
  v5 = [(IMNicknameAvatarImage *)self initWithImageName:v4 imageFilePath:0 contentIsSensitive:0];

  return v5;
}

- (IMNicknameAvatarImage)initWithPublicDictionaryMetadataRepresentation:(id)representation imageData:(id)data imageFilePath:(id)path contentIsSensitive:(BOOL)sensitive error:(id *)error
{
  pathCopy = path;
  representationCopy = representation;
  [(IMNicknameAvatarImage *)self _writeImageData:data path:pathCopy error:error];
  self->_contentIsSensitive = sensitive;
  v14 = [(IMNicknameAvatarImage *)self initWithPublicDictionaryMetadataRepresentation:representationCopy];

  if (v14)
  {
    v15 = [pathCopy copy];
    imageFilePath = v14->_imageFilePath;
    v14->_imageFilePath = v15;
  }

  return v14;
}

- (IMNicknameAvatarImage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"imageName"];
  v6 = [representationCopy objectForKey:@"imageFilePath"];
  v7 = [representationCopy objectForKey:@"contentIsSensitive"];

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

- (BOOL)_writeImageData:(id)data path:(id)path error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  IMSharedHelperEnsureDirectoryExistsAtPath(stringByDeletingLastPathComponent);

  v15 = 0;
  v10 = [dataCopy writeToFile:pathCopy options:1073741825 error:&v15];
  v11 = v15;
  if ((v10 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = pathCopy;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Failed to write avatar image data to path %@ with error %@ (imageExists will be NO)", buf, 0x16u);
      }
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (BOOL)hasImage
{
  imageFilePath = [(IMNicknameAvatarImage *)self imageFilePath];
  if ([imageFilePath length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    imageFilePath2 = [(IMNicknameAvatarImage *)self imageFilePath];
    v6 = [defaultManager fileExistsAtPath:imageFilePath2];
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
  imageFilePath = [(IMNicknameAvatarImage *)self imageFilePath];
  if ([imageFilePath length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager fileExistsAtPath:imageFilePath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IMNicknameAvatarImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageFilePath"];
  v7 = [coderCopy decodeBoolForKey:@"contentIsSensitive"];

  v8 = [(IMNicknameAvatarImage *)self initWithImageName:v5 imageFilePath:v6 contentIsSensitive:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageName = [(IMNicknameAvatarImage *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];

  imageFilePath = [(IMNicknameAvatarImage *)self imageFilePath];
  [coderCopy encodeObject:imageFilePath forKey:@"imageFilePath"];

  [coderCopy encodeBool:-[IMNicknameAvatarImage contentIsSensitive](self forKey:{"contentIsSensitive"), @"contentIsSensitive"}];
}

@end