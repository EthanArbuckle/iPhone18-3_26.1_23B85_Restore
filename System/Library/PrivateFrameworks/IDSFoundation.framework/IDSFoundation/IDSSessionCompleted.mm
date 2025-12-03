@interface IDSSessionCompleted
- (IDSSessionCompleted)initWithGuid:(id)guid protocolVersionNumber:(id)number serviceName:(id)name clientType:(unsigned int)type isQREnabled:(BOOL)enabled isUsingQRDirectly:(BOOL)directly isInitiator:(BOOL)initiator isScreenSharingSessionType:(BOOL)self0 isWithDefaultPairedDevice:(BOOL)self1 transportType:(unsigned int)self2 linkType:(unsigned int)self3 linkProtocol:(unsigned int)self4 endedReason:(unsigned int)self5 destinationType:(unsigned int)self6 durationOfSession:(id)self7 durationToConnect:(id)self8 isWifiInterfaceDisallowed:(BOOL)self9 isCellularInterfaceDisallowed:(BOOL)interfaceDisallowed;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionCompleted

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionCompleted *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  protocolVersionNumber = [(IDSSessionCompleted *)self protocolVersionNumber];
  if (protocolVersionNumber)
  {
    CFDictionarySetValue(v3, @"protocolVersionNumber", protocolVersionNumber);
  }

  serviceName = [(IDSSessionCompleted *)self serviceName];
  if (serviceName)
  {
    CFDictionarySetValue(v3, @"serviceName", serviceName);
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

  durationOfSession = [(IDSSessionCompleted *)self durationOfSession];
  if (durationOfSession)
  {
    CFDictionarySetValue(v3, @"durationOfSession", durationOfSession);
  }

  durationToConnect = [(IDSSessionCompleted *)self durationToConnect];
  if (durationToConnect)
  {
    CFDictionarySetValue(v3, @"durationToConnect", durationToConnect);
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

- (IDSSessionCompleted)initWithGuid:(id)guid protocolVersionNumber:(id)number serviceName:(id)name clientType:(unsigned int)type isQREnabled:(BOOL)enabled isUsingQRDirectly:(BOOL)directly isInitiator:(BOOL)initiator isScreenSharingSessionType:(BOOL)self0 isWithDefaultPairedDevice:(BOOL)self1 transportType:(unsigned int)self2 linkType:(unsigned int)self3 linkProtocol:(unsigned int)self4 endedReason:(unsigned int)self5 destinationType:(unsigned int)self6 durationOfSession:(id)self7 durationToConnect:(id)self8 isWifiInterfaceDisallowed:(BOOL)self9 isCellularInterfaceDisallowed:(BOOL)interfaceDisallowed
{
  guidCopy = guid;
  numberCopy = number;
  nameCopy = name;
  sessionCopy = session;
  connectCopy = connect;
  v35.receiver = self;
  v35.super_class = IDSSessionCompleted;
  v28 = [(IDSSessionCompleted *)&v35 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_guid, guid);
    objc_storeStrong(&v29->_protocolVersionNumber, number);
    objc_storeStrong(&v29->_serviceName, name);
    v29->_isQREnabled = enabled;
    v29->_isUsingQRDirectly = directly;
    v29->_isInitiator = initiator;
    v29->_isScreenSharingSessionType = sessionType;
    v29->_isWithDefaultPairedDevice = device;
    v29->_clientType = type;
    v29->_transportType = transportType;
    v29->_linkType = linkType;
    v29->_linkProtocol = protocol;
    v29->_endedReason = reason;
    v29->_destinationType = destinationType;
    objc_storeStrong(&v29->_durationOfSession, session);
    objc_storeStrong(&v29->_durationToConnect, connect);
  }

  return v29;
}

@end