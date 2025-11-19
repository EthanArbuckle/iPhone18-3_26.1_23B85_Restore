@interface ActivitySegment
- (NSDate)endTime;
- (NSDate)startTime;
- (NSNumber)duration;
- (NSNumber)isApplication;
- (NSString)altDSID;
- (NSString)bundleIdentifier;
- (NSString)deviceId;
- (NSString)deviceName;
- (NSString)icloudEmail;
- (void)setAltDSID:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setDeviceId:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setDuration:(id)a3;
- (void)setEndTime:(id)a3;
- (void)setIcloudEmail:(id)a3;
- (void)setIsApplication:(id)a3;
- (void)setStartTime:(id)a3;
@end

@implementation ActivitySegment

- (NSString)deviceId
{
  v2 = sub_254FCFED0();

  return v2;
}

- (void)setDeviceId:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FCFF68();
}

- (NSString)deviceName
{
  v2 = sub_254FD0058();

  return v2;
}

- (void)setDeviceName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD00F0();
}

- (NSString)altDSID
{
  v2 = sub_254FD01E4();

  return v2;
}

- (void)setAltDSID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD027C();
}

- (NSString)icloudEmail
{
  v2 = sub_254FD036C();

  return v2;
}

- (void)setIcloudEmail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD0404();
}

- (NSDate)startTime
{
  v2 = sub_254FD04F4();

  return v2;
}

- (void)setStartTime:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD058C();
}

- (NSDate)endTime
{
  v2 = sub_254FD067C();

  return v2;
}

- (void)setEndTime:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD0714();
}

- (NSNumber)duration
{
  v2 = sub_254FD0804();

  return v2;
}

- (void)setDuration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD089C();
}

- (NSString)bundleIdentifier
{
  v2 = sub_254FD098C();

  return v2;
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD0A24();
}

- (NSNumber)isApplication
{
  v2 = sub_254FD0B14();

  return v2;
}

- (void)setIsApplication:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_254FD0BAC();
}

@end