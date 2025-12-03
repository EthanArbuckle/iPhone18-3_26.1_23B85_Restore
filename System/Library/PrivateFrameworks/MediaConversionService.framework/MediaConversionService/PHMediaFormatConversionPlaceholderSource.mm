@interface PHMediaFormatConversionPlaceholderSource
+ (id)imageSourceForFileType:(id)type;
+ (id)videoSourceForFileType:(id)type;
- (CGSize)imageDimensions;
- (PHMediaFormatConversionPlaceholderSource)initWithFileType:(id)type mediaType:(int64_t)mediaType;
- (id)fileURL;
- (unint64_t)length;
@end

@implementation PHMediaFormatConversionPlaceholderSource

- (CGSize)imageDimensions
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ does not support %@", v6, v7}];

  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v9;
  result.width = v8;
  return result;
}

- (unint64_t)length
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ does not support %@", v6, v7}];

  return 0;
}

- (id)fileURL
{
  v2 = MEMORY[0x277CE1CB8];
  fileType = [(PHMediaFormatConversionPlaceholderSource *)self fileType];
  v4 = [v2 typeWithIdentifier:fileType];
  preferredFilenameExtension = [v4 preferredFilenameExtension];

  if (preferredFilenameExtension)
  {
    v6 = [@"IMG_0001" stringByAppendingPathExtension:preferredFilenameExtension];
    v7 = MEMORY[0x277CBEBC0];
    v8 = NSTemporaryDirectory();
    v9 = [v8 stringByAppendingPathComponent:v6];
    v10 = [v7 fileURLWithPath:v9 isDirectory:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PHMediaFormatConversionPlaceholderSource)initWithFileType:(id)type mediaType:(int64_t)mediaType
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = PHMediaFormatConversionPlaceholderSource;
  v8 = [(PHMediaFormatConversionPlaceholderSource *)&v11 init];
  if (v8)
  {
    if (!typeCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"PHMediaFormatConversion.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"fileType"}];
    }

    [(PHMediaFormatConversionPlaceholderSource *)v8 setFileType:typeCopy];
    [(PHMediaFormatConversionContent *)v8 setMediaType:mediaType];
  }

  return v8;
}

+ (id)videoSourceForFileType:(id)type
{
  typeCopy = type;
  v5 = [[self alloc] initWithFileType:typeCopy mediaType:1];

  return v5;
}

+ (id)imageSourceForFileType:(id)type
{
  typeCopy = type;
  v5 = [[self alloc] initWithFileType:typeCopy mediaType:2];

  return v5;
}

@end