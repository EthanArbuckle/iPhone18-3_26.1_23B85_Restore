@interface MBPeerTransferRequest
- (MBPeerTransferRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerTransferRequest)initWithTargetDeviceUDID:(id)d freeDiskSpace:(id)space;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerTransferRequest

- (id)dictionaryRepresentation
{
  v7[0] = @"MBDeviceUDID";
  targetDeviceUDID = [(MBPeerTransferRequest *)self targetDeviceUDID];
  v7[1] = @"MBFreeDiskSpace";
  v8[0] = targetDeviceUDID;
  freeDiskSpace = [(MBPeerTransferRequest *)self freeDiskSpace];
  v8[1] = freeDiskSpace;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (MBPeerTransferRequest)initWithTargetDeviceUDID:(id)d freeDiskSpace:(id)space
{
  dCopy = d;
  spaceCopy = space;
  v12.receiver = self;
  v12.super_class = MBPeerTransferRequest;
  v9 = [(MBPeerTransferRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDeviceUDID, d);
    objc_storeStrong(&v10->_freeDiskSpace, space);
  }

  return v10;
}

- (MBPeerTransferRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MBPeerTransferRequest;
  v7 = [(MBPeerTransferRequest *)&v14 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MBDeviceUDID"];
  targetDeviceUDID = v7->_targetDeviceUDID;
  v7->_targetDeviceUDID = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"MBFreeDiskSpace"];
  freeDiskSpace = v7->_freeDiskSpace;
  v7->_freeDiskSpace = v10;

  if (!v7->_freeDiskSpace)
  {
    goto LABEL_5;
  }

  if (v7->_targetDeviceUDID)
  {
LABEL_4:
    v12 = v7;
  }

  else
  {
LABEL_5:
    if (error)
    {
      [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  freeDiskSpace = [(MBPeerTransferRequest *)self freeDiskSpace];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%s: %p freeDiskSpace=%llu>", Name, self, [freeDiskSpace unsignedLongLongValue]);;

  return v6;
}

@end