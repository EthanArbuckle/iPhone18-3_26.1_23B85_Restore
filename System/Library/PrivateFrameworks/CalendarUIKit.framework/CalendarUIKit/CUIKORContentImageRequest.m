@interface CUIKORContentImageRequest
- (CUIKORContentImageRequest)initWithId:(int64_t)a3 options:(unint64_t)a4 state:(id)a5 resultHandler:(id)a6;
@end

@implementation CUIKORContentImageRequest

- (CUIKORContentImageRequest)initWithId:(int64_t)a3 options:(unint64_t)a4 state:(id)a5 resultHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = CUIKORContentImageRequest;
  v12 = [(CUIKORContentImageRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestId = a3;
    v12->_options = a4;
    v14 = [v10 copy];
    state = v13->_state;
    v13->_state = v14;

    v16 = [v11 copy];
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v16;
  }

  return v13;
}

@end