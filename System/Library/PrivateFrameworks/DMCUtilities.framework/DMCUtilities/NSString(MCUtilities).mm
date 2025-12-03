@interface NSString(MCUtilities)
+ (__CFString)DMCMakeUUID;
- (id)DMCAppendGreenteaSuffix;
@end

@implementation NSString(MCUtilities)

+ (__CFString)DMCMakeUUID
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

- (id)DMCAppendGreenteaSuffix
{
  if (DMCIsGreenTea())
  {
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CH", self];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end