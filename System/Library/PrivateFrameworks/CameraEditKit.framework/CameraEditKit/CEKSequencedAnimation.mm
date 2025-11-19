@interface CEKSequencedAnimation
- (CEKSequencedAnimation)initWithWithIdentifier:(id)a3 duration:(double)a4 updateHandler:(id)a5 completion:(id)a6;
@end

@implementation CEKSequencedAnimation

- (CEKSequencedAnimation)initWithWithIdentifier:(id)a3 duration:(double)a4 updateHandler:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CEKSequencedAnimation;
  v14 = [(CEKSequencedAnimation *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    v15->_duration = a4;
    v16 = _Block_copy(v12);
    updateHandler = v15->_updateHandler;
    v15->_updateHandler = v16;

    v18 = _Block_copy(v13);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v20 = v15;
  }

  return v15;
}

@end