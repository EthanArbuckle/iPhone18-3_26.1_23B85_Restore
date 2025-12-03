@interface IDSSessionEndedMetric
- (IDSSessionEndedMetric)initWithGuid:(id)guid endedReason:(unsigned int)reason genericError:(unsigned int)error gameKitError:(unsigned int)kitError conferenceMiscError:(unsigned int)miscError callDuration:(id)duration networkCheckResult:(unsigned int)result dataRate:(id)self0 gksError:(id)self1 connectDuration:(id)self2 remoteNetworkConnection:(unsigned int)self3 localNetworkConnection:(unsigned int)self4 connectionType:(unsigned int)self5 usesRelay:(BOOL)self6 currentNATType:(id)self7 remoteNATType:(id)self8 relayConnectDuration:(id)self9 isInitiator:(BOOL)initiator linkQuality:(id)quality gksReturnCode:(id)code;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionEndedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionEndedMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric endedReason](self, "endedReason")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"endedReason", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric genericError](self, "genericError")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"genericError", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric gameKitError](self, "gameKitError")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"gameKitError", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric conferenceMiscError](self, "conferenceMiscError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"conferenceMiscError", v8);
  }

  callDuration = [(IDSSessionEndedMetric *)self callDuration];
  if (callDuration)
  {
    CFDictionarySetValue(v3, @"callDuration", callDuration);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric networkCheckResult](self, "networkCheckResult")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"networkCheckResult", v10);
  }

  dataRate = [(IDSSessionEndedMetric *)self dataRate];
  if (dataRate)
  {
    CFDictionarySetValue(v3, @"dataRate", dataRate);
  }

  gksError = [(IDSSessionEndedMetric *)self gksError];
  if (gksError)
  {
    CFDictionarySetValue(v3, @"gksError", gksError);
  }

  connectDuration = [(IDSSessionEndedMetric *)self connectDuration];
  if (connectDuration)
  {
    CFDictionarySetValue(v3, @"connectDuration", connectDuration);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric remoteNetworkConnection](self, "remoteNetworkConnection")}];
  if (v14)
  {
    CFDictionarySetValue(v3, @"remoteNetworkConnection", v14);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric localNetworkConnection](self, "localNetworkConnection")}];
  if (v15)
  {
    CFDictionarySetValue(v3, @"localNetworkConnection", v15);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric connectionType](self, "connectionType")}];
  if (v16)
  {
    CFDictionarySetValue(v3, @"connectionType", v16);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionEndedMetric usesRelay](self, "usesRelay")}];
  if (v17)
  {
    CFDictionarySetValue(v3, @"usesRelay", v17);
  }

  currentNATType = [(IDSSessionEndedMetric *)self currentNATType];
  if (currentNATType)
  {
    CFDictionarySetValue(v3, @"currentNATType", currentNATType);
  }

  remoteNATType = [(IDSSessionEndedMetric *)self remoteNATType];
  if (remoteNATType)
  {
    CFDictionarySetValue(v3, @"remoteNATType", remoteNATType);
  }

  relayConnectDuration = [(IDSSessionEndedMetric *)self relayConnectDuration];
  if (relayConnectDuration)
  {
    CFDictionarySetValue(v3, @"relayConnectDuration", relayConnectDuration);
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionEndedMetric isInitiator](self, "isInitiator")}];
  if (v21)
  {
    CFDictionarySetValue(v3, @"isInitiator", v21);
  }

  linkQuality = [(IDSSessionEndedMetric *)self linkQuality];
  if (linkQuality)
  {
    CFDictionarySetValue(v3, @"linkQuality", linkQuality);
  }

  gksReturnCode = [(IDSSessionEndedMetric *)self gksReturnCode];
  if (gksReturnCode)
  {
    CFDictionarySetValue(v3, @"gksReturnCode", gksReturnCode);
  }

  return v3;
}

- (IDSSessionEndedMetric)initWithGuid:(id)guid endedReason:(unsigned int)reason genericError:(unsigned int)error gameKitError:(unsigned int)kitError conferenceMiscError:(unsigned int)miscError callDuration:(id)duration networkCheckResult:(unsigned int)result dataRate:(id)self0 gksError:(id)self1 connectDuration:(id)self2 remoteNetworkConnection:(unsigned int)self3 localNetworkConnection:(unsigned int)self4 connectionType:(unsigned int)self5 usesRelay:(BOOL)self6 currentNATType:(id)self7 remoteNATType:(id)self8 relayConnectDuration:(id)self9 isInitiator:(BOOL)initiator linkQuality:(id)quality gksReturnCode:(id)code
{
  guidCopy = guid;
  durationCopy = duration;
  durationCopy2 = duration;
  rateCopy = rate;
  gksErrorCopy = gksError;
  connectDurationCopy = connectDuration;
  tTypeCopy = tType;
  aTTypeCopy = aTType;
  relayConnectDurationCopy = relayConnectDuration;
  qualityCopy = quality;
  codeCopy = code;
  v43.receiver = self;
  v43.super_class = IDSSessionEndedMetric;
  v30 = [(IDSSessionEndedMetric *)&v43 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_guid, guid);
    v31->_endedReason = reason;
    v31->_genericError = error;
    v31->_gameKitError = kitError;
    v31->_conferenceMiscError = miscError;
    objc_storeStrong(&v31->_callDuration, durationCopy);
    v31->_networkCheckResult = result;
    objc_storeStrong(&v31->_dataRate, rate);
    objc_storeStrong(&v31->_gksError, gksError);
    objc_storeStrong(&v31->_connectDuration, connectDuration);
    v31->_remoteNetworkConnection = connection;
    v31->_localNetworkConnection = networkConnection;
    v31->_connectionType = type;
    v31->_usesRelay = relay;
    objc_storeStrong(&v31->_currentNATType, tType);
    objc_storeStrong(&v31->_remoteNATType, aTType);
    objc_storeStrong(&v31->_relayConnectDuration, relayConnectDuration);
    v31->_isInitiator = initiator;
    objc_storeStrong(&v31->_linkQuality, quality);
    objc_storeStrong(&v31->_gksReturnCode, code);
  }

  return v31;
}

@end