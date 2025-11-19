@interface CKSnapshot
+ (IMColorComponents)_colorComponentsFromImageData:(id)a3;
+ (IMColorComponents)_colorComponentsFromString:(id)a3;
+ (id)_encodeCGImageSource:(CGImageSource *)a3 withColorComponents:(IMColorComponents)a4;
+ (id)_encodeData:(id)a3 withColorComponents:(IMColorComponents)a4;
+ (id)_snapshotKeyWithGUID:(id)a3 interfaceStyle:(int64_t)a4 additionalIdentifier:(id)a5;
+ (id)preLuckSnapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 dataURL:(id)a5;
+ (id)snapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 dataURL:(id)a5;
+ (id)snapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 image:(id)a5 messageTintColor:(IMColorComponents)a6;
- (CKSnapshot)initWithGUID:(id)a3 interfaceStyle:(int64_t)a4 image:(id)a5 messageTintColor:(IMColorComponents)a6;
- (IMColorComponents)messageTintColor;
- (id)createEncodedData;
- (id)key;
@end

@implementation CKSnapshot

- (CKSnapshot)initWithGUID:(id)a3 interfaceStyle:(int64_t)a4 image:(id)a5 messageTintColor:(IMColorComponents)a6
{
  alpha = a6.alpha;
  blue = a6.blue;
  green = a6.green;
  red = a6.red;
  v14 = a3;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = CKSnapshot;
  v16 = [(CKSnapshot *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_guid, a3);
    objc_storeStrong(&v17->_image, a5);
    v17->_messageTintColor.red = red;
    v17->_messageTintColor.green = green;
    v17->_messageTintColor.blue = blue;
    v17->_messageTintColor.alpha = alpha;
    v17->_userInterfaceStyle = a4;
  }

  return v17;
}

+ (id)snapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 dataURL:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E695DEF0];
  v10 = a5;
  v11 = [[v9 alloc] initWithContentsOfURL:v10 options:1 error:0];

  if (v11)
  {
    v12 = [MEMORY[0x1E69DCAB8] ckImageWithData:v11];
    [a1 _colorComponentsFromImageData:v11];
    v13 = [a1 snapshotWithGUID:v8 interfaceStyle:a4 image:v12 messageTintColor:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)preLuckSnapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 dataURL:(id)a5
{
  v5 = [a1 snapshotWithGUID:a3 interfaceStyle:a4 dataURL:a5];
  [v5 setPreLuckSnapshot:1];

  return v5;
}

+ (id)snapshotWithGUID:(id)a3 interfaceStyle:(int64_t)a4 image:(id)a5 messageTintColor:(IMColorComponents)a6
{
  alpha = a6.alpha;
  blue = a6.blue;
  green = a6.green;
  red = a6.red;
  v12 = a5;
  v13 = a3;
  v14 = [[CKSnapshot alloc] initWithGUID:v13 interfaceStyle:a4 image:v12 messageTintColor:red, green, blue, alpha];

  return v14;
}

- (id)createEncodedData
{
  v3 = [(CKSnapshot *)self image];
  v4 = UIImagePNGRepresentation(v3);

  [(CKSnapshot *)self messageTintColor];
  v5 = [CKSnapshot _encodeData:v4 withColorComponents:?];

  return v5;
}

- (id)key
{
  v3 = [(CKSnapshot *)self guid];
  v4 = [(CKSnapshot *)self userInterfaceStyle];
  if ([(CKSnapshot *)self isPreLuckSnapshot])
  {
    v5 = @"PL";
  }

  else
  {
    v5 = 0;
  }

  v6 = [CKSnapshot _snapshotKeyWithGUID:v3 interfaceStyle:v4 additionalIdentifier:v5];

  return v6;
}

+ (id)_snapshotKeyWithGUID:(id)a3 interfaceStyle:(int64_t)a4 additionalIdentifier:(id)a5
{
  v7 = a5;
  v8 = a3;
  if ([v7 length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d-%@", v8, a4, v7];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", v8, a4, v11];
  }
  v9 = ;

  return v9;
}

+ (id)_encodeData:(id)a3 withColorComponents:(IMColorComponents)a4
{
  alpha = a4.alpha;
  blue = a4.blue;
  green = a4.green;
  red = a4.red;
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = CGImageSourceCreateWithData(v9, 0);
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

  v15 = [a1 _encodeCGImageSource:v10 withColorComponents:{red, green, blue, alpha, v17, v18}];
  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

+ (id)_encodeCGImageSource:(CGImageSource *)a3 withColorComponents:(IMColorComponents)a4
{
  alpha = a4.alpha;
  blue = a4.blue;
  green = a4.green;
  red = a4.red;
  v10 = CGImageSourceCopyMetadataAtIndex(a3, 0, 0);
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
  v13 = [a1 _stringFromColorComponents:{red, green, blue, alpha}];
  if (CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, @"http://ns.apple.com/Messages/1.0/", @"messages", &err))
  {
    v14 = CGImageMetadataTagCreate(@"http://ns.apple.com/Messages/1.0/", @"messages", @"msgTintColor", kCGImageMetadataTypeString, v13);
    Mutable = 0;
    if (CGImageMetadataSetTagWithPath(MutableCopy, 0, @"messages:msgTintColor", v14))
    {
      Mutable = CFDataCreateMutable(0, 0);
      v16 = [*MEMORY[0x1E6982F28] identifier];
      v17 = CGImageDestinationCreateWithData(Mutable, v16, 1uLL, 0);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
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

+ (IMColorComponents)_colorComponentsFromImageData:(id)a3
{
  v4 = *MEMORY[0x1E69A6E08];
  v5 = *(MEMORY[0x1E69A6E08] + 8);
  v6 = *(MEMORY[0x1E69A6E08] + 16);
  v7 = *(MEMORY[0x1E69A6E08] + 24);
  v8 = CGImageSourceCreateWithData(a3, 0);
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
        [a1 _colorComponentsFromString:v13];
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

+ (IMColorComponents)_colorComponentsFromString:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

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