@interface SGCuratedChangeNotifications
+ (id)_getListener:(Class)a3;
+ (id)_getListenerByClassMap;
+ (void)_addObserver:(id)a3 forObjectLifetime:(id)a4 listenerClass:(Class)a5;
+ (void)addAddressBookObserver:(id)a3 forObjectLifetime:(id)a4;
+ (void)addCalendarObserver:(id)a3 forObjectLifetime:(id)a4;
+ (void)simulateAddressBookChange;
+ (void)simulateCalendarChange;
@end

@implementation SGCuratedChangeNotifications

+ (void)addCalendarObserver:(id)a3 forObjectLifetime:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 _addObserver:v7 forObjectLifetime:v6 listenerClass:objc_opt_class()];
}

+ (void)addAddressBookObserver:(id)a3 forObjectLifetime:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 _addObserver:v7 forObjectLifetime:v6 listenerClass:objc_opt_class()];
}

+ (void)_addObserver:(id)a3 forObjectLifetime:(id)a4 listenerClass:(Class)a5
{
  v8 = a4;
  v9 = a3;
  value = [a1 _getListener:a5];
  [value addObserver:v9 forObjectLifetime:v8];

  objc_setAssociatedObject(v8, a5, value, 0x301);
}

+ (id)_getListener:(Class)a3
{
  v4 = [a1 _getListenerByClassMap];
  objc_sync_enter(v4);
  v5 = [v4 objectForKey:a3];
  if (!v5)
  {
    v5 = objc_opt_new();
    [v4 setObject:v5 forKey:a3];
  }

  objc_sync_exit(v4);

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
  v2 = [a1 _getListener:objc_opt_class()];
  [v2 fire];
}

+ (void)simulateAddressBookChange
{
  v2 = [a1 _getListener:objc_opt_class()];
  [v2 fire];
}

@end