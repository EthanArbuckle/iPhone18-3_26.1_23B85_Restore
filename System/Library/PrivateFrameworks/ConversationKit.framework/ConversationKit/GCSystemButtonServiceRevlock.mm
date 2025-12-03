@interface GCSystemButtonServiceRevlock
+ (id)sharedInstance;
- (NSString)localizedName;
- (NSString)sfSymbolName;
- (id)_init;
- (id)beginConsumingPressesWithReason:(id)reason consumer:(id)consumer priority:(int64_t)priority;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSystemButtonServiceRevlock

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[GCSystemButtonServiceRevlock sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

void __46__GCSystemButtonServiceRevlock_sharedInstance__block_invoke()
{
  v0 = [[GCSystemButtonServiceRevlock alloc] _init];
  v1 = sharedInstance_Shared;
  sharedInstance_Shared = v0;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = GCSystemButtonServiceRevlock;
  v2 = [(GCSystemButtonServiceRevlock *)&v8 init];
  if (v2)
  {
    v3 = NSClassFromString(&cfstr_Gcsystembutton.isa);
    if (v3)
    {
      v4 = [(objc_class *)v3 performSelector:sel_sharedInstance];
      service = v2->service;
      v2->service = v4;

      v2->_available = [v2->service performSelector:sel_isAvailable]!= 0;
      [v2->service addObserver:v2 forKeyPath:@"available" options:1 context:0];
    }

    else
    {
      v6 = v2->service;
      v2->service = 0;
    }
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"available"])
  {
    [(GCSystemButtonServiceRevlock *)self willChangeValueForKey:@"available"];
    v13 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    self->_available = v13 != 0;

    [(GCSystemButtonServiceRevlock *)self didChangeValueForKey:@"available"];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GCSystemButtonServiceRevlock;
    [(GCSystemButtonServiceRevlock *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (NSString)localizedName
{
  service = self->service;
  if (service)
  {
    service = [service performSelector:sel_localizedName];
    v2 = vars8;
  }

  return service;
}

- (NSString)sfSymbolName
{
  service = self->service;
  if (service)
  {
    service = [service performSelector:sel_sfSymbolName];
    v2 = vars8;
  }

  return service;
}

- (id)beginConsumingPressesWithReason:(id)reason consumer:(id)consumer priority:(int64_t)priority
{
  reasonCopy = reason;
  consumerCopy = consumer;
  priorityCopy = priority;
  v16 = consumerCopy;
  if (self->service)
  {
    v9 = MEMORY[0x1E695DF50];
    v10 = [self->service methodSignatureForSelector:sel_beginConsumingPressesWithReason_consumer_priority_];
    v11 = [v9 invocationWithMethodSignature:v10];

    [v11 setTarget:self->service];
    [v11 setSelector:sel_beginConsumingPressesWithReason_consumer_priority_];
    [v11 setArgument:&reasonCopy atIndex:2];
    [v11 setArgument:&v16 atIndex:3];
    [v11 setArgument:&priorityCopy atIndex:4];
    [v11 invoke];
    v14 = 0;
    [v11 getReturnValue:&v14];
    v12 = v14;

    consumerCopy = v16;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end