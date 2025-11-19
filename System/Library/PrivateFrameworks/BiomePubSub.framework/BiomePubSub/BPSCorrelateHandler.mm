@interface BPSCorrelateHandler
+ (id)directStreamsAssociationWithBlock:(id)a3;
- (BPSCorrelateHandler)initWithInitialContext:(id)a3;
- (id)correlateWithCurrentEvent:(id)a3;
- (void)receiveCurrentEvent:(id)a3;
- (void)receivePriorEvent:(id)a3;
@end

@implementation BPSCorrelateHandler

- (BPSCorrelateHandler)initWithInitialContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSCorrelateHandler;
  v6 = [(BPSCorrelateHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (void)receivePriorEvent:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (void)receiveCurrentEvent:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (id)correlateWithCurrentEvent:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)directStreamsAssociationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[BPSDirectAssocationCorrelateHandler alloc] initWithCorrelating:v3];

  return v4;
}

@end