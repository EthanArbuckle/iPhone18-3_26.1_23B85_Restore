@interface FCPseudoOperation
- (FCPseudoOperation)initWithCancelBlock:(id)a3 priorityBlock:(id)a4 shortDescription:(id)a5 longDescription:(id)a6;
- (void)cancel;
- (void)setRelativePriority:(int64_t)a3;
@end

@implementation FCPseudoOperation

- (FCPseudoOperation)initWithCancelBlock:(id)a3 priorityBlock:(id)a4 shortDescription:(id)a5 longDescription:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FCPseudoOperation;
  v14 = [(FCPseudoOperation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    cancelBlock = v14->_cancelBlock;
    v14->_cancelBlock = v15;

    v17 = [v11 copy];
    priorityBlock = v14->_priorityBlock;
    v14->_priorityBlock = v17;

    v19 = [v12 copy];
    shortOperationDescription = v14->_shortOperationDescription;
    v14->_shortOperationDescription = v19;

    v21 = [v13 copy];
    longOperationDescription = v14->_longOperationDescription;
    v14->_longOperationDescription = v21;
  }

  return v14;
}

- (void)cancel
{
  v3 = [(FCPseudoOperation *)self cancelBlock];

  if (v3)
  {
    v4 = [(FCPseudoOperation *)self cancelBlock];
    v4[2]();
  }
}

- (void)setRelativePriority:(int64_t)a3
{
  if (self->_relativePriority != a3)
  {
    self->_relativePriority = a3;
    v5 = [(FCPseudoOperation *)self priorityBlock];

    if (v5)
    {
      v6 = [(FCPseudoOperation *)self priorityBlock];
      v6[2](v6, a3);
    }
  }
}

@end