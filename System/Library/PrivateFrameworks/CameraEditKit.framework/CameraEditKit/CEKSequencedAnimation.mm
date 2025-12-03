@interface CEKSequencedAnimation
- (CEKSequencedAnimation)initWithWithIdentifier:(id)identifier duration:(double)duration updateHandler:(id)handler completion:(id)completion;
@end

@implementation CEKSequencedAnimation

- (CEKSequencedAnimation)initWithWithIdentifier:(id)identifier duration:(double)duration updateHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  handlerCopy = handler;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = CEKSequencedAnimation;
  v14 = [(CEKSequencedAnimation *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_duration = duration;
    v16 = _Block_copy(handlerCopy);
    updateHandler = v15->_updateHandler;
    v15->_updateHandler = v16;

    v18 = _Block_copy(completionCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v20 = v15;
  }

  return v15;
}

@end