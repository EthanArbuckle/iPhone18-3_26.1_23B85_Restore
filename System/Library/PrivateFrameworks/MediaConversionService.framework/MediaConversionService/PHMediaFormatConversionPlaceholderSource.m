@interface PHMediaFormatConversionPlaceholderSource
+ (id)imageSourceForFileType:(id)a3;
+ (id)videoSourceForFileType:(id)a3;
- (CGSize)imageDimensions;
- (PHMediaFormatConversionPlaceholderSource)initWithFileType:(id)a3 mediaType:(int64_t)a4;
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
  v3 = [(PHMediaFormatConversionPlaceholderSource *)self fileType];
  v4 = [v2 typeWithIdentifier:v3];
  v5 = [v4 preferredFilenameExtension];

  if (v5)
  {
    v6 = [@"IMG_0001" stringByAppendingPathExtension:v5];
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

- (PHMediaFormatConversionPlaceholderSource)initWithFileType:(id)a3 mediaType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PHMediaFormatConversionPlaceholderSource;
  v8 = [(PHMediaFormatConversionPlaceholderSource *)&v11 init];
  if (v8)
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:v8 file:@"PHMediaFormatConversion.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"fileType"}];
    }

    [(PHMediaFormatConversionPlaceholderSource *)v8 setFileType:v7];
    [(PHMediaFormatConversionContent *)v8 setMediaType:a4];
  }

  return v8;
}

+ (id)videoSourceForFileType:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileType:v4 mediaType:1];

  return v5;
}

+ (id)imageSourceForFileType:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileType:v4 mediaType:2];

  return v5;
}

@end