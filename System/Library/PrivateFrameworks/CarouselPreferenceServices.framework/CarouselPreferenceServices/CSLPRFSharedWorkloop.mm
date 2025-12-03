@interface CSLPRFSharedWorkloop
+ (id)serialQueueWithQOSClass:(unsigned int)class label:(const char *)label;
+ (id)workloop;
+ (void)dispatchWithQOSClass:(unsigned int)class block:(id)block;
@end

@implementation CSLPRFSharedWorkloop

+ (id)serialQueueWithQOSClass:(unsigned int)class label:(const char *)label
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, class, 0);
  v6 = +[CSLPRFSharedWorkloop workloop];
  v7 = dispatch_queue_create_with_target_V2(label, v5, v6);

  return v7;
}

+ (void)dispatchWithQOSClass:(unsigned int)class block:(id)block
{
  block = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, block);
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