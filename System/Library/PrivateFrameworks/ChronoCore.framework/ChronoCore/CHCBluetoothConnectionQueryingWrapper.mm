@interface CHCBluetoothConnectionQueryingWrapper
- (BOOL)isApplicationConnectedToAnyPeripherals:(id)peripherals;
- (CHCBluetoothConnectionQueryingWrapper)initWithQuerying:(id)querying;
@end

@implementation CHCBluetoothConnectionQueryingWrapper

- (CHCBluetoothConnectionQueryingWrapper)initWithQuerying:(id)querying
{
  queryingCopy = querying;
  v9.receiver = self;
  v9.super_class = CHCBluetoothConnectionQueryingWrapper;
  v6 = [(CHCBluetoothConnectionQueryingWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_querying, querying);
  }

  return v7;
}

- (BOOL)isApplicationConnectedToAnyPeripherals:(id)peripherals
{
  v14 = *MEMORY[0x277D85DE8];
  querying = self->_querying;
  peripheralsCopy = peripherals;
  v4 = MEMORY[0x277CBEA60];
  peripheralsCopy2 = peripherals;
  v6 = [v4 arrayWithObjects:&peripheralsCopy count:1];
  v7 = [(CHCBluetoothConnectionQuerying *)querying isApplicationConnectedToAnyPeripherals:v6, peripheralsCopy, v14];

  v8 = [v7 objectForKeyedSubscript:peripheralsCopy2];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

@end