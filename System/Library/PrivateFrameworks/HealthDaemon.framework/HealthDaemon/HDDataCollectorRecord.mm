@interface HDDataCollectorRecord
- (HDDataCollector)collector;
- (id)description;
@end

@implementation HDDataCollectorRecord

- (HDDataCollector)collector
{
  WeakRetained = objc_loadWeakRetained(&self->_collector);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDDataCollectorRecord;
  v4 = [(HDDataCollectorRecord *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_collector);
  v6 = [v3 stringWithFormat:@"<%@: %@, %@>", v4, WeakRetained, self->_state];

  return v6;
}

@end