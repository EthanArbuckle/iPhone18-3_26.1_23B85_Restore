@interface NSURL(ProfileIdentifier)
- (id)_hk_appendProfileIdentifier:()ProfileIdentifier;
@end

@implementation NSURL(ProfileIdentifier)

- (id)_hk_appendProfileIdentifier:()ProfileIdentifier
{
  v4 = a3;
  if ([v4 type] == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [MEMORY[0x277CBEBC0] _hk_appendQueryParameterToURL:self forHKProfileIdentifier:v4];
  }

  v6 = selfCopy;

  return v6;
}

@end