@interface NavdBucketizedLocations
- (NavdBucketizedLocations)init;
- (id).cxx_construct;
- (id)locations;
- (void)_pruneLeachedLocations;
- (void)addLocation:(id)a3;
@end

@implementation NavdBucketizedLocations

- (NavdBucketizedLocations)init
{
  v9.receiver = self;
  v9.super_class = NavdBucketizedLocations;
  v2 = [(NavdBucketizedLocations *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    engine = v2->_config.engine;
    do
    {
      engine = (engine + qword_100049400[v4++]);
    }

    while (v4 != 5);
    v2->_config.engine = engine;
    v2->_config.requester = 5;
    v6 = [[NSMutableArray alloc] initWithCapacity:v2->_config.engine];
    delegate = v3->_config.delegate;
    v3->_config.delegate = v6;
  }

  return v3;
}

- (void)addLocation:(id)a3
{
  v5 = a3;
  v4 = self->_config.delegate;
  objc_sync_enter(v4);
  [(MNRouteGeniusDelegateProxy *)self->_config.delegate insertObject:v5 atIndex:0];
  [(NavdBucketizedLocations *)self _pruneLeachedLocations];
  objc_sync_exit(v4);
}

- (void)_pruneLeachedLocations
{
  if (self->_config.requester)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(MNRouteGeniusDelegateProxy *)self->_config.delegate count];
      if (v3 < v6)
      {
        v7 = v6;
        v5 = v3;
        while (1)
        {
          v8 = [(MNRouteGeniusDelegateProxy *)self->_config.delegate objectAtIndexedSubscript:v5];
          v9 = [v8 timestamp];
          v10 = MapsSuggestionsSecondsSince(v9);
          v11 = qword_100049428[v4];

          if (v10 >= v11)
          {
            break;
          }

          if (v7 == ++v5)
          {
            v5 = v7;
            break;
          }
        }
      }

      v12 = qword_100049400[v4];
      v13 = &v5[-v3];
      if (&v5[-v3] > v12)
      {
        do
        {
          [(MNRouteGeniusDelegateProxy *)self->_config.delegate removeObjectAtIndex:v3];
          --v13;
        }

        while (v13 > v12);
        v5 = (v3 + v12);
      }

      v4 = (v4 + 1);
      v3 = v5;
    }

    while (v4 < self->_config.requester);
  }
}

- (id)locations
{
  v3 = self->_config.delegate;
  objc_sync_enter(v3);
  v4 = [(MNRouteGeniusDelegateProxy *)self->_config.delegate copy];
  objc_sync_exit(v3);

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

@end