@interface NSString(MCHacks)
- (id)MCAppendGreenteaSuffix;
- (uint64_t)MCRemoveAppExternalVersionIDParameter;
@end

@implementation NSString(MCHacks)

- (id)MCAppendGreenteaSuffix
{
  v2 = +[MCHacks sharedHacks];
  isGreenTea = [v2 isGreenTea];

  if (isGreenTea)
  {
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CH", self];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)MCRemoveAppExternalVersionIDParameter
{
  v2 = [self length];

  return [self stringByReplacingOccurrencesOfString:@"(?:^appExtVrsId=[^&]+&?|&appExtVrsId=[^&]+)" withString:&stru_1F1A7FAB0 options:1024 range:{0, v2}];
}

@end