@interface CKSnapshot
+ (IMColorComponents)_colorComponentsFromImageData:(id)data;
+ (IMColorComponents)_colorComponentsFromString:(id)string;
+ (id)_encodeCGImageSource:(CGImageSource *)source withColorComponents:(IMColorComponents)components;
+ (id)_encodeData:(id)data withColorComponents:(IMColorComponents)components;
+ (id)_snapshotKeyWithGUID:(id)d interfaceStyle:(int64_t)style additionalIdentifier:(id)identifier;
+ (id)preLuckSnapshotWithGUID:(id)d interfaceStyle:(int64_t)style dataURL:(id)l;
+ (id)snapshotWithGUID:(id)d interfaceStyle:(int64_t)style dataURL:(id)l;
+ (id)snapshotWithGUID:(id)d interfaceStyle:(int64_t)style image:(id)image messageTintColor:(IMColorComponents)color;
- (CKSnapshot)initWithGUID:(id)d interfaceStyle:(int64_t)style image:(id)image messageTintColor:(IMColorComponents)color;
- (IMColorComponents)messageTintColor;
- (id)createEncodedData;
- (id)key;
@end

@implementation CKSnapshot

- (CKSnapshot)initWithGUID:(id)d interfaceStyle:(int64_t)style image:(id)image messageTintColor:(IMColorComponents)color
{
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
  dCopy = d;
  imageCopy = image;
  v19.receiver = self;
  v19.super_class = CKSnapshot;
  v16 = [(CKSnapshot *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_guid, d);
    objc_storeStrong(&v17->_image, image);
    v17->_messageTintColor.red = red;
    v17->_messageTintColor.green = green;
    v17->_messageTintColor.blue = blue;
    v17->_messageTintColor.alpha = alpha;
    v17->_userInterfaceStyle = style;
  }

  return v17;
}

+ (id)snapshotWithGUID:(id)d interfaceStyle:(int64_t)style dataURL:(id)l
{
  dCopy = d;
  v9 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v11 = [[v9 alloc] initWithContentsOfURL:lCopy options:1 error:0];

  if (v11)
  {
    v12 = [MEMORY[0x1E69DCAB8] ckImageWithData:v11];
    [self _colorComponentsFromImageData:v11];
    v13 = [self snapshotWithGUID:dCopy interfaceStyle:style image:v12 messageTintColor:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)preLuckSnapshotWithGUID:(id)d interfaceStyle:(int64_t)style dataURL:(id)l
{
  v5 = [self snapshotWithGUID:d interfaceStyle:style dataURL:l];
  [v5 setPreLuckSnapshot:1];

  return v5;
}

+ (id)snapshotWithGUID:(id)d interfaceStyle:(int64_t)style image:(id)image messageTintColor:(IMColorComponents)color
{
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
  imageCopy = image;
  dCopy = d;
  alpha = [[CKSnapshot alloc] initWithGUID:dCopy interfaceStyle:style image:imageCopy messageTintColor:red, green, blue, alpha];

  return alpha;
}

- (id)createEncodedData
{
  image = [(CKSnapshot *)self image];
  v4 = UIImagePNGRepresentation(image);

  [(CKSnapshot *)self messageTintColor];
  v5 = [CKSnapshot _encodeData:v4 withColorComponents:?];

  return v5;
}

- (id)key
{
  guid = [(CKSnapshot *)self guid];
  userInterfaceStyle = [(CKSnapshot *)self userInterfaceStyle];
  if ([(CKSnapshot *)self isPreLuckSnapshot])
  {
    v5 = @"PL";
  }

  else
  {
    v5 = 0;
  }

  v6 = [CKSnapshot _snapshotKeyWithGUID:guid interfaceStyle:userInterfaceStyle additionalIdentifier:v5];

  return v6;
}

+ (id)_snapshotKeyWithGUID:(id)d interfaceStyle:(int64_t)style additionalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  if ([identifierCopy length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d-%@", dCopy, style, identifierCopy];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", dCopy, style, v11];
  }
  v9 = ;

  return v9;
}

+ (id)_encodeData:(id)data withColorComponents:(IMColorComponents)components
{
  alpha = components.alpha;
  blue = components.blue;
  green = components.green;
  red = components.red;
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = CGImageSourceCreateWithData(dataCopy, 0);
  Status = CGImageSourceGetStatus(v10);
  Count = CGImageSourceGetCount(v10);
  v13 = Count;
  if (Status || Count != 1)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(3);
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v20 = Status;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Invalid image source for image: %d %zu", buf, 0x12u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v17 = Status;
      v18 = v13;
      _CKLogExternal();
    }
  }

  v15 = [self _encodeCGImageSource:v10 withColorComponents:{red, green, blue, alpha, v17, v18}];
  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

+ (id)_encodeCGImageSource:(CGImageSource *)source withColorComponents:(IMColorComponents)components
{
  alpha = components.alpha;
  blue = components.blue;
  green = components.green;
  red = components.red;
  v10 = CGImageSourceCopyMetadataAtIndex(source, 0, 0);
  if (v10)
  {
    v11 = v10;
    MutableCopy = CGImageMetadataCreateMutableCopy(v10);
    CFRelease(v11);
  }

  else
  {
    MutableCopy = CGImageMetadataCreateMutable();
  }

  err = 0;
  v13 = [self _stringFromColorComponents:{red, green, blue, alpha}];
  if (CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, @"http://ns.apple.com/Messages/1.0/", @"messages", &err))
  {
    v14 = CGImageMetadataTagCreate(@"http://ns.apple.com/Messages/1.0/", @"messages", @"msgTintColor", kCGImageMetadataTypeString, v13);
    Mutable = 0;
    if (CGImageMetadataSetTagWithPath(MutableCopy, 0, @"messages:msgTintColor", v14))
    {
      Mutable = CFDataCreateMutable(0, 0);
      identifier = [*MEMORY[0x1E6982F28] identifier];
      v17 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
      CGImageDestinationAddImageAndMetadata(v17, ImageAtIndex, MutableCopy, 0);
      CGImageDestinationFinalize(v17);
      if (ImageAtIndex)
      {
        CFRelease(ImageAtIndex);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(3);
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Unable to create XMP Tag for messageTintColor", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(3);
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Unable to set XMP Tag for messageTintColor", v22, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    Mutable = 0;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return Mutable;
}

+ (IMColorComponents)_colorComponentsFromImageData:(id)data
{
  v4 = *MEMORY[0x1E69A6E08];
  v5 = *(MEMORY[0x1E69A6E08] + 8);
  v6 = *(MEMORY[0x1E69A6E08] + 16);
  v7 = *(MEMORY[0x1E69A6E08] + 24);
  v8 = CGImageSourceCreateWithData(data, 0);
  v9 = CGImageSourceCopyMetadataAtIndex(v8, 0, 0);
  if (v9)
  {
    v10 = v9;
    v11 = CGImageMetadataCopyTagWithPath(v9, 0, @"messages:msgTintColor");
    if (v11)
    {
      v12 = v11;
      v13 = CGImageMetadataTagCopyValue(v11);
      CFRelease(v12);
      if (v13)
      {
        [self _colorComponentsFromString:v13];
        v4 = v14;
        v5 = v15;
        v6 = v16;
        v7 = v17;
        CFRelease(v13);
LABEL_12:
        CFRelease(v10);
        goto LABEL_13;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "Metadata exists, but no value found for messageTintColor";
      v20 = buf;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v27 = 0;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "Unable to get metadata tag for messageTintColor";
      v20 = &v27;
    }

    _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 2u);
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 0;
    _os_log_impl(&dword_19020E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to get metadata object while trying to get messageTintColor", v25, 2u);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  result.alpha = v24;
  result.blue = v23;
  result.green = v22;
  result.red = v21;
  return result;
}

+ (IMColorComponents)_colorComponentsFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [lowercaseString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v6 = [v5 componentsSeparatedByString:{@", "}];
  if ([v6 count] == 4)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v6 objectAtIndexedSubscript:1];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v6 objectAtIndexedSubscript:2];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v6 objectAtIndexedSubscript:3];
    [v16 doubleValue];
    v18 = v17;
  }

  else
  {
    v9 = *MEMORY[0x1E69A6E08];
    v12 = *(MEMORY[0x1E69A6E08] + 8);
    v15 = *(MEMORY[0x1E69A6E08] + 16);
    v18 = *(MEMORY[0x1E69A6E08] + 24);
  }

  v19 = v9;
  v20 = v12;
  v21 = v15;
  v22 = v18;
  result.alpha = v22;
  result.blue = v21;
  result.green = v20;
  result.red = v19;
  return result;
}

- (IMColorComponents)messageTintColor
{
  red = self->_messageTintColor.red;
  green = self->_messageTintColor.green;
  blue = self->_messageTintColor.blue;
  alpha = self->_messageTintColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

@end