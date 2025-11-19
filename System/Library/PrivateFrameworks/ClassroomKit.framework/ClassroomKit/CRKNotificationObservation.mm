@interface CRKNotificationObservation
+ (id)observationWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6;
- (CRKNotificationObservation)initWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)invalidate;
- (void)notificationDidFire:(id)a3;
@end

@implementation CRKNotificationObservation

- (void)dealloc
{
  [(CRKNotificationObservation *)self endObserving];
  v3.receiver = self;
  v3.super_class = CRKNotificationObservation;
  [(CRKNotificationObservation *)&v3 dealloc];
}

- (CRKNotificationObservation)initWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CRKNotificationObservation;
  v15 = [(CRKNotificationObservation *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationCenter, a3);
    v17 = [v12 copy];
    notificationName = v16->_notificationName;
    v16->_notificationName = v17;

    objc_storeStrong(&v16->_object, a5);
    v19 = MEMORY[0x245D3AAD0](v14);
    notificationHandler = v16->_notificationHandler;
    v16->_notificationHandler = v19;
  }

  return v16;
}

+ (id)observationWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithNotificationCenter:v13 notificationName:v12 object:v11 notificationHandler:v10];

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
  v5 = [(CRKNotificationObservation *)self notificationCenter];
  v3 = [(CRKNotificationObservation *)self notificationName];
  v4 = [(CRKNotificationObservation *)self object];
  [v5 addObserver:self selector:sel_notificationDidFire_ name:v3 object:v4];
}

- (void)endObserving
{
  v5 = [(CRKNotificationObservation *)self notificationCenter];
  v3 = [(CRKNotificationObservation *)self notificationName];
  v4 = [(CRKNotificationObservation *)self object];
  [v5 removeObserver:self name:v3 object:v4];
}

- (void)notificationDidFire:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CRKNotificationObservation_notificationDidFire___block_invoke;
  block[3] = &unk_278DC19F8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
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