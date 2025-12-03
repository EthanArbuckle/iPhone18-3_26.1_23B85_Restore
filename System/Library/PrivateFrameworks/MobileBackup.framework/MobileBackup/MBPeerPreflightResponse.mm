@interface MBPeerPreflightResponse
- (MBPeerPreflightResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerPreflightResponse)initWithUploadSize:(unint64_t)size uploadFileCount:(unint64_t)count uploadSizeExcludingHardlinksAndClones:(unint64_t)clones freeDiskSpace:(unint64_t)space purgeableDiskSpace:(unint64_t)diskSpace;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerPreflightResponse

- (MBPeerPreflightResponse)initWithUploadSize:(unint64_t)size uploadFileCount:(unint64_t)count uploadSizeExcludingHardlinksAndClones:(unint64_t)clones freeDiskSpace:(unint64_t)space purgeableDiskSpace:(unint64_t)diskSpace
{
  v13.receiver = self;
  v13.super_class = MBPeerPreflightResponse;
  result = [(MBPeerPreflightResponse *)&v13 init];
  if (result)
  {
    result->_uploadSize = size;
    result->_uploadSizeExcludingHardlinksAndClones = clones;
    result->_uploadFileCount = count;
    result->_freeDiskSpace = space;
    result->_purgeableDiskSpace = diskSpace;
  }

  return result;
}

- (MBPeerPreflightResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = MBPeerPreflightResponse;
  v7 = [(MBPeerPreflightResponse *)&v20 init];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MBUploadSize"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"MBUploadFileCount"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"MBUploadSizeExcludingHardlinksAndClones"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"MBFreeDiskSpace"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"MBPurgeableDiskSpace"];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"MBPropertiesData"];
  v14 = !v8 || v9 == 0;
  v15 = v14 || v11 == 0;
  v16 = v15 || v12 == 0;
  v17 = !v16;
  if (v16)
  {
    if (error)
    {
      *error = [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
    }
  }

  else
  {
    v7->_uploadSize = [v8 unsignedLongLongValue];
    v7->_uploadFileCount = [v9 unsignedLongLongValue];
    v7->_uploadSizeExcludingHardlinksAndClones = [v10 unsignedLongLongValue];
    v7->_freeDiskSpace = [v11 unsignedLongLongValue];
    v7->_purgeableDiskSpace = [v12 unsignedLongLongValue];
    objc_storeStrong(&v7->_propertiesData, v13);
  }

  if (!v17)
  {
    v18 = 0;
  }

  else
  {
LABEL_19:
    v18 = v7;
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  propertiesData = self->_propertiesData;
  if (propertiesData)
  {
    v17[0] = @"MBUploadSize";
    v4 = propertiesData;
    v5 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadSize]];
    v18[0] = v5;
    v17[1] = @"MBUploadSizeExcludingHardlinksAndClones";
    v6 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadSizeExcludingHardlinksAndClones]];
    v18[1] = v6;
    v17[2] = @"MBUploadFileCount";
    v7 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadFileCount]];
    v18[2] = v7;
    v17[3] = @"MBFreeDiskSpace";
    v8 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self freeDiskSpace]];
    v18[3] = v8;
    v17[4] = @"MBPurgeableDiskSpace";
    v9 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self purgeableDiskSpace]];
    v17[5] = @"MBPropertiesData";
    v18[4] = v9;
    v18[5] = v4;
    v10 = v18;
    v11 = v17;
    v12 = 6;
  }

  else
  {
    v15[0] = @"MBUploadSize";
    v5 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadSize]];
    v16[0] = v5;
    v15[1] = @"MBUploadSizeExcludingHardlinksAndClones";
    v6 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadSizeExcludingHardlinksAndClones]];
    v16[1] = v6;
    v15[2] = @"MBUploadFileCount";
    v7 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self uploadFileCount]];
    v16[2] = v7;
    v15[3] = @"MBFreeDiskSpace";
    v8 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self freeDiskSpace]];
    v16[3] = v8;
    v15[4] = @"MBPurgeableDiskSpace";
    v9 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightResponse *)self purgeableDiskSpace]];
    v16[4] = v9;
    v10 = v16;
    v11 = v15;
    v12 = 5;
  }

  v13 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];

  return v13;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  uploadSize = [(MBPeerPreflightResponse *)self uploadSize];
  uploadSizeExcludingHardlinksAndClones = [(MBPeerPreflightResponse *)self uploadSizeExcludingHardlinksAndClones];
  uploadFileCount = [(MBPeerPreflightResponse *)self uploadFileCount];
  freeDiskSpace = [(MBPeerPreflightResponse *)self freeDiskSpace];
  propertiesData = [(MBPeerPreflightResponse *)self propertiesData];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%s: %p size=%llu(%llu), fileCount=%llu, freeDiskSpace=%llu, properties.length=%lu>", Name, self, uploadSize, uploadSizeExcludingHardlinksAndClones, uploadFileCount, freeDiskSpace, [propertiesData length]);;

  return v10;
}

@end