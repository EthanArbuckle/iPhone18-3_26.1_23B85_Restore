@interface OABTable
+ (id)readTable:(id)table state:(id)state;
@end

@implementation OABTable

+ (id)readTable:(id)table state:(id)state
{
  tableCopy = table;
  stateCopy = state;
  v7 = objc_alloc_init(OADTable);
  v8 = [OABRTable alloc];
  v9 = [(OABRTable *)v8 initWithSourceTable:tableCopy targetTable:v7 state:stateCopy];

  [(OABRTable *)v9 map];

  return v7;
}

@end