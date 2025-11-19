@interface JSPlatform
- (JSValue)is24HourClockEnabled;
- (JSValue)isDebugOrInternalBuild;
@end

@implementation JSPlatform

- (JSValue)isDebugOrInternalBuild
{
  v2 = self;
  v3 = sub_216AEFB58();

  return v3;
}

- (JSValue)is24HourClockEnabled
{
  v2 = self;
  v3 = sub_216AEFB58();

  return v3;
}

@end