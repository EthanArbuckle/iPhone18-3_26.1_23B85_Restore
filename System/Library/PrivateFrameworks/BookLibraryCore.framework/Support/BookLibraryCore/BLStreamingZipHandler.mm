@interface BLStreamingZipHandler
+ (id)optionsWithHashes:(id)hashes type:(id)type size:(int64_t)size;
@end

@implementation BLStreamingZipHandler

+ (id)optionsWithHashes:(id)hashes type:(id)type size:(int64_t)size
{
  hashesCopy = hashes;
  typeCopy = type;
  v9 = objc_alloc_init(NSMutableDictionary);
  if (typeCopy && hashesCopy && size >= 1)
  {
    v10 = SZExtractorOptionsHashType;
    if ([typeCopy isEqualToString:@"MD5"])
    {
      v11 = &SZExtractorHashTypeMD5;
    }

    else
    {
      if (![typeCopy isEqualToString:@"SHA1"])
      {
        v12 = BLServiceDownloadStreamingZipLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v17 = 138543362;
          v18 = typeCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Download-StreamingZip]: Invalid hash type: %{public}@", &v17, 0xCu);
        }

        goto LABEL_12;
      }

      v11 = &SZExtractorHashTypeSHA1;
    }

    [v9 setObject:*v11 forKey:v10];
LABEL_12:
    v13 = SZExtractorOptionsHashesArray;

    [v9 setObject:hashesCopy forKey:v13];
    v14 = SZExtractorOptionsHashedChunkSize;
    v15 = [NSNumber numberWithInteger:size];
    [v9 setObject:v15 forKey:v14];
  }

  return v9;
}

@end