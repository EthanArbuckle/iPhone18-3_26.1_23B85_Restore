@interface CKDThrottleTableGroup
- (void)createTables;
@end

@implementation CKDThrottleTableGroup

- (void)createTables
{
  v7.receiver = self;
  v7.super_class = CKDThrottleTableGroup;
  [(CKSQLiteTableGroup *)&v7 createTables];
  v3 = objc_alloc(MEMORY[0x277CBC790]);
  v5 = objc_msgSend_initWithLogicalTableName_(v3, v4, @"Throttle");
  objc_msgSend_addTable_(self, v6, v5);
}

@end