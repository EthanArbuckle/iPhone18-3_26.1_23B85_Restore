@interface CUIKORContentImageRequest
- (CUIKORContentImageRequest)initWithId:(int64_t)id options:(unint64_t)options state:(id)state resultHandler:(id)handler;
@end

@implementation CUIKORContentImageRequest

- (CUIKORContentImageRequest)initWithId:(int64_t)id options:(unint64_t)options state:(id)state resultHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = CUIKORContentImageRequest;
  v12 = [(CUIKORContentImageRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestId = id;
    v12->_options = options;
    v14 = [stateCopy copy];
    state = v13->_state;
    v13->_state = v14;

    v16 = [handlerCopy copy];
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v16;
  }

  return v13;
}

@end