@interface HFActivityLogCoordinator
- (HFActivityLogCoordinator)initWithHome:(id)a3 targetKind:(unint64_t)a4;
- (HFActivityLogCoordinatorDelegate)delegate;
- (void)checkIfEventsExist;
@end

@implementation HFActivityLogCoordinator

- (HFActivityLogCoordinator)initWithHome:(id)a3 targetKind:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HFActivityLogCoordinator;
  v8 = [(HFActivityLogCoordinator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v10 = [[HFActivityLogCoordinator_Swift alloc] initWithHome:v7 targetKind:a4];
    coordinator = v9->_coordinator;
    v9->_coordinator = v10;

    v9->_eventsExist = 0;
  }

  return v9;
}

- (void)checkIfEventsExist
{
  objc_initWeak(&location, self);
  v3 = [(HFActivityLogCoordinator *)self coordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HFActivityLogCoordinator_checkIfEventsExist__block_invoke;
  v4[3] = &unk_277E001B8;
  objc_copyWeak(&v5, &location);
  [v3 eventsExistWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__HFActivityLogCoordinator_checkIfEventsExist__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3 && WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setEventsExist:a2];
    v6 = [v7 delegate];
    [v6 activityLogCoordinator:v7 didDetermineEventsExist:a2];

    WeakRetained = v7;
  }
}

- (HFActivityLogCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end