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
- (void)setAltDSID:(id)d;
- (void)setBundleIdentifier:(id)identifier;
- (void)setDeviceId:(id)id;
- (void)setDeviceName:(id)name;
- (void)setDuration:(id)duration;
- (void)setEndTime:(id)time;
- (void)setIcloudEmail:(id)email;
- (void)setIsApplication:(id)application;
- (void)setStartTime:(id)time;
@end

@implementation ActivitySegment

- (NSString)deviceId
{
  v2 = sub_254FCFED0();

  return v2;
}

- (void)setDeviceId:(id)id
{
  idCopy = id;
  selfCopy = self;
  sub_254FCFF68();
}

- (NSString)deviceName
{
  v2 = sub_254FD0058();

  return v2;
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_254FD00F0();
}

- (NSString)altDSID
{
  v2 = sub_254FD01E4();

  return v2;
}

- (void)setAltDSID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_254FD027C();
}

- (NSString)icloudEmail
{
  v2 = sub_254FD036C();

  return v2;
}

- (void)setIcloudEmail:(id)email
{
  emailCopy = email;
  selfCopy = self;
  sub_254FD0404();
}

- (NSDate)startTime
{
  v2 = sub_254FD04F4();

  return v2;
}

- (void)setStartTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  sub_254FD058C();
}

- (NSDate)endTime
{
  v2 = sub_254FD067C();

  return v2;
}

- (void)setEndTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  sub_254FD0714();
}

- (NSNumber)duration
{
  v2 = sub_254FD0804();

  return v2;
}

- (void)setDuration:(id)duration
{
  durationCopy = duration;
  selfCopy = self;
  sub_254FD089C();
}

- (NSString)bundleIdentifier
{
  v2 = sub_254FD098C();

  return v2;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_254FD0A24();
}

- (NSNumber)isApplication
{
  v2 = sub_254FD0B14();

  return v2;
}

- (void)setIsApplication:(id)application
{
  applicationCopy = application;
  selfCopy = self;
  sub_254FD0BAC();
}

@end