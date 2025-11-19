@interface BBBulletin(Date)
- (id)dateOrRecencyDate;
- (id)publishDate;
@end

@implementation BBBulletin(Date)

- (id)dateOrRecencyDate
{
  v2 = [a1 date];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 recencyDate];
  }

  v5 = v4;

  return v5;
}

- (id)publishDate
{
  v2 = [a1 recencyDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 date];
  }

  v5 = v4;

  return v5;
}

@end