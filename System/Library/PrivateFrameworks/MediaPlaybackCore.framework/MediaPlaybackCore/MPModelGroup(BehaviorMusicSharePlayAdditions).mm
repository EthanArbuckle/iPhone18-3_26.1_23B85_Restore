@interface MPModelGroup(BehaviorMusicSharePlayAdditions)
- (id)msp_shortDescription;
@end

@implementation MPModelGroup(BehaviorMusicSharePlayAdditions)

- (id)msp_shortDescription
{
  v14.receiver = self;
  v14.super_class = &off_1F45E4228;
  v2 = objc_msgSendSuper2(&v14, sel_msp_shortDescription);
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x1E69706F8];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __69__MPModelGroup_BehaviorMusicSharePlayAdditions__msp_shortDescription__block_invoke;
  v11 = &unk_1E82392C0;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v4 performWithoutEnforcement:&v8];
  v6 = [v5 copy];

  return v6;
}

@end