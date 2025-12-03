@interface CSGestureDropEvent
- (CSGestureDropEvent)initWithDroppingPrediction:(double)prediction droppedPrediction:(double)droppedPrediction timestamp:(double)timestamp;
- (CSGestureDropEvent)initWithXPCObject:(id)object;
- (OS_xpc_object)xpcObject;
@end

@implementation CSGestureDropEvent

- (OS_xpc_object)xpcObject
{
  keys[0] = "droppingPrediction";
  keys[1] = "droppedPrediction";
  keys[2] = "timestamp";
  values[0] = xpc_double_create(self->_droppingPrediction);
  values[1] = xpc_double_create(self->_droppedPrediction);
  values[2] = xpc_double_create(self->_timestamp);
  v3 = xpc_dictionary_create(keys, values, 3uLL);
  for (i = 2; i != -1; --i)
  {
  }

  return v3;
}

- (CSGestureDropEvent)initWithXPCObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = CSGestureDropEvent;
  v5 = [(CSGestureDropEvent *)&v7 init];
  if (v5)
  {
    v5->_droppingPrediction = xpc_dictionary_get_double(objectCopy, "droppingPrediction");
    v5->_droppedPrediction = xpc_dictionary_get_double(objectCopy, "droppedPrediction");
    v5->_timestamp = xpc_dictionary_get_double(objectCopy, "timestamp");
  }

  return v5;
}

- (CSGestureDropEvent)initWithDroppingPrediction:(double)prediction droppedPrediction:(double)droppedPrediction timestamp:(double)timestamp
{
  v9.receiver = self;
  v9.super_class = CSGestureDropEvent;
  result = [(CSGestureDropEvent *)&v9 init];
  if (result)
  {
    result->_droppingPrediction = prediction;
    result->_droppedPrediction = droppedPrediction;
    result->_timestamp = timestamp;
  }

  return result;
}

@end