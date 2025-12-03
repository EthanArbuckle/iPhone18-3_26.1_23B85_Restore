@interface IDSIPCListener
- (IDSIPCListener)initWithRemoteObject:(id)object localObject:(id)localObject ID:(id)d capabilities:(unsigned int)capabilities entitlements:(id)entitlements services:(id)services notificationServices:(id)notificationServices commands:(id)self0 bundleID:(id)self1;
@end

@implementation IDSIPCListener

- (IDSIPCListener)initWithRemoteObject:(id)object localObject:(id)localObject ID:(id)d capabilities:(unsigned int)capabilities entitlements:(id)entitlements services:(id)services notificationServices:(id)notificationServices commands:(id)self0 bundleID:(id)self1
{
  objectCopy = object;
  localObjectCopy = localObject;
  dCopy = d;
  entitlementsCopy = entitlements;
  servicesCopy = services;
  notificationServicesCopy = notificationServices;
  commandsCopy = commands;
  iDCopy = iD;
  v29.receiver = self;
  v29.super_class = IDSIPCListener;
  v19 = [(IDSIPCListener *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_remoteObject, object);
    objc_storeStrong(&v20->_localObject, localObject);
    objc_storeStrong(&v20->_ID, d);
    v20->_capabilities = capabilities;
    objc_storeStrong(&v20->_entitlements, entitlements);
    objc_storeStrong(&v20->_services, services);
    objc_storeStrong(&v20->_notificationServices, notificationServices);
    objc_storeStrong(&v20->_commands, commands);
    objc_storeStrong(&v20->_bundleID, iD);
  }

  return v20;
}

@end