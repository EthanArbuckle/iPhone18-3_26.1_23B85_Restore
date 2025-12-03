@interface MPUNotificationObserver
+ (id)observerWithName:(id)name object:(id)object queue:(id)queue observationHandler:(id)handler;
- (MPUNotificationObserver)initWithName:(id)name object:(id)object queue:(id)queue observationHandler:(id)handler;
- (void)dealloc;
@end

@implementation MPUNotificationObserver

+ (id)observerWithName:(id)name object:(id)object queue:(id)queue observationHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  objectCopy = object;
  nameCopy = name;
  v14 = [[self alloc] initWithName:nameCopy object:objectCopy queue:queueCopy observationHandler:handlerCopy];

  return v14;
}

- (MPUNotificationObserver)initWithName:(id)name object:(id)object queue:(id)queue observationHandler:(id)handler
{
  nameCopy = name;
  objectCopy = object;
  queueCopy = queue;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = MPUNotificationObserver;
  v14 = [(MPUNotificationObserver *)&v19 init];
  if (v14)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [defaultCenter addObserverForName:nameCopy object:objectCopy queue:queueCopy usingBlock:handlerCopy];
    notificationObservationToken = v14->_notificationObservationToken;
    v14->_notificationObservationToken = v16;
  }

  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservationToken = [(MPUNotificationObserver *)self notificationObservationToken];
  [defaultCenter removeObserver:notificationObservationToken];

  v5.receiver = self;
  v5.super_class = MPUNotificationObserver;
  [(MPUNotificationObserver *)&v5 dealloc];
}

@end