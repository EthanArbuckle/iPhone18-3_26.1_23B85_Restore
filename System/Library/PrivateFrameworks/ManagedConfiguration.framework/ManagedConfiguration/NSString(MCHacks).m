@interface NSString(MCHacks)
- (id)MCAppendGreenteaSuffix;
- (uint64_t)MCRemoveAppExternalVersionIDParameter;
@end

@implementation NSString(MCHacks)

- (id)MCAppendGreenteaSuffix
{
  v2 = +[MCHacks sharedHacks];
  v3 = [v2 isGreenTea];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CH", a1];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (uint64_t)MCRemoveAppExternalVersionIDParameter
{
  v2 = [a1 length];

  return [a1 stringByReplacingOccurrencesOfString:@"(?:^appExtVrsId=[^&]+&?|&appExtVrsId=[^&]+)" withString:&stru_1F1A7FAB0 options:1024 range:{0, v2}];
}

@end