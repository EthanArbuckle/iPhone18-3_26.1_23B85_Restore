@interface NMLogActionsCoalescer
- (NMLogActionsCoalescer)initWithIdentifier:(id)identifier logCategory:(id)category;
- (id)_logMessageFromPendingLogActions:(id)actions includingPartNumber:(BOOL)number;
- (void)_addAction:(id)action toPendingActions:(id)actions limit:(unint64_t)limit;
- (void)flush;
- (void)setMessageBufferLimit:(unint64_t)limit;
@end

@implementation NMLogActionsCoalescer

- (NMLogActionsCoalescer)initWithIdentifier:(id)identifier logCategory:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v14.receiver = self;
  v14.super_class = NMLogActionsCoalescer;
  v9 = [(NMLogActionsCoalescer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_category, category);
    v10->_messageBufferLimit = 300;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:300];
    pendingLogActions = v10->_pendingLogActions;
    v10->_pendingLogActions = v11;
  }

  return v10;
}

- (void)setMessageBufferLimit:(unint64_t)limit
{
  if (self->_messageBufferLimit != limit)
  {
    self->_messageBufferLimit = limit;
    if ([(NSMutableArray *)self->_pendingLogActions count])
    {
      [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:self->_pendingLogActions includingPartNumber:1];
    }

    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_messageBufferLimit];
    pendingLogActions = self->_pendingLogActions;
    self->_pendingLogActions = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)flush
{
  [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:self->_pendingLogActions includingPartNumber:self->_partNumber != 0];
  [(NSMutableArray *)self->_pendingLogActions removeAllObjects];
  self->_partNumber = 0;
}

- (void)_addAction:(id)action toPendingActions:(id)actions limit:(unint64_t)limit
{
  actionCopy = action;
  actionsCopy = actions;
  if ([actionsCopy count] == limit)
  {
    [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:actionsCopy includingPartNumber:1];
    [actionsCopy removeAllObjects];
  }

  [actionsCopy addObject:actionCopy];
}

- (id)_logMessageFromPendingLogActions:(id)actions includingPartNumber:(BOOL)number
{
  numberCopy = number;
  actionsCopy = actions;
  if (numberCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" (part #%lu) ", self->_partNumber];
  }

  else
  {
    v7 = &stru_286C836D8;
  }

  v8 = [actionsCopy valueForKey:@"logMessage"];
  v9 = [v8 componentsJoinedByString:@"\n"];

  prefix = self->_prefix;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@%@: <\n%@\n>", prefix, self->_identifier, v7, v9];

  return v11;
}

@end