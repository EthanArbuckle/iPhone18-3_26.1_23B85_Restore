@interface HKCoverageRecord(Displayable)
- (__CFString)meaningfulDateString;
- (id)codings;
@end

@implementation HKCoverageRecord(Displayable)

- (id)codings
{
  coverageTypeCodingCollection = [self coverageTypeCodingCollection];
  codings = [coverageTypeCodingCollection codings];

  return codings;
}

- (__CFString)meaningfulDateString
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  if ([keyPath isEqualToString:*MEMORY[0x1E696B750]])
  {

LABEL_4:
    v7 = &stru_1F4D16E38;
    goto LABEL_6;
  }

  sortDate2 = [self sortDate];
  keyPath2 = [sortDate2 keyPath];
  v6 = [keyPath2 isEqualToString:*MEMORY[0x1E696B748]];

  if (v6)
  {
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = &off_1F4D9A290;
  v7 = objc_msgSendSuper2(&v9, sel_meaningfulDateString);
LABEL_6:

  return v7;
}

@end