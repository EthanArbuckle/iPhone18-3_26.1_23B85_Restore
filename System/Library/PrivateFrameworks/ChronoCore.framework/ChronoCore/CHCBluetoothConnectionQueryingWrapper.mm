@interface CHCBluetoothConnectionQueryingWrapper
- (BOOL)isApplicationConnectedToAnyPeripherals:(id)a3;
- (CHCBluetoothConnectionQueryingWrapper)initWithQuerying:(id)a3;
@end

@implementation CHCBluetoothConnectionQueryingWrapper

- (CHCBluetoothConnectionQueryingWrapper)initWithQuerying:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHCBluetoothConnectionQueryingWrapper;
  v6 = [(CHCBluetoothConnectionQueryingWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_querying, a3);
  }

  return v7;
}

- (BOOL)isApplicationConnectedToAnyPeripherals:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  querying = self->_querying;
  v13 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v13 count:1];
  v7 = [(CHCBluetoothConnectionQuerying *)querying isApplicationConnectedToAnyPeripherals:v6, v13, v14];

  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end