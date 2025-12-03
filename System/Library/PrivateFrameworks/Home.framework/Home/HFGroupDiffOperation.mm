@interface HFGroupDiffOperation
+ (id)deleteOperationWithGroup:(id)group atIndex:(unint64_t)index;
+ (id)insertOperationWithGroup:(id)group atIndex:(unint64_t)index;
+ (id)moveOperationWithGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (BOOL)isEqual:(id)equal;
- (HFGroupDiffOperation)initWithOperationType:(unint64_t)type group:(id)group fromIndex:(id)index toIndex:(id)toIndex;
- (NSString)description;
- (id)_operationDescriptionWithVerboseType:(BOOL)type;
- (unint64_t)hash;
@end

@implementation HFGroupDiffOperation

- (HFGroupDiffOperation)initWithOperationType:(unint64_t)type group:(id)group fromIndex:(id)index toIndex:(id)toIndex
{
  groupCopy = group;
  indexCopy = index;
  toIndexCopy = toIndex;
  v17.receiver = self;
  v17.super_class = HFGroupDiffOperation;
  v14 = [(HFGroupDiffOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_group, group);
    objc_storeStrong(&v15->_fromIndex, index);
    objc_storeStrong(&v15->_toIndex, toIndex);
  }

  return v15;
}

+ (id)insertOperationWithGroup:(id)group atIndex:(unint64_t)index
{
  groupCopy = group;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperationType:1 group:groupCopy fromIndex:0 toIndex:v8];

  return v9;
}

+ (id)deleteOperationWithGroup:(id)group atIndex:(unint64_t)index
{
  groupCopy = group;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperationType:2 group:groupCopy fromIndex:v8 toIndex:0];

  return v9;
}

+ (id)moveOperationWithGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  groupCopy = group;
  v9 = [self alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:toIndex];
  v12 = [v9 initWithOperationType:3 group:groupCopy fromIndex:v10 toIndex:v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(HFGroupDiffOperation *)self type];
      if (type != [(HFGroupDiffOperation *)v5 type])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      group = [(HFGroupDiffOperation *)self group];
      group2 = [(HFGroupDiffOperation *)v5 group];
      if (![group isEqual:group2])
      {
        v15 = 0;
LABEL_23:

        goto LABEL_24;
      }

      fromIndex = [(HFGroupDiffOperation *)self fromIndex];
      fromIndex2 = [(HFGroupDiffOperation *)v5 fromIndex];
      v11 = fromIndex;
      v12 = fromIndex2;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        if (!v11)
        {
          v15 = 0;
          v18 = v12;
LABEL_21:

          goto LABEL_22;
        }

        v14 = [v11 isEqual:v12];

        if (!v14)
        {
          v15 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      toIndex = [(HFGroupDiffOperation *)self toIndex];
      toIndex2 = [(HFGroupDiffOperation *)v5 toIndex];
      v18 = toIndex;
      v19 = toIndex2;
      if (v18 == v19)
      {
        v15 = 1;
      }

      else if (v18)
      {
        v15 = [v18 isEqual:v19];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_21;
    }

    v15 = 0;
  }

LABEL_25:

  return v15;
}

- (unint64_t)hash
{
  type = [(HFGroupDiffOperation *)self type];
  group = [(HFGroupDiffOperation *)self group];
  v5 = [group hash];
  fromIndex = [(HFGroupDiffOperation *)self fromIndex];
  v7 = [fromIndex hash];
  toIndex = [(HFGroupDiffOperation *)self toIndex];
  v9 = (v7 << 8) ^ (v5 << 16) ^ [toIndex hash];

  return v9 + type;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFGroupDiffOperation *)self _operationDescriptionWithVerboseType:0];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)_operationDescriptionWithVerboseType:(BOOL)type
{
  typeCopy = type;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HFGroupDiffOperation__operationDescriptionWithVerboseType___block_invoke;
  v13[3] = &unk_277DF75E8;
  v13[4] = self;
  v5 = __61__HFGroupDiffOperation__operationDescriptionWithVerboseType___block_invoke(v13);
  type = [(HFGroupDiffOperation *)self type];
  if (type > 3)
  {
    v7 = @"(unknown operation type)";
    if (!typeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = off_277DFAAD0[type];
  if (typeCopy)
  {
LABEL_5:
    v7 = [(__CFString *)v7 stringByAppendingString:@" group"];
  }

LABEL_6:
  v8 = MEMORY[0x277CCACA8];
  group = [(HFGroupDiffOperation *)self group];
  groupIdentifier = [group groupIdentifier];
  v11 = [v8 stringWithFormat:@"%@ %@ %@", v7, v5, groupIdentifier];

  return v11;
}

id __61__HFGroupDiffOperation__operationDescriptionWithVerboseType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) type];
  if (v3 < 2)
  {
    v7 = [*(a1 + 32) toIndex];
LABEL_7:
    v1 = v7;
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v7 = [*(a1 + 32) fromIndex];
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [*(a1 + 32) fromIndex];
    v6 = [*(a1 + 32) toIndex];
    v1 = [v4 stringWithFormat:@"%@ -> %@", v5, v6];
  }

LABEL_8:

  return v1;
}

@end