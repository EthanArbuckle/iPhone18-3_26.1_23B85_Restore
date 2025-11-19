@interface ATHMPresentation
- (ATHMPresentation)initWithClient:(id)a3 responseData:(id)a4 nbuckets:(unint64_t)a5 error:(id *)a6;
@end

@implementation ATHMPresentation

- (ATHMPresentation)initWithClient:(id)a3 responseData:(id)a4 nbuckets:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = ATHMPresentation;
  v12 = [(ATHMPresentation *)&v17 init];
  if (v12 && ([v10 finalizeWithResponseData:v11 nbuckets:a5 error:a6], v13 = objc_claimAutoreleasedReturnValue(), presentationData = v12->_presentationData, v12->_presentationData = v13, presentationData, v12->_presentationData))
  {
    v12->_nbuckets = a5;
    v15 = v12;
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:2 userInfo:0];
    *a6 = v15 = 0;
  }

  return v15;
}

@end