@interface BPSCorrelateHandler
+ (id)directStreamsAssociationWithBlock:(id)block;
- (BPSCorrelateHandler)initWithInitialContext:(id)context;
- (id)correlateWithCurrentEvent:(id)event;
- (void)receiveCurrentEvent:(id)event;
- (void)receivePriorEvent:(id)event;
@end

@implementation BPSCorrelateHandler

- (BPSCorrelateHandler)initWithInitialContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = BPSCorrelateHandler;
  v6 = [(BPSCorrelateHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)receivePriorEvent:(id)event
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (void)receiveCurrentEvent:(id)event
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (id)correlateWithCurrentEvent:(id)event
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)directStreamsAssociationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[BPSDirectAssocationCorrelateHandler alloc] initWithCorrelating:blockCopy];

  return v4;
}

@end