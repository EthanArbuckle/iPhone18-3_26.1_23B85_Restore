@interface BCSShardIdentifier
+ (BCSShardIdentifier)identifierWithType:(int64_t)type startIndex:(int64_t)index shardCount:;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation BCSShardIdentifier

+ (BCSShardIdentifier)identifierWithType:(int64_t)type startIndex:(int64_t)index shardCount:
{
  objc_opt_self();
  v7 = [BCSShardIdentifier alloc];
  if (v7)
  {
    v9.receiver = v7;
    v9.super_class = BCSShardIdentifier;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    if (v7)
    {
      v7->_type = a2;
      v7->_startIndex = type;
      v7->_shardCount = index;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  startIndex = [(BCSShardIdentifier *)self startIndex];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __30__BCSShardIdentifier_isEqual___block_invoke;
  v20[3] = &unk_278D38A20;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendInteger:startIndex counterpart:v20];
  type = [(BCSShardIdentifier *)self type];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__BCSShardIdentifier_isEqual___block_invoke_2;
  v18[3] = &unk_278D38A20;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInteger:type counterpart:v18];
  shardCount = [(BCSShardIdentifier *)self shardCount];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __30__BCSShardIdentifier_isEqual___block_invoke_3;
  v16[3] = &unk_278D38A20;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendInteger:shardCount counterpart:v16];
  LOBYTE(shardCount) = [v5 isEqual];

  return shardCount;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:{-[BCSShardIdentifier startIndex](self, "startIndex")}];
  v5 = [builder appendInteger:{-[BCSShardIdentifier type](self, "type")}];
  v6 = [builder appendInteger:{-[BCSShardIdentifier shardCount](self, "shardCount")}];
  v7 = [builder hash];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[BCSShardIdentifier type](self withName:{"type"), @"type"}];
  v5 = [v3 appendInt64:-[BCSShardIdentifier startIndex](self withName:{"startIndex"), @"startIndex"}];
  v6 = [v3 appendInt64:-[BCSShardIdentifier shardCount](self withName:{"shardCount"), @"shardCount"}];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BCSShardIdentifier allocWithZone:zone];
  type = [(BCSShardIdentifier *)self type];
  startIndex = [(BCSShardIdentifier *)self startIndex];
  shardCount = [(BCSShardIdentifier *)self shardCount];
  if (!v4)
  {
    return 0;
  }

  v8 = shardCount;
  v10.receiver = v4;
  v10.super_class = BCSShardIdentifier;
  result = [(BCSShardIdentifier *)&v10 init];
  if (result)
  {
    *(result + 1) = type;
    *(result + 2) = startIndex;
    *(result + 3) = v8;
  }

  return result;
}

@end