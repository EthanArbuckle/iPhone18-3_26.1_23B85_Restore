@interface NMLogActionsCoalescer
- (NMLogActionsCoalescer)initWithIdentifier:(id)a3 logCategory:(id)a4;
- (id)_logMessageFromPendingLogActions:(id)a3 includingPartNumber:(BOOL)a4;
- (void)_addAction:(id)a3 toPendingActions:(id)a4 limit:(unint64_t)a5;
- (void)flush;
- (void)setMessageBufferLimit:(unint64_t)a3;
@end

@implementation NMLogActionsCoalescer

- (NMLogActionsCoalescer)initWithIdentifier:(id)a3 logCategory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NMLogActionsCoalescer;
  v9 = [(NMLogActionsCoalescer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_category, a4);
    v10->_messageBufferLimit = 300;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:300];
    pendingLogActions = v10->_pendingLogActions;
    v10->_pendingLogActions = v11;
  }

  return v10;
}

- (void)setMessageBufferLimit:(unint64_t)a3
{
  if (self->_messageBufferLimit != a3)
  {
    self->_messageBufferLimit = a3;
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

- (void)_addAction:(id)a3 toPendingActions:(id)a4 limit:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  if ([v8 count] == a5)
  {
    [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:v8 includingPartNumber:1];
    [v8 removeAllObjects];
  }

  [v8 addObject:v9];
}

- (id)_logMessageFromPendingLogActions:(id)a3 includingPartNumber:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" (part #%lu) ", self->_partNumber];
  }

  else
  {
    v7 = &stru_286C836D8;
  }

  v8 = [v6 valueForKey:@"logMessage"];
  v9 = [v8 componentsJoinedByString:@"\n"];

  prefix = self->_prefix;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@%@: <\n%@\n>", prefix, self->_identifier, v7, v9];

  return v11;
}

@end