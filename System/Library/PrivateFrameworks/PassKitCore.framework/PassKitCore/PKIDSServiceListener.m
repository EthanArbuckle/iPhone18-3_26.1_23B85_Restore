@interface PKIDSServiceListener
- (PKIDSServiceListener)initWithReferenceObject:(id)a3 onMessageReceived:(id)a4;
- (id)referenceObject;
@end

@implementation PKIDSServiceListener

- (PKIDSServiceListener)initWithReferenceObject:(id)a3 onMessageReceived:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKIDSServiceListener;
  v8 = [(PKIDSServiceListener *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_referenceObject, v6);
    v10 = _Block_copy(v7);
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