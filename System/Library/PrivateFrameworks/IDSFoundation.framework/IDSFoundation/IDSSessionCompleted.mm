@interface IDSSessionCompleted
- (IDSSessionCompleted)initWithGuid:(id)a3 protocolVersionNumber:(id)a4 serviceName:(id)a5 clientType:(unsigned int)a6 isQREnabled:(BOOL)a7 isUsingQRDirectly:(BOOL)a8 isInitiator:(BOOL)a9 isScreenSharingSessionType:(BOOL)a10 isWithDefaultPairedDevice:(BOOL)a11 transportType:(unsigned int)a12 linkType:(unsigned int)a13 linkProtocol:(unsigned int)a14 endedReason:(unsigned int)a15 destinationType:(unsigned int)a16 durationOfSession:(id)a17 durationToConnect:(id)a18 isWifiInterfaceDisallowed:(BOOL)a19 isCellularInterfaceDisallowed:(BOOL)a20;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionCompleted

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionCompleted *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [(IDSSessionCompleted *)self protocolVersionNumber];
  if (v5)
  {
    CFDictionarySetValue(v3, @"protocolVersionNumber", v5);
  }

  v6 = [(IDSSessionCompleted *)self serviceName];
  if (v6)
  {
    CFDictionarySetValue(v3, @"serviceName", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCompleted clientType](self, "clientType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"clientType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isQREnabled](self, "isQREnabled")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"isQREnabled", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isUsingQRDirectly](self, "isUsingQRDirectly")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"isUsingQRDirectly", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isInitiator](self, "isInitiator")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"isInitiator", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isScreenSharingSessionType](self, "isScreenSharingSessionType")}];
  if (v11)
  {
    CFDictionarySetValue(v3, @"isScreenSharingSessionType", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isWithDefaultPairedDevice](self, "isWithDefaultPairedDevice")}];
  if (v12)
  {
    CFDictionarySetValue(v3, @"isWithDefaultPairedDevice", v12);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCompleted transportType](self, "transportType")}];
  if (v13)
  {
    CFDictionarySetValue(v3, @"transportType", v13);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCompleted linkType](self, "linkType")}];
  if (v14)
  {
    CFDictionarySetValue(v3, @"linkType", v14);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCompleted linkProtocol](self, "linkProtocol")}];
  if (v15)
  {
    CFDictionarySetValue(v3, @"linkProtocol", v15);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCompleted destinationType](self, "destinationType")}];
  if (v16)
  {
    CFDictionarySetValue(v3, @"destinationType", v16);
  }

  v17 = [(IDSSessionCompleted *)self durationOfSession];
  if (v17)
  {
    CFDictionarySetValue(v3, @"durationOfSession", v17);
  }

  v18 = [(IDSSessionCompleted *)self durationToConnect];
  if (v18)
  {
    CFDictionarySetValue(v3, @"durationToConnect", v18);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isWifiInterfaceDisallowed](self, "isWifiInterfaceDisallowed")}];
  if (v19)
  {
    CFDictionarySetValue(v3, @"isWifiInterfaceDisallowed", v19);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionCompleted isCellularInterfaceDisallowed](self, "isCellularInterfaceDisallowed")}];
  if (v20)
  {
    CFDictionarySetValue(v3, @"isCellularInterfaceDisallowed", v20);
  }

  return v3;
}

- (IDSSessionCompleted)initWithGuid:(id)a3 protocolVersionNumber:(id)a4 serviceName:(id)a5 clientType:(unsigned int)a6 isQREnabled:(BOOL)a7 isUsingQRDirectly:(BOOL)a8 isInitiator:(BOOL)a9 isScreenSharingSessionType:(BOOL)a10 isWithDefaultPairedDevice:(BOOL)a11 transportType:(unsigned int)a12 linkType:(unsigned int)a13 linkProtocol:(unsigned int)a14 endedReason:(unsigned int)a15 destinationType:(unsigned int)a16 durationOfSession:(id)a17 durationToConnect:(id)a18 isWifiInterfaceDisallowed:(BOOL)a19 isCellularInterfaceDisallowed:(BOOL)a20
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v34 = a17;
  v33 = a18;
  v35.receiver = self;
  v35.super_class = IDSSessionCompleted;
  v28 = [(IDSSessionCompleted *)&v35 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_guid, a3);
    objc_storeStrong(&v29->_protocolVersionNumber, a4);
    objc_storeStrong(&v29->_serviceName, a5);
    v29->_isQREnabled = a7;
    v29->_isUsingQRDirectly = a8;
    v29->_isInitiator = a9;
    v29->_isScreenSharingSessionType = a10;
    v29->_isWithDefaultPairedDevice = a11;
    v29->_clientType = a6;
    v29->_transportType = a12;
    v29->_linkType = a13;
    v29->_linkProtocol = a14;
    v29->_endedReason = a15;
    v29->_destinationType = a16;
    objc_storeStrong(&v29->_durationOfSession, a17);
    objc_storeStrong(&v29->_durationToConnect, a18);
  }

  return v29;
}

@end