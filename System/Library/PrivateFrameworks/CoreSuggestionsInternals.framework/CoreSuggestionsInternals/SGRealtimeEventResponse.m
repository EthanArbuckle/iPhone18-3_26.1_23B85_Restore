@interface SGRealtimeEventResponse
- (SGRealtimeEventResponse)initWithEntity:(id)a3 state:(int)a4 duplicateEventKey:(id)a5;
@end

@implementation SGRealtimeEventResponse

- (SGRealtimeEventResponse)initWithEntity:(id)a3 state:(int)a4 duplicateEventKey:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SGRealtimeEventResponse;
  v11 = [(SGRealtimeEventResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, a3);
    v12->_state = a4;
    objc_storeStrong(&v12->_duplicateEventKey, a5);
  }

  return v12;
}

@end