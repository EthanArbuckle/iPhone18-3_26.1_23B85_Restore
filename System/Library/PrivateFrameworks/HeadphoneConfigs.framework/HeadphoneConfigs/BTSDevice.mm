@interface BTSDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isiPad;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation BTSDevice

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BTSDevice *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(BTSDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BTSDevice *)self shouldDenyIncomingClassicConnection];
  if (v5 != [v4 shouldDenyIncomingClassicConnection])
  {
    v6 = [(BTSDevice *)self shouldDenyIncomingClassicConnection];
LABEL_5:
    v8 = !v6;
    goto LABEL_6;
  }

  v7 = [(BTSDevice *)self connected];
  if (v7 != [v4 connected])
  {
    v6 = [(BTSDevice *)self connected];
    goto LABEL_5;
  }

  v11 = [(BTSDevice *)self paired]|| [(BTSDevice *)self isHealthDevice]|| [(BTSDevice *)self isManagedByDeviceAccess];
  if ([v4 paired] & 1) != 0 || (objc_msgSend(v4, "isHealthDevice"))
  {
    v12 = 1;
  }

  else
  {
    v12 = [v4 isManagedByDeviceAccess];
  }

  if (v12 == v11)
  {
    v13 = [(BTSDevice *)self name];
    v14 = [v4 name];
    v9 = [v13 compare:v14 options:1];

    goto LABEL_9;
  }

  v8 = v11 == 0;
LABEL_6:
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_9:

  return v9;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

@end