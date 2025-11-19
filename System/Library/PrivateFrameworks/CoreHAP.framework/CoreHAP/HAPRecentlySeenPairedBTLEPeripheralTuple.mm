@interface HAPRecentlySeenPairedBTLEPeripheralTuple
- (id)description;
- (id)initRecentlySeenPairedHAPBLEPeripheral:(id)a3;
- (void)updateWithPeripheral:(id)a3;
@end

@implementation HAPRecentlySeenPairedBTLEPeripheralTuple

- (id)description
{
  v3 = 0.0;
  if (self->_lastSeen > 0.0)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSinceReferenceDate];
    v3 = v5 - self->_lastSeen;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)self identifier];
  v8 = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)self stateNumber];
  if (v3 <= 0.0)
  {
    v9 = -1.0;
  }

  else
  {
    v9 = v3 / 60.0;
  }

  [(HAPRecentlySeenPairedBTLEPeripheralTuple *)self monitorState];
  v10 = HMFBooleanToString();
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPRecentlySeenPairedBTLEPeripheralTuple connectionPriority](self, "connectionPriority")}];
  v12 = [v6 stringWithFormat:@"%@/%@ - Seen(%0.2fm)/Monitor(%@)/Priority(%@)", v7, v8, *&v9, v10, v11];

  return v12;
}

- (void)updateWithPeripheral:(id)a3
{
  v15 = a3;
  v4 = [v15 stateNumber];

  if (v4)
  {
    v5 = [v15 stateNumber];
    stateNumber = self->_stateNumber;
    self->_stateNumber = v5;
  }

  v7 = [v15 configNumber];

  if (v7)
  {
    v8 = [v15 configNumber];
    configNumber = self->_configNumber;
    self->_configNumber = v8;
  }

  v10 = [v15 category];

  if (v10)
  {
    v11 = [v15 category];
    category = self->_category;
    self->_category = v11;
  }

  [v15 lastSeen];
  if (v13 > 0.0)
  {
    [v15 lastSeen];
    self->_lastSeen = v14;
  }
}

- (id)initRecentlySeenPairedHAPBLEPeripheral:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPRecentlySeenPairedBTLEPeripheralTuple;
  v5 = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_advertisementFormat = [v4 advertisementFormat];
    v5->_connectionPriority = 0;
    v5->_monitorState = 1;
    [(HAPRecentlySeenPairedBTLEPeripheralTuple *)v5 updateWithPeripheral:v4];
  }

  return v5;
}

@end