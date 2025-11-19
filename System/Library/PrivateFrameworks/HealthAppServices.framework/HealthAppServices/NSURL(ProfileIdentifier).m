@interface NSURL(ProfileIdentifier)
- (id)_hk_appendProfileIdentifier:()ProfileIdentifier;
@end

@implementation NSURL(ProfileIdentifier)

- (id)_hk_appendProfileIdentifier:()ProfileIdentifier
{
  v4 = a3;
  if ([v4 type] == 1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [MEMORY[0x277CBEBC0] _hk_appendQueryParameterToURL:a1 forHKProfileIdentifier:v4];
  }

  v6 = v5;

  return v6;
}

@end