@interface CRKNotificationObservation
+ (id)observationWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler;
- (CRKNotificationObservation)initWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)invalidate;
- (void)notificationDidFire:(id)fire;
@end

@implementation CRKNotificationObservation

- (void)dealloc
{
  [(CRKNotificationObservation *)self endObserving];
  v3.receiver = self;
  v3.super_class = CRKNotificationObservation;
  [(CRKNotificationObservation *)&v3 dealloc];
}

- (CRKNotificationObservation)initWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler
{
  centerCopy = center;
  nameCopy = name;
  objectCopy = object;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = CRKNotificationObservation;
  v15 = [(CRKNotificationObservation *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationCenter, center);
    v17 = [nameCopy copy];
    notificationName = v16->_notificationName;
    v16->_notificationName = v17;

    objc_storeStrong(&v16->_object, object);
    v19 = MEMORY[0x245D3AAD0](handlerCopy);
    notificationHandler = v16->_notificationHandler;
    v16->_notificationHandler = v19;
  }

  return v16;
}

+ (id)observationWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  nameCopy = name;
  centerCopy = center;
  v14 = [[self alloc] initWithNotificationCenter:centerCopy notificationName:nameCopy object:objectCopy notificationHandler:handlerCopy];

  [v14 beginObserving];

  return v14;
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__CRKNotificationObservation_invalidate__block_invoke;
  v2[3] = &unk_278DC1870;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __40__CRKNotificationObservation_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained notificationHandler];

    WeakRetained = v3;
    if (v2)
    {
      [v3 endObserving];
      [v3 setNotificationHandler:0];
      [v3 setObject:0];
      WeakRetained = v3;
    }
  }
}

- (void)beginObserving
{
  notificationCenter = [(CRKNotificationObservation *)self notificationCenter];
  notificationName = [(CRKNotificationObservation *)self notificationName];
  object = [(CRKNotificationObservation *)self object];
  [notificationCenter addObserver:self selector:sel_notificationDidFire_ name:notificationName object:object];
}

- (void)endObserving
{
  notificationCenter = [(CRKNotificationObservation *)self notificationCenter];
  notificationName = [(CRKNotificationObservation *)self notificationName];
  object = [(CRKNotificationObservation *)self object];
  [notificationCenter removeObserver:self name:notificationName object:object];
}

- (void)notificationDidFire:(id)fire
{
  fireCopy = fire;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CRKNotificationObservation_notificationDidFire___block_invoke;
  block[3] = &unk_278DC19F8;
  objc_copyWeak(&v8, &location);
  v7 = fireCopy;
  v5 = fireCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__CRKNotificationObservation_notificationDidFire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained notificationHandler];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 notificationHandler];
      v4[2](v4, *(a1 + 32));

      WeakRetained = v5;
    }
  }
}

@end