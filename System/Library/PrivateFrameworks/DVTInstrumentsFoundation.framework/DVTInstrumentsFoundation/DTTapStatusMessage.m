@interface DTTapStatusMessage
- (NSDictionary)info;
- (NSString)notice;
- (unint64_t)timestamp;
- (unsigned)status;
- (void)setInfo:(id)a3;
- (void)setNotice:(id)a3;
- (void)setStatus:(unsigned int)a3;
- (void)setTimestamp:(unint64_t)a3;
@end

@implementation DTTapStatusMessage

- (unsigned)status
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"status"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setStatus:(unsigned int)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"status"];
}

- (unint64_t)timestamp
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"ts"];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)setTimestamp:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forKey:@"ts"];
}

- (NSString)notice
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"notice"];

  return v3;
}

- (void)setNotice:(id)a3
{
  v4 = a3;
  v6 = [(DTTapMessage *)self plist];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"notice"];
}

- (NSDictionary)info
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"info"];

  return v3;
}

- (void)setInfo:(id)a3
{
  v4 = a3;
  v6 = [(DTTapMessage *)self plist];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"info"];
}

@end