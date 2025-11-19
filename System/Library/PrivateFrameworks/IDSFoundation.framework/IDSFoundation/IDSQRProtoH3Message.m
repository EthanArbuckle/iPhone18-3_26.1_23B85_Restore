@interface IDSQRProtoH3Message
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)innerMessageAsString:(int)a3;
- (int)StringAsInnerMessage:(id)a3;
- (int)innerMessage;
- (unint64_t)hash;
- (void)clearOneofValuesForInnerMessage;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAllocbindRequest:(id)a3;
- (void)setAllocbindResponse:(id)a3;
- (void)setCallmodeupdateRequest:(id)a3;
- (void)setCallmodeupdateResponse:(id)a3;
- (void)setChannelconfigRequest:(id)a3;
- (void)setChannelconfigResponse:(id)a3;
- (void)setDiagnosticIndication:(id)a3;
- (void)setErrorIndication:(id)a3;
- (void)setGetmaterialRequest:(id)a3;
- (void)setGetmaterialResponse:(id)a3;
- (void)setGoawayIndication:(id)a3;
- (void)setInfoRequest:(id)a3;
- (void)setInfoResponse:(id)a3;
- (void)setParticipantupdateIndication:(id)a3;
- (void)setParticipantupdateRequest:(id)a3;
- (void)setParticipantupdateResponse:(id)a3;
- (void)setPlugincontrolIndication:(id)a3;
- (void)setPlugincontrolRequest:(id)a3;
- (void)setPlugincontrolResponse:(id)a3;
- (void)setPutmaterialIndication:(id)a3;
- (void)setPutmaterialRequest:(id)a3;
- (void)setPutmaterialResponse:(id)a3;
- (void)setReallocateIndication:(id)a3;
- (void)setRegisterAckRequest:(id)a3;
- (void)setRegisterAckResponse:(id)a3;
- (void)setRegisterIndication:(id)a3;
- (void)setRegisterRequest:(id)a3;
- (void)setRegisterResponse:(id)a3;
- (void)setSessioninfoIndication:(id)a3;
- (void)setSessioninfoRequest:(id)a3;
- (void)setSessioninfoResponse:(id)a3;
- (void)setStatsRequest:(id)a3;
- (void)setStatsResponse:(id)a3;
- (void)setTestRequest:(id)a3;
- (void)setTestResponse:(id)a3;
- (void)setUnallocbindRequest:(id)a3;
- (void)setUnallocbindResponse:(id)a3;
- (void)setUnregisterIndication:(id)a3;
- (void)setUnregisterRequest:(id)a3;
- (void)setUnregisterResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoH3Message

- (void)setAllocbindRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 1;
  allocbindRequest = self->_allocbindRequest;
  self->_allocbindRequest = v4;
}

- (void)setAllocbindResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 2;
  allocbindResponse = self->_allocbindResponse;
  self->_allocbindResponse = v4;
}

- (void)setDiagnosticIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 3;
  diagnosticIndication = self->_diagnosticIndication;
  self->_diagnosticIndication = v4;
}

- (void)setGoawayIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 4;
  goawayIndication = self->_goawayIndication;
  self->_goawayIndication = v4;
}

- (void)setInfoRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 5;
  infoRequest = self->_infoRequest;
  self->_infoRequest = v4;
}

- (void)setInfoResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 6;
  infoResponse = self->_infoResponse;
  self->_infoResponse = v4;
}

- (void)setParticipantupdateRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 7;
  participantupdateRequest = self->_participantupdateRequest;
  self->_participantupdateRequest = v4;
}

- (void)setParticipantupdateResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 8;
  participantupdateResponse = self->_participantupdateResponse;
  self->_participantupdateResponse = v4;
}

- (void)setParticipantupdateIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 9;
  participantupdateIndication = self->_participantupdateIndication;
  self->_participantupdateIndication = v4;
}

- (void)setPlugincontrolRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 10;
  plugincontrolRequest = self->_plugincontrolRequest;
  self->_plugincontrolRequest = v4;
}

- (void)setPlugincontrolResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 11;
  plugincontrolResponse = self->_plugincontrolResponse;
  self->_plugincontrolResponse = v4;
}

- (void)setPlugincontrolIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 12;
  plugincontrolIndication = self->_plugincontrolIndication;
  self->_plugincontrolIndication = v4;
}

- (void)setErrorIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 13;
  errorIndication = self->_errorIndication;
  self->_errorIndication = v4;
}

- (void)setReallocateIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 14;
  reallocateIndication = self->_reallocateIndication;
  self->_reallocateIndication = v4;
}

- (void)setSessioninfoRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 15;
  sessioninfoRequest = self->_sessioninfoRequest;
  self->_sessioninfoRequest = v4;
}

- (void)setSessioninfoResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 16;
  sessioninfoResponse = self->_sessioninfoResponse;
  self->_sessioninfoResponse = v4;
}

- (void)setSessioninfoIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 17;
  sessioninfoIndication = self->_sessioninfoIndication;
  self->_sessioninfoIndication = v4;
}

- (void)setStatsRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 18;
  statsRequest = self->_statsRequest;
  self->_statsRequest = v4;
}

- (void)setStatsResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 19;
  statsResponse = self->_statsResponse;
  self->_statsResponse = v4;
}

- (void)setTestRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 20;
  testRequest = self->_testRequest;
  self->_testRequest = v4;
}

- (void)setTestResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 21;
  testResponse = self->_testResponse;
  self->_testResponse = v4;
}

- (void)setUnallocbindRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 22;
  unallocbindRequest = self->_unallocbindRequest;
  self->_unallocbindRequest = v4;
}

- (void)setUnallocbindResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 23;
  unallocbindResponse = self->_unallocbindResponse;
  self->_unallocbindResponse = v4;
}

- (void)setPutmaterialRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 24;
  putmaterialRequest = self->_putmaterialRequest;
  self->_putmaterialRequest = v4;
}

- (void)setPutmaterialResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 25;
  putmaterialResponse = self->_putmaterialResponse;
  self->_putmaterialResponse = v4;
}

- (void)setPutmaterialIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 26;
  putmaterialIndication = self->_putmaterialIndication;
  self->_putmaterialIndication = v4;
}

- (void)setGetmaterialRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 27;
  getmaterialRequest = self->_getmaterialRequest;
  self->_getmaterialRequest = v4;
}

- (void)setGetmaterialResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 28;
  getmaterialResponse = self->_getmaterialResponse;
  self->_getmaterialResponse = v4;
}

- (void)setRegisterRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 29;
  registerRequest = self->_registerRequest;
  self->_registerRequest = v4;
}

- (void)setRegisterResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 30;
  registerResponse = self->_registerResponse;
  self->_registerResponse = v4;
}

- (void)setRegisterIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 31;
  registerIndication = self->_registerIndication;
  self->_registerIndication = v4;
}

- (void)setRegisterAckRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 32;
  registerAckRequest = self->_registerAckRequest;
  self->_registerAckRequest = v4;
}

- (void)setRegisterAckResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 33;
  registerAckResponse = self->_registerAckResponse;
  self->_registerAckResponse = v4;
}

- (void)setUnregisterRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 34;
  unregisterRequest = self->_unregisterRequest;
  self->_unregisterRequest = v4;
}

- (void)setUnregisterResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 35;
  unregisterResponse = self->_unregisterResponse;
  self->_unregisterResponse = v4;
}

- (void)setUnregisterIndication:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 36;
  unregisterIndication = self->_unregisterIndication;
  self->_unregisterIndication = v4;
}

- (void)setCallmodeupdateRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 37;
  callmodeupdateRequest = self->_callmodeupdateRequest;
  self->_callmodeupdateRequest = v4;
}

- (void)setCallmodeupdateResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 38;
  callmodeupdateResponse = self->_callmodeupdateResponse;
  self->_callmodeupdateResponse = v4;
}

- (void)setChannelconfigRequest:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 39;
  channelconfigRequest = self->_channelconfigRequest;
  self->_channelconfigRequest = v4;
}

- (void)setChannelconfigResponse:(id)a3
{
  v4 = a3;
  [(IDSQRProtoH3Message *)self clearOneofValuesForInnerMessage];
  *&self->_has |= 1u;
  self->_innerMessage = 40;
  channelconfigResponse = self->_channelconfigResponse;
  self->_channelconfigResponse = v4;
}

- (int)innerMessage
{
  if (*&self->_has)
  {
    return self->_innerMessage;
  }

  else
  {
    return 0;
  }
}

- (id)innerMessageAsString:(int)a3
{
  if (a3 >= 0x29)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E1C18[a3];
  }

  return v4;
}

- (int)StringAsInnerMessage:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"allocbind_request"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"allocbind_response"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"diagnostic_indication"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"goaway_indication"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"info_request"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"info_response"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"participantupdate_request"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"participantupdate_response"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"participantupdate_indication"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"plugincontrol_request"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"plugincontrol_response"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"plugincontrol_indication"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"error_indication"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"reallocate_indication"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"sessioninfo_request"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"sessioninfo_response"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"sessioninfo_indication"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"stats_request"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"stats_response"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"test_request"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"test_response"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"unallocbind_request"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"unallocbind_response"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"putmaterial_request"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"putmaterial_response"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"putmaterial_indication"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"getmaterial_request"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"getmaterial_response"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"register_request"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"register_response"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"register_indication"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"registerAck_request"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"registerAck_response"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"unregister_request"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"unregister_response"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"unregister_indication"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"callmodeupdate_request"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"callmodeupdate_response"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"channelconfig_request"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"channelconfig_response"])
  {
    v4 = 40;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForInnerMessage
{
  *&self->_has &= ~1u;
  self->_innerMessage = 0;
  allocbindRequest = self->_allocbindRequest;
  self->_allocbindRequest = 0;

  allocbindResponse = self->_allocbindResponse;
  self->_allocbindResponse = 0;

  diagnosticIndication = self->_diagnosticIndication;
  self->_diagnosticIndication = 0;

  goawayIndication = self->_goawayIndication;
  self->_goawayIndication = 0;

  infoRequest = self->_infoRequest;
  self->_infoRequest = 0;

  infoResponse = self->_infoResponse;
  self->_infoResponse = 0;

  participantupdateRequest = self->_participantupdateRequest;
  self->_participantupdateRequest = 0;

  participantupdateResponse = self->_participantupdateResponse;
  self->_participantupdateResponse = 0;

  participantupdateIndication = self->_participantupdateIndication;
  self->_participantupdateIndication = 0;

  plugincontrolRequest = self->_plugincontrolRequest;
  self->_plugincontrolRequest = 0;

  plugincontrolResponse = self->_plugincontrolResponse;
  self->_plugincontrolResponse = 0;

  plugincontrolIndication = self->_plugincontrolIndication;
  self->_plugincontrolIndication = 0;

  errorIndication = self->_errorIndication;
  self->_errorIndication = 0;

  reallocateIndication = self->_reallocateIndication;
  self->_reallocateIndication = 0;

  sessioninfoRequest = self->_sessioninfoRequest;
  self->_sessioninfoRequest = 0;

  sessioninfoResponse = self->_sessioninfoResponse;
  self->_sessioninfoResponse = 0;

  sessioninfoIndication = self->_sessioninfoIndication;
  self->_sessioninfoIndication = 0;

  statsRequest = self->_statsRequest;
  self->_statsRequest = 0;

  statsResponse = self->_statsResponse;
  self->_statsResponse = 0;

  testRequest = self->_testRequest;
  self->_testRequest = 0;

  testResponse = self->_testResponse;
  self->_testResponse = 0;

  unallocbindRequest = self->_unallocbindRequest;
  self->_unallocbindRequest = 0;

  unallocbindResponse = self->_unallocbindResponse;
  self->_unallocbindResponse = 0;

  putmaterialRequest = self->_putmaterialRequest;
  self->_putmaterialRequest = 0;

  putmaterialResponse = self->_putmaterialResponse;
  self->_putmaterialResponse = 0;

  putmaterialIndication = self->_putmaterialIndication;
  self->_putmaterialIndication = 0;

  getmaterialRequest = self->_getmaterialRequest;
  self->_getmaterialRequest = 0;

  getmaterialResponse = self->_getmaterialResponse;
  self->_getmaterialResponse = 0;

  registerRequest = self->_registerRequest;
  self->_registerRequest = 0;

  registerResponse = self->_registerResponse;
  self->_registerResponse = 0;

  registerIndication = self->_registerIndication;
  self->_registerIndication = 0;

  registerAckRequest = self->_registerAckRequest;
  self->_registerAckRequest = 0;

  registerAckResponse = self->_registerAckResponse;
  self->_registerAckResponse = 0;

  unregisterRequest = self->_unregisterRequest;
  self->_unregisterRequest = 0;

  unregisterResponse = self->_unregisterResponse;
  self->_unregisterResponse = 0;

  unregisterIndication = self->_unregisterIndication;
  self->_unregisterIndication = 0;

  callmodeupdateRequest = self->_callmodeupdateRequest;
  self->_callmodeupdateRequest = 0;

  callmodeupdateResponse = self->_callmodeupdateResponse;
  self->_callmodeupdateResponse = 0;

  channelconfigRequest = self->_channelconfigRequest;
  self->_channelconfigRequest = 0;

  channelconfigResponse = self->_channelconfigResponse;
  self->_channelconfigResponse = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3Message;
  v4 = [(IDSQRProtoH3Message *)&v8 description];
  v5 = [(IDSQRProtoH3Message *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  allocbindRequest = self->_allocbindRequest;
  if (allocbindRequest)
  {
    v5 = [(IDSQRProtoAllocBindRequest *)allocbindRequest dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"allocbind_request"];
  }

  allocbindResponse = self->_allocbindResponse;
  if (allocbindResponse)
  {
    v7 = [(IDSQRProtoAllocBindResponse *)allocbindResponse dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"allocbind_response"];
  }

  diagnosticIndication = self->_diagnosticIndication;
  if (diagnosticIndication)
  {
    v9 = [(IDSQRProtoDiagnosticIndication *)diagnosticIndication dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"diagnostic_indication"];
  }

  goawayIndication = self->_goawayIndication;
  if (goawayIndication)
  {
    v11 = [(IDSQRProtoGoAwayIndication *)goawayIndication dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"goaway_indication"];
  }

  infoRequest = self->_infoRequest;
  if (infoRequest)
  {
    v13 = [(IDSQRProtoInfoRequest *)infoRequest dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"info_request"];
  }

  infoResponse = self->_infoResponse;
  if (infoResponse)
  {
    v15 = [(IDSQRProtoInfoResponse *)infoResponse dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"info_response"];
  }

  participantupdateRequest = self->_participantupdateRequest;
  if (participantupdateRequest)
  {
    v17 = [(IDSQRProtoParticipantUpdateRequest *)participantupdateRequest dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"participantupdate_request"];
  }

  participantupdateResponse = self->_participantupdateResponse;
  if (participantupdateResponse)
  {
    v19 = [(IDSQRProtoParticipantUpdateResponse *)participantupdateResponse dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"participantupdate_response"];
  }

  participantupdateIndication = self->_participantupdateIndication;
  if (participantupdateIndication)
  {
    v21 = [(IDSQRProtoParticipantUpdateIndication *)participantupdateIndication dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"participantupdate_indication"];
  }

  plugincontrolRequest = self->_plugincontrolRequest;
  if (plugincontrolRequest)
  {
    v23 = [(IDSQRProtoPluginControlRequest *)plugincontrolRequest dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"plugincontrol_request"];
  }

  plugincontrolResponse = self->_plugincontrolResponse;
  if (plugincontrolResponse)
  {
    v25 = [(IDSQRProtoPluginControlResponse *)plugincontrolResponse dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"plugincontrol_response"];
  }

  plugincontrolIndication = self->_plugincontrolIndication;
  if (plugincontrolIndication)
  {
    v27 = [(IDSQRProtoPluginControlIndication *)plugincontrolIndication dictionaryRepresentation];
    [v3 setObject:v27 forKey:@"plugincontrol_indication"];
  }

  errorIndication = self->_errorIndication;
  if (errorIndication)
  {
    v29 = [(IDSQRProtoErrorIndication *)errorIndication dictionaryRepresentation];
    [v3 setObject:v29 forKey:@"error_indication"];
  }

  reallocateIndication = self->_reallocateIndication;
  if (reallocateIndication)
  {
    v31 = [(IDSQRProtoReallocateIndication *)reallocateIndication dictionaryRepresentation];
    [v3 setObject:v31 forKey:@"reallocate_indication"];
  }

  sessioninfoRequest = self->_sessioninfoRequest;
  if (sessioninfoRequest)
  {
    v33 = [(IDSQRProtoSessionInfoRequest *)sessioninfoRequest dictionaryRepresentation];
    [v3 setObject:v33 forKey:@"sessioninfo_request"];
  }

  sessioninfoResponse = self->_sessioninfoResponse;
  if (sessioninfoResponse)
  {
    v35 = [(IDSQRProtoSessionInfoResponse *)sessioninfoResponse dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"sessioninfo_response"];
  }

  sessioninfoIndication = self->_sessioninfoIndication;
  if (sessioninfoIndication)
  {
    v37 = [(IDSQRProtoSessionInfoIndication *)sessioninfoIndication dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"sessioninfo_indication"];
  }

  statsRequest = self->_statsRequest;
  if (statsRequest)
  {
    v39 = [(IDSQRProtoStatsRequest *)statsRequest dictionaryRepresentation];
    [v3 setObject:v39 forKey:@"stats_request"];
  }

  statsResponse = self->_statsResponse;
  if (statsResponse)
  {
    v41 = [(IDSQRProtoStatsResponse *)statsResponse dictionaryRepresentation];
    [v3 setObject:v41 forKey:@"stats_response"];
  }

  testRequest = self->_testRequest;
  if (testRequest)
  {
    v43 = [(IDSQRProtoTestRequest *)testRequest dictionaryRepresentation];
    [v3 setObject:v43 forKey:@"test_request"];
  }

  testResponse = self->_testResponse;
  if (testResponse)
  {
    v45 = [(IDSQRProtoTestResponse *)testResponse dictionaryRepresentation];
    [v3 setObject:v45 forKey:@"test_response"];
  }

  unallocbindRequest = self->_unallocbindRequest;
  if (unallocbindRequest)
  {
    v47 = [(IDSQRProtoUnAllocBindRequest *)unallocbindRequest dictionaryRepresentation];
    [v3 setObject:v47 forKey:@"unallocbind_request"];
  }

  unallocbindResponse = self->_unallocbindResponse;
  if (unallocbindResponse)
  {
    v49 = [(IDSQRProtoUnAllocBindResponse *)unallocbindResponse dictionaryRepresentation];
    [v3 setObject:v49 forKey:@"unallocbind_response"];
  }

  putmaterialRequest = self->_putmaterialRequest;
  if (putmaterialRequest)
  {
    v51 = [(IDSQRProtoPutMaterialRequest *)putmaterialRequest dictionaryRepresentation];
    [v3 setObject:v51 forKey:@"putmaterial_request"];
  }

  putmaterialResponse = self->_putmaterialResponse;
  if (putmaterialResponse)
  {
    v53 = [(IDSQRProtoPutMaterialResponse *)putmaterialResponse dictionaryRepresentation];
    [v3 setObject:v53 forKey:@"putmaterial_response"];
  }

  putmaterialIndication = self->_putmaterialIndication;
  if (putmaterialIndication)
  {
    v55 = [(IDSQRProtoPutMaterialIndication *)putmaterialIndication dictionaryRepresentation];
    [v3 setObject:v55 forKey:@"putmaterial_indication"];
  }

  getmaterialRequest = self->_getmaterialRequest;
  if (getmaterialRequest)
  {
    v57 = [(IDSQRProtoGetMaterialRequest *)getmaterialRequest dictionaryRepresentation];
    [v3 setObject:v57 forKey:@"getmaterial_request"];
  }

  getmaterialResponse = self->_getmaterialResponse;
  if (getmaterialResponse)
  {
    v59 = [(IDSQRProtoGetMaterialResponse *)getmaterialResponse dictionaryRepresentation];
    [v3 setObject:v59 forKey:@"getmaterial_response"];
  }

  registerRequest = self->_registerRequest;
  if (registerRequest)
  {
    v61 = [(IDSQRProtoH3EndToEndChannelRegisterRequest *)registerRequest dictionaryRepresentation];
    [v3 setObject:v61 forKey:@"register_request"];
  }

  registerResponse = self->_registerResponse;
  if (registerResponse)
  {
    v63 = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)registerResponse dictionaryRepresentation];
    [v3 setObject:v63 forKey:@"register_response"];
  }

  registerIndication = self->_registerIndication;
  if (registerIndication)
  {
    v65 = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)registerIndication dictionaryRepresentation];
    [v3 setObject:v65 forKey:@"register_indication"];
  }

  registerAckRequest = self->_registerAckRequest;
  if (registerAckRequest)
  {
    v67 = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)registerAckRequest dictionaryRepresentation];
    [v3 setObject:v67 forKey:@"registerAck_request"];
  }

  registerAckResponse = self->_registerAckResponse;
  if (registerAckResponse)
  {
    v69 = [(IDSQRProtoH3EndToEndChannelRegisterAckResponse *)registerAckResponse dictionaryRepresentation];
    [v3 setObject:v69 forKey:@"registerAck_response"];
  }

  unregisterRequest = self->_unregisterRequest;
  if (unregisterRequest)
  {
    v71 = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)unregisterRequest dictionaryRepresentation];
    [v3 setObject:v71 forKey:@"unregister_request"];
  }

  unregisterResponse = self->_unregisterResponse;
  if (unregisterResponse)
  {
    v73 = [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)unregisterResponse dictionaryRepresentation];
    [v3 setObject:v73 forKey:@"unregister_response"];
  }

  unregisterIndication = self->_unregisterIndication;
  if (unregisterIndication)
  {
    v75 = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)unregisterIndication dictionaryRepresentation];
    [v3 setObject:v75 forKey:@"unregister_indication"];
  }

  callmodeupdateRequest = self->_callmodeupdateRequest;
  if (callmodeupdateRequest)
  {
    v77 = [(IDSQRProtoCallModeUpdateRequest *)callmodeupdateRequest dictionaryRepresentation];
    [v3 setObject:v77 forKey:@"callmodeupdate_request"];
  }

  callmodeupdateResponse = self->_callmodeupdateResponse;
  if (callmodeupdateResponse)
  {
    v79 = [(IDSQRProtoCallModeUpdateResponse *)callmodeupdateResponse dictionaryRepresentation];
    [v3 setObject:v79 forKey:@"callmodeupdate_response"];
  }

  channelconfigRequest = self->_channelconfigRequest;
  if (channelconfigRequest)
  {
    v81 = [(IDSQRH3ChannelConfigRequest *)channelconfigRequest dictionaryRepresentation];
    [v3 setObject:v81 forKey:@"channelconfig_request"];
  }

  channelconfigResponse = self->_channelconfigResponse;
  if (channelconfigResponse)
  {
    v83 = [(IDSQRH3ChannelConfigResponse *)channelconfigResponse dictionaryRepresentation];
    [v3 setObject:v83 forKey:@"channelconfig_response"];
  }

  if (*&self->_has)
  {
    innerMessage = self->_innerMessage;
    if (innerMessage >= 0x29)
    {
      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_innerMessage];
    }

    else
    {
      v85 = off_1E77E1C18[innerMessage];
    }

    [v3 setObject:v85 forKey:@"inner_message"];
  }

  v86 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allocbindRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_allocbindResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_diagnosticIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_goawayIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_infoRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_infoResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_participantupdateRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_participantupdateResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_participantupdateIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_plugincontrolRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_plugincontrolResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_plugincontrolIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_errorIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reallocateIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_sessioninfoRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_sessioninfoResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_sessioninfoIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_statsRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_statsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_testRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_testResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unallocbindRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unallocbindResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_putmaterialRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_putmaterialResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_putmaterialIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_getmaterialRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_getmaterialResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_registerRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_registerResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_registerIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_registerAckRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_registerAckResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unregisterRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unregisterResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unregisterIndication)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_callmodeupdateRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_callmodeupdateResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_channelconfigRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_channelconfigResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[28] = self->_innerMessage;
    *(v4 + 336) |= 1u;
  }

  v5 = v4;
  if (self->_allocbindRequest)
  {
    [v4 setAllocbindRequest:?];
    v4 = v5;
  }

  if (self->_allocbindResponse)
  {
    [v5 setAllocbindResponse:?];
    v4 = v5;
  }

  if (self->_diagnosticIndication)
  {
    [v5 setDiagnosticIndication:?];
    v4 = v5;
  }

  if (self->_goawayIndication)
  {
    [v5 setGoawayIndication:?];
    v4 = v5;
  }

  if (self->_infoRequest)
  {
    [v5 setInfoRequest:?];
    v4 = v5;
  }

  if (self->_infoResponse)
  {
    [v5 setInfoResponse:?];
    v4 = v5;
  }

  if (self->_participantupdateRequest)
  {
    [v5 setParticipantupdateRequest:?];
    v4 = v5;
  }

  if (self->_participantupdateResponse)
  {
    [v5 setParticipantupdateResponse:?];
    v4 = v5;
  }

  if (self->_participantupdateIndication)
  {
    [v5 setParticipantupdateIndication:?];
    v4 = v5;
  }

  if (self->_plugincontrolRequest)
  {
    [v5 setPlugincontrolRequest:?];
    v4 = v5;
  }

  if (self->_plugincontrolResponse)
  {
    [v5 setPlugincontrolResponse:?];
    v4 = v5;
  }

  if (self->_plugincontrolIndication)
  {
    [v5 setPlugincontrolIndication:?];
    v4 = v5;
  }

  if (self->_errorIndication)
  {
    [v5 setErrorIndication:?];
    v4 = v5;
  }

  if (self->_reallocateIndication)
  {
    [v5 setReallocateIndication:?];
    v4 = v5;
  }

  if (self->_sessioninfoRequest)
  {
    [v5 setSessioninfoRequest:?];
    v4 = v5;
  }

  if (self->_sessioninfoResponse)
  {
    [v5 setSessioninfoResponse:?];
    v4 = v5;
  }

  if (self->_sessioninfoIndication)
  {
    [v5 setSessioninfoIndication:?];
    v4 = v5;
  }

  if (self->_statsRequest)
  {
    [v5 setStatsRequest:?];
    v4 = v5;
  }

  if (self->_statsResponse)
  {
    [v5 setStatsResponse:?];
    v4 = v5;
  }

  if (self->_testRequest)
  {
    [v5 setTestRequest:?];
    v4 = v5;
  }

  if (self->_testResponse)
  {
    [v5 setTestResponse:?];
    v4 = v5;
  }

  if (self->_unallocbindRequest)
  {
    [v5 setUnallocbindRequest:?];
    v4 = v5;
  }

  if (self->_unallocbindResponse)
  {
    [v5 setUnallocbindResponse:?];
    v4 = v5;
  }

  if (self->_putmaterialRequest)
  {
    [v5 setPutmaterialRequest:?];
    v4 = v5;
  }

  if (self->_putmaterialResponse)
  {
    [v5 setPutmaterialResponse:?];
    v4 = v5;
  }

  if (self->_putmaterialIndication)
  {
    [v5 setPutmaterialIndication:?];
    v4 = v5;
  }

  if (self->_getmaterialRequest)
  {
    [v5 setGetmaterialRequest:?];
    v4 = v5;
  }

  if (self->_getmaterialResponse)
  {
    [v5 setGetmaterialResponse:?];
    v4 = v5;
  }

  if (self->_registerRequest)
  {
    [v5 setRegisterRequest:?];
    v4 = v5;
  }

  if (self->_registerResponse)
  {
    [v5 setRegisterResponse:?];
    v4 = v5;
  }

  if (self->_registerIndication)
  {
    [v5 setRegisterIndication:?];
    v4 = v5;
  }

  if (self->_registerAckRequest)
  {
    [v5 setRegisterAckRequest:?];
    v4 = v5;
  }

  if (self->_registerAckResponse)
  {
    [v5 setRegisterAckResponse:?];
    v4 = v5;
  }

  if (self->_unregisterRequest)
  {
    [v5 setUnregisterRequest:?];
    v4 = v5;
  }

  if (self->_unregisterResponse)
  {
    [v5 setUnregisterResponse:?];
    v4 = v5;
  }

  if (self->_unregisterIndication)
  {
    [v5 setUnregisterIndication:?];
    v4 = v5;
  }

  if (self->_callmodeupdateRequest)
  {
    [v5 setCallmodeupdateRequest:?];
    v4 = v5;
  }

  if (self->_callmodeupdateResponse)
  {
    [v5 setCallmodeupdateResponse:?];
    v4 = v5;
  }

  if (self->_channelconfigRequest)
  {
    [v5 setChannelconfigRequest:?];
    v4 = v5;
  }

  if (self->_channelconfigResponse)
  {
    [v5 setChannelconfigResponse:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 112) = self->_innerMessage;
    *(v5 + 336) |= 1u;
  }

  v7 = [(IDSQRProtoAllocBindRequest *)self->_allocbindRequest copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(IDSQRProtoAllocBindResponse *)self->_allocbindResponse copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(IDSQRProtoDiagnosticIndication *)self->_diagnosticIndication copyWithZone:a3];
  v12 = v6[7];
  v6[7] = v11;

  v13 = [(IDSQRProtoGoAwayIndication *)self->_goawayIndication copyWithZone:a3];
  v14 = v6[11];
  v6[11] = v13;

  v15 = [(IDSQRProtoInfoRequest *)self->_infoRequest copyWithZone:a3];
  v16 = v6[12];
  v6[12] = v15;

  v17 = [(IDSQRProtoInfoResponse *)self->_infoResponse copyWithZone:a3];
  v18 = v6[13];
  v6[13] = v17;

  v19 = [(IDSQRProtoParticipantUpdateRequest *)self->_participantupdateRequest copyWithZone:a3];
  v20 = v6[16];
  v6[16] = v19;

  v21 = [(IDSQRProtoParticipantUpdateResponse *)self->_participantupdateResponse copyWithZone:a3];
  v22 = v6[17];
  v6[17] = v21;

  v23 = [(IDSQRProtoParticipantUpdateIndication *)self->_participantupdateIndication copyWithZone:a3];
  v24 = v6[15];
  v6[15] = v23;

  v25 = [(IDSQRProtoPluginControlRequest *)self->_plugincontrolRequest copyWithZone:a3];
  v26 = v6[19];
  v6[19] = v25;

  v27 = [(IDSQRProtoPluginControlResponse *)self->_plugincontrolResponse copyWithZone:a3];
  v28 = v6[20];
  v6[20] = v27;

  v29 = [(IDSQRProtoPluginControlIndication *)self->_plugincontrolIndication copyWithZone:a3];
  v30 = v6[18];
  v6[18] = v29;

  v31 = [(IDSQRProtoErrorIndication *)self->_errorIndication copyWithZone:a3];
  v32 = v6[8];
  v6[8] = v31;

  v33 = [(IDSQRProtoReallocateIndication *)self->_reallocateIndication copyWithZone:a3];
  v34 = v6[24];
  v6[24] = v33;

  v35 = [(IDSQRProtoSessionInfoRequest *)self->_sessioninfoRequest copyWithZone:a3];
  v36 = v6[31];
  v6[31] = v35;

  v37 = [(IDSQRProtoSessionInfoResponse *)self->_sessioninfoResponse copyWithZone:a3];
  v38 = v6[32];
  v6[32] = v37;

  v39 = [(IDSQRProtoSessionInfoIndication *)self->_sessioninfoIndication copyWithZone:a3];
  v40 = v6[30];
  v6[30] = v39;

  v41 = [(IDSQRProtoStatsRequest *)self->_statsRequest copyWithZone:a3];
  v42 = v6[33];
  v6[33] = v41;

  v43 = [(IDSQRProtoStatsResponse *)self->_statsResponse copyWithZone:a3];
  v44 = v6[34];
  v6[34] = v43;

  v45 = [(IDSQRProtoTestRequest *)self->_testRequest copyWithZone:a3];
  v46 = v6[35];
  v6[35] = v45;

  v47 = [(IDSQRProtoTestResponse *)self->_testResponse copyWithZone:a3];
  v48 = v6[36];
  v6[36] = v47;

  v49 = [(IDSQRProtoUnAllocBindRequest *)self->_unallocbindRequest copyWithZone:a3];
  v50 = v6[37];
  v6[37] = v49;

  v51 = [(IDSQRProtoUnAllocBindResponse *)self->_unallocbindResponse copyWithZone:a3];
  v52 = v6[38];
  v6[38] = v51;

  v53 = [(IDSQRProtoPutMaterialRequest *)self->_putmaterialRequest copyWithZone:a3];
  v54 = v6[22];
  v6[22] = v53;

  v55 = [(IDSQRProtoPutMaterialResponse *)self->_putmaterialResponse copyWithZone:a3];
  v56 = v6[23];
  v6[23] = v55;

  v57 = [(IDSQRProtoPutMaterialIndication *)self->_putmaterialIndication copyWithZone:a3];
  v58 = v6[21];
  v6[21] = v57;

  v59 = [(IDSQRProtoGetMaterialRequest *)self->_getmaterialRequest copyWithZone:a3];
  v60 = v6[9];
  v6[9] = v59;

  v61 = [(IDSQRProtoGetMaterialResponse *)self->_getmaterialResponse copyWithZone:a3];
  v62 = v6[10];
  v6[10] = v61;

  v63 = [(IDSQRProtoH3EndToEndChannelRegisterRequest *)self->_registerRequest copyWithZone:a3];
  v64 = v6[28];
  v6[28] = v63;

  v65 = [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self->_registerResponse copyWithZone:a3];
  v66 = v6[29];
  v6[29] = v65;

  v67 = [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self->_registerIndication copyWithZone:a3];
  v68 = v6[27];
  v6[27] = v67;

  v69 = [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self->_registerAckRequest copyWithZone:a3];
  v70 = v6[25];
  v6[25] = v69;

  v71 = [(IDSQRProtoH3EndToEndChannelRegisterAckResponse *)self->_registerAckResponse copyWithZone:a3];
  v72 = v6[26];
  v6[26] = v71;

  v73 = [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self->_unregisterRequest copyWithZone:a3];
  v74 = v6[40];
  v6[40] = v73;

  v75 = [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)self->_unregisterResponse copyWithZone:a3];
  v76 = v6[41];
  v6[41] = v75;

  v77 = [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self->_unregisterIndication copyWithZone:a3];
  v78 = v6[39];
  v6[39] = v77;

  v79 = [(IDSQRProtoCallModeUpdateRequest *)self->_callmodeupdateRequest copyWithZone:a3];
  v80 = v6[3];
  v6[3] = v79;

  v81 = [(IDSQRProtoCallModeUpdateResponse *)self->_callmodeupdateResponse copyWithZone:a3];
  v82 = v6[4];
  v6[4] = v81;

  v83 = [(IDSQRH3ChannelConfigRequest *)self->_channelconfigRequest copyWithZone:a3];
  v84 = v6[5];
  v6[5] = v83;

  v85 = [(IDSQRH3ChannelConfigResponse *)self->_channelconfigResponse copyWithZone:a3];
  v86 = v6[6];
  v6[6] = v85;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 336) & 1) == 0 || self->_innerMessage != *(v4 + 28))
    {
      goto LABEL_87;
    }
  }

  else if (*(v4 + 336))
  {
LABEL_87:
    v45 = 0;
    goto LABEL_88;
  }

  allocbindRequest = self->_allocbindRequest;
  if (allocbindRequest | *(v4 + 1) && ![(IDSQRProtoAllocBindRequest *)allocbindRequest isEqual:?])
  {
    goto LABEL_87;
  }

  allocbindResponse = self->_allocbindResponse;
  if (allocbindResponse | *(v4 + 2))
  {
    if (![(IDSQRProtoAllocBindResponse *)allocbindResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  diagnosticIndication = self->_diagnosticIndication;
  if (diagnosticIndication | *(v4 + 7))
  {
    if (![(IDSQRProtoDiagnosticIndication *)diagnosticIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  goawayIndication = self->_goawayIndication;
  if (goawayIndication | *(v4 + 11))
  {
    if (![(IDSQRProtoGoAwayIndication *)goawayIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  infoRequest = self->_infoRequest;
  if (infoRequest | *(v4 + 12))
  {
    if (![(IDSQRProtoInfoRequest *)infoRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  infoResponse = self->_infoResponse;
  if (infoResponse | *(v4 + 13))
  {
    if (![(IDSQRProtoInfoResponse *)infoResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  participantupdateRequest = self->_participantupdateRequest;
  if (participantupdateRequest | *(v4 + 16))
  {
    if (![(IDSQRProtoParticipantUpdateRequest *)participantupdateRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  participantupdateResponse = self->_participantupdateResponse;
  if (participantupdateResponse | *(v4 + 17))
  {
    if (![(IDSQRProtoParticipantUpdateResponse *)participantupdateResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  participantupdateIndication = self->_participantupdateIndication;
  if (participantupdateIndication | *(v4 + 15))
  {
    if (![(IDSQRProtoParticipantUpdateIndication *)participantupdateIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  plugincontrolRequest = self->_plugincontrolRequest;
  if (plugincontrolRequest | *(v4 + 19))
  {
    if (![(IDSQRProtoPluginControlRequest *)plugincontrolRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  plugincontrolResponse = self->_plugincontrolResponse;
  if (plugincontrolResponse | *(v4 + 20))
  {
    if (![(IDSQRProtoPluginControlResponse *)plugincontrolResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  plugincontrolIndication = self->_plugincontrolIndication;
  if (plugincontrolIndication | *(v4 + 18))
  {
    if (![(IDSQRProtoPluginControlIndication *)plugincontrolIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  errorIndication = self->_errorIndication;
  if (errorIndication | *(v4 + 8))
  {
    if (![(IDSQRProtoErrorIndication *)errorIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  reallocateIndication = self->_reallocateIndication;
  if (reallocateIndication | *(v4 + 24))
  {
    if (![(IDSQRProtoReallocateIndication *)reallocateIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  sessioninfoRequest = self->_sessioninfoRequest;
  if (sessioninfoRequest | *(v4 + 31))
  {
    if (![(IDSQRProtoSessionInfoRequest *)sessioninfoRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  sessioninfoResponse = self->_sessioninfoResponse;
  if (sessioninfoResponse | *(v4 + 32))
  {
    if (![(IDSQRProtoSessionInfoResponse *)sessioninfoResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  sessioninfoIndication = self->_sessioninfoIndication;
  if (sessioninfoIndication | *(v4 + 30))
  {
    if (![(IDSQRProtoSessionInfoIndication *)sessioninfoIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  statsRequest = self->_statsRequest;
  if (statsRequest | *(v4 + 33))
  {
    if (![(IDSQRProtoStatsRequest *)statsRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  statsResponse = self->_statsResponse;
  if (statsResponse | *(v4 + 34))
  {
    if (![(IDSQRProtoStatsResponse *)statsResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  testRequest = self->_testRequest;
  if (testRequest | *(v4 + 35))
  {
    if (![(IDSQRProtoTestRequest *)testRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  testResponse = self->_testResponse;
  if (testResponse | *(v4 + 36))
  {
    if (![(IDSQRProtoTestResponse *)testResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  unallocbindRequest = self->_unallocbindRequest;
  if (unallocbindRequest | *(v4 + 37))
  {
    if (![(IDSQRProtoUnAllocBindRequest *)unallocbindRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  unallocbindResponse = self->_unallocbindResponse;
  if (unallocbindResponse | *(v4 + 38))
  {
    if (![(IDSQRProtoUnAllocBindResponse *)unallocbindResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  putmaterialRequest = self->_putmaterialRequest;
  if (putmaterialRequest | *(v4 + 22))
  {
    if (![(IDSQRProtoPutMaterialRequest *)putmaterialRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  putmaterialResponse = self->_putmaterialResponse;
  if (putmaterialResponse | *(v4 + 23))
  {
    if (![(IDSQRProtoPutMaterialResponse *)putmaterialResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  putmaterialIndication = self->_putmaterialIndication;
  if (putmaterialIndication | *(v4 + 21))
  {
    if (![(IDSQRProtoPutMaterialIndication *)putmaterialIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  getmaterialRequest = self->_getmaterialRequest;
  if (getmaterialRequest | *(v4 + 9))
  {
    if (![(IDSQRProtoGetMaterialRequest *)getmaterialRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  getmaterialResponse = self->_getmaterialResponse;
  if (getmaterialResponse | *(v4 + 10))
  {
    if (![(IDSQRProtoGetMaterialResponse *)getmaterialResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  registerRequest = self->_registerRequest;
  if (registerRequest | *(v4 + 28))
  {
    if (![(IDSQRProtoH3EndToEndChannelRegisterRequest *)registerRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  registerResponse = self->_registerResponse;
  if (registerResponse | *(v4 + 29))
  {
    if (![(IDSQRProtoH3EndToEndChannelRegisterResponse *)registerResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  registerIndication = self->_registerIndication;
  if (registerIndication | *(v4 + 27))
  {
    if (![(IDSQRProtoH3EndToEndChannelRegisterIndication *)registerIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  registerAckRequest = self->_registerAckRequest;
  if (registerAckRequest | *(v4 + 25))
  {
    if (![(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)registerAckRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  registerAckResponse = self->_registerAckResponse;
  if (registerAckResponse | *(v4 + 26))
  {
    if (![(IDSQRProtoH3EndToEndChannelRegisterAckResponse *)registerAckResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  unregisterRequest = self->_unregisterRequest;
  if (unregisterRequest | *(v4 + 40))
  {
    if (![(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)unregisterRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  unregisterResponse = self->_unregisterResponse;
  if (unregisterResponse | *(v4 + 41))
  {
    if (![(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)unregisterResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  unregisterIndication = self->_unregisterIndication;
  if (unregisterIndication | *(v4 + 39))
  {
    if (![(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)unregisterIndication isEqual:?])
    {
      goto LABEL_87;
    }
  }

  callmodeupdateRequest = self->_callmodeupdateRequest;
  if (callmodeupdateRequest | *(v4 + 3))
  {
    if (![(IDSQRProtoCallModeUpdateRequest *)callmodeupdateRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  callmodeupdateResponse = self->_callmodeupdateResponse;
  if (callmodeupdateResponse | *(v4 + 4))
  {
    if (![(IDSQRProtoCallModeUpdateResponse *)callmodeupdateResponse isEqual:?])
    {
      goto LABEL_87;
    }
  }

  channelconfigRequest = self->_channelconfigRequest;
  if (channelconfigRequest | *(v4 + 5))
  {
    if (![(IDSQRH3ChannelConfigRequest *)channelconfigRequest isEqual:?])
    {
      goto LABEL_87;
    }
  }

  channelconfigResponse = self->_channelconfigResponse;
  if (channelconfigResponse | *(v4 + 6))
  {
    v45 = [(IDSQRH3ChannelConfigResponse *)channelconfigResponse isEqual:?];
  }

  else
  {
    v45 = 1;
  }

LABEL_88:

  return v45;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_innerMessage;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IDSQRProtoAllocBindRequest *)self->_allocbindRequest hash]^ v3;
  v5 = [(IDSQRProtoAllocBindResponse *)self->_allocbindResponse hash];
  v6 = v4 ^ v5 ^ [(IDSQRProtoDiagnosticIndication *)self->_diagnosticIndication hash];
  v7 = [(IDSQRProtoGoAwayIndication *)self->_goawayIndication hash];
  v8 = v7 ^ [(IDSQRProtoInfoRequest *)self->_infoRequest hash];
  v9 = v6 ^ v8 ^ [(IDSQRProtoInfoResponse *)self->_infoResponse hash];
  v10 = [(IDSQRProtoParticipantUpdateRequest *)self->_participantupdateRequest hash];
  v11 = v10 ^ [(IDSQRProtoParticipantUpdateResponse *)self->_participantupdateResponse hash];
  v12 = v11 ^ [(IDSQRProtoParticipantUpdateIndication *)self->_participantupdateIndication hash];
  v13 = v9 ^ v12 ^ [(IDSQRProtoPluginControlRequest *)self->_plugincontrolRequest hash];
  v14 = [(IDSQRProtoPluginControlResponse *)self->_plugincontrolResponse hash];
  v15 = v14 ^ [(IDSQRProtoPluginControlIndication *)self->_plugincontrolIndication hash];
  v16 = v15 ^ [(IDSQRProtoErrorIndication *)self->_errorIndication hash];
  v17 = v16 ^ [(IDSQRProtoReallocateIndication *)self->_reallocateIndication hash];
  v18 = v13 ^ v17 ^ [(IDSQRProtoSessionInfoRequest *)self->_sessioninfoRequest hash];
  v19 = [(IDSQRProtoSessionInfoResponse *)self->_sessioninfoResponse hash];
  v20 = v19 ^ [(IDSQRProtoSessionInfoIndication *)self->_sessioninfoIndication hash];
  v21 = v20 ^ [(IDSQRProtoStatsRequest *)self->_statsRequest hash];
  v22 = v21 ^ [(IDSQRProtoStatsResponse *)self->_statsResponse hash];
  v23 = v22 ^ [(IDSQRProtoTestRequest *)self->_testRequest hash];
  v24 = v18 ^ v23 ^ [(IDSQRProtoTestResponse *)self->_testResponse hash];
  v25 = [(IDSQRProtoUnAllocBindRequest *)self->_unallocbindRequest hash];
  v26 = v25 ^ [(IDSQRProtoUnAllocBindResponse *)self->_unallocbindResponse hash];
  v27 = v26 ^ [(IDSQRProtoPutMaterialRequest *)self->_putmaterialRequest hash];
  v28 = v27 ^ [(IDSQRProtoPutMaterialResponse *)self->_putmaterialResponse hash];
  v29 = v28 ^ [(IDSQRProtoPutMaterialIndication *)self->_putmaterialIndication hash];
  v30 = v29 ^ [(IDSQRProtoGetMaterialRequest *)self->_getmaterialRequest hash];
  v31 = v24 ^ v30 ^ [(IDSQRProtoGetMaterialResponse *)self->_getmaterialResponse hash];
  v32 = [(IDSQRProtoH3EndToEndChannelRegisterRequest *)self->_registerRequest hash];
  v33 = v32 ^ [(IDSQRProtoH3EndToEndChannelRegisterResponse *)self->_registerResponse hash];
  v34 = v33 ^ [(IDSQRProtoH3EndToEndChannelRegisterIndication *)self->_registerIndication hash];
  v35 = v34 ^ [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)self->_registerAckRequest hash];
  v36 = v35 ^ [(IDSQRProtoH3EndToEndChannelRegisterAckResponse *)self->_registerAckResponse hash];
  v37 = v36 ^ [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)self->_unregisterRequest hash];
  v38 = v37 ^ [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)self->_unregisterResponse hash];
  v39 = v31 ^ v38 ^ [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)self->_unregisterIndication hash];
  v40 = [(IDSQRProtoCallModeUpdateRequest *)self->_callmodeupdateRequest hash];
  v41 = v40 ^ [(IDSQRProtoCallModeUpdateResponse *)self->_callmodeupdateResponse hash];
  v42 = v41 ^ [(IDSQRH3ChannelConfigRequest *)self->_channelconfigRequest hash];
  return v39 ^ v42 ^ [(IDSQRH3ChannelConfigResponse *)self->_channelconfigResponse hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 336))
  {
    self->_innerMessage = *(v4 + 28);
    *&self->_has |= 1u;
  }

  allocbindRequest = self->_allocbindRequest;
  v7 = v5[1];
  v86 = v5;
  if (allocbindRequest)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(IDSQRProtoAllocBindRequest *)allocbindRequest mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(IDSQRProtoH3Message *)self setAllocbindRequest:?];
  }

  v5 = v86;
LABEL_9:
  allocbindResponse = self->_allocbindResponse;
  v9 = v5[2];
  if (allocbindResponse)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(IDSQRProtoAllocBindResponse *)allocbindResponse mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(IDSQRProtoH3Message *)self setAllocbindResponse:?];
  }

  v5 = v86;
LABEL_15:
  diagnosticIndication = self->_diagnosticIndication;
  v11 = v5[7];
  if (diagnosticIndication)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(IDSQRProtoDiagnosticIndication *)diagnosticIndication mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(IDSQRProtoH3Message *)self setDiagnosticIndication:?];
  }

  v5 = v86;
LABEL_21:
  goawayIndication = self->_goawayIndication;
  v13 = v5[11];
  if (goawayIndication)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(IDSQRProtoGoAwayIndication *)goawayIndication mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(IDSQRProtoH3Message *)self setGoawayIndication:?];
  }

  v5 = v86;
LABEL_27:
  infoRequest = self->_infoRequest;
  v15 = v5[12];
  if (infoRequest)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(IDSQRProtoInfoRequest *)infoRequest mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(IDSQRProtoH3Message *)self setInfoRequest:?];
  }

  v5 = v86;
LABEL_33:
  infoResponse = self->_infoResponse;
  v17 = v5[13];
  if (infoResponse)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(IDSQRProtoInfoResponse *)infoResponse mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(IDSQRProtoH3Message *)self setInfoResponse:?];
  }

  v5 = v86;
LABEL_39:
  participantupdateRequest = self->_participantupdateRequest;
  v19 = v5[16];
  if (participantupdateRequest)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(IDSQRProtoParticipantUpdateRequest *)participantupdateRequest mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(IDSQRProtoH3Message *)self setParticipantupdateRequest:?];
  }

  v5 = v86;
LABEL_45:
  participantupdateResponse = self->_participantupdateResponse;
  v21 = v5[17];
  if (participantupdateResponse)
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(IDSQRProtoParticipantUpdateResponse *)participantupdateResponse mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(IDSQRProtoH3Message *)self setParticipantupdateResponse:?];
  }

  v5 = v86;
LABEL_51:
  participantupdateIndication = self->_participantupdateIndication;
  v23 = v5[15];
  if (participantupdateIndication)
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    [(IDSQRProtoParticipantUpdateIndication *)participantupdateIndication mergeFrom:?];
  }

  else
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    [(IDSQRProtoH3Message *)self setParticipantupdateIndication:?];
  }

  v5 = v86;
LABEL_57:
  plugincontrolRequest = self->_plugincontrolRequest;
  v25 = v5[19];
  if (plugincontrolRequest)
  {
    if (!v25)
    {
      goto LABEL_63;
    }

    [(IDSQRProtoPluginControlRequest *)plugincontrolRequest mergeFrom:?];
  }

  else
  {
    if (!v25)
    {
      goto LABEL_63;
    }

    [(IDSQRProtoH3Message *)self setPlugincontrolRequest:?];
  }

  v5 = v86;
LABEL_63:
  plugincontrolResponse = self->_plugincontrolResponse;
  v27 = v5[20];
  if (plugincontrolResponse)
  {
    if (!v27)
    {
      goto LABEL_69;
    }

    [(IDSQRProtoPluginControlResponse *)plugincontrolResponse mergeFrom:?];
  }

  else
  {
    if (!v27)
    {
      goto LABEL_69;
    }

    [(IDSQRProtoH3Message *)self setPlugincontrolResponse:?];
  }

  v5 = v86;
LABEL_69:
  plugincontrolIndication = self->_plugincontrolIndication;
  v29 = v5[18];
  if (plugincontrolIndication)
  {
    if (!v29)
    {
      goto LABEL_75;
    }

    [(IDSQRProtoPluginControlIndication *)plugincontrolIndication mergeFrom:?];
  }

  else
  {
    if (!v29)
    {
      goto LABEL_75;
    }

    [(IDSQRProtoH3Message *)self setPlugincontrolIndication:?];
  }

  v5 = v86;
LABEL_75:
  errorIndication = self->_errorIndication;
  v31 = v5[8];
  if (errorIndication)
  {
    if (!v31)
    {
      goto LABEL_81;
    }

    [(IDSQRProtoErrorIndication *)errorIndication mergeFrom:?];
  }

  else
  {
    if (!v31)
    {
      goto LABEL_81;
    }

    [(IDSQRProtoH3Message *)self setErrorIndication:?];
  }

  v5 = v86;
LABEL_81:
  reallocateIndication = self->_reallocateIndication;
  v33 = v5[24];
  if (reallocateIndication)
  {
    if (!v33)
    {
      goto LABEL_87;
    }

    [(IDSQRProtoReallocateIndication *)reallocateIndication mergeFrom:?];
  }

  else
  {
    if (!v33)
    {
      goto LABEL_87;
    }

    [(IDSQRProtoH3Message *)self setReallocateIndication:?];
  }

  v5 = v86;
LABEL_87:
  sessioninfoRequest = self->_sessioninfoRequest;
  v35 = v5[31];
  if (sessioninfoRequest)
  {
    if (!v35)
    {
      goto LABEL_93;
    }

    [(IDSQRProtoSessionInfoRequest *)sessioninfoRequest mergeFrom:?];
  }

  else
  {
    if (!v35)
    {
      goto LABEL_93;
    }

    [(IDSQRProtoH3Message *)self setSessioninfoRequest:?];
  }

  v5 = v86;
LABEL_93:
  sessioninfoResponse = self->_sessioninfoResponse;
  v37 = v5[32];
  if (sessioninfoResponse)
  {
    if (!v37)
    {
      goto LABEL_99;
    }

    [(IDSQRProtoSessionInfoResponse *)sessioninfoResponse mergeFrom:?];
  }

  else
  {
    if (!v37)
    {
      goto LABEL_99;
    }

    [(IDSQRProtoH3Message *)self setSessioninfoResponse:?];
  }

  v5 = v86;
LABEL_99:
  sessioninfoIndication = self->_sessioninfoIndication;
  v39 = v5[30];
  if (sessioninfoIndication)
  {
    if (!v39)
    {
      goto LABEL_105;
    }

    [(IDSQRProtoSessionInfoIndication *)sessioninfoIndication mergeFrom:?];
  }

  else
  {
    if (!v39)
    {
      goto LABEL_105;
    }

    [(IDSQRProtoH3Message *)self setSessioninfoIndication:?];
  }

  v5 = v86;
LABEL_105:
  statsRequest = self->_statsRequest;
  v41 = v5[33];
  if (statsRequest)
  {
    if (!v41)
    {
      goto LABEL_111;
    }

    [(IDSQRProtoStatsRequest *)statsRequest mergeFrom:?];
  }

  else
  {
    if (!v41)
    {
      goto LABEL_111;
    }

    [(IDSQRProtoH3Message *)self setStatsRequest:?];
  }

  v5 = v86;
LABEL_111:
  statsResponse = self->_statsResponse;
  v43 = v5[34];
  if (statsResponse)
  {
    if (!v43)
    {
      goto LABEL_117;
    }

    [(IDSQRProtoStatsResponse *)statsResponse mergeFrom:?];
  }

  else
  {
    if (!v43)
    {
      goto LABEL_117;
    }

    [(IDSQRProtoH3Message *)self setStatsResponse:?];
  }

  v5 = v86;
LABEL_117:
  testRequest = self->_testRequest;
  v45 = v5[35];
  if (testRequest)
  {
    if (!v45)
    {
      goto LABEL_123;
    }

    [(IDSQRProtoTestRequest *)testRequest mergeFrom:?];
  }

  else
  {
    if (!v45)
    {
      goto LABEL_123;
    }

    [(IDSQRProtoH3Message *)self setTestRequest:?];
  }

  v5 = v86;
LABEL_123:
  testResponse = self->_testResponse;
  v47 = v5[36];
  if (testResponse)
  {
    if (!v47)
    {
      goto LABEL_129;
    }

    [(IDSQRProtoTestResponse *)testResponse mergeFrom:?];
  }

  else
  {
    if (!v47)
    {
      goto LABEL_129;
    }

    [(IDSQRProtoH3Message *)self setTestResponse:?];
  }

  v5 = v86;
LABEL_129:
  unallocbindRequest = self->_unallocbindRequest;
  v49 = v5[37];
  if (unallocbindRequest)
  {
    if (!v49)
    {
      goto LABEL_135;
    }

    [(IDSQRProtoUnAllocBindRequest *)unallocbindRequest mergeFrom:?];
  }

  else
  {
    if (!v49)
    {
      goto LABEL_135;
    }

    [(IDSQRProtoH3Message *)self setUnallocbindRequest:?];
  }

  v5 = v86;
LABEL_135:
  unallocbindResponse = self->_unallocbindResponse;
  v51 = v5[38];
  if (unallocbindResponse)
  {
    if (!v51)
    {
      goto LABEL_141;
    }

    [(IDSQRProtoUnAllocBindResponse *)unallocbindResponse mergeFrom:?];
  }

  else
  {
    if (!v51)
    {
      goto LABEL_141;
    }

    [(IDSQRProtoH3Message *)self setUnallocbindResponse:?];
  }

  v5 = v86;
LABEL_141:
  putmaterialRequest = self->_putmaterialRequest;
  v53 = v5[22];
  if (putmaterialRequest)
  {
    if (!v53)
    {
      goto LABEL_147;
    }

    [(IDSQRProtoPutMaterialRequest *)putmaterialRequest mergeFrom:?];
  }

  else
  {
    if (!v53)
    {
      goto LABEL_147;
    }

    [(IDSQRProtoH3Message *)self setPutmaterialRequest:?];
  }

  v5 = v86;
LABEL_147:
  putmaterialResponse = self->_putmaterialResponse;
  v55 = v5[23];
  if (putmaterialResponse)
  {
    if (!v55)
    {
      goto LABEL_153;
    }

    [(IDSQRProtoPutMaterialResponse *)putmaterialResponse mergeFrom:?];
  }

  else
  {
    if (!v55)
    {
      goto LABEL_153;
    }

    [(IDSQRProtoH3Message *)self setPutmaterialResponse:?];
  }

  v5 = v86;
LABEL_153:
  putmaterialIndication = self->_putmaterialIndication;
  v57 = v5[21];
  if (putmaterialIndication)
  {
    if (!v57)
    {
      goto LABEL_159;
    }

    [(IDSQRProtoPutMaterialIndication *)putmaterialIndication mergeFrom:?];
  }

  else
  {
    if (!v57)
    {
      goto LABEL_159;
    }

    [(IDSQRProtoH3Message *)self setPutmaterialIndication:?];
  }

  v5 = v86;
LABEL_159:
  getmaterialRequest = self->_getmaterialRequest;
  v59 = v5[9];
  if (getmaterialRequest)
  {
    if (!v59)
    {
      goto LABEL_165;
    }

    [(IDSQRProtoGetMaterialRequest *)getmaterialRequest mergeFrom:?];
  }

  else
  {
    if (!v59)
    {
      goto LABEL_165;
    }

    [(IDSQRProtoH3Message *)self setGetmaterialRequest:?];
  }

  v5 = v86;
LABEL_165:
  getmaterialResponse = self->_getmaterialResponse;
  v61 = v5[10];
  if (getmaterialResponse)
  {
    if (!v61)
    {
      goto LABEL_171;
    }

    [(IDSQRProtoGetMaterialResponse *)getmaterialResponse mergeFrom:?];
  }

  else
  {
    if (!v61)
    {
      goto LABEL_171;
    }

    [(IDSQRProtoH3Message *)self setGetmaterialResponse:?];
  }

  v5 = v86;
LABEL_171:
  registerRequest = self->_registerRequest;
  v63 = v5[28];
  if (registerRequest)
  {
    if (!v63)
    {
      goto LABEL_177;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterRequest *)registerRequest mergeFrom:?];
  }

  else
  {
    if (!v63)
    {
      goto LABEL_177;
    }

    [(IDSQRProtoH3Message *)self setRegisterRequest:?];
  }

  v5 = v86;
LABEL_177:
  registerResponse = self->_registerResponse;
  v65 = v5[29];
  if (registerResponse)
  {
    if (!v65)
    {
      goto LABEL_183;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterResponse *)registerResponse mergeFrom:?];
  }

  else
  {
    if (!v65)
    {
      goto LABEL_183;
    }

    [(IDSQRProtoH3Message *)self setRegisterResponse:?];
  }

  v5 = v86;
LABEL_183:
  registerIndication = self->_registerIndication;
  v67 = v5[27];
  if (registerIndication)
  {
    if (!v67)
    {
      goto LABEL_189;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterIndication *)registerIndication mergeFrom:?];
  }

  else
  {
    if (!v67)
    {
      goto LABEL_189;
    }

    [(IDSQRProtoH3Message *)self setRegisterIndication:?];
  }

  v5 = v86;
LABEL_189:
  registerAckRequest = self->_registerAckRequest;
  v69 = v5[25];
  if (registerAckRequest)
  {
    if (!v69)
    {
      goto LABEL_195;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterAckRequest *)registerAckRequest mergeFrom:?];
  }

  else
  {
    if (!v69)
    {
      goto LABEL_195;
    }

    [(IDSQRProtoH3Message *)self setRegisterAckRequest:?];
  }

  v5 = v86;
LABEL_195:
  registerAckResponse = self->_registerAckResponse;
  v71 = v5[26];
  if (registerAckResponse)
  {
    if (!v71)
    {
      goto LABEL_201;
    }

    [(IDSQRProtoH3EndToEndChannelRegisterAckResponse *)registerAckResponse mergeFrom:?];
  }

  else
  {
    if (!v71)
    {
      goto LABEL_201;
    }

    [(IDSQRProtoH3Message *)self setRegisterAckResponse:?];
  }

  v5 = v86;
LABEL_201:
  unregisterRequest = self->_unregisterRequest;
  v73 = v5[40];
  if (unregisterRequest)
  {
    if (!v73)
    {
      goto LABEL_207;
    }

    [(IDSQRProtoH3EndToEndChannelUnRegisterRequest *)unregisterRequest mergeFrom:?];
  }

  else
  {
    if (!v73)
    {
      goto LABEL_207;
    }

    [(IDSQRProtoH3Message *)self setUnregisterRequest:?];
  }

  v5 = v86;
LABEL_207:
  unregisterResponse = self->_unregisterResponse;
  v75 = v5[41];
  if (unregisterResponse)
  {
    if (!v75)
    {
      goto LABEL_213;
    }

    [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)unregisterResponse mergeFrom:?];
  }

  else
  {
    if (!v75)
    {
      goto LABEL_213;
    }

    [(IDSQRProtoH3Message *)self setUnregisterResponse:?];
  }

  v5 = v86;
LABEL_213:
  unregisterIndication = self->_unregisterIndication;
  v77 = v5[39];
  if (unregisterIndication)
  {
    if (!v77)
    {
      goto LABEL_219;
    }

    [(IDSQRProtoH3EndToEndChannelUnRegisterIndication *)unregisterIndication mergeFrom:?];
  }

  else
  {
    if (!v77)
    {
      goto LABEL_219;
    }

    [(IDSQRProtoH3Message *)self setUnregisterIndication:?];
  }

  v5 = v86;
LABEL_219:
  callmodeupdateRequest = self->_callmodeupdateRequest;
  v79 = v5[3];
  if (callmodeupdateRequest)
  {
    if (!v79)
    {
      goto LABEL_225;
    }

    [(IDSQRProtoCallModeUpdateRequest *)callmodeupdateRequest mergeFrom:?];
  }

  else
  {
    if (!v79)
    {
      goto LABEL_225;
    }

    [(IDSQRProtoH3Message *)self setCallmodeupdateRequest:?];
  }

  v5 = v86;
LABEL_225:
  callmodeupdateResponse = self->_callmodeupdateResponse;
  v81 = v5[4];
  if (callmodeupdateResponse)
  {
    if (!v81)
    {
      goto LABEL_231;
    }

    [(IDSQRProtoCallModeUpdateResponse *)callmodeupdateResponse mergeFrom:?];
  }

  else
  {
    if (!v81)
    {
      goto LABEL_231;
    }

    [(IDSQRProtoH3Message *)self setCallmodeupdateResponse:?];
  }

  v5 = v86;
LABEL_231:
  channelconfigRequest = self->_channelconfigRequest;
  v83 = v5[5];
  if (channelconfigRequest)
  {
    if (!v83)
    {
      goto LABEL_237;
    }

    [(IDSQRH3ChannelConfigRequest *)channelconfigRequest mergeFrom:?];
  }

  else
  {
    if (!v83)
    {
      goto LABEL_237;
    }

    [(IDSQRProtoH3Message *)self setChannelconfigRequest:?];
  }

  v5 = v86;
LABEL_237:
  channelconfigResponse = self->_channelconfigResponse;
  v85 = v5[6];
  if (channelconfigResponse)
  {
    if (!v85)
    {
      goto LABEL_243;
    }

    [(IDSQRH3ChannelConfigResponse *)channelconfigResponse mergeFrom:?];
  }

  else
  {
    if (!v85)
    {
      goto LABEL_243;
    }

    [(IDSQRProtoH3Message *)self setChannelconfigResponse:?];
  }

  v5 = v86;
LABEL_243:
}

@end