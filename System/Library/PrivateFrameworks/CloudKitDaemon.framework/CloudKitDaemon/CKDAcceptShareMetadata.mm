@interface CKDAcceptShareMetadata
- (void)dealloc;
- (void)setSigningPCSIdentity:(_PCSIdentityData *)identity;
@end

@implementation CKDAcceptShareMetadata

- (void)setSigningPCSIdentity:(_PCSIdentityData *)identity
{
  signingPCSIdentity = self->_signingPCSIdentity;
  if (signingPCSIdentity != identity)
  {
    if (identity)
    {
      CFRetain(identity);
      signingPCSIdentity = self->_signingPCSIdentity;
    }

    self->_signingPCSIdentity = identity;
    if (signingPCSIdentity)
    {

      CFRelease(signingPCSIdentity);
    }
  }
}

- (void)dealloc
{
  signingPCSIdentity = self->_signingPCSIdentity;
  if (signingPCSIdentity)
  {
    CFRelease(signingPCSIdentity);
    self->_signingPCSIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDAcceptShareMetadata;
  [(CKDAcceptShareMetadata *)&v4 dealloc];
}

@end