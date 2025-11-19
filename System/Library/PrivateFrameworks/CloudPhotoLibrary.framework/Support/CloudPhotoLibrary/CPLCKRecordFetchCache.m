@interface CPLCKRecordFetchCache
- (CPLCKRecordFetchCache)init;
- (id)cachedRecordWithID:(id)a3;
- (id)description;
- (void)didFetchRecordWithID:(id)a3 record:(id)a4;
- (void)didModifyRecordWithID:(id)a3;
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

- (void)didFetchRecordWithID:(id)a3 record:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  [(NSMutableDictionary *)self->_mapping setObject:v7 forKeyedSubscript:v6];
}

- (id)cachedRecordWithID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_mapping objectForKeyedSubscript:a3];
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

- (void)didModifyRecordWithID:(id)a3
{
  mapping = self->_mapping;
  v5 = a3;
  v6 = [(NSMutableDictionary *)mapping count];
  [(NSMutableDictionary *)self->_mapping removeObjectForKey:v5];

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