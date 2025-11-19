@interface IDSIPCListener
- (IDSIPCListener)initWithRemoteObject:(id)a3 localObject:(id)a4 ID:(id)a5 capabilities:(unsigned int)a6 entitlements:(id)a7 services:(id)a8 notificationServices:(id)a9 commands:(id)a10 bundleID:(id)a11;
@end

@implementation IDSIPCListener

- (IDSIPCListener)initWithRemoteObject:(id)a3 localObject:(id)a4 ID:(id)a5 capabilities:(unsigned int)a6 entitlements:(id)a7 services:(id)a8 notificationServices:(id)a9 commands:(id)a10 bundleID:(id)a11
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = IDSIPCListener;
  v19 = [(IDSIPCListener *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_remoteObject, a3);
    objc_storeStrong(&v20->_localObject, a4);
    objc_storeStrong(&v20->_ID, a5);
    v20->_capabilities = a6;
    objc_storeStrong(&v20->_entitlements, a7);
    objc_storeStrong(&v20->_services, a8);
    objc_storeStrong(&v20->_notificationServices, a9);
    objc_storeStrong(&v20->_commands, a10);
    objc_storeStrong(&v20->_bundleID, a11);
  }

  return v20;
}

@end