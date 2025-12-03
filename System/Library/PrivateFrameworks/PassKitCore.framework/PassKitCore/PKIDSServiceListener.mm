@interface PKIDSServiceListener
- (PKIDSServiceListener)initWithReferenceObject:(id)object onMessageReceived:(id)received;
- (id)referenceObject;
@end

@implementation PKIDSServiceListener

- (PKIDSServiceListener)initWithReferenceObject:(id)object onMessageReceived:(id)received
{
  objectCopy = object;
  receivedCopy = received;
  v13.receiver = self;
  v13.super_class = PKIDSServiceListener;
  v8 = [(PKIDSServiceListener *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_referenceObject, objectCopy);
    v10 = _Block_copy(receivedCopy);
    onMessageReceived = v9->_onMessageReceived;
    v9->_onMessageReceived = v10;
  }

  return v9;
}

- (id)referenceObject
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceObject);

  return WeakRetained;
}

@end