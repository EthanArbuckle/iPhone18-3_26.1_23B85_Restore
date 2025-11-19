@interface DiagnosticStateDictionary
@end

@implementation DiagnosticStateDictionary

id ___DiagnosticStateDictionary_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 observer];
  v4 = [v2 queue];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@:%p> (%s)", v7, v3, dispatch_queue_get_label(v4)];

  return v8;
}

@end