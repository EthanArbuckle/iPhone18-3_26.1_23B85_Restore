@interface ATHMPresentation
- (ATHMPresentation)initWithClient:(id)client responseData:(id)data nbuckets:(unint64_t)nbuckets error:(id *)error;
@end

@implementation ATHMPresentation

- (ATHMPresentation)initWithClient:(id)client responseData:(id)data nbuckets:(unint64_t)nbuckets error:(id *)error
{
  clientCopy = client;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = ATHMPresentation;
  v12 = [(ATHMPresentation *)&v17 init];
  if (v12 && ([clientCopy finalizeWithResponseData:dataCopy nbuckets:nbuckets error:error], v13 = objc_claimAutoreleasedReturnValue(), presentationData = v12->_presentationData, v12->_presentationData = v13, presentationData, v12->_presentationData))
  {
    v12->_nbuckets = nbuckets;
    v15 = v12;
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:2 userInfo:0];
    *error = v15 = 0;
  }

  return v15;
}

@end