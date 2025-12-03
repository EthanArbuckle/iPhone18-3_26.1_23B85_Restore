@interface CHLineWrappingResult
- (CHLineWrappingResult)initWithLineWrappableGroups:(id)groups;
@end

@implementation CHLineWrappingResult

- (CHLineWrappingResult)initWithLineWrappableGroups:(id)groups
{
  groupsCopy = groups;
  v9.receiver = self;
  v9.super_class = CHLineWrappingResult;
  v6 = [(CHLineWrappingResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineWrappableGroups, groups);
  }

  return v7;
}

@end