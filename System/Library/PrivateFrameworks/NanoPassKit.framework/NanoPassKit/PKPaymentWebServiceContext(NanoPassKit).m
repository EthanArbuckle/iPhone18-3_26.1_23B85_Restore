@interface PKPaymentWebServiceContext(NanoPassKit)
- (id)npkPossiblyOverriddenPeerPaymentServiceURL;
@end

@implementation PKPaymentWebServiceContext(NanoPassKit)

- (id)npkPossiblyOverriddenPeerPaymentServiceURL
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 peerPaymentServiceURL];
  v2 = PKPeerPaymentServiceOverrideURL();
  if (v2)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Using overridden peer payment service url '%@' for registration.", &v9, 0xCu);
      }
    }

    v6 = v2;

    v1 = v6;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v1;
}

@end