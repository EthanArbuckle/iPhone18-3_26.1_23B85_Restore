@interface HKCoverageRecord(Displayable)
- (__CFString)meaningfulDateString;
- (id)codings;
@end

@implementation HKCoverageRecord(Displayable)

- (id)codings
{
  v1 = [a1 coverageTypeCodingCollection];
  v2 = [v1 codings];

  return v2;
}

- (__CFString)meaningfulDateString
{
  v2 = [a1 sortDate];
  v3 = [v2 keyPath];
  if ([v3 isEqualToString:*MEMORY[0x1E696B750]])
  {

LABEL_4:
    v7 = &stru_1F4D16E38;
    goto LABEL_6;
  }

  v4 = [a1 sortDate];
  v5 = [v4 keyPath];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696B748]];

  if (v6)
  {
    goto LABEL_4;
  }

  v9.receiver = a1;
  v9.super_class = &off_1F4D9A290;
  v7 = objc_msgSendSuper2(&v9, sel_meaningfulDateString);
LABEL_6:

  return v7;
}

@end