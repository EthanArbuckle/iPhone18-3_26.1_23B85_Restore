@interface MBPeerPreflightRequest
- (MBPeerPreflightRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerPreflightRequest)initWithFreeDiskSpace:(unint64_t)a3 purgeSize:(unint64_t)a4;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerPreflightRequest

- (MBPeerPreflightRequest)initWithFreeDiskSpace:(unint64_t)a3 purgeSize:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MBPeerPreflightRequest;
  result = [(MBPeerPreflightRequest *)&v7 init];
  if (result)
  {
    result->_freeDiskSpace = a3;
    result->_purgeSize = a4;
  }

  return result;
}

- (MBPeerPreflightRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MBPeerPreflightRequest;
  v7 = [(MBPeerPreflightRequest *)&v13 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBFreeDiskSpace"];
  v9 = [v6 objectForKeyedSubscript:@"MBPurgeSize"];
  v10 = v9;
  if (v8 && v9)
  {
    v7->_freeDiskSpace = [v8 unsignedLongLongValue];
    v7->_purgeSize = [v10 unsignedLongLongValue];

LABEL_5:
    v11 = v7;
    goto LABEL_9;
  }

  if (a4)
  {
    *a4 = [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", v6];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)dictionaryRepresentation
{
  v7[0] = @"MBFreeDiskSpace";
  v3 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightRequest *)self freeDiskSpace]];
  v7[1] = @"MBPurgeSize";
  v8[0] = v3;
  v4 = [NSNumber numberWithUnsignedLongLong:[(MBPeerPreflightRequest *)self purgeSize]];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end