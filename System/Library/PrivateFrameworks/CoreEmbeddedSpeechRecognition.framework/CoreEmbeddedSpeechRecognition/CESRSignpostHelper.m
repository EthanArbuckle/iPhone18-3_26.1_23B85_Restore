@interface CESRSignpostHelper
- (CESRSignpostHelper)init;
- (unint64_t)fetchAndDestroySignpostIdForEventName:(id)a3;
- (void)storeSignpostId:(unint64_t)a3 forEventName:(id)a4;
@end

@implementation CESRSignpostHelper

- (unint64_t)fetchAndDestroySignpostIdForEventName:(id)a3
{
  eventNameToId = self->_eventNameToId;
  v5 = a3;
  v6 = [(NSMutableDictionary *)eventNameToId objectForKey:v5];
  [(NSMutableDictionary *)self->_eventNameToId removeObjectForKey:v5];

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (void)storeSignpostId:(unint64_t)a3 forEventName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)self->_eventNameToId setObject:v8 forKey:v7];
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