@interface HAPRecentlySeenPairedBTLEPeripheralTuple
- (id)description;
- (id)initRecentlySeenPairedHAPBLEPeripheral:(id)peripheral;
- (void)updateWithPeripheral:(id)peripheral;
@end

@implementation HAPRecentlySeenPairedBTLEPeripheralTuple

- (id)description
{
  v3 = 0.0;
  if (self->_lastSeen > 0.0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v3 = v5 - self->_lastSeen;
  }

  v6 = MEMORY[0x277CCACA8];
  identifier = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)self identifier];
  stateNumber = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)self stateNumber];
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
  v12 = [v6 stringWithFormat:@"%@/%@ - Seen(%0.2fm)/Monitor(%@)/Priority(%@)", identifier, stateNumber, *&v9, v10, v11];

  return v12;
}

- (void)updateWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  stateNumber = [peripheralCopy stateNumber];

  if (stateNumber)
  {
    stateNumber2 = [peripheralCopy stateNumber];
    stateNumber = self->_stateNumber;
    self->_stateNumber = stateNumber2;
  }

  configNumber = [peripheralCopy configNumber];

  if (configNumber)
  {
    configNumber2 = [peripheralCopy configNumber];
    configNumber = self->_configNumber;
    self->_configNumber = configNumber2;
  }

  category = [peripheralCopy category];

  if (category)
  {
    category2 = [peripheralCopy category];
    category = self->_category;
    self->_category = category2;
  }

  [peripheralCopy lastSeen];
  if (v13 > 0.0)
  {
    [peripheralCopy lastSeen];
    self->_lastSeen = v14;
  }
}

- (id)initRecentlySeenPairedHAPBLEPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v9.receiver = self;
  v9.super_class = HAPRecentlySeenPairedBTLEPeripheralTuple;
  v5 = [(HAPRecentlySeenPairedBTLEPeripheralTuple *)&v9 init];
  if (v5)
  {
    identifier = [peripheralCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    v5->_advertisementFormat = [peripheralCopy advertisementFormat];
    v5->_connectionPriority = 0;
    v5->_monitorState = 1;
    [(HAPRecentlySeenPairedBTLEPeripheralTuple *)v5 updateWithPeripheral:peripheralCopy];
  }

  return v5;
}

@end