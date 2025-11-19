@interface HFGroupDiffOperation
+ (id)deleteOperationWithGroup:(id)a3 atIndex:(unint64_t)a4;
+ (id)insertOperationWithGroup:(id)a3 atIndex:(unint64_t)a4;
+ (id)moveOperationWithGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (HFGroupDiffOperation)initWithOperationType:(unint64_t)a3 group:(id)a4 fromIndex:(id)a5 toIndex:(id)a6;
- (NSString)description;
- (id)_operationDescriptionWithVerboseType:(BOOL)a3;
- (unint64_t)hash;
@end

@implementation HFGroupDiffOperation

- (HFGroupDiffOperation)initWithOperationType:(unint64_t)a3 group:(id)a4 fromIndex:(id)a5 toIndex:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HFGroupDiffOperation;
  v14 = [(HFGroupDiffOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_group, a4);
    objc_storeStrong(&v15->_fromIndex, a5);
    objc_storeStrong(&v15->_toIndex, a6);
  }

  return v15;
}

+ (id)insertOperationWithGroup:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperationType:1 group:v6 fromIndex:0 toIndex:v8];

  return v9;
}

+ (id)deleteOperationWithGroup:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperationType:2 group:v6 fromIndex:v8 toIndex:0];

  return v9;
}

+ (id)moveOperationWithGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v12 = [v9 initWithOperationType:3 group:v8 fromIndex:v10 toIndex:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HFGroupDiffOperation *)self type];
      if (v6 != [(HFGroupDiffOperation *)v5 type])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v7 = [(HFGroupDiffOperation *)self group];
      v8 = [(HFGroupDiffOperation *)v5 group];
      if (![v7 isEqual:v8])
      {
        v15 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v9 = [(HFGroupDiffOperation *)self fromIndex];
      v10 = [(HFGroupDiffOperation *)v5 fromIndex];
      v11 = v9;
      v12 = v10;
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

      v16 = [(HFGroupDiffOperation *)self toIndex];
      v17 = [(HFGroupDiffOperation *)v5 toIndex];
      v18 = v16;
      v19 = v17;
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
  v3 = [(HFGroupDiffOperation *)self type];
  v4 = [(HFGroupDiffOperation *)self group];
  v5 = [v4 hash];
  v6 = [(HFGroupDiffOperation *)self fromIndex];
  v7 = [v6 hash];
  v8 = [(HFGroupDiffOperation *)self toIndex];
  v9 = (v7 << 8) ^ (v5 << 16) ^ [v8 hash];

  return v9 + v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFGroupDiffOperation *)self _operationDescriptionWithVerboseType:0];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)_operationDescriptionWithVerboseType:(BOOL)a3
{
  v3 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HFGroupDiffOperation__operationDescriptionWithVerboseType___block_invoke;
  v13[3] = &unk_277DF75E8;
  v13[4] = self;
  v5 = __61__HFGroupDiffOperation__operationDescriptionWithVerboseType___block_invoke(v13);
  v6 = [(HFGroupDiffOperation *)self type];
  if (v6 > 3)
  {
    v7 = @"(unknown operation type)";
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = off_277DFAAD0[v6];
  if (v3)
  {
LABEL_5:
    v7 = [(__CFString *)v7 stringByAppendingString:@" group"];
  }

LABEL_6:
  v8 = MEMORY[0x277CCACA8];
  v9 = [(HFGroupDiffOperation *)self group];
  v10 = [v9 groupIdentifier];
  v11 = [v8 stringWithFormat:@"%@ %@ %@", v7, v5, v10];

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