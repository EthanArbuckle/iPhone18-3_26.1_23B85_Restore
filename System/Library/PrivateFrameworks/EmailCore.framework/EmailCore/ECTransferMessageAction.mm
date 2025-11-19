@interface ECTransferMessageAction
- (ECTransferMessageAction)initWithBuilder:(id)a3;
- (NSArray)itemsToCopy;
- (NSArray)itemsToDelete;
- (NSArray)itemsToDownload;
- (NSString)description;
- (void)setItemsToCopy:(id)a3;
- (void)setItemsToDelete:(id)a3;
- (void)setItemsToDownload:(id)a3;
- (void)updateWithCompletedItems:(id)a3 forPhase:(int64_t)a4;
- (void)updateWithFailedItems:(id)a3 forPhase:(int64_t)a4;
@end

@implementation ECTransferMessageAction

- (ECTransferMessageAction)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECTransferMessageAction;
  v5 = [(ECTransferMessageAction *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = ECTransferMessageAction;
  v3 = [(ECLocalMessageAction *)&v7 description];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", num items to download %lu, num items to copy %lu, num items to delete = %lu, transfer type = %ld", -[NSMutableOrderedSet count](self->_itemsToDownload, "count"), -[NSMutableOrderedSet count](self->_itemsToCopy, "count"), -[NSMutableOrderedSet count](self->_itemsToDelete, "count"), -[ECTransferMessageAction transferType](self, "transferType")];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (NSArray)itemsToDownload
{
  v2 = [(NSMutableOrderedSet *)self->_itemsToDownload array];
  v3 = [v2 copy];

  return v3;
}

- (void)setItemsToDownload:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
  itemsToDownload = self->_itemsToDownload;
  self->_itemsToDownload = v4;
}

- (NSArray)itemsToCopy
{
  v2 = [(NSMutableOrderedSet *)self->_itemsToCopy array];
  v3 = [v2 copy];

  return v3;
}

- (void)setItemsToCopy:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
  itemsToCopy = self->_itemsToCopy;
  self->_itemsToCopy = v4;
}

- (NSArray)itemsToDelete
{
  v2 = [(NSMutableOrderedSet *)self->_itemsToDelete array];
  v3 = [v2 copy];

  return v3;
}

- (void)setItemsToDelete:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
  itemsToDelete = self->_itemsToDelete;
  self->_itemsToDelete = v4;
}

- (void)updateWithCompletedItems:(id)a3 forPhase:(int64_t)a4
{
  v9 = a3;
  if (a4 == 4)
  {
    [(NSMutableOrderedSet *)self->_itemsToDelete removeObjectsInArray:v9];
    goto LABEL_17;
  }

  if (a4 != 3)
  {
    if (a4 != 1)
    {
      goto LABEL_17;
    }

    [(NSMutableOrderedSet *)self->_itemsToDownload removeObjectsInArray:v9];
    v6 = [(ECTransferMessageAction *)self destinationMailboxURL];

    if (v6)
    {
      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToCopy;
    }

    else
    {
      if ([(ECTransferMessageAction *)self transferType]!= 1)
      {
LABEL_13:
        if (![(NSMutableOrderedSet *)self->_itemsToDownload count]&& [(NSMutableOrderedSet *)self->_itemsToCopy count])
        {
          v8 = [(ECTransferMessageAction *)self destinationMailboxURL];
          [(ECLocalMessageAction *)self setMailboxURL:v8];
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToDelete;
    }

    [*(&self->super.super.isa + *v7) addObjectsFromArray:v9];
    goto LABEL_13;
  }

  [(NSMutableOrderedSet *)self->_itemsToCopy removeObjectsInArray:v9];
  if ([(ECTransferMessageAction *)self transferType]== 1)
  {
    [(NSMutableOrderedSet *)self->_itemsToDelete addObjectsFromArray:v9];
    if (![(NSMutableOrderedSet *)self->_itemsToCopy count])
    {
      v8 = [(ECTransferMessageAction *)self sourceMailboxURL];
      [(ECLocalMessageAction *)self setMailboxURL:v8];
LABEL_16:
    }
  }

LABEL_17:
}

- (void)updateWithFailedItems:(id)a3 forPhase:(int64_t)a4
{
  v6 = a3;
  v8 = v6;
  switch(a4)
  {
    case 1:
      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToDownload;
      break;
    case 3:
      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToCopy;
      break;
    case 4:
      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToDelete;
      break;
    default:
      goto LABEL_8;
  }

  [*(&self->super.super.isa + *v7) removeObjectsInArray:v6];
LABEL_8:
}

@end