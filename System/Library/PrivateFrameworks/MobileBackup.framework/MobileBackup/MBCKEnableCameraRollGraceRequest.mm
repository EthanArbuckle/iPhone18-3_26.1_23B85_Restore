@interface MBCKEnableCameraRollGraceRequest
+ (id)requestWithDevice:(id)device domainHMAC:(id)c;
+ (id)requestWithDevice:(id)device manifest:(id)manifest;
- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)device domainHMAC:(id)c;
- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)device manifest:(id)manifest;
- (id)recordRepresentation;
@end

@implementation MBCKEnableCameraRollGraceRequest

+ (id)requestWithDevice:(id)device manifest:(id)manifest
{
  manifestCopy = manifest;
  deviceCopy = device;
  v7 = [[MBCKEnableCameraRollGraceRequest alloc] initWithDevice:deviceCopy manifest:manifestCopy];

  return v7;
}

+ (id)requestWithDevice:(id)device domainHMAC:(id)c
{
  cCopy = c;
  deviceCopy = device;
  v7 = [[MBCKEnableCameraRollGraceRequest alloc] initWithDevice:deviceCopy domainHMAC:cCopy];

  return v7;
}

- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)device manifest:(id)manifest
{
  deviceCopy = device;
  domainHmac = [manifest domainHmac];
  v8 = [(MBCKEnableCameraRollGraceRequest *)self initWithDevice:deviceCopy domainHMAC:domainHmac];

  return v8;
}

- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)device domainHMAC:(id)c
{
  deviceCopy = device;
  cCopy = c;
  v13.receiver = self;
  v13.super_class = MBCKEnableCameraRollGraceRequest;
  v8 = [(MBCKModel *)&v13 initWithRecord:0 cache:0];
  v9 = v8;
  if (v8)
  {
    [(MBCKEnableCameraRollGraceRequest *)v8 setDevice:deviceCopy];
    [(MBCKEnableCameraRollGraceRequest *)v9 setDomainHMAC:cCopy];
    v10 = MBRandomUUID();
    uuid = v9->_uuid;
    v9->_uuid = v10;
  }

  return v9;
}

- (id)recordRepresentation
{
  v12.receiver = self;
  v12.super_class = MBCKEnableCameraRollGraceRequest;
  recordRepresentation = [(MBCKModel *)&v12 recordRepresentation];
  v4 = [recordRepresentation objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    device = [(MBCKEnableCameraRollGraceRequest *)self device];
    recordID = [device recordID];
    v8 = [v5 initWithRecordID:recordID action:0];
    [recordRepresentation setObject:v8 forKeyedSubscript:@"device"];
  }

  v9 = [recordRepresentation objectForKeyedSubscript:@"domainHMAC"];

  if (!v9)
  {
    domainHMAC = [(MBCKEnableCameraRollGraceRequest *)self domainHMAC];
    [recordRepresentation setObject:domainHMAC forKeyedSubscript:@"domainHMAC"];
  }

  return recordRepresentation;
}

@end