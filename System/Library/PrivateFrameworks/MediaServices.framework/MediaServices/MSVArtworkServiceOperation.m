@interface MSVArtworkServiceOperation
- (MSVArtworkServiceOperation)initWithArtworkRequest:(id)a3;
- (void)setDebugMessage:(id)a3;
@end

@implementation MSVArtworkServiceOperation

- (void)setDebugMessage:(id)a3
{
  v4 = [a3 copy];
  debugMessage = self->_debugMessage;
  self->_debugMessage = v4;

  MEMORY[0x1EEE66BB8]();
}

- (MSVArtworkServiceOperation)initWithArtworkRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSVArtworkServiceOperation;
  v6 = [(MSVArtworkServiceOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

@end