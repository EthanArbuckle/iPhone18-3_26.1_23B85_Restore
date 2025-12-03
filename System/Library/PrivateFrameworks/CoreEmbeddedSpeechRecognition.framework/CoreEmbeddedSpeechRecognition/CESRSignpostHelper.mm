@interface CESRSignpostHelper
- (CESRSignpostHelper)init;
- (unint64_t)fetchAndDestroySignpostIdForEventName:(id)name;
- (void)storeSignpostId:(unint64_t)id forEventName:(id)name;
@end

@implementation CESRSignpostHelper

- (unint64_t)fetchAndDestroySignpostIdForEventName:(id)name
{
  eventNameToId = self->_eventNameToId;
  nameCopy = name;
  v6 = [(NSMutableDictionary *)eventNameToId objectForKey:nameCopy];
  [(NSMutableDictionary *)self->_eventNameToId removeObjectForKey:nameCopy];

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (void)storeSignpostId:(unint64_t)id forEventName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithUnsignedLongLong:id];
  [(NSMutableDictionary *)self->_eventNameToId setObject:v8 forKey:nameCopy];
}

- (CESRSignpostHelper)init
{
  v6.receiver = self;
  v6.super_class = CESRSignpostHelper;
  v2 = [(CESRSignpostHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventNameToId = v2->_eventNameToId;
    v2->_eventNameToId = v3;
  }

  return v2;
}

@end