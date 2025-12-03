@interface MTTimer(CoordinationCore)
- (id)co_preferredTimer:()CoordinationCore;
@end

@implementation MTTimer(CoordinationCore)

- (id)co_preferredTimer:()CoordinationCore
{
  v4 = a3;
  selfCopy = self;
  if (v4)
  {
    lastModifiedDate = [v4 lastModifiedDate];
    if (lastModifiedDate)
    {
      v7 = lastModifiedDate;
      lastModifiedDate2 = [v4 lastModifiedDate];
      lastModifiedDate3 = [selfCopy lastModifiedDate];
      if ([lastModifiedDate2 compare:lastModifiedDate3] == 1)
      {
      }

      else
      {
        lastModifiedDate4 = [selfCopy lastModifiedDate];

        if (lastModifiedDate4)
        {
          goto LABEL_7;
        }
      }

      v11 = v4;

      selfCopy = v11;
    }
  }

LABEL_7:

  return selfCopy;
}

@end