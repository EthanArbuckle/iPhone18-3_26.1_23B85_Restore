@interface MPModelObject(BehaviorMusicSharePlayAdditions)
- (id)msp_shortDescription;
@end

@implementation MPModelObject(BehaviorMusicSharePlayAdditions)

- (id)msp_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:", objc_opt_class()];
  identifiers = [self identifiers];
  isPlaceholder = [identifiers isPlaceholder];

  if (isPlaceholder)
  {
    [v2 appendString:@" placeholder"];
  }

  [v2 appendString:@">"];
  v5 = [v2 copy];

  return v5;
}

@end