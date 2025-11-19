@interface DALocalDBWatcherDBInfo
- (DALocalDBWatcherDBInfo)initWithPath:(id)a3;
- (void)addBlock:(id)a3 forConcernedParty:(id)a4 account:(id)a5;
- (void)removeBlockForConcernedParty:(id)a3 account:(id)a4;
@end

@implementation DALocalDBWatcherDBInfo

- (DALocalDBWatcherDBInfo)initWithPath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DALocalDBWatcherDBInfo;
  v6 = [(DALocalDBWatcherDBInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v7->_lastSavedSequenceNumber = 0;
    v8 = objc_opt_new();
    blocksByConcernedParty = v7->_blocksByConcernedParty;
    v7->_blocksByConcernedParty = v8;
  }

  return v7;
}

- (void)addBlock:(id)a3 forConcernedParty:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [[DALocalDBWatcherCalConcernedParty alloc] initWithConcernedParty:v9 accountID:v8];

  v11 = MEMORY[0x24C1CE570](v10);
  [(NSMutableDictionary *)self->_blocksByConcernedParty setObject:v11 forKeyedSubscript:v12];
}

- (void)removeBlockForConcernedParty:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DALocalDBWatcherCalConcernedParty alloc] initWithConcernedParty:v7 accountID:v6];

  [(NSMutableDictionary *)self->_blocksByConcernedParty setObject:0 forKeyedSubscript:v8];
  if (![(NSMutableDictionary *)self->_blocksByConcernedParty count])
  {
    self->_lastSavedSequenceNumber = 0;
  }
}

@end