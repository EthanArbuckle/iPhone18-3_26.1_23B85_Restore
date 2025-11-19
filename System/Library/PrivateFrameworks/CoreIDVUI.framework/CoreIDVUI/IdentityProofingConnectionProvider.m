@interface IdentityProofingConnectionProvider
- (void)didChangeProofingStatus;
- (void)didGetProofingDisplayErrorMessage:(id)a3;
- (void)didShowExtendedReviewNotification;
@end

@implementation IdentityProofingConnectionProvider

- (void)didChangeProofingStatus
{
  if (swift_weakLoadStrong())
  {

    sub_245883814();
  }
}

- (void)didShowExtendedReviewNotification
{

  sub_24586B0F4();
}

- (void)didGetProofingDisplayErrorMessage:(id)a3
{
  v3 = sub_245910A04();
  v5 = v4;
  if (swift_weakLoadStrong())
  {

    sub_245877F78(v3, v5);
  }
}

@end