@interface MapsSuggestionsRealVirtualGarageConnector
- (MapsSuggestionsVirtualGarageConnectorDelegate)delegate;
- (NSString)uniqueName;
- (void)closeVGConnection;
- (void)fetchStateOfChargeForVehicleWithIdentifier:(id)a3 handler:(id)a4;
- (void)fetchUnpairedVehiclesWithHandler:(id)a3;
- (void)openVGConnection;
- (void)startObservingVG;
- (void)stopObservingVG;
- (void)virtualGarage:(id)a3 didUpdateUnpairedVehicles:(id)a4;
@end

@implementation MapsSuggestionsRealVirtualGarageConnector

- (void)openVGConnection
{
  v3 = [MEMORY[0x1E69DF8B0] sharedService];
  [v3 openForClient:self];
}

- (void)closeVGConnection
{
  v3 = [MEMORY[0x1E69DF8B0] sharedService];
  [v3 closeForClient:self];
}

- (void)startObservingVG
{
  v3 = [MEMORY[0x1E69DF8B0] sharedService];
  [v3 registerObserver:self];
}

- (void)stopObservingVG
{
  v3 = [MEMORY[0x1E69DF8B0] sharedService];
  [v3 unregisterObserver:self];
}

- (void)fetchUnpairedVehiclesWithHandler:(id)a3
{
  v3 = MEMORY[0x1E69DF8B0];
  v4 = a3;
  v5 = [v3 sharedService];
  [v5 virtualGarageGetListOfUnpairedVehiclesWithReply:v4];
}

- (void)virtualGarage:(id)a3 didUpdateUnpairedVehicles:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MapsSuggestionsRealVirtualGarageConnector *)self delegate];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 virtualGarageDidUpdateUnpairedVehicles:v7];
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

- (void)fetchStateOfChargeForVehicleWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = MEMORY[0x1E69DF8B0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedService];
  [v8 virtualGarageGetLatestStateOfVehicleWithIdentifier:v7 syncAcrossDevices:0 withReply:v6];
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