@interface MFTriageActionUtilities
+ (id)actionKeyForTriageAction:(int64_t)a3;
+ (int64_t)triageActionForActionKey:(id)a3;
@end

@implementation MFTriageActionUtilities

+ (int64_t)triageActionForActionKey:(id)a3
{
  v3 = a3;
  v4 = sub_100099D1C();
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)actionKeyForTriageAction:(int64_t)a3
{
  v4 = sub_100099D1C();
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 allKeysForObject:v5];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end