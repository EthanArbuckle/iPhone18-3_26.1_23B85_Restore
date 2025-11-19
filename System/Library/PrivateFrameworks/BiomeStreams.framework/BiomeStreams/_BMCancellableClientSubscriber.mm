@interface _BMCancellableClientSubscriber
- (_BMCancellableClientSubscriber)initWithClient:(id)a3 identifier:(id)a4;
- (void)cancel;
@end

@implementation _BMCancellableClientSubscriber

- (_BMCancellableClientSubscriber)initWithClient:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _BMCancellableClientSubscriber;
  v9 = [(_BMCancellableClientSubscriber *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

- (void)cancel
{
  v4 = self;
  v2 = [(_BMCancellableClientSubscriber *)v4 client];
  v3 = [(_BMCancellableClientSubscriber *)v4 identifier];
  [v2 unsubscribeWithIdentifier:v3];
}

@end