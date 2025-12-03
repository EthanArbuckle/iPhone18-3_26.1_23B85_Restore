@interface HDObjectAuthorizationRequestContext
- (HDObjectAuthorizationRequestContext)initWithSamples:(id)samples metadata:(id)metadata;
@end

@implementation HDObjectAuthorizationRequestContext

- (HDObjectAuthorizationRequestContext)initWithSamples:(id)samples metadata:(id)metadata
{
  samplesCopy = samples;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = HDObjectAuthorizationRequestContext;
  v8 = [(HDObjectAuthorizationRequestContext *)&v14 init];
  if (v8)
  {
    v9 = [samplesCopy copy];
    samples = v8->_samples;
    v8->_samples = v9;

    v11 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

@end