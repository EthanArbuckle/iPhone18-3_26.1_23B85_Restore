@interface CKDAcceptShareMetadata
- (void)dealloc;
- (void)setSigningPCSIdentity:(_PCSIdentityData *)a3;
@end

@implementation CKDAcceptShareMetadata

- (void)setSigningPCSIdentity:(_PCSIdentityData *)a3
{
  signingPCSIdentity = self->_signingPCSIdentity;
  if (signingPCSIdentity != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      signingPCSIdentity = self->_signingPCSIdentity;
    }

    self->_signingPCSIdentity = a3;
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