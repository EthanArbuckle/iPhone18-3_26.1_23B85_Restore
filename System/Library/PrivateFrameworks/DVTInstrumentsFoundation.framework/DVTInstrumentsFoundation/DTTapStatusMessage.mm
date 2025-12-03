@interface DTTapStatusMessage
- (NSDictionary)info;
- (NSString)notice;
- (unint64_t)timestamp;
- (unsigned)status;
- (void)setInfo:(id)info;
- (void)setNotice:(id)notice;
- (void)setStatus:(unsigned int)status;
- (void)setTimestamp:(unint64_t)timestamp;
@end

@implementation DTTapStatusMessage

- (unsigned)status
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"status"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setStatus:(unsigned int)status
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  [plist setObject:v4 forKey:@"status"];
}

- (unint64_t)timestamp
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"ts"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setTimestamp:(unint64_t)timestamp
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
  [plist setObject:v4 forKey:@"ts"];
}

- (NSString)notice
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"notice"];

  return v3;
}

- (void)setNotice:(id)notice
{
  noticeCopy = notice;
  plist = [(DTTapMessage *)self plist];
  v5 = [noticeCopy copy];

  [plist setObject:v5 forKey:@"notice"];
}

- (NSDictionary)info
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"info"];

  return v3;
}

- (void)setInfo:(id)info
{
  infoCopy = info;
  plist = [(DTTapMessage *)self plist];
  v5 = [infoCopy copy];

  [plist setObject:v5 forKey:@"info"];
}

@end