@interface HFItemManagerDelegateUpdateRequest
- (HFItemManagerDelegateUpdateRequest)init;
- (HFItemManagerDelegateUpdateRequest)initWithChanges:(id)a3 isInitialUpdate:(BOOL)a4 applyChangesBlock:(id)a5 issueDelegateMessagesBlock:(id)a6;
- (id)description;
- (void)performWithOptions:(unint64_t)a3;
@end

@implementation HFItemManagerDelegateUpdateRequest

- (HFItemManagerDelegateUpdateRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithChanges_isInitialUpdate_applyChangesBlock_issueDelegateMessagesBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:101 description:{@"%s is unavailable; use %@ instead", "-[HFItemManagerDelegateUpdateRequest init]", v5}];

  return 0;
}

- (HFItemManagerDelegateUpdateRequest)initWithChanges:(id)a3 isInitialUpdate:(BOOL)a4 applyChangesBlock:(id)a5 issueDelegateMessagesBlock:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HFItemManagerDelegateUpdateRequest;
  v14 = [(HFItemManagerDelegateUpdateRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_changes, a3);
    v15->_initialUpdate = a4;
    v16 = _Block_copy(v12);
    applyChangesBlock = v15->_applyChangesBlock;
    v15->_applyChangesBlock = v16;

    v18 = _Block_copy(v13);
    issueDelegateMessagesBlock = v15->_issueDelegateMessagesBlock;
    v15->_issueDelegateMessagesBlock = v18;
  }

  return v15;
}

- (void)performWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5 = [(HFItemManagerDelegateUpdateRequest *)self applyChangesBlock];
  v5[2]();

  if ((v3 & 1) == 0)
  {
    v6 = [(HFItemManagerDelegateUpdateRequest *)self issueDelegateMessagesBlock];
    v6[2]();
  }

  self->_debug_wasPerformed = 1;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendBool:-[HFItemManagerDelegateUpdateRequest isInitialUpdate](self withName:"isInitialUpdate") ifEqualTo:{@"isInitialUpdate", 1}];
  v5 = [(HFItemManagerDelegateUpdateRequest *)self changes];
  v6 = [v3 appendObject:v5 withName:@"changes"];

  v7 = [v3 build];

  return v7;
}

@end