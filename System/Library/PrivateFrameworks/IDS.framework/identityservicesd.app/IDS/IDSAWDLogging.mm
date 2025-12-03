@interface IDSAWDLogging
- (void)IDSDeviceConnectionForService:(id)service wasSuccessful:(BOOL)successful clientInitTime:(id)time clientOpenSocketCompletionTime:(id)completionTime daemonOpenSocketTime:(id)socketTime daemonOpenSocketCompletionTime:(id)socketCompletionTime firstPacketReceiveTime:(id)receiveTime connectionInitTime:(id)self0;
- (void)IDSGenericConnectionForLink:(unint64_t)link connectionSetupStartTime:(id)time firstPacketReceiveTime:(id)receiveTime connectionType:(id)type success:(BOOL)success errorCode:(id)code;
- (void)IDSQRAllocation:(unint64_t)allocation result:(unsigned int)result hasRecipientAccepted:(unsigned int)accepted payloadSize:(unsigned int)size topic:(id)topic service:(id)service;
- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(int64_t)participants firstReceivedPacketMKMtimeDelta:(int64_t)delta;
- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(int64_t)participants membershipChangeMKMTimeDelta:(int64_t)delta;
- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(unint64_t)participants missingPrekeys:(unint64_t)prekeys;
- (void)OTRSessionNegotiation:(id)negotiation priority:(unint64_t)priority duration:(unint64_t)duration result:(unsigned int)result;
- (void)_submitRegistrationAccountStatusMetric:(id)metric;
- (void)clientProcessReceivedMessage:(id)message messageSize:(unint64_t)size deltaTime:(unint64_t)time priority:(unint64_t)priority;
- (void)messageDeliveredForService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type deliveryError:(unint64_t)error RTT:(unint64_t)t priority:(unint64_t)priority;
- (void)messageReceivedForService:(id)service isFromDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(int64_t)priority;
- (void)messageSentForService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(unint64_t)priority;
- (void)noteMessageReceivedForService:(id)service accountType:(id)type fromStorage:(BOOL)storage serverTimestamp:(double)timestamp localTimeDelta:(double)delta;
- (void)queryAndSubmitStatusForAccounts;
- (void)registrationCompletedForRegistrationType:(int)type serviceIdentifier:(id)identifier wasSuccessful:(BOOL)successful registrationError:(int64_t)error;
- (void)sessionAcceptReceivedWithAWDGUID:(id)d;
- (void)sessionAcceptSentWithAWDGUID:(id)d;
- (void)sessionCancelReceivedWithAWDGUID:(id)d;
- (void)sessionCancelSentWithAWDGUID:(id)d numberOfRecipients:(id)recipients remoteSessionEndReason:(unsigned int)reason;
- (void)sessionCompletedWithAWDGUID:(id)d protocolVersionNumber:(id)number serviceName:(id)name clientType:(int64_t)type isQREnabled:(BOOL)enabled isUsingQRDirectly:(BOOL)directly isInitiator:(BOOL)initiator isScreenSharingSessionType:(BOOL)self0 isWithDefaultPairedDevice:(BOOL)self1 transportType:(int64_t)self2 linkType:(unint64_t)self3 linkProtocol:(int64_t)self4 endedReason:(unsigned int)self5 destinationType:(int)self6 durationOfSession:(id)self7 durationToConnect:(id)self8 isNetworkEnabled:(BOOL)self9 isNetworkActive:(BOOL)active isNetworkReachable:(BOOL)reachable isWifiInterfaceDisallowed:(BOOL)disallowed isCellularInterfaceDisallowed:(BOOL)interfaceDisallowed;
- (void)sessionConnectedWithAWDGUID:(id)d;
- (void)sessionDeclineReceivedWithAWDGUID:(id)d;
- (void)sessionDeclineSentWithAWDGUID:(id)d;
- (void)sessionEndedWithGuid:(id)guid endedReason:(unsigned int)reason genericError:(unsigned int)error gameKitError:(unsigned int)kitError conferenceMiscError:(unsigned int)miscError callDuration:(id)duration isNetworkEnabled:(BOOL)enabled isNetworkActive:(BOOL)self0 isNetworkReachable:(BOOL)self1 networkCheckResult:(unsigned int)self2 dataRate:(id)self3 gksError:(id)self4 connectDuration:(id)self5 remoteNetworkConnection:(unsigned int)self6 localNetworkConnection:(unsigned int)self7 connectionType:(unsigned int)self8 usesRelay:(BOOL)self9 currentNATType:(id)tType remoteNATType:(id)aTType relayConnectDuration:(id)relayConnectDuration isInitiator:(BOOL)initiator linkQuality:(id)quality gksReturnCode:(id)code;
- (void)sessionInvitationReceivedWithAWDGUID:(id)d;
- (void)sessionInvitationSentWithAWDGUID:(id)d numberOfRecipients:(id)recipients;
- (void)sessionReinitiateConnectedWithAWDGUID:(id)d;
- (void)sessionReinitiateRequestedWithAWDGUID:(id)d;
- (void)sessionReinitiateStartedWithAWDGUID:(id)d;
- (void)sessionStartedWithAWDGUID:(id)d protocolVersionNumber:(id)number serviceName:(id)name clientType:(int64_t)type;
- (void)socketClosedForService:(id)service isToDefaultPairedDevice:(BOOL)device closeError:(unint64_t)error socketError:(unint64_t)socketError bytesSent:(unint64_t)sent packetsSent:(unint64_t)packetsSent bytesReceived:(unint64_t)received packetsReceived:(unint64_t)self0;
- (void)socketOpenedForService:(id)service isToDefaultPairedDevice:(BOOL)device openError:(unint64_t)error socketError:(unint64_t)socketError;
- (void)wifiSetupAttemptType:(unint64_t)type duration:(unint64_t)duration result:(unint64_t)result client:(id)client;
@end

@implementation IDSAWDLogging

- (void)IDSDeviceConnectionForService:(id)service wasSuccessful:(BOOL)successful clientInitTime:(id)time clientOpenSocketCompletionTime:(id)completionTime daemonOpenSocketTime:(id)socketTime daemonOpenSocketCompletionTime:(id)socketCompletionTime firstPacketReceiveTime:(id)receiveTime connectionInitTime:(id)self0
{
  serviceCopy = service;
  timeCopy = time;
  completionTimeCopy = completionTime;
  socketTimeCopy = socketTime;
  socketCompletionTimeCopy = socketCompletionTime;
  receiveTimeCopy = receiveTime;
  v27 = socketTimeCopy;
  v28 = timeCopy;
  v29 = completionTimeCopy;
  v30 = socketCompletionTimeCopy;
  initTimeCopy = initTime;
  v32 = serviceCopy;
  v20 = serviceCopy;
  v21 = initTimeCopy;
  v22 = socketCompletionTimeCopy;
  v23 = receiveTimeCopy;
  v24 = completionTimeCopy;
  v25 = timeCopy;
  v26 = socketTimeCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)queryAndSubmitStatusForAccounts
{
  v3 = [&off_100C3DCD0 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(&off_100C3DCD0, "count"))}];
  v4 = [&off_100C3DCE8 mutableCopy];
  if (+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    [v4 addObject:&off_100C3C748];
  }

  v5 = [v4 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v4, "count"))}];
  integerValue = [v5 integerValue];

  v7 = +[IDSDServiceController sharedInstance];
  v8 = [v7 serviceWithIdentifier:v3];

  v9 = +[IDSDAccountController sharedInstance];
  v10 = [v9 accountsOnService:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 accountType] == integerValue)
        {
          v18 = [IDSDAccountMetrics registrationAccountStatusMetricForAccount:v16];
          [(IDSAWDLogging *)self _submitRegistrationAccountStatusMetric:v18];

          v17 = v11;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = [IDSDAccountMetrics registrationAccountStatusMetricForNonexistentAccountWithType:integerValue serviceIdentifier:v3];
  [(IDSAWDLogging *)self _submitRegistrationAccountStatusMetric:v17];
LABEL_13:
}

- (void)_submitRegistrationAccountStatusMetric:(id)metric
{
  metricCopy = metric;
  v3 = metricCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)registrationCompletedForRegistrationType:(int)type serviceIdentifier:(id)identifier wasSuccessful:(BOOL)successful registrationError:(int64_t)error
{
  identifierCopy = identifier;
  if ([(IDSAWDLogging *)self _shouldSubmitRegistrationCompletedForServiceIdentifier:identifierCopy])
  {
    v8 = identifierCopy;
    IDSAWDSubmitBlockAsync();
  }
}

- (void)IDSGenericConnectionForLink:(unint64_t)link connectionSetupStartTime:(id)time firstPacketReceiveTime:(id)receiveTime connectionType:(id)type success:(BOOL)success errorCode:(id)code
{
  timeCopy = time;
  receiveTimeCopy = receiveTime;
  v17 = timeCopy;
  typeCopy = type;
  codeCopy = code;
  v12 = codeCopy;
  v13 = typeCopy;
  v14 = timeCopy;
  v15 = receiveTimeCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionStartedWithAWDGUID:(id)d protocolVersionNumber:(id)number serviceName:(id)name clientType:(int64_t)type
{
  dCopy = d;
  numberCopy = number;
  nameCopy = name;
  v9 = nameCopy;
  v10 = numberCopy;
  v11 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionInvitationSentWithAWDGUID:(id)d numberOfRecipients:(id)recipients
{
  dCopy = d;
  recipientsCopy = recipients;
  v5 = recipientsCopy;
  v6 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionInvitationReceivedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionCancelSentWithAWDGUID:(id)d numberOfRecipients:(id)recipients remoteSessionEndReason:(unsigned int)reason
{
  dCopy = d;
  recipientsCopy = recipients;
  v7 = recipientsCopy;
  v8 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionCancelReceivedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionDeclineSentWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionDeclineReceivedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionAcceptSentWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionAcceptReceivedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionConnectedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionReinitiateRequestedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionReinitiateStartedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionReinitiateConnectedWithAWDGUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionCompletedWithAWDGUID:(id)d protocolVersionNumber:(id)number serviceName:(id)name clientType:(int64_t)type isQREnabled:(BOOL)enabled isUsingQRDirectly:(BOOL)directly isInitiator:(BOOL)initiator isScreenSharingSessionType:(BOOL)self0 isWithDefaultPairedDevice:(BOOL)self1 transportType:(int64_t)self2 linkType:(unint64_t)self3 linkProtocol:(int64_t)self4 endedReason:(unsigned int)self5 destinationType:(int)self6 durationOfSession:(id)self7 durationToConnect:(id)self8 isNetworkEnabled:(BOOL)self9 isNetworkActive:(BOOL)active isNetworkReachable:(BOOL)reachable isWifiInterfaceDisallowed:(BOOL)disallowed isCellularInterfaceDisallowed:(BOOL)interfaceDisallowed
{
  dCopy = d;
  numberCopy = number;
  nameCopy = name;
  sessionCopy = session;
  connectCopy = connect;
  v35 = dCopy;
  v28 = nameCopy;
  v29 = numberCopy;
  v30 = dCopy;
  v31 = connectCopy;
  v32 = sessionCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)sessionEndedWithGuid:(id)guid endedReason:(unsigned int)reason genericError:(unsigned int)error gameKitError:(unsigned int)kitError conferenceMiscError:(unsigned int)miscError callDuration:(id)duration isNetworkEnabled:(BOOL)enabled isNetworkActive:(BOOL)self0 isNetworkReachable:(BOOL)self1 networkCheckResult:(unsigned int)self2 dataRate:(id)self3 gksError:(id)self4 connectDuration:(id)self5 remoteNetworkConnection:(unsigned int)self6 localNetworkConnection:(unsigned int)self7 connectionType:(unsigned int)self8 usesRelay:(BOOL)self9 currentNATType:(id)tType remoteNATType:(id)aTType relayConnectDuration:(id)relayConnectDuration isInitiator:(BOOL)initiator linkQuality:(id)quality gksReturnCode:(id)code
{
  guidCopy = guid;
  durationCopy = duration;
  rateCopy = rate;
  gksErrorCopy = gksError;
  connectDurationCopy = connectDuration;
  tTypeCopy = tType;
  aTTypeCopy = aTType;
  v43 = durationCopy;
  v44 = rateCopy;
  v45 = gksErrorCopy;
  v46 = connectDurationCopy;
  relayConnectDurationCopy = relayConnectDuration;
  qualityCopy = quality;
  codeCopy = code;
  v42 = codeCopy;
  v41 = qualityCopy;
  v32 = relayConnectDurationCopy;
  v33 = aTTypeCopy;
  v34 = tTypeCopy;
  v35 = connectDurationCopy;
  v36 = gksErrorCopy;
  v37 = rateCopy;
  v38 = durationCopy;
  v39 = guidCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(unint64_t)participants missingPrekeys:(unint64_t)prekeys
{
  nameCopy = name;
  v5 = nameCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(int64_t)participants firstReceivedPacketMKMtimeDelta:(int64_t)delta
{
  nameCopy = name;
  v5 = nameCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)IDSRealTimeEncryptionServiceName:(id)name activeParticipants:(int64_t)participants membershipChangeMKMTimeDelta:(int64_t)delta
{
  nameCopy = name;
  v5 = nameCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)messageSentForService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(unint64_t)priority
{
  deviceCopy = device;
  serviceCopy = service;
  LOBYTE(v18) = deviceCopy;
  v16 = serviceCopy;
  priorityCopy = priority;
  IDSAWDSubmitBlockAsync();
  if (deviceCopy)
  {
    v12 = objc_alloc_init(IDSWRMMetricContainer);
    v13 = v12;
    if (v12)
    {
      [v12 setMessageSentSize:{size, _NSConcreteStackBlock, 3221225472, sub_100608AE4, &unk_100BE2128, self, serviceCopy, size, type, priorityCopy, v18}];
      v14 = +[IDSWRMExchange sharedInstance];
      [v14 submitMetric:v13];
    }
  }
}

- (void)clientProcessReceivedMessage:(id)message messageSize:(unint64_t)size deltaTime:(unint64_t)time priority:(unint64_t)priority
{
  messageCopy = message;
  v6 = messageCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)messageDeliveredForService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type deliveryError:(unint64_t)error RTT:(unint64_t)t priority:(unint64_t)priority
{
  deviceCopy = device;
  serviceCopy = service;
  LOBYTE(v21) = deviceCopy;
  v19 = serviceCopy;
  typeCopy = type;
  IDSAWDSubmitBlockAsync();
  if (deviceCopy)
  {
    v15 = objc_alloc_init(IDSWRMMetricContainer);
    v16 = v15;
    if (v15)
    {
      [v15 setMessageDeliveredSize:{size, _NSConcreteStackBlock, 3221225472, sub_100608E64, &unk_100BE2178, self, serviceCopy, size, typeCopy, error, t, priority, v21}];
      [v16 setMessageDeliveredDeliveryError:error];
      [v16 setMessageDeliveredRTT:t];
      v17 = +[IDSWRMExchange sharedInstance];
      [v17 submitMetric:v16];
    }
  }
}

- (void)messageReceivedForService:(id)service isFromDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(int64_t)priority
{
  deviceCopy = device;
  serviceCopy = service;
  LOBYTE(v18) = deviceCopy;
  v16 = serviceCopy;
  priorityCopy = priority;
  IDSAWDSubmitBlockAsync();
  if (deviceCopy)
  {
    v12 = objc_alloc_init(IDSWRMMetricContainer);
    v13 = v12;
    if (v12)
    {
      [v12 setMessageReceivedSize:{size, _NSConcreteStackBlock, 3221225472, sub_100609054, &unk_100BE2128, self, serviceCopy, size, type, priorityCopy, v18}];
      v14 = +[IDSWRMExchange sharedInstance];
      [v14 submitMetric:v13];
    }
  }
}

- (void)socketOpenedForService:(id)service isToDefaultPairedDevice:(BOOL)device openError:(unint64_t)error socketError:(unint64_t)socketError
{
  serviceCopy = service;
  v6 = serviceCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)socketClosedForService:(id)service isToDefaultPairedDevice:(BOOL)device closeError:(unint64_t)error socketError:(unint64_t)socketError bytesSent:(unint64_t)sent packetsSent:(unint64_t)packetsSent bytesReceived:(unint64_t)received packetsReceived:(unint64_t)self0
{
  deviceCopy = device;
  serviceCopy = service;
  IDSAWDSubmitBlockAsync();
  if (deviceCopy)
  {
    v14 = objc_alloc_init(IDSWRMMetricContainer);
    v15 = v14;
    if (v14)
    {
      [v14 setStreamBytesSent:sent];
      [v15 setStreamPacketsSent:packetsSent];
      [v15 setStreamBytesReceived:received];
      [v15 setStreamPacketsReceived:packetsReceived];
      v16 = +[IDSWRMExchange sharedInstance];
      [v16 submitMetric:v15];
    }
  }
}

- (void)wifiSetupAttemptType:(unint64_t)type duration:(unint64_t)duration result:(unint64_t)result client:(id)client
{
  clientCopy = client;
  v6 = clientCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)OTRSessionNegotiation:(id)negotiation priority:(unint64_t)priority duration:(unint64_t)duration result:(unsigned int)result
{
  negotiationCopy = negotiation;
  v6 = negotiationCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)IDSQRAllocation:(unint64_t)allocation result:(unsigned int)result hasRecipientAccepted:(unsigned int)accepted payloadSize:(unsigned int)size topic:(id)topic service:(id)service
{
  topicCopy = topic;
  serviceCopy = service;
  v10 = serviceCopy;
  v11 = topicCopy;
  IDSAWDSubmitBlockAsync();
}

- (void)noteMessageReceivedForService:(id)service accountType:(id)type fromStorage:(BOOL)storage serverTimestamp:(double)timestamp localTimeDelta:(double)delta
{
  serviceCopy = service;
  typeCopy = type;
  v9 = typeCopy;
  v10 = serviceCopy;
  IDSAWDSubmitBlockAsync();
}

@end