@interface MapsSuggestionsBluetoothVehicleConnectionTrigger
- (id)initFireOnConnect:(BOOL)a3 disconnect:(BOOL)a4 exit:(BOOL)a5;
- (void)dealloc;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsBluetoothVehicleConnectionTrigger

- (id)initFireOnConnect:(BOOL)a3 disconnect:(BOOL)a4 exit:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = MapsSuggestionsBluetoothVehicleConnectionTrigger;
  result = [(MapsSuggestionsBaseTrigger *)&v9 initWithName:@"MapsSuggestionsBluetoothVehicleConnectionTrigger"];
  if (result)
  {
    *(result + 32) = a5;
    *(result + 33) = a3;
    *(result + 34) = a4;
  }

  return result;
}

- (void)dealloc
{
  [(MapsSuggestionsBluetoothVehicleConnectionTrigger *)self didRemoveLastObserver];
  v3.receiver = self;
  v3.super_class = MapsSuggestionsBluetoothVehicleConnectionTrigger;
  [(MapsSuggestionsBluetoothVehicleConnectionTrigger *)&v3 dealloc];
}

- (void)didRemoveLastObserver
{
  btDisconnectTrigger = self->_btDisconnectTrigger;
  self->_btDisconnectTrigger = 0;

  btConnectTrigger = self->_btConnectTrigger;
  self->_btConnectTrigger = 0;

  btExitTrigger = self->_btExitTrigger;
  self->_btExitTrigger = 0;
}

- (void)didAddFirstObserver
{
  if (self->_onDisconnect)
  {
    v3 = [[MapsSuggestionsDarwinNotificationTrigger alloc] initWithNotificationName:"com.apple.locationd.vehicle.disconnected"];
    btDisconnectTrigger = self->_btDisconnectTrigger;
    self->_btDisconnectTrigger = v3;

    [(MapsSuggestionsBaseTrigger *)self->_btDisconnectTrigger registerObserver:self];
  }

  if (self->_onConnect)
  {
    v5 = [[MapsSuggestionsDarwinNotificationTrigger alloc] initWithNotificationName:"com.apple.locationd.vehicle.connected"];
    btConnectTrigger = self->_btConnectTrigger;
    self->_btConnectTrigger = v5;

    [(MapsSuggestionsBaseTrigger *)self->_btConnectTrigger registerObserver:self];
  }

  if (self->_onExit)
  {
    v7 = [[MapsSuggestionsDarwinNotificationTrigger alloc] initWithNotificationName:"com.apple.locationd.vehicle.exit"];
    btExitTrigger = self->_btExitTrigger;
    self->_btExitTrigger = v7;

    v9 = self->_btExitTrigger;

    [(MapsSuggestionsBaseTrigger *)v9 registerObserver:self];
  }
}

@end