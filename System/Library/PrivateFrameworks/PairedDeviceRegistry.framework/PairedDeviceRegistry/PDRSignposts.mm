@interface PDRSignposts
+ (id)instance;
- (PDRSignposts)init;
- (void)beginFetchIntervalTrace;
- (void)cancelFetchIntervalTrace;
- (void)endFetchIntervalTrace;
@end

@implementation PDRSignposts

- (PDRSignposts)init
{
  v5.receiver = self;
  v5.super_class = PDRSignposts;
  v2 = [(PDRSignposts *)&v5 init];
  if (v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v3 = os_log_create("com.apple.watch.nanoregistry.trace", "signposts");
      [(PDRSignposts *)v2 setTraceLog:v3];
    }

    [(PDRSignposts *)v2 setIntervalStart:0];
    [(PDRSignposts *)v2 setLock:0];
  }

  return v2;
}

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    +[PDRSignposts instance];
  }

  v3 = instance_instance;

  return v3;
}

uint64_t __24__PDRSignposts_instance__block_invoke()
{
  instance_instance = objc_alloc_init(PDRSignposts);

  return MEMORY[0x2821F96F8]();
}

- (void)beginFetchIntervalTrace
{
  os_unfair_lock_lock(&self->_lock);
  traceLog = [(PDRSignposts *)self traceLog];
  if (traceLog)
  {
    v4 = traceLog;
    intervalStart = [(PDRSignposts *)self intervalStart];

    if (!intervalStart)
    {
      [(PDRSignposts *)self setIntervalStart:mach_continuous_time()];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endFetchIntervalTrace
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  traceLog = [(PDRSignposts *)self traceLog];
  if (traceLog)
  {
    v4 = traceLog;
    intervalStart = [(PDRSignposts *)self intervalStart];

    if (intervalStart)
    {
      traceLog2 = [(PDRSignposts *)self traceLog];
      if (os_signpost_enabled(traceLog2))
      {
        v8 = 134349056;
        intervalStart2 = [(PDRSignposts *)self intervalStart];
        _os_signpost_emit_with_name_impl(&dword_22DF91000, traceLog2, OS_SIGNPOST_EVENT, 0xB8AB62A7B18D7940, "nanoregistry.pdr.slowFetch", "%{public, signpost.description:begin_time}llu", &v8, 0xCu);
      }
    }
  }

  [(PDRSignposts *)self setIntervalStart:0];
  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelFetchIntervalTrace
{
  os_unfair_lock_lock(&self->_lock);
  [(PDRSignposts *)self setIntervalStart:0];

  os_unfair_lock_unlock(&self->_lock);
}

@end