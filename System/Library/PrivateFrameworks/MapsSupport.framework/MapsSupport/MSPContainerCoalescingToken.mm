@interface MSPContainerCoalescingToken
- (MSPContainerCoalescingToken)init;
- (MSPContainerCoalescingToken)initWithContainerOwner:(id)owner context:(id)context;
- (void)dealloc;
- (void)endCoalescingEdits;
@end

@implementation MSPContainerCoalescingToken

- (MSPContainerCoalescingToken)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (MSPContainerCoalescingToken)initWithContainerOwner:(id)owner context:(id)context
{
  ownerCopy = owner;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MSPContainerCoalescingToken;
  v8 = [(MSPContainerCoalescingToken *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_container, ownerCopy);
    v10 = [contextCopy copy];
    context = v9->_context;
    v9->_context = v10;
  }

  return v9;
}

- (void)endCoalescingEdits
{
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    [WeakRetained _endCoalescingEditsForContext:self->_context];

    self->_invalidated = 1;
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(MSPContainerCoalescingToken *)self endCoalescingEdits];
  }

  v3.receiver = self;
  v3.super_class = MSPContainerCoalescingToken;
  [(MSPContainerCoalescingToken *)&v3 dealloc];
}

@end