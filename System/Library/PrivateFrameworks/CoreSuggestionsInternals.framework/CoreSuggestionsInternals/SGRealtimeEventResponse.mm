@interface SGRealtimeEventResponse
- (SGRealtimeEventResponse)initWithEntity:(id)entity state:(int)state duplicateEventKey:(id)key;
@end

@implementation SGRealtimeEventResponse

- (SGRealtimeEventResponse)initWithEntity:(id)entity state:(int)state duplicateEventKey:(id)key
{
  entityCopy = entity;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = SGRealtimeEventResponse;
  v11 = [(SGRealtimeEventResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, entity);
    v12->_state = state;
    objc_storeStrong(&v12->_duplicateEventKey, key);
  }

  return v12;
}

@end