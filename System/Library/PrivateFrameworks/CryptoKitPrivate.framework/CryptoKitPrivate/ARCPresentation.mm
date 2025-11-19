@interface ARCPresentation
- (ARCPresentation)initWithCredential:(id)a3 presentationContext:(id)a4 presentationLimit:(unint64_t)a5 error:(id *)a6;
@end

@implementation ARCPresentation

- (ARCPresentation)initWithCredential:(id)a3 presentationContext:(id)a4 presentationLimit:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = ARCPresentation;
  v12 = [(ARCPresentation *)&v20 init];
  if (v12)
  {
    v13 = [v10 credential];
    v14 = [v13 makePresentationWithPresentationContext:v11 presentationLimit:a5 error:a6];
    presentation = v12->_presentation;
    v12->_presentation = v14;

    v16 = [(ARCPresentationWrapper *)v12->_presentation getPresentationData];
    v17 = [(ARCPresentationWrapper *)v12->_presentation getNonce];
    if (v16)
    {
      v18 = v17;
      objc_storeStrong(&v12->_presentationData, v16);
      v12->_nonce = v18;
    }

    else
    {
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:3 userInfo:0];
    }
  }

  return v12;
}

@end