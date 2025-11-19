@interface PHMediaFormatConversionAssetBundleSource
+ (id)sourceForFileURL:(id)a3;
@end

@implementation PHMediaFormatConversionAssetBundleSource

+ (id)sourceForFileURL:(id)a3
{
  v5 = a3;
  if (![v5 isFileURL] || (objc_msgSend(v5, "pathExtension"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lowercaseString"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"photosasset"), v7, v6, (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHMediaFormatConversion.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"[fileURL isFileURL] && [[[fileURL pathExtension] lowercaseString] isEqualToString:ASSET_BUNDLE_PATH_EXTENSION]"}];
  }

  v10 = [a1 sourceForFileURL:v5 mediaType:4 imageDimensions:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  return v10;
}

@end