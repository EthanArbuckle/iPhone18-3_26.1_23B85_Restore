@interface MBPeerTransferRequest
- (MBPeerTransferRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerTransferRequest)initWithTargetDeviceUDID:(id)a3 freeDiskSpace:(id)a4;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerTransferRequest

- (id)dictionaryRepresentation
{
  v7[0] = @"MBDeviceUDID";
  v3 = [(MBPeerTransferRequest *)self targetDeviceUDID];
  v7[1] = @"MBFreeDiskSpace";
  v8[0] = v3;
  v4 = [(MBPeerTransferRequest *)self freeDiskSpace];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (MBPeerTransferRequest)initWithTargetDeviceUDID:(id)a3 freeDiskSpace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBPeerTransferRequest;
  v9 = [(MBPeerTransferRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDeviceUDID, a3);
    objc_storeStrong(&v10->_freeDiskSpace, a4);
  }

  return v10;
}

- (MBPeerTransferRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = MBPeerTransferRequest;
  v7 = [(MBPeerTransferRequest *)&v14 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBDeviceUDID"];
  targetDeviceUDID = v7->_targetDeviceUDID;
  v7->_targetDeviceUDID = v8;

  v10 = [v6 objectForKeyedSubscript:@"MBFreeDiskSpace"];
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
    if (a4)
    {
      [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", v6];
      *a4 = v12 = 0;
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
  v5 = [(MBPeerTransferRequest *)self freeDiskSpace];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%s: %p freeDiskSpace=%llu>", Name, self, [v5 unsignedLongLongValue]);;

  return v6;
}

@end