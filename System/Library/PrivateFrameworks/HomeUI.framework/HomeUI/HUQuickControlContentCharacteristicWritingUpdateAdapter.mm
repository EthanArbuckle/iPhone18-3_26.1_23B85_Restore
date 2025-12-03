@interface HUQuickControlContentCharacteristicWritingUpdateAdapter
- (HUQuickControlContentCharacteristicWritingDelegate)forwardingCharacteristicWritingDelegate;
- (HUQuickControlContentCharacteristicWritingUpdateAdapter)initWithItemManager:(id)manager;
- (void)_executeQueuedUpdate;
- (void)dealloc;
- (void)quickControlContent:(id)content didEndPossibleWritesForCharacteristics:(id)characteristics;
- (void)quickControlContent:(id)content willBeginPossibleWritesForCharacteristics:(id)characteristics;
- (void)quickControlContentDidUpdateCharacteristicValueOverrides:(id)overrides;
@end

@implementation HUQuickControlContentCharacteristicWritingUpdateAdapter

- (HUQuickControlContentCharacteristicWritingUpdateAdapter)initWithItemManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HUQuickControlContentCharacteristicWritingUpdateAdapter;
  v6 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemManager, manager);
    v7->_shouldIssueItemUpdatesOnCharacteristicOverrideValueChanges = 1;
  }

  return v7;
}

- (void)dealloc
{
  queuedUpdate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
  cancellationToken = [queuedUpdate cancellationToken];
  [cancellationToken cancel];

  v5.receiver = self;
  v5.super_class = HUQuickControlContentCharacteristicWritingUpdateAdapter;
  [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)&v5 dealloc];
}

- (void)_executeQueuedUpdate
{
  itemManager = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  itemManager2 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  queuedUpdate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
  affectedCharacteristics = [queuedUpdate affectedCharacteristics];
  v8 = [itemManager2 _itemsToUpdateForModifiedCharacteristics:affectedCharacteristics includeSuppressedCharacteristics:1];
  v9 = [itemManager updateResultsForItems:v8 senderSelector:a2];

  [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self setQueuedUpdate:0];
}

- (void)quickControlContentDidUpdateCharacteristicValueOverrides:(id)overrides
{
  overridesCopy = overrides;
  forwardingCharacteristicWritingDelegate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [forwardingCharacteristicWritingDelegate quickControlContentDidUpdateCharacteristicValueOverrides:overridesCopy];

  if ([(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self shouldIssueItemUpdatesOnCharacteristicOverrideValueChanges])
  {
    queuedUpdate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];

    if (!queuedUpdate)
    {
      objc_initWeak(&location, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __116__HUQuickControlContentCharacteristicWritingUpdateAdapter_quickControlContentDidUpdateCharacteristicValueOverrides___block_invoke;
      v17 = &unk_277DB8770;
      objc_copyWeak(&v18, &location);
      v8 = [mainThreadScheduler afterDelay:&v14 performBlock:0.05];

      v9 = [_HUQuickControlContentCharacteristicWriteQueuedUpdate alloc];
      v10 = [(_HUQuickControlContentCharacteristicWriteQueuedUpdate *)v9 initWithCancellationToken:v8, v14, v15, v16, v17];
      [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self setQueuedUpdate:v10];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    queuedUpdate2 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
    affectedCharacteristics = [queuedUpdate2 affectedCharacteristics];
    affectedCharacteristics2 = [overridesCopy affectedCharacteristics];
    [affectedCharacteristics unionSet:affectedCharacteristics2];
  }
}

void __116__HUQuickControlContentCharacteristicWritingUpdateAdapter_quickControlContentDidUpdateCharacteristicValueOverrides___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _executeQueuedUpdate];
}

- (void)quickControlContent:(id)content willBeginPossibleWritesForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  contentCopy = content;
  forwardingCharacteristicWritingDelegate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [forwardingCharacteristicWritingDelegate quickControlContent:contentCopy willBeginPossibleWritesForCharacteristics:characteristicsCopy];

  itemManager = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v9 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self _characteristicUpdateSuppressionReasonForContent:contentCopy];

  [itemManager beginSuppressingUpdatesForCharacteristics:characteristicsCopy withReason:v9];
}

- (void)quickControlContent:(id)content didEndPossibleWritesForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  contentCopy = content;
  forwardingCharacteristicWritingDelegate = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [forwardingCharacteristicWritingDelegate quickControlContent:contentCopy didEndPossibleWritesForCharacteristics:characteristicsCopy];

  itemManager = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v9 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self _characteristicUpdateSuppressionReasonForContent:contentCopy];

  [itemManager endSuppressingUpdatesForCharacteristicsWithReason:v9 updateAffectedItems:0];
}

- (HUQuickControlContentCharacteristicWritingDelegate)forwardingCharacteristicWritingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingCharacteristicWritingDelegate);

  return WeakRetained;
}

@end