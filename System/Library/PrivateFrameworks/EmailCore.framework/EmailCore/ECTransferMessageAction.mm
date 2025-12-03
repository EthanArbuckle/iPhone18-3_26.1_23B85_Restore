@interface ECTransferMessageAction
- (ECTransferMessageAction)initWithBuilder:(id)builder;
- (NSArray)itemsToCopy;
- (NSArray)itemsToDelete;
- (NSArray)itemsToDownload;
- (NSString)description;
- (void)setItemsToCopy:(id)copy;
- (void)setItemsToDelete:(id)delete;
- (void)setItemsToDownload:(id)download;
- (void)updateWithCompletedItems:(id)items forPhase:(int64_t)phase;
- (void)updateWithFailedItems:(id)items forPhase:(int64_t)phase;
@end

@implementation ECTransferMessageAction

- (ECTransferMessageAction)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECTransferMessageAction;
  v5 = [(ECTransferMessageAction *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
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
  array = [(NSMutableOrderedSet *)self->_itemsToDownload array];
  v3 = [array copy];

  return v3;
}

- (void)setItemsToDownload:(id)download
{
  downloadCopy = download;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:downloadCopy];
  itemsToDownload = self->_itemsToDownload;
  self->_itemsToDownload = v4;
}

- (NSArray)itemsToCopy
{
  array = [(NSMutableOrderedSet *)self->_itemsToCopy array];
  v3 = [array copy];

  return v3;
}

- (void)setItemsToCopy:(id)copy
{
  copyCopy = copy;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:copyCopy];
  itemsToCopy = self->_itemsToCopy;
  self->_itemsToCopy = v4;
}

- (NSArray)itemsToDelete
{
  array = [(NSMutableOrderedSet *)self->_itemsToDelete array];
  v3 = [array copy];

  return v3;
}

- (void)setItemsToDelete:(id)delete
{
  deleteCopy = delete;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:deleteCopy];
  itemsToDelete = self->_itemsToDelete;
  self->_itemsToDelete = v4;
}

- (void)updateWithCompletedItems:(id)items forPhase:(int64_t)phase
{
  itemsCopy = items;
  if (phase == 4)
  {
    [(NSMutableOrderedSet *)self->_itemsToDelete removeObjectsInArray:itemsCopy];
    goto LABEL_17;
  }

  if (phase != 3)
  {
    if (phase != 1)
    {
      goto LABEL_17;
    }

    [(NSMutableOrderedSet *)self->_itemsToDownload removeObjectsInArray:itemsCopy];
    destinationMailboxURL = [(ECTransferMessageAction *)self destinationMailboxURL];

    if (destinationMailboxURL)
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
          destinationMailboxURL2 = [(ECTransferMessageAction *)self destinationMailboxURL];
          [(ECLocalMessageAction *)self setMailboxURL:destinationMailboxURL2];
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v7 = &OBJC_IVAR___ECTransferMessageAction__itemsToDelete;
    }

    [*(&self->super.super.isa + *v7) addObjectsFromArray:itemsCopy];
    goto LABEL_13;
  }

  [(NSMutableOrderedSet *)self->_itemsToCopy removeObjectsInArray:itemsCopy];
  if ([(ECTransferMessageAction *)self transferType]== 1)
  {
    [(NSMutableOrderedSet *)self->_itemsToDelete addObjectsFromArray:itemsCopy];
    if (![(NSMutableOrderedSet *)self->_itemsToCopy count])
    {
      destinationMailboxURL2 = [(ECTransferMessageAction *)self sourceMailboxURL];
      [(ECLocalMessageAction *)self setMailboxURL:destinationMailboxURL2];
LABEL_16:
    }
  }

LABEL_17:
}

- (void)updateWithFailedItems:(id)items forPhase:(int64_t)phase
{
  itemsCopy = items;
  v8 = itemsCopy;
  switch(phase)
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

  [*(&self->super.super.isa + *v7) removeObjectsInArray:itemsCopy];
LABEL_8:
}

@end