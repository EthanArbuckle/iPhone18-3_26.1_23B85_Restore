@interface BCSShardIdentifier
+ (BCSShardIdentifier)identifierWithType:(int64_t)a3 startIndex:(int64_t)a4 shardCount:;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation BCSShardIdentifier

+ (BCSShardIdentifier)identifierWithType:(int64_t)a3 startIndex:(int64_t)a4 shardCount:
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
      v7->_startIndex = a3;
      v7->_shardCount = a4;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(BCSShardIdentifier *)self startIndex];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __30__BCSShardIdentifier_isEqual___block_invoke;
  v20[3] = &unk_278D38A20;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendInteger:v6 counterpart:v20];
  v9 = [(BCSShardIdentifier *)self type];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__BCSShardIdentifier_isEqual___block_invoke_2;
  v18[3] = &unk_278D38A20;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInteger:v9 counterpart:v18];
  v12 = [(BCSShardIdentifier *)self shardCount];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __30__BCSShardIdentifier_isEqual___block_invoke_3;
  v16[3] = &unk_278D38A20;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendInteger:v12 counterpart:v16];
  LOBYTE(v12) = [v5 isEqual];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:{-[BCSShardIdentifier startIndex](self, "startIndex")}];
  v5 = [v3 appendInteger:{-[BCSShardIdentifier type](self, "type")}];
  v6 = [v3 appendInteger:{-[BCSShardIdentifier shardCount](self, "shardCount")}];
  v7 = [v3 hash];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[BCSShardIdentifier type](self withName:{"type"), @"type"}];
  v5 = [v3 appendInt64:-[BCSShardIdentifier startIndex](self withName:{"startIndex"), @"startIndex"}];
  v6 = [v3 appendInt64:-[BCSShardIdentifier shardCount](self withName:{"shardCount"), @"shardCount"}];
  v7 = [v3 build];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BCSShardIdentifier allocWithZone:a3];
  v5 = [(BCSShardIdentifier *)self type];
  v6 = [(BCSShardIdentifier *)self startIndex];
  v7 = [(BCSShardIdentifier *)self shardCount];
  if (!v4)
  {
    return 0;
  }

  v8 = v7;
  v10.receiver = v4;
  v10.super_class = BCSShardIdentifier;
  result = [(BCSShardIdentifier *)&v10 init];
  if (result)
  {
    *(result + 1) = v5;
    *(result + 2) = v6;
    *(result + 3) = v8;
  }

  return result;
}

@end