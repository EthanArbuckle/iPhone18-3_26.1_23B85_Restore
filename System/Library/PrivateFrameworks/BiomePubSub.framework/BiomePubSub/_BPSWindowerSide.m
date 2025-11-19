@interface _BPSWindowerSide
- (_BPSWindowerSide)initWithKey:(id)a3 identifier:(id)a4 windowerInner:(id)a5;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSWindowerSide

- (_BPSWindowerSide)initWithKey:(id)a3 identifier:(id)a4 windowerInner:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _BPSWindowerSide;
  v12 = [(_BPSWindowerSide *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    objc_storeStrong(&v13->_windowerInner, a5);
    objc_storeStrong(&v13->_identifier, a4);
  }

  return v13;
}

- (void)receiveCompletion:(id)a3
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  v7 = self;
  [(_BPSWindowerInner *)windowerInner receiveCompletion:a3 key:key identifier:identifier];
}

- (int64_t)receiveInput:(id)a3
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  v7 = self;
  v8 = [(_BPSWindowerInner *)windowerInner receiveInput:a3 key:key identifier:identifier];

  return v8;
}

- (void)cancel
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  v5 = self;
  [(_BPSWindowerInner *)windowerInner cancelWithKey:key identifier:identifier];
}

- (void)requestDemand:(int64_t)a3
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  v7 = self;
  [(_BPSWindowerInner *)windowerInner requestDemand:a3 key:key identifier:identifier];
}

@end