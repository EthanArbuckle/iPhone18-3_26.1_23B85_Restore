@interface HFItemDiffOperation
+ (id)deleteOperationWithItem:(id)item atIndexPath:(id)path;
+ (id)insertOperationWithItem:(id)item atIndexPath:(id)path;
+ (id)moveOperationWithItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath;
+ (id)reloadOperationWithItem:(id)item atIndexPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (HFItemDiffOperation)initWithOperationType:(unint64_t)type item:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath;
- (NSString)description;
- (id)_operationDescriptionWithVerboseType:(BOOL)type;
- (unint64_t)hash;
@end

@implementation HFItemDiffOperation

- (HFItemDiffOperation)initWithOperationType:(unint64_t)type item:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath
{
  itemCopy = item;
  pathCopy = path;
  indexPathCopy = indexPath;
  v17.receiver = self;
  v17.super_class = HFItemDiffOperation;
  v14 = [(HFItemDiffOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_item, item);
    objc_storeStrong(&v15->_fromIndexPath, path);
    objc_storeStrong(&v15->_toIndexPath, indexPath);
  }

  return v15;
}

+ (id)insertOperationWithItem:(id)item atIndexPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  v8 = [[self alloc] initWithOperationType:1 item:itemCopy fromIndexPath:0 toIndexPath:pathCopy];

  return v8;
}

+ (id)deleteOperationWithItem:(id)item atIndexPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  v8 = [[self alloc] initWithOperationType:2 item:itemCopy fromIndexPath:pathCopy toIndexPath:0];

  return v8;
}

+ (id)moveOperationWithItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  itemCopy = item;
  v11 = [[self alloc] initWithOperationType:3 item:itemCopy fromIndexPath:pathCopy toIndexPath:indexPathCopy];

  return v11;
}

+ (id)reloadOperationWithItem:(id)item atIndexPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  v8 = [[self alloc] initWithOperationType:0 item:itemCopy fromIndexPath:pathCopy toIndexPath:pathCopy];

  return v8;
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
      type = [(HFItemDiffOperation *)self type];
      if (type != [(HFItemDiffOperation *)v5 type])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      item = [(HFItemDiffOperation *)self item];
      item2 = [(HFItemDiffOperation *)v5 item];
      if (![item isEqual:item2])
      {
        v15 = 0;
LABEL_23:

        goto LABEL_24;
      }

      fromIndexPath = [(HFItemDiffOperation *)self fromIndexPath];
      fromIndexPath2 = [(HFItemDiffOperation *)v5 fromIndexPath];
      v11 = fromIndexPath;
      v12 = fromIndexPath2;
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

      toIndexPath = [(HFItemDiffOperation *)self toIndexPath];
      toIndexPath2 = [(HFItemDiffOperation *)v5 toIndexPath];
      v18 = toIndexPath;
      v19 = toIndexPath2;
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
  type = [(HFItemDiffOperation *)self type];
  item = [(HFItemDiffOperation *)self item];
  v5 = [item hash];
  fromIndexPath = [(HFItemDiffOperation *)self fromIndexPath];
  v7 = [fromIndexPath hash];
  toIndexPath = [(HFItemDiffOperation *)self toIndexPath];
  v9 = (v7 << 8) ^ (v5 << 16) ^ [toIndexPath hash];

  return v9 + type;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFItemDiffOperation *)self _operationDescriptionWithVerboseType:0];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)_operationDescriptionWithVerboseType:(BOOL)type
{
  typeCopy = type;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HFItemDiffOperation__operationDescriptionWithVerboseType___block_invoke;
  v12[3] = &unk_277DF3568;
  v12[4] = self;
  v5 = __60__HFItemDiffOperation__operationDescriptionWithVerboseType___block_invoke(v12);
  type = [(HFItemDiffOperation *)self type];
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
    v7 = [(__CFString *)v7 stringByAppendingString:@" item"];
  }

LABEL_6:
  v8 = MEMORY[0x277CCACA8];
  item = [(HFItemDiffOperation *)self item];
  v10 = [v8 stringWithFormat:@"%@ %@ %@", v7, v5, item];

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