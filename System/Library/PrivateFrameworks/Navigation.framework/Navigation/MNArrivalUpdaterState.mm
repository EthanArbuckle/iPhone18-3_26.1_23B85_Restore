@interface MNArrivalUpdaterState
@end

@implementation MNArrivalUpdaterState

void __47___MNArrivalUpdaterState_Arrived_onEnterState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained arrivalUpdater];
    v4 = [v3 safeDelegate];
    [v4 arrivalUpdater:v3 didTimeoutAtLegIndex:*(a1 + 40) withReason:1];

    v5 = v6[4];
    v6[4] = 0;

    WeakRetained = v6;
  }
}

@end