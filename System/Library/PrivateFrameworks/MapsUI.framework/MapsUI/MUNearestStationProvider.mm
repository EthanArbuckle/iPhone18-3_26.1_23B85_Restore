@interface MUNearestStationProvider
- (void)cancel;
- (void)fetchStationForLineItemIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MUNearestStationProvider

- (void)cancel
{
  [(MKLocationManagerOperation *)self->_locationOperation cancel];
  [(MKMapServiceTicket *)self->_nearestStationTicket cancel];
  self->_lastRequestedNearestID = 0;
}

- (void)fetchStationForLineItemIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([identifierCopy muid])
    {
      objc_initWeak(&location, self);
      mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __73__MUNearestStationProvider_fetchStationForLineItemIdentifier_completion___block_invoke;
      v14 = &unk_1E8218CF8;
      objc_copyWeak(&v17, &location);
      v16 = completionCopy;
      v15 = identifierCopy;
      v9 = [mEMORY[0x1E696F268] singleLocationUpdateWithHandler:&v11];
      locationOperation = self->_locationOperation;
      self->_locationOperation = v9;

      [(MKLocationManagerOperation *)self->_locationOperation start:v11];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __73__MUNearestStationProvider_fetchStationForLineItemIdentifier_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v6)
    {
      (*(a1[5] + 2))();
    }

    else
    {
      WeakRetained[3] = [a1[4] muid];
      v8 = [MEMORY[0x1E696F298] sharedService];
      v9 = a1[4];
      [v5 coordinate];
      v11 = v10;
      v13 = v12;
      v14 = [v8 defaultTraits];
      v15 = [v8 ticketForNearestTransitStation:v9 coordinate:v14 traits:{v11, v13}];
      v16 = WeakRetained[2];
      WeakRetained[2] = v15;

      v17 = WeakRetained[2];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__MUNearestStationProvider_fetchStationForLineItemIdentifier_completion___block_invoke_2;
      v18[3] = &unk_1E8218CD0;
      objc_copyWeak(&v20, a1 + 6);
      v19 = a1[5];
      [v17 submitWithHandler:v18 networkActivity:0];

      objc_destroyWeak(&v20);
    }
  }
}

void __73__MUNearestStationProvider_fetchStationForLineItemIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      WeakRetained[3] = 0;
      v8 = v5;
      v9 = v7[5];
      v7[5] = v8;
    }

    else
    {
      v10 = WeakRetained[5];
      WeakRetained[5] = 0;

      v11 = [v12 firstObject];
      v9 = v7[4];
      v7[4] = v11;
    }

    (*(*(a1 + 32) + 16))();
  }
}

@end