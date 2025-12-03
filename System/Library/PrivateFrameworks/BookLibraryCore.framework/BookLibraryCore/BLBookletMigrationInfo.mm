@interface BLBookletMigrationInfo
- (BLBookletMigrationInfo)initWithCoder:(id)coder;
- (BLBookletMigrationInfo)initWithStoreID:(int64_t)d migrationState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLBookletMigrationInfo

- (BLBookletMigrationInfo)initWithStoreID:(int64_t)d migrationState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = BLBookletMigrationInfo;
  result = [(BLBookletMigrationInfo *)&v7 init];
  if (result)
  {
    result->_migrationState = state;
    result->_storeID = d;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p storeID=%lld migrationState=%lld>", v5, self, -[BLBookletMigrationInfo storeID](self, "storeID"), -[BLBookletMigrationInfo migrationState](self, "migrationState")];;

  return v6;
}

- (BLBookletMigrationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BLBookletMigrationInfo;
  v5 = [(BLBookletMigrationInfo *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"migrationState"];
    v7 = BUDynamicCast();
    v5->_migrationState = [v7 longLongValue];

    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    v9 = BUDynamicCast();
    v5->_storeID = [v9 longLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[BLBookletMigrationInfo migrationState](self, "migrationState")}];
  [coderCopy encodeObject:v6 forKey:@"migrationState"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BLBookletMigrationInfo storeID](self, "storeID")}];
  [coderCopy encodeObject:v7 forKey:@"storeID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    [v4 setMigrationState:{-[BLBookletMigrationInfo migrationState](self, "migrationState")}];
    [v4 setStoreID:{-[BLBookletMigrationInfo storeID](self, "storeID")}];
  }

  return v4;
}

@end