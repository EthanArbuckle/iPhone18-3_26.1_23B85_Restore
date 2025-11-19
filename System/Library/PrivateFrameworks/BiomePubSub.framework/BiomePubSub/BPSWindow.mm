@interface BPSWindow
- (BPSSubscriber)downstream;
- (NSString)identifier;
- (id)metadata;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)downstream;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSWindow

- (NSString)identifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

- (BPSSubscriber)downstream
{
  downstream = self->_downstream;
  if (downstream)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    [(BPSWindow *)a2 downstream:&self->_downstream];
    downstream = v7[0];
  }

  return downstream;
}

- (id)metadata
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

- (void)receiveCompletion:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (int64_t)receiveInput:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];

  return 0;
}

- (void)receiveSubscription:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (void)cancel
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];
}

- (void)requestDemand:(int64_t)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (void)downstream
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"BPSWindowAssigner.m" lineNumber:25 description:@"Must set downstream before using BPSWindow"];

  *a4 = *a3;
}

@end