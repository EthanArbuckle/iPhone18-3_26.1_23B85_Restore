@interface BLBookletMigrationInfo
- (BLBookletMigrationInfo)initWithCoder:(id)a3;
- (BLBookletMigrationInfo)initWithStoreID:(int64_t)a3 migrationState:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLBookletMigrationInfo

- (BLBookletMigrationInfo)initWithStoreID:(int64_t)a3 migrationState:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BLBookletMigrationInfo;
  result = [(BLBookletMigrationInfo *)&v7 init];
  if (result)
  {
    result->_migrationState = a4;
    result->_storeID = a3;
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

- (BLBookletMigrationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BLBookletMigrationInfo;
  v5 = [(BLBookletMigrationInfo *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"migrationState"];
    v7 = BUDynamicCast();
    v5->_migrationState = [v7 longLongValue];

    objc_opt_class();
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    v9 = BUDynamicCast();
    v5->_storeID = [v9 longLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[BLBookletMigrationInfo migrationState](self, "migrationState")}];
  [v5 encodeObject:v6 forKey:@"migrationState"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BLBookletMigrationInfo storeID](self, "storeID")}];
  [v5 encodeObject:v7 forKey:@"storeID"];
}

- (id)copyWithZone:(_NSZone *)a3
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