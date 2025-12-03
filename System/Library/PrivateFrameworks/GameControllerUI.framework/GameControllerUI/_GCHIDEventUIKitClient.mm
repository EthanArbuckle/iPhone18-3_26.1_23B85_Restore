@interface _GCHIDEventUIKitClient
- (_GCHIDEventUIKitClient)init;
- (_GCHIDEventUIKitClient)initWithQueue:(id)queue;
@end

@implementation _GCHIDEventUIKitClient

- (_GCHIDEventUIKitClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = _GCHIDEventUIKitClient;
  v5 = [(_GCHIDEventSubject *)&v15 init];
  objc_initWeak(&location, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40___GCHIDEventUIKitClient_initWithQueue___block_invoke;
  v10[3] = &unk_277E1DD08;
  v6 = v5;
  v11 = v6;
  v12 = queueCopy;
  v7 = queueCopy;
  objc_copyWeak(&v13, &location);
  dispatch_async(MEMORY[0x277D85CD0], v10);
  v8 = v6;
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return v8;
}

- (_GCHIDEventUIKitClient)init
{
  [(_GCHIDEventUIKitClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end