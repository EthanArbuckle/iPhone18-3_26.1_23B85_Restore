@interface SITracingObjcLifetimeSpan
- (id)init:(SITracingSpan *)a3 kind:(char)a4 what:(const char *)a5;
- (void)dealloc;
@end

@implementation SITracingObjcLifetimeSpan

- (id)init:(SITracingSpan *)a3 kind:(char)a4 what:(const char *)a5
{
  v10 = *MEMORY[0x1E69E9840];
  traceid = a3->traceid;
  add_explicit = atomic_fetch_add_explicit(&next_spanid, 1uLL, memory_order_relaxed);
  self->_mySpan.traceid = traceid;
  self->_mySpan.spanid = add_explicit + 1;
  self->_mySpan.parentid = a3->spanid;
  self->_mySpan.queryid = a3->queryid;
  self->_mySpan.kind = a4;
  self->_mySpan.what = a5;
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_mySpan.traceid && init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v4.receiver = self;
  v4.super_class = SITracingObjcLifetimeSpan;
  [(SITracingObjcLifetimeSpan *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

@end