@interface ICDocCamProcessingBlocker
- (BOOL)blocked;
- (ICDocCamProcessingBlocker)initWithDelegate:(id)delegate;
- (ICDocCamProcessingBlockerDelegate)delegate;
- (void)addBlockerOfType:(id)type clearRectangles:(BOOL)rectangles clearQueue:(BOOL)queue;
- (void)removeBlockerOfType:(id)type;
@end

@implementation ICDocCamProcessingBlocker

- (ICDocCamProcessingBlocker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ICDocCamProcessingBlocker;
  v5 = [(ICDocCamProcessingBlocker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    blockerSet = v6->_blockerSet;
    v6->_blockerSet = v7;
  }

  return v6;
}

- (BOOL)blocked
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockerSet = [(ICDocCamProcessingBlocker *)selfCopy blockerSet];
  v4 = [blockerSet count] != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)addBlockerOfType:(id)type clearRectangles:(BOOL)rectangles clearQueue:(BOOL)queue
{
  queueCopy = queue;
  rectanglesCopy = rectangles;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockerSet = [(ICDocCamProcessingBlocker *)selfCopy blockerSet];
  [blockerSet addObject:typeCopy];

  if (rectanglesCopy)
  {
    delegate = [(ICDocCamProcessingBlocker *)selfCopy delegate];
    [delegate clearRectangles];
  }

  if (queueCopy)
  {
    delegate2 = [(ICDocCamProcessingBlocker *)selfCopy delegate];
    [delegate2 clearQueue];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeBlockerOfType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockerSet = [(ICDocCamProcessingBlocker *)selfCopy blockerSet];
  [blockerSet removeObject:typeCopy];

  objc_sync_exit(selfCopy);
}

- (ICDocCamProcessingBlockerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end