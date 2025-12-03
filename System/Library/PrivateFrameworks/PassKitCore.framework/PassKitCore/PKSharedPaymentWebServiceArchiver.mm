@interface PKSharedPaymentWebServiceArchiver
+ (id)sharedPaymentWebServiceArchiver;
- (void)archiveContext:(id)context;
@end

@implementation PKSharedPaymentWebServiceArchiver

+ (id)sharedPaymentWebServiceArchiver
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)archiveContext:(id)context
{
  contextCopy = context;
  v4 = +[PKPaymentService paymentService];
  [v4 setSharedPaymentWebServiceContext:contextCopy];
}

@end