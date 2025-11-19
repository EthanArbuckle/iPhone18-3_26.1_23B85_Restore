@interface MBCKEnableCameraRollGraceRequest
+ (id)requestWithDevice:(id)a3 domainHMAC:(id)a4;
+ (id)requestWithDevice:(id)a3 manifest:(id)a4;
- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)a3 domainHMAC:(id)a4;
- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)a3 manifest:(id)a4;
- (id)recordRepresentation;
@end

@implementation MBCKEnableCameraRollGraceRequest

+ (id)requestWithDevice:(id)a3 manifest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBCKEnableCameraRollGraceRequest alloc] initWithDevice:v6 manifest:v5];

  return v7;
}

+ (id)requestWithDevice:(id)a3 domainHMAC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBCKEnableCameraRollGraceRequest alloc] initWithDevice:v6 domainHMAC:v5];

  return v7;
}

- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = [a4 domainHmac];
  v8 = [(MBCKEnableCameraRollGraceRequest *)self initWithDevice:v6 domainHMAC:v7];

  return v8;
}

- (MBCKEnableCameraRollGraceRequest)initWithDevice:(id)a3 domainHMAC:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MBCKEnableCameraRollGraceRequest;
  v8 = [(MBCKModel *)&v13 initWithRecord:0 cache:0];
  v9 = v8;
  if (v8)
  {
    [(MBCKEnableCameraRollGraceRequest *)v8 setDevice:v6];
    [(MBCKEnableCameraRollGraceRequest *)v9 setDomainHMAC:v7];
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
  v3 = [(MBCKModel *)&v12 recordRepresentation];
  v4 = [v3 objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    v6 = [(MBCKEnableCameraRollGraceRequest *)self device];
    v7 = [v6 recordID];
    v8 = [v5 initWithRecordID:v7 action:0];
    [v3 setObject:v8 forKeyedSubscript:@"device"];
  }

  v9 = [v3 objectForKeyedSubscript:@"domainHMAC"];

  if (!v9)
  {
    v10 = [(MBCKEnableCameraRollGraceRequest *)self domainHMAC];
    [v3 setObject:v10 forKeyedSubscript:@"domainHMAC"];
  }

  return v3;
}

@end