@interface HDObjectAuthorizationRequestContext
- (HDObjectAuthorizationRequestContext)initWithSamples:(id)a3 metadata:(id)a4;
@end

@implementation HDObjectAuthorizationRequestContext

- (HDObjectAuthorizationRequestContext)initWithSamples:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDObjectAuthorizationRequestContext;
  v8 = [(HDObjectAuthorizationRequestContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    samples = v8->_samples;
    v8->_samples = v9;

    v11 = [v7 copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

@end