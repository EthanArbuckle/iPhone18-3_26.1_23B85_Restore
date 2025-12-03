@interface _BPSWindowerSide
- (_BPSWindowerSide)initWithKey:(id)key identifier:(id)identifier windowerInner:(id)inner;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSWindowerSide

- (_BPSWindowerSide)initWithKey:(id)key identifier:(id)identifier windowerInner:(id)inner
{
  keyCopy = key;
  identifierCopy = identifier;
  innerCopy = inner;
  v15.receiver = self;
  v15.super_class = _BPSWindowerSide;
  v12 = [(_BPSWindowerSide *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v13->_windowerInner, inner);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (void)receiveCompletion:(id)completion
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  selfCopy = self;
  [(_BPSWindowerInner *)windowerInner receiveCompletion:completion key:key identifier:identifier];
}

- (int64_t)receiveInput:(id)input
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  selfCopy = self;
  v8 = [(_BPSWindowerInner *)windowerInner receiveInput:input key:key identifier:identifier];

  return v8;
}

- (void)cancel
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  selfCopy = self;
  [(_BPSWindowerInner *)windowerInner cancelWithKey:key identifier:identifier];
}

- (void)requestDemand:(int64_t)demand
{
  windowerInner = self->_windowerInner;
  key = self->_key;
  identifier = self->_identifier;
  selfCopy = self;
  [(_BPSWindowerInner *)windowerInner requestDemand:demand key:key identifier:identifier];
}

@end