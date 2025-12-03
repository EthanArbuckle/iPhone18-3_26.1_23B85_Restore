@interface HFItemManagerDelegateUpdateRequest
- (HFItemManagerDelegateUpdateRequest)init;
- (HFItemManagerDelegateUpdateRequest)initWithChanges:(id)changes isInitialUpdate:(BOOL)update applyChangesBlock:(id)block issueDelegateMessagesBlock:(id)messagesBlock;
- (id)description;
- (void)performWithOptions:(unint64_t)options;
@end

@implementation HFItemManagerDelegateUpdateRequest

- (HFItemManagerDelegateUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithChanges_isInitialUpdate_applyChangesBlock_issueDelegateMessagesBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:101 description:{@"%s is unavailable; use %@ instead", "-[HFItemManagerDelegateUpdateRequest init]", v5}];

  return 0;
}

- (HFItemManagerDelegateUpdateRequest)initWithChanges:(id)changes isInitialUpdate:(BOOL)update applyChangesBlock:(id)block issueDelegateMessagesBlock:(id)messagesBlock
{
  changesCopy = changes;
  blockCopy = block;
  messagesBlockCopy = messagesBlock;
  v21.receiver = self;
  v21.super_class = HFItemManagerDelegateUpdateRequest;
  v14 = [(HFItemManagerDelegateUpdateRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_changes, changes);
    v15->_initialUpdate = update;
    v16 = _Block_copy(blockCopy);
    applyChangesBlock = v15->_applyChangesBlock;
    v15->_applyChangesBlock = v16;

    v18 = _Block_copy(messagesBlockCopy);
    issueDelegateMessagesBlock = v15->_issueDelegateMessagesBlock;
    v15->_issueDelegateMessagesBlock = v18;
  }

  return v15;
}

- (void)performWithOptions:(unint64_t)options
{
  optionsCopy = options;
  applyChangesBlock = [(HFItemManagerDelegateUpdateRequest *)self applyChangesBlock];
  applyChangesBlock[2]();

  if ((optionsCopy & 1) == 0)
  {
    issueDelegateMessagesBlock = [(HFItemManagerDelegateUpdateRequest *)self issueDelegateMessagesBlock];
    issueDelegateMessagesBlock[2]();
  }

  self->_debug_wasPerformed = 1;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendBool:-[HFItemManagerDelegateUpdateRequest isInitialUpdate](self withName:"isInitialUpdate") ifEqualTo:{@"isInitialUpdate", 1}];
  changes = [(HFItemManagerDelegateUpdateRequest *)self changes];
  v6 = [v3 appendObject:changes withName:@"changes"];

  build = [v3 build];

  return build;
}

@end