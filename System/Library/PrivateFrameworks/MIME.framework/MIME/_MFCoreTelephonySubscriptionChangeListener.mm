@interface _MFCoreTelephonySubscriptionChangeListener
- (_MFCoreTelephonySubscriptionChangeListener)init;
- (void)carrierBundleChange:(id)a3;
@end

@implementation _MFCoreTelephonySubscriptionChangeListener

- (_MFCoreTelephonySubscriptionChangeListener)init
{
  v9.receiver = self;
  v9.super_class = _MFCoreTelephonySubscriptionChangeListener;
  v2 = [(_MFCoreTelephonySubscriptionChangeListener *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.email.telephony", v3);
    telephonyQueue = v2->_telephonyQueue;
    v2->_telephonyQueue = v4;

    v6 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v2->_telephonyQueue];
    client = v2->_client;
    v2->_client = v6;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
  }

  return v2;
}

- (void)carrierBundleChange:(id)a3
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D36B2000, v4, OS_LOG_TYPE_INFO, "SoftBank: Carrier bundle change.", v6, 2u);
  }

  dispatch_assert_queue_V2(self->_telephonyQueue);
  sInnerCanUseCodePoints = 0;
  v5 = sSoftBankTransform;
  sSoftBankTransform = 0;

  atomic_store(0, sCanUseCodePoints);
}

@end