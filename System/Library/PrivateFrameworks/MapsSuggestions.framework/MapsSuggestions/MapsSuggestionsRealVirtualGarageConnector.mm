@interface MapsSuggestionsRealVirtualGarageConnector
- (MapsSuggestionsVirtualGarageConnectorDelegate)delegate;
- (NSString)uniqueName;
- (void)closeVGConnection;
- (void)fetchStateOfChargeForVehicleWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchUnpairedVehiclesWithHandler:(id)handler;
- (void)openVGConnection;
- (void)startObservingVG;
- (void)stopObservingVG;
- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles;
@end

@implementation MapsSuggestionsRealVirtualGarageConnector

- (void)openVGConnection
{
  mEMORY[0x1E69DF8B0] = [MEMORY[0x1E69DF8B0] sharedService];
  [mEMORY[0x1E69DF8B0] openForClient:self];
}

- (void)closeVGConnection
{
  mEMORY[0x1E69DF8B0] = [MEMORY[0x1E69DF8B0] sharedService];
  [mEMORY[0x1E69DF8B0] closeForClient:self];
}

- (void)startObservingVG
{
  mEMORY[0x1E69DF8B0] = [MEMORY[0x1E69DF8B0] sharedService];
  [mEMORY[0x1E69DF8B0] registerObserver:self];
}

- (void)stopObservingVG
{
  mEMORY[0x1E69DF8B0] = [MEMORY[0x1E69DF8B0] sharedService];
  [mEMORY[0x1E69DF8B0] unregisterObserver:self];
}

- (void)fetchUnpairedVehiclesWithHandler:(id)handler
{
  v3 = MEMORY[0x1E69DF8B0];
  handlerCopy = handler;
  sharedService = [v3 sharedService];
  [sharedService virtualGarageGetListOfUnpairedVehiclesWithReply:handlerCopy];
}

- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles
{
  v16 = *MEMORY[0x1E69E9840];
  garageCopy = garage;
  vehiclesCopy = vehicles;
  delegate = [(MapsSuggestionsRealVirtualGarageConnector *)self delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate virtualGarageDidUpdateUnpairedVehicles:vehiclesCopy];
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRealVirtualGarageConnector.m";
      v12 = 1026;
      v13 = 63;
      v14 = 2082;
      v15 = "[MapsSuggestionsRealVirtualGarageConnector virtualGarage:didUpdateUnpairedVehicles:]";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)fetchStateOfChargeForVehicleWithIdentifier:(id)identifier handler:(id)handler
{
  v5 = MEMORY[0x1E69DF8B0];
  handlerCopy = handler;
  identifierCopy = identifier;
  sharedService = [v5 sharedService];
  [sharedService virtualGarageGetLatestStateOfVehicleWithIdentifier:identifierCopy syncAcrossDevices:0 withReply:handlerCopy];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsVirtualGarageConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end