@interface LACUIAvailableMechanismsWrapper
- (BOOL)allowsBiometry;
- (BOOL)allowsPasscode;
- (LACUIAvailableMechanismsWrapper)initWithMechanismEvents:(id)events;
@end

@implementation LACUIAvailableMechanismsWrapper

- (LACUIAvailableMechanismsWrapper)initWithMechanismEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = LACUIAvailableMechanismsWrapper;
  v5 = [(LACUIAvailableMechanismsWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (eventsCopy)
    {
      v7 = eventsCopy;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_mechanismEvents, v7);
  }

  return v6;
}

- (BOOL)allowsPasscode
{
  mechanismEvents = self->_mechanismEvents;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F00]];
  LOBYTE(mechanismEvents) = [(NSArray *)mechanismEvents containsObject:v3];

  return mechanismEvents;
}

- (BOOL)allowsBiometry
{
  mechanismEvents = self->_mechanismEvents;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F08]];
  if ([(NSArray *)mechanismEvents containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = self->_mechanismEvents;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F10]];
    if ([(NSArray *)v6 containsObject:v7])
    {
      v5 = 1;
    }

    else
    {
      v8 = self->_mechanismEvents;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23EF8]];
      v5 = [(NSArray *)v8 containsObject:v9];
    }
  }

  return v5;
}

@end