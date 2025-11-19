@interface IDSSessionEndedMetric
- (IDSSessionEndedMetric)initWithGuid:(id)a3 endedReason:(unsigned int)a4 genericError:(unsigned int)a5 gameKitError:(unsigned int)a6 conferenceMiscError:(unsigned int)a7 callDuration:(id)a8 networkCheckResult:(unsigned int)a9 dataRate:(id)a10 gksError:(id)a11 connectDuration:(id)a12 remoteNetworkConnection:(unsigned int)a13 localNetworkConnection:(unsigned int)a14 connectionType:(unsigned int)a15 usesRelay:(BOOL)a16 currentNATType:(id)a17 remoteNATType:(id)a18 relayConnectDuration:(id)a19 isInitiator:(BOOL)a20 linkQuality:(id)a21 gksReturnCode:(id)a22;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionEndedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionEndedMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
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

  v9 = [(IDSSessionEndedMetric *)self callDuration];
  if (v9)
  {
    CFDictionarySetValue(v3, @"callDuration", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionEndedMetric networkCheckResult](self, "networkCheckResult")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"networkCheckResult", v10);
  }

  v11 = [(IDSSessionEndedMetric *)self dataRate];
  if (v11)
  {
    CFDictionarySetValue(v3, @"dataRate", v11);
  }

  v12 = [(IDSSessionEndedMetric *)self gksError];
  if (v12)
  {
    CFDictionarySetValue(v3, @"gksError", v12);
  }

  v13 = [(IDSSessionEndedMetric *)self connectDuration];
  if (v13)
  {
    CFDictionarySetValue(v3, @"connectDuration", v13);
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

  v18 = [(IDSSessionEndedMetric *)self currentNATType];
  if (v18)
  {
    CFDictionarySetValue(v3, @"currentNATType", v18);
  }

  v19 = [(IDSSessionEndedMetric *)self remoteNATType];
  if (v19)
  {
    CFDictionarySetValue(v3, @"remoteNATType", v19);
  }

  v20 = [(IDSSessionEndedMetric *)self relayConnectDuration];
  if (v20)
  {
    CFDictionarySetValue(v3, @"relayConnectDuration", v20);
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSSessionEndedMetric isInitiator](self, "isInitiator")}];
  if (v21)
  {
    CFDictionarySetValue(v3, @"isInitiator", v21);
  }

  v22 = [(IDSSessionEndedMetric *)self linkQuality];
  if (v22)
  {
    CFDictionarySetValue(v3, @"linkQuality", v22);
  }

  v23 = [(IDSSessionEndedMetric *)self gksReturnCode];
  if (v23)
  {
    CFDictionarySetValue(v3, @"gksReturnCode", v23);
  }

  return v3;
}

- (IDSSessionEndedMetric)initWithGuid:(id)a3 endedReason:(unsigned int)a4 genericError:(unsigned int)a5 gameKitError:(unsigned int)a6 conferenceMiscError:(unsigned int)a7 callDuration:(id)a8 networkCheckResult:(unsigned int)a9 dataRate:(id)a10 gksError:(id)a11 connectDuration:(id)a12 remoteNetworkConnection:(unsigned int)a13 localNetworkConnection:(unsigned int)a14 connectionType:(unsigned int)a15 usesRelay:(BOOL)a16 currentNATType:(id)a17 remoteNATType:(id)a18 relayConnectDuration:(id)a19 isInitiator:(BOOL)a20 linkQuality:(id)a21 gksReturnCode:(id)a22
{
  v40 = a3;
  v38 = a8;
  v42 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v41 = a17;
  v27 = a18;
  v28 = a19;
  v29 = a21;
  v39 = a22;
  v43.receiver = self;
  v43.super_class = IDSSessionEndedMetric;
  v30 = [(IDSSessionEndedMetric *)&v43 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_guid, a3);
    v31->_endedReason = a4;
    v31->_genericError = a5;
    v31->_gameKitError = a6;
    v31->_conferenceMiscError = a7;
    objc_storeStrong(&v31->_callDuration, v38);
    v31->_networkCheckResult = a9;
    objc_storeStrong(&v31->_dataRate, a10);
    objc_storeStrong(&v31->_gksError, a11);
    objc_storeStrong(&v31->_connectDuration, a12);
    v31->_remoteNetworkConnection = a13;
    v31->_localNetworkConnection = a14;
    v31->_connectionType = a15;
    v31->_usesRelay = a16;
    objc_storeStrong(&v31->_currentNATType, a17);
    objc_storeStrong(&v31->_remoteNATType, a18);
    objc_storeStrong(&v31->_relayConnectDuration, a19);
    v31->_isInitiator = a20;
    objc_storeStrong(&v31->_linkQuality, a21);
    objc_storeStrong(&v31->_gksReturnCode, a22);
  }

  return v31;
}

@end