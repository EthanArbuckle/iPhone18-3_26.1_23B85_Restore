@interface Group
- (id)sortedPassUniqueIdentifiers;
@end

@implementation Group

- (id)sortedPassUniqueIdentifiers
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"internal_group_order"];
  if (v2)
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v3 = [NSArray arrayWithObjects:v7 count:2];
    v4 = [NSSet setWithArray:v3];
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end