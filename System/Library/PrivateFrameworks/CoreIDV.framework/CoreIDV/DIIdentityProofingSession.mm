@interface DIIdentityProofingSession
- (DIIdentityProofingSession)init;
- (void)cancelProofingWithState:(id)state country:(id)country completion:(id)completion;
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

- (void)cancelProofingWithState:(id)state country:(id)country completion:(id)completion
{
  completionCopy = completion;
  countryCopy = country;
  stateCopy = state;
  proofingSession = [(DIIdentityProofingSession *)self proofingSession];
  [proofingSession cancelProofingWithState:stateCopy country:countryCopy completionHandler:completionCopy];
}

@end