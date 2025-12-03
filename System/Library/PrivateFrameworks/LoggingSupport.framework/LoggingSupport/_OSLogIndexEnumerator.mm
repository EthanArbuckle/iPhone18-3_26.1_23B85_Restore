@interface _OSLogIndexEnumerator
- (void)_initTimesyncBounds:(id *)bounds;
- (void)dealloc;
@end

@implementation _OSLogIndexEnumerator

- (void)_initTimesyncBounds:(id *)bounds
{
  v3 = *MEMORY[0x277D85DE8];
  [(_OSLogIndex *)self->_index timesync];
  _timesync_range_create_impl();
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  for (i = 64; i != 112; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      _os_trace_uuid_map_destroy(*v4);
      free(v4);
    }
  }

  live_bound = self->_live_bound;
  if (live_bound)
  {
    _os_trace_uuid_map_destroy(*live_bound);
    free(live_bound);
  }

  v7.receiver = self;
  v7.super_class = _OSLogIndexEnumerator;
  [(_OSLogIndexEnumerator *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

@end