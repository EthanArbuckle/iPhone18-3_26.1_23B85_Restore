@interface PHMediaFormatConversionLivePhotoBundleSource
+ (id)sourceForFileURL:(id)l;
@end

@implementation PHMediaFormatConversionLivePhotoBundleSource

+ (id)sourceForFileURL:(id)l
{
  lCopy = l;
  if (![lCopy isFileURL] || (objc_msgSend(lCopy, "pathExtension"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lowercaseString"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"pvt"), v7, v6, (v8 & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:515 description:{@"Invalid parameter not satisfying: %@", @"[fileURL isFileURL] && [[[fileURL pathExtension] lowercaseString] isEqualToString:LIVE_PHOTO_BUNDLE_PATH_EXTENSION]"}];
  }

  v10 = [self sourceForFileURL:lCopy mediaType:3 imageDimensions:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  return v10;
}

@end