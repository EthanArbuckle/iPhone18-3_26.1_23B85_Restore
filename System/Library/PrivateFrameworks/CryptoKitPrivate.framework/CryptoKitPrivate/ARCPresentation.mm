@interface ARCPresentation
- (ARCPresentation)initWithCredential:(id)credential presentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error;
@end

@implementation ARCPresentation

- (ARCPresentation)initWithCredential:(id)credential presentationContext:(id)context presentationLimit:(unint64_t)limit error:(id *)error
{
  credentialCopy = credential;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = ARCPresentation;
  v12 = [(ARCPresentation *)&v20 init];
  if (v12)
  {
    credential = [credentialCopy credential];
    v14 = [credential makePresentationWithPresentationContext:contextCopy presentationLimit:limit error:error];
    presentation = v12->_presentation;
    v12->_presentation = v14;

    getPresentationData = [(ARCPresentationWrapper *)v12->_presentation getPresentationData];
    getNonce = [(ARCPresentationWrapper *)v12->_presentation getNonce];
    if (getPresentationData)
    {
      v18 = getNonce;
      objc_storeStrong(&v12->_presentationData, getPresentationData);
      v12->_nonce = v18;
    }

    else
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:3 userInfo:0];
    }
  }

  return v12;
}

@end