@interface CRKClassSession
- (CRKClassSession)initWithIdentifier:(id)identifier;
- (id)lastMatchMessageForCurrentDate:(id)date;
- (id)stateDictionary;
- (void)foundBeaconWithFlags:(unsigned __int16)flags;
- (void)logBeaconFound;
- (void)lostBeacon;
@end

@implementation CRKClassSession

- (CRKClassSession)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(CRKClassSession *)a2 initWithIdentifier:?];
  }

  crk_endpoint = [identifierCopy crk_endpoint];
  v10.receiver = self;
  v10.super_class = CRKClassSession;
  v8 = [(CRKSession *)&v10 initWithEndpoint:crk_endpoint];

  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v8;
}

- (void)foundBeaconWithFlags:(unsigned __int16)flags
{
  flagsCopy = flags;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKClassSession *)a2 foundBeaconWithFlags:?];
  }

  [(CRKClassSession *)self setFlags:flagsCopy];
  [(CRKClassSession *)self logBeaconFound];
  v6.receiver = self;
  v6.super_class = CRKClassSession;
  [(CRKSession *)&v6 foundBeacon];
}

- (id)stateDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CRKClassSession;
  stateDictionary = [(CRKSession *)&v8 stateDictionary];
  v9 = @"flags";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CRKClassSession flags](self, "flags")}];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [stateDictionary crk_dictionaryByAddingEntriesFromDictionary:v5];

  return v6;
}

- (void)lostBeacon
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKClassSession.m" lineNumber:56 description:{@"%@ must be called from the main thread", v4}];
}

- (void)logBeaconFound
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(CRKClassSession *)self lastMatchMessageForCurrentDate:v3];
  v5 = _CRKLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CRKClassSession *)self identifier];
    stringValue = [identifier stringValue];
    v8 = 134349570;
    selfCopy = self;
    v10 = 2114;
    v11 = stringValue;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}p> Found beacon for class session %{public}@. %{public}@", &v8, 0x20u);
  }

  [(CRKClassSession *)self setLastBeaconFoundDate:v3];
}

- (id)lastMatchMessageForCurrentDate:(id)date
{
  dateCopy = date;
  lastBeaconFoundDate = [(CRKClassSession *)self lastBeaconFoundDate];
  if (lastBeaconFoundDate)
  {
    [dateCopy timeIntervalSinceDate:lastBeaconFoundDate];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"last match %0.1f seconds ago", v6];
  }

  else
  {
    v7 = &stru_285643BE8;
  }

  return v7;
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKClassSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)foundBeaconWithFlags:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKClassSession.m" lineNumber:41 description:{@"%@ must be called from the main thread", v4}];
}

@end