@interface CalInMemoryTrackedDatabase
- (BOOL)hasClients;
- (CalInMemoryTrackedDatabase)init;
@end

@implementation CalInMemoryTrackedDatabase

- (CalInMemoryTrackedDatabase)init
{
  v8.receiver = self;
  v8.super_class = CalInMemoryTrackedDatabase;
  v2 = [(CalInMemoryTrackedDatabase *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CalDatabaseInMemoryChangeTracking);
    database = v2->_database;
    v2->_database = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:2];
    clients = v2->_clients;
    v2->_clients = v5;
  }

  return v2;
}

- (BOOL)hasClients
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  result = [(NSHashTable *)self->_clients countByEnumeratingWithState:v4 objects:v5 count:16]!= 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end