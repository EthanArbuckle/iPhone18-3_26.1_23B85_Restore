@interface CSLPRFSharedWorkloop
+ (id)serialQueueWithQOSClass:(unsigned int)a3 label:(const char *)a4;
+ (id)workloop;
+ (void)dispatchWithQOSClass:(unsigned int)a3 block:(id)a4;
@end

@implementation CSLPRFSharedWorkloop

+ (id)serialQueueWithQOSClass:(unsigned int)a3 label:(const char *)a4
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v6 = +[CSLPRFSharedWorkloop workloop];
  v7 = dispatch_queue_create_with_target_V2(a4, v5, v6);

  return v7;
}

+ (void)dispatchWithQOSClass:(unsigned int)a3 block:(id)a4
{
  block = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, a4);
  v4 = +[CSLPRFSharedWorkloop workloop];
  dispatch_async(v4, block);
}

+ (id)workloop
{
  if (workloop_onceToken != -1)
  {
    dispatch_once(&workloop_onceToken, &__block_literal_global_233);
  }

  v3 = _workloop;

  return v3;
}

uint64_t __32__CSLPRFSharedWorkloop_workloop__block_invoke()
{
  _workloop = dispatch_workloop_create("CSLPRFSharedWorkloop");

  return MEMORY[0x2821F96F8]();
}

@end