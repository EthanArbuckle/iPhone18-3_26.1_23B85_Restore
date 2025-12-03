@interface MKFileDecoder
- (id)extractFormatOfAsset:(id)asset;
@end

@implementation MKFileDecoder

- (id)extractFormatOfAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:assetCopy];
    if (v4)
    {
      v5 = v4;
      v14 = 0;
      v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v4 error:&v14];
      v7 = v14;
      if (!v7)
      {
        v8 = +[MKSignature preferredSignatureLength];
        v13 = 0;
        v9 = [v6 readDataUpToLength:v8 error:&v13];
        v10 = v13;
        if (!v10)
        {
          if ([v9 length] == v8)
          {
            v11 = +[MKSignature identifier:length:](MKSignature, "identifier:length:", [v9 bytes], v8);
          }

          else
          {
            v11 = &stru_286A8E730;
          }

LABEL_9:
          goto LABEL_11;
        }

        v7 = v10;
      }

      v6 = +[MKLog log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(MKFileDecoder *)assetCopy extractFormatOfAsset:v7, v6];
      }

      v11 = &stru_286A8E730;
      v5 = v7;
      goto LABEL_9;
    }
  }

  v11 = &stru_286A8E730;
LABEL_11:

  return v11;
}

@end