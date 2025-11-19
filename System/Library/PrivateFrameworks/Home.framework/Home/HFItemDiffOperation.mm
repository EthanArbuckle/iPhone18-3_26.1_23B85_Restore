@interface HFItemDiffOperation
+ (id)deleteOperationWithItem:(id)a3 atIndexPath:(id)a4;
+ (id)insertOperationWithItem:(id)a3 atIndexPath:(id)a4;
+ (id)moveOperationWithItem:(id)a3 fromIndexPath:(id)a4 toIndexPath:(id)a5;
+ (id)reloadOperationWithItem:(id)a3 atIndexPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HFItemDiffOperation)initWithOperationType:(unint64_t)a3 item:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6;
- (NSString)description;
- (id)_operationDescriptionWithVerboseType:(BOOL)a3;
- (unint64_t)hash;
@end

@implementation HFItemDiffOperation

- (HFItemDiffOperation)initWithOperationType:(unint64_t)a3 item:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HFItemDiffOperation;
  v14 = [(HFItemDiffOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_item, a4);
    objc_storeStrong(&v15->_fromIndexPath, a5);
    objc_storeStrong(&v15->_toIndexPath, a6);
  }

  return v15;
}

+ (id)insertOperationWithItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOperationType:1 item:v7 fromIndexPath:0 toIndexPath:v6];

  return v8;
}

+ (id)deleteOperationWithItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOperationType:2 item:v7 fromIndexPath:v6 toIndexPath:0];

  return v8;
}

+ (id)moveOperationWithItem:(id)a3 fromIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithOperationType:3 item:v10 fromIndexPath:v9 toIndexPath:v8];

  return v11;
}

+ (id)reloadOperationWithItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOperationType:0 item:v7 fromIndexPath:v6 toIndexPath:v6];

  return v8;
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
      v6 = [(HFItemDiffOperation *)self type];
      if (v6 != [(HFItemDiffOperation *)v5 type])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v7 = [(HFItemDiffOperation *)self item];
      v8 = [(HFItemDiffOperation *)v5 item];
      if (![v7 isEqual:v8])
      {
        v15 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v9 = [(HFItemDiffOperation *)self fromIndexPath];
      v10 = [(HFItemDiffOperation *)v5 fromIndexPath];
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

      v16 = [(HFItemDiffOperation *)self toIndexPath];
      v17 = [(HFItemDiffOperation *)v5 toIndexPath];
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
  v3 = [(HFItemDiffOperation *)self type];
  v4 = [(HFItemDiffOperation *)self item];
  v5 = [v4 hash];
  v6 = [(HFItemDiffOperation *)self fromIndexPath];
  v7 = [v6 hash];
  v8 = [(HFItemDiffOperation *)self toIndexPath];
  v9 = (v7 << 8) ^ (v5 << 16) ^ [v8 hash];

  return v9 + v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFItemDiffOperation *)self _operationDescriptionWithVerboseType:0];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)_operationDescriptionWithVerboseType:(BOOL)a3
{
  v3 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HFItemDiffOperation__operationDescriptionWithVerboseType___block_invoke;
  v12[3] = &unk_277DF3568;
  v12[4] = self;
  v5 = __60__HFItemDiffOperation__operationDescriptionWithVerboseType___block_invoke(v12);
  v6 = [(HFItemDiffOperation *)self type];
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
    v7 = [(__CFString *)v7 stringByAppendingString:@" item"];
  }

LABEL_6:
  v8 = MEMORY[0x277CCACA8];
  v9 = [(HFItemDiffOperation *)self item];
  v10 = [v8 stringWithFormat:@"%@ %@ %@", v7, v5, v9];

  return v10;
}

id __60__HFItemDiffOperation__operationDescriptionWithVerboseType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) type];
  if (v3 < 2)
  {
    v9 = [*(a1 + 32) toIndexPath];
LABEL_7:
    v5 = v9;
    v1 = _HFStandardIndexPathDescription(v9);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v9 = [*(a1 + 32) fromIndexPath];
    goto LABEL_7;
  }

  if (v3 != 3)
  {
    goto LABEL_9;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 32) fromIndexPath];
  v6 = _HFStandardIndexPathDescription(v5);
  v7 = [*(a1 + 32) toIndexPath];
  v8 = _HFStandardIndexPathDescription(v7);
  v1 = [v4 stringWithFormat:@"%@ -> %@", v6, v8];

LABEL_8:
LABEL_9:

  return v1;
}

@end