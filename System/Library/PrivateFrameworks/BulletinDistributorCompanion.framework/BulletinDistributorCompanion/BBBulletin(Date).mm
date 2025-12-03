@interface BBBulletin(Date)
- (id)dateOrRecencyDate;
- (id)publishDate;
@end

@implementation BBBulletin(Date)

- (id)dateOrRecencyDate
{
  date = [self date];
  v3 = date;
  if (date)
  {
    recencyDate = date;
  }

  else
  {
    recencyDate = [self recencyDate];
  }

  v5 = recencyDate;

  return v5;
}

- (id)publishDate
{
  recencyDate = [self recencyDate];
  v3 = recencyDate;
  if (recencyDate)
  {
    date = recencyDate;
  }

  else
  {
    date = [self date];
  }

  v5 = date;

  return v5;
}

@end