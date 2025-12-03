@interface DALocalDBWatcherDBInfo
- (DALocalDBWatcherDBInfo)initWithPath:(id)path;
- (void)addBlock:(id)block forConcernedParty:(id)party account:(id)account;
- (void)removeBlockForConcernedParty:(id)party account:(id)account;
@end

@implementation DALocalDBWatcherDBInfo

- (DALocalDBWatcherDBInfo)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = DALocalDBWatcherDBInfo;
  v6 = [(DALocalDBWatcherDBInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v7->_lastSavedSequenceNumber = 0;
    v8 = objc_opt_new();
    blocksByConcernedParty = v7->_blocksByConcernedParty;
    v7->_blocksByConcernedParty = v8;
  }

  return v7;
}

- (void)addBlock:(id)block forConcernedParty:(id)party account:(id)account
{
  accountCopy = account;
  partyCopy = party;
  blockCopy = block;
  v12 = [[DALocalDBWatcherCalConcernedParty alloc] initWithConcernedParty:partyCopy accountID:accountCopy];

  v11 = MEMORY[0x24C1CE570](blockCopy);
  [(NSMutableDictionary *)self->_blocksByConcernedParty setObject:v11 forKeyedSubscript:v12];
}

- (void)removeBlockForConcernedParty:(id)party account:(id)account
{
  accountCopy = account;
  partyCopy = party;
  v8 = [[DALocalDBWatcherCalConcernedParty alloc] initWithConcernedParty:partyCopy accountID:accountCopy];

  [(NSMutableDictionary *)self->_blocksByConcernedParty setObject:0 forKeyedSubscript:v8];
  if (![(NSMutableDictionary *)self->_blocksByConcernedParty count])
  {
    self->_lastSavedSequenceNumber = 0;
  }
}

@end