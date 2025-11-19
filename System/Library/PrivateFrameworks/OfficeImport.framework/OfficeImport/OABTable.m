@interface OABTable
+ (id)readTable:(id)a3 state:(id)a4;
@end

@implementation OABTable

+ (id)readTable:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(OADTable);
  v8 = [OABRTable alloc];
  v9 = [(OABRTable *)v8 initWithSourceTable:v5 targetTable:v7 state:v6];

  [(OABRTable *)v9 map];

  return v7;
}

@end