@interface NSSortDescriptor(FCCKConversion)
- (id)fcck_querySort;
@end

@implementation NSSortDescriptor(FCCKConversion)

- (id)fcck_querySort
{
  v2 = objc_opt_new();
  if ([a1 ascending])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v2 setOrder:v3];
  v4 = [a1 key];
  v5 = NTPBCKRecordFieldIdentifierForUserFieldName(v4);
  [v2 setFieldName:v5];

  return v2;
}

@end