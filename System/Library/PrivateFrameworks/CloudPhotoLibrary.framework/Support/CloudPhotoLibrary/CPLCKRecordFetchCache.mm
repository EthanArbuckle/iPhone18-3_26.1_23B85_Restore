@interface CPLCKRecordFetchCache
- (CPLCKRecordFetchCache)init;
- (id)cachedRecordWithID:(id)d;
- (id)description;
- (void)didFetchRecordWithID:(id)d record:(id)record;
- (void)didModifyRecordWithID:(id)d;
@end

@implementation CPLCKRecordFetchCache

- (CPLCKRecordFetchCache)init
{
  v6.receiver = self;
  v6.super_class = CPLCKRecordFetchCache;
  v2 = [(CPLCKRecordFetchCache *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:300];
    mapping = v2->_mapping;
    v2->_mapping = v3;
  }

  return v2;
}

- (void)didFetchRecordWithID:(id)d record:(id)record
{
  dCopy = d;
  v7 = [record copy];
  [(NSMutableDictionary *)self->_mapping setObject:v7 forKeyedSubscript:dCopy];
}

- (id)cachedRecordWithID:(id)d
{
  v4 = [(NSMutableDictionary *)self->_mapping objectForKeyedSubscript:d];
  v5 = v4;
  v6 = 24;
  if (!v4)
  {
    v6 = 16;
  }

  ++*(&self->super.isa + v6);
  v7 = [v4 copy];

  return v7;
}

- (void)didModifyRecordWithID:(id)d
{
  mapping = self->_mapping;
  dCopy = d;
  v6 = [(NSMutableDictionary *)mapping count];
  [(NSMutableDictionary *)self->_mapping removeObjectForKey:dCopy];

  if ([(NSMutableDictionary *)self->_mapping count]!= v6)
  {
    ++self->_dropCount;
  }
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"[%lu records - hit: %lu - miss: %lu - fetch: %lu - drop: %lu]", -[NSMutableDictionary count](self->_mapping, "count"), self->_hitCount, self->_missCount, self->_fetchCount, self->_dropCount];

  return v2;
}

@end