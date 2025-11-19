@interface MPUNotificationObserver
+ (id)observerWithName:(id)a3 object:(id)a4 queue:(id)a5 observationHandler:(id)a6;
- (MPUNotificationObserver)initWithName:(id)a3 object:(id)a4 queue:(id)a5 observationHandler:(id)a6;
- (void)dealloc;
@end

@implementation MPUNotificationObserver

+ (id)observerWithName:(id)a3 object:(id)a4 queue:(id)a5 observationHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithName:v13 object:v12 queue:v11 observationHandler:v10];

  return v14;
}

- (MPUNotificationObserver)initWithName:(id)a3 object:(id)a4 queue:(id)a5 observationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MPUNotificationObserver;
  v14 = [(MPUNotificationObserver *)&v19 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [v15 addObserverForName:v10 object:v11 queue:v12 usingBlock:v13];
    notificationObservationToken = v14->_notificationObservationToken;
    v14->_notificationObservationToken = v16;
  }

  return v14;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(MPUNotificationObserver *)self notificationObservationToken];
  [v3 removeObserver:v4];

  v5.receiver = self;
  v5.super_class = MPUNotificationObserver;
  [(MPUNotificationObserver *)&v5 dealloc];
}

@end