@interface CHLineWrappingResult
- (CHLineWrappingResult)initWithLineWrappableGroups:(id)a3;
@end

@implementation CHLineWrappingResult

- (CHLineWrappingResult)initWithLineWrappableGroups:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHLineWrappingResult;
  v6 = [(CHLineWrappingResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineWrappableGroups, a3);
  }

  return v7;
}

@end