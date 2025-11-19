@interface _COCapabilityObserver
- (_COCapabilityObserver)initWithCapability:(id)a3 cluster:(id)a4 block:(id)a5;
- (id)description;
@end

@implementation _COCapabilityObserver

- (_COCapabilityObserver)initWithCapability:(id)a3 cluster:(id)a4 block:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = _COCapabilityObserver;
  v11 = [(_COCapabilityObserver *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    capability = v11->_capability;
    v11->_capability = v12;

    v14 = [v9 copy];
    cluster = v11->_cluster;
    v11->_cluster = v14;

    v16 = [v10 copy];
    block = v11->_block;
    v11->_block = v16;

    *&v11->_notified = 0;
    v18 = COLogForCategory(3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = v11->_capability;
      v22 = v11->_cluster;
      *buf = 134218498;
      v25 = v11;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_debug_impl(&dword_244328000, v18, OS_LOG_TYPE_DEBUG, "%p observing Capability(%@) in Cluster(%@)", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_COCapabilityObserver *)self capability];
  v5 = [(_COCapabilityObserver *)self cluster];
  v6 = [(_COCapabilityObserver *)self notified];
  v7 = [(_COCapabilityObserver *)self lastValue];
  v8 = 78;
  if (v7)
  {
    v9 = 89;
  }

  else
  {
    v9 = 78;
  }

  if (v6)
  {
    v8 = 89;
  }

  v10 = [v3 stringWithFormat:@"{ Capability Observer = %p, for Capability(%@) in Cluster(%@), notified(%c) lastValue(%c) }", self, v4, v5, v8, v9];

  return v10;
}

@end