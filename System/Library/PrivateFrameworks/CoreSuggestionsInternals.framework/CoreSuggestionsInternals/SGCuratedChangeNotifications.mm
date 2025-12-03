@interface SGCuratedChangeNotifications
+ (id)_getListener:(Class)listener;
+ (id)_getListenerByClassMap;
+ (void)_addObserver:(id)observer forObjectLifetime:(id)lifetime listenerClass:(Class)class;
+ (void)addAddressBookObserver:(id)observer forObjectLifetime:(id)lifetime;
+ (void)addCalendarObserver:(id)observer forObjectLifetime:(id)lifetime;
+ (void)simulateAddressBookChange;
+ (void)simulateCalendarChange;
@end

@implementation SGCuratedChangeNotifications

+ (void)addCalendarObserver:(id)observer forObjectLifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  observerCopy = observer;
  [self _addObserver:observerCopy forObjectLifetime:lifetimeCopy listenerClass:objc_opt_class()];
}

+ (void)addAddressBookObserver:(id)observer forObjectLifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  observerCopy = observer;
  [self _addObserver:observerCopy forObjectLifetime:lifetimeCopy listenerClass:objc_opt_class()];
}

+ (void)_addObserver:(id)observer forObjectLifetime:(id)lifetime listenerClass:(Class)class
{
  lifetimeCopy = lifetime;
  observerCopy = observer;
  value = [self _getListener:class];
  [value addObserver:observerCopy forObjectLifetime:lifetimeCopy];

  objc_setAssociatedObject(lifetimeCopy, class, value, 0x301);
}

+ (id)_getListener:(Class)listener
{
  _getListenerByClassMap = [self _getListenerByClassMap];
  objc_sync_enter(_getListenerByClassMap);
  v5 = [_getListenerByClassMap objectForKey:listener];
  if (!v5)
  {
    v5 = objc_opt_new();
    [_getListenerByClassMap setObject:v5 forKey:listener];
  }

  objc_sync_exit(_getListenerByClassMap);

  return v5;
}

+ (id)_getListenerByClassMap
{
  if (_getListenerByClassMap__pasOnceToken2 != -1)
  {
    dispatch_once(&_getListenerByClassMap__pasOnceToken2, &__block_literal_global_19649);
  }

  v3 = _getListenerByClassMap__pasExprOnceResult;

  return v3;
}

void __54__SGCuratedChangeNotifications__getListenerByClassMap__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:1];
  v2 = _getListenerByClassMap__pasExprOnceResult;
  _getListenerByClassMap__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (void)simulateCalendarChange
{
  v2 = [self _getListener:objc_opt_class()];
  [v2 fire];
}

+ (void)simulateAddressBookChange
{
  v2 = [self _getListener:objc_opt_class()];
  [v2 fire];
}

@end