@interface PKPaymentInformationEventExtension
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation PKPaymentInformationEventExtension

- (void)beginRequestWithExtensionContext:(id)context
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentInformationEventExtension successfully initialized", v4, 2u);
  }
}

@end