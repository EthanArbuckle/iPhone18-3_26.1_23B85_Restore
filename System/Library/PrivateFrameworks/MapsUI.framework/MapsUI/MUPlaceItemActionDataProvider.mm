@interface MUPlaceItemActionDataProvider
- (void)_placeItemDidUpdate;
@end

@implementation MUPlaceItemActionDataProvider

- (void)_placeItemDidUpdate
{
  v3 = [MUPlaceDataAvailability alloc];
  v4 = [(MKPlaceItemActionDataProvider *)self placeItem];
  v5 = [v4 mapItem];
  v6 = [(MUPlaceDataAvailability *)v3 initWithMapItem:v5 options:[(MKPlaceItemActionDataProvider *)self options]];
  availability = self->_availability;
  self->_availability = v6;

  if ([(MUPlaceDataAvailability *)self->_availability isRouteCreationAvailable])
  {
    v8 = objc_alloc(MEMORY[0x1E69A1E70]);
    v9 = [(MKPlaceItemActionDataProvider *)self mapItem];
    [v9 _coordinate];
    v11 = v10;
    v12 = [(MKPlaceItemActionDataProvider *)self mapItem];
    [v12 _coordinate];
    v13 = [v8 initWithLatitude:v11 longitude:?];

    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69A1D18];
    v15 = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__MUPlaceItemActionDataProvider__placeItemDidUpdate__block_invoke;
    v17[3] = &unk_1E821A538;
    objc_copyWeak(&v18, &location);
    [v14 customRouteCreationSupportedForLocation:v13 queue:v15 handler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_isDroppedPinOrAddressInSupportedCustomRouteRegion = 0;
  }
}

uint64_t __52__MUPlaceItemActionDataProvider__placeItemDidUpdate__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = WeakRetained;
      WeakRetained = [WeakRetained[3] isRouteCreationAvailable];
      v4 = v6;
    }

    else
    {
      WeakRetained = 0;
    }

    *(v4 + 32) = WeakRetained;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

@end