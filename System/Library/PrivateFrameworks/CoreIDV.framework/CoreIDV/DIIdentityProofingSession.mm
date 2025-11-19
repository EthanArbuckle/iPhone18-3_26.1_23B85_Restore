@interface DIIdentityProofingSession
- (DIIdentityProofingSession)init;
- (void)cancelProofingWithState:(id)a3 country:(id)a4 completion:(id)a5;
@end

@implementation DIIdentityProofingSession

- (DIIdentityProofingSession)init
{
  v5.receiver = self;
  v5.super_class = DIIdentityProofingSession;
  v2 = [(DIIdentityProofingSession *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC7CoreIDV23IdentityProofingSession);
    [(DIIdentityProofingSession *)v2 setProofingSession:v3];
  }

  return v2;
}

- (void)cancelProofingWithState:(id)a3 country:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DIIdentityProofingSession *)self proofingSession];
  [v11 cancelProofingWithState:v10 country:v9 completionHandler:v8];
}

@end