@interface FCPseudoOperation
- (FCPseudoOperation)initWithCancelBlock:(id)block priorityBlock:(id)priorityBlock shortDescription:(id)description longDescription:(id)longDescription;
- (void)cancel;
- (void)setRelativePriority:(int64_t)priority;
@end

@implementation FCPseudoOperation

- (FCPseudoOperation)initWithCancelBlock:(id)block priorityBlock:(id)priorityBlock shortDescription:(id)description longDescription:(id)longDescription
{
  blockCopy = block;
  priorityBlockCopy = priorityBlock;
  descriptionCopy = description;
  longDescriptionCopy = longDescription;
  v24.receiver = self;
  v24.super_class = FCPseudoOperation;
  v14 = [(FCPseudoOperation *)&v24 init];
  if (v14)
  {
    v15 = [blockCopy copy];
    cancelBlock = v14->_cancelBlock;
    v14->_cancelBlock = v15;

    v17 = [priorityBlockCopy copy];
    priorityBlock = v14->_priorityBlock;
    v14->_priorityBlock = v17;

    v19 = [descriptionCopy copy];
    shortOperationDescription = v14->_shortOperationDescription;
    v14->_shortOperationDescription = v19;

    v21 = [longDescriptionCopy copy];
    longOperationDescription = v14->_longOperationDescription;
    v14->_longOperationDescription = v21;
  }

  return v14;
}

- (void)cancel
{
  cancelBlock = [(FCPseudoOperation *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(FCPseudoOperation *)self cancelBlock];
    cancelBlock2[2]();
  }
}

- (void)setRelativePriority:(int64_t)priority
{
  if (self->_relativePriority != priority)
  {
    self->_relativePriority = priority;
    priorityBlock = [(FCPseudoOperation *)self priorityBlock];

    if (priorityBlock)
    {
      priorityBlock2 = [(FCPseudoOperation *)self priorityBlock];
      priorityBlock2[2](priorityBlock2, priority);
    }
  }
}

@end