@interface HUQuickControlContentCharacteristicWritingUpdateAdapter
- (HUQuickControlContentCharacteristicWritingDelegate)forwardingCharacteristicWritingDelegate;
- (HUQuickControlContentCharacteristicWritingUpdateAdapter)initWithItemManager:(id)a3;
- (void)_executeQueuedUpdate;
- (void)dealloc;
- (void)quickControlContent:(id)a3 didEndPossibleWritesForCharacteristics:(id)a4;
- (void)quickControlContent:(id)a3 willBeginPossibleWritesForCharacteristics:(id)a4;
- (void)quickControlContentDidUpdateCharacteristicValueOverrides:(id)a3;
@end

@implementation HUQuickControlContentCharacteristicWritingUpdateAdapter

- (HUQuickControlContentCharacteristicWritingUpdateAdapter)initWithItemManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUQuickControlContentCharacteristicWritingUpdateAdapter;
  v6 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemManager, a3);
    v7->_shouldIssueItemUpdatesOnCharacteristicOverrideValueChanges = 1;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
  v4 = [v3 cancellationToken];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = HUQuickControlContentCharacteristicWritingUpdateAdapter;
  [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)&v5 dealloc];
}

- (void)_executeQueuedUpdate
{
  v4 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v5 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v6 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
  v7 = [v6 affectedCharacteristics];
  v8 = [v5 _itemsToUpdateForModifiedCharacteristics:v7 includeSuppressedCharacteristics:1];
  v9 = [v4 updateResultsForItems:v8 senderSelector:a2];

  [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self setQueuedUpdate:0];
}

- (void)quickControlContentDidUpdateCharacteristicValueOverrides:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [v5 quickControlContentDidUpdateCharacteristicValueOverrides:v4];

  if ([(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self shouldIssueItemUpdatesOnCharacteristicOverrideValueChanges])
  {
    v6 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __116__HUQuickControlContentCharacteristicWritingUpdateAdapter_quickControlContentDidUpdateCharacteristicValueOverrides___block_invoke;
      v17 = &unk_277DB8770;
      objc_copyWeak(&v18, &location);
      v8 = [v7 afterDelay:&v14 performBlock:0.05];

      v9 = [_HUQuickControlContentCharacteristicWriteQueuedUpdate alloc];
      v10 = [(_HUQuickControlContentCharacteristicWriteQueuedUpdate *)v9 initWithCancellationToken:v8, v14, v15, v16, v17];
      [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self setQueuedUpdate:v10];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    v11 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self queuedUpdate];
    v12 = [v11 affectedCharacteristics];
    v13 = [v4 affectedCharacteristics];
    [v12 unionSet:v13];
  }
}

void __116__HUQuickControlContentCharacteristicWritingUpdateAdapter_quickControlContentDidUpdateCharacteristicValueOverrides___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _executeQueuedUpdate];
}

- (void)quickControlContent:(id)a3 willBeginPossibleWritesForCharacteristics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [v8 quickControlContent:v7 willBeginPossibleWritesForCharacteristics:v6];

  v10 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v9 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self _characteristicUpdateSuppressionReasonForContent:v7];

  [v10 beginSuppressingUpdatesForCharacteristics:v6 withReason:v9];
}

- (void)quickControlContent:(id)a3 didEndPossibleWritesForCharacteristics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self forwardingCharacteristicWritingDelegate];
  [v8 quickControlContent:v7 didEndPossibleWritesForCharacteristics:v6];

  v10 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self itemManager];
  v9 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)self _characteristicUpdateSuppressionReasonForContent:v7];

  [v10 endSuppressingUpdatesForCharacteristicsWithReason:v9 updateAffectedItems:0];
}

- (HUQuickControlContentCharacteristicWritingDelegate)forwardingCharacteristicWritingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingCharacteristicWritingDelegate);

  return WeakRetained;
}

@end