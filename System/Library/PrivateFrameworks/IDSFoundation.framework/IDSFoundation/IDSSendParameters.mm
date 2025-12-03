@interface IDSSendParameters
- (BOOL)activityContinuation;
- (BOOL)allowCloudDelivery;
- (BOOL)alwaysIncludeSelf;
- (BOOL)alwaysSkipSelf;
- (BOOL)bypassDuet;
- (BOOL)bypassSizeCheck;
- (BOOL)bypassStorage;
- (BOOL)compressPayload;
- (BOOL)compressed;
- (BOOL)daemonDeathResend;
- (BOOL)disableAliasValidation;
- (BOOL)disallowRefresh;
- (BOOL)encryptPayload;
- (BOOL)enforceRemoteTimeouts;
- (BOOL)expectsPeerResponse;
- (BOOL)fakeMessage;
- (BOOL)fireAndForget;
- (BOOL)forceEncryptionOff;
- (BOOL)homeKitPayload;
- (BOOL)ignoreMaxRetryCount;
- (BOOL)isProxiedOutgoingMessage;
- (BOOL)isUPlusOne;
- (BOOL)liveMessageDelivery;
- (BOOL)localDelivery;
- (BOOL)nonCloudWaking;
- (BOOL)nonWaking;
- (BOOL)requireBluetooth;
- (BOOL)requireLocalWiFi;
- (BOOL)sessionForceInternetInvitation;
- (BOOL)useDictAsTopLevel;
- (BOOL)wantsAppAck;
- (BOOL)wantsCertifiedDelivery;
- (BOOL)wantsDeliveryStatus;
- (BOOL)wantsFirewallDonation;
- (BOOL)wantsProgress;
- (BOOL)wantsResponse;
- (IDSDestination)destinations;
- (IDSPrioritizedTokenList)prioritizedTokenList;
- (IDSSendParameters)initWithCoder:(id)coder;
- (IDSSendParameters)initWithDictionary:(id)dictionary;
- (NSArray)bulkedPayload;
- (NSArray)duetIdentifiersOverride;
- (NSArray)finalDestinationURIs;
- (NSArray)interestingRegistrationProperties;
- (NSArray)requireAllRegistrationProperties;
- (NSArray)requireLackOfRegistrationProperties;
- (NSData)accessToken;
- (NSData)data;
- (NSData)dataToEncrypt;
- (NSData)groupData;
- (NSData)messageUUID;
- (NSDate)expirationDate;
- (NSDictionary)deliveryStatusContext;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)encryptionAttributes;
- (NSDictionary)keyTransparencyURIVerificationMap;
- (NSDictionary)message;
- (NSDictionary)protobuf;
- (NSDictionary)resourceMetadata;
- (NSNumber)command;
- (NSNumber)commandContext;
- (NSNumber)deliveryMinimumTime;
- (NSNumber)deliveryMinimumTimeDelay;
- (NSNumber)dropMessageIndicatorCommand;
- (NSNumber)isInitiator;
- (NSNumber)messageType;
- (NSNumber)originalTimestamp;
- (NSNumber)pushPriority;
- (NSNumber)quickRelayUserType;
- (NSNumber)sendMode;
- (NSString)accountUUID;
- (NSString)alternateCallbackID;
- (NSString)dedupeTimestamp;
- (NSString)destinationCorrelationIdentifier;
- (NSString)fromID;
- (NSString)fromShortHandle;
- (NSString)groupSessionUUID;
- (NSString)identifier;
- (NSString)localDestinationDeviceUUID;
- (NSString)mainAccountUUID;
- (NSString)metricReportIdentifier;
- (NSString)originalfromID;
- (NSString)peerResponseIdentifier;
- (NSString)queueOneIdentifier;
- (NSString)resourcePath;
- (NSString)sessionID;
- (NSString)subService;
- (NSString)subServiceAccountUUID;
- (double)timeout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (int64_t)forceQuery;
- (int64_t)priority;
- (void)encodeWithCoder:(id)coder;
- (void)setActivityContinuation:(BOOL)continuation;
- (void)setAllowCloudDelivery:(BOOL)delivery;
- (void)setAlwaysIncludeSelf:(BOOL)self;
- (void)setAlwaysSkipSelf:(BOOL)self;
- (void)setBypassDuet:(BOOL)duet;
- (void)setBypassSizeCheck:(BOOL)check;
- (void)setBypassStorage:(BOOL)storage;
- (void)setCompressPayload:(BOOL)payload;
- (void)setCompressed:(BOOL)compressed;
- (void)setDaemonDeathResend:(BOOL)resend;
- (void)setDisableAliasValidation:(BOOL)validation;
- (void)setDisallowRefresh:(BOOL)refresh;
- (void)setEncryptPayload:(BOOL)payload;
- (void)setEnforceRemoteTimeouts:(BOOL)timeouts;
- (void)setExpectsPeerResponse:(BOOL)response;
- (void)setFakeMessage:(BOOL)message;
- (void)setFireAndForget:(BOOL)forget;
- (void)setForceEncryptionOff:(BOOL)off;
- (void)setForceQuery:(int64_t)query;
- (void)setHomeKitPayload:(BOOL)payload;
- (void)setIgnoreMaxRetryCount:(BOOL)count;
- (void)setIsProxiedOutgoingMessage:(BOOL)message;
- (void)setIsUPlusOne:(BOOL)one;
- (void)setLiveMessageDelivery:(BOOL)delivery;
- (void)setLocalDelivery:(BOOL)delivery;
- (void)setNonCloudWaking:(BOOL)waking;
- (void)setNonWaking:(BOOL)waking;
- (void)setObject:(id)object forKey:(id)key;
- (void)setPriority:(int64_t)priority;
- (void)setRequireBluetooth:(BOOL)bluetooth;
- (void)setRequireLocalWiFi:(BOOL)fi;
- (void)setSessionForceInternetInvitation:(BOOL)invitation;
- (void)setTimeout:(double)timeout;
- (void)setUseDictAsTopLevel:(BOOL)level;
- (void)setWantsAppAck:(BOOL)ack;
- (void)setWantsCertifiedDelivery:(BOOL)delivery;
- (void)setWantsDeliveryStatus:(BOOL)status;
- (void)setWantsFirewallDonation:(BOOL)donation;
- (void)setWantsProgress:(BOOL)progress;
- (void)setWantsResponse:(BOOL)response;
@end

@implementation IDSSendParameters

- (NSString)fromID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersFromIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)command
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCommandKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDictionary)message
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersMessageKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSData)messageUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersMessageUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)localDestinationDeviceUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersLocalDestinationDeviceUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)destinationCorrelationIdentifier
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDestinationCorrelationIdentifierKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)accountUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAccountUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)identifier
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIdentifierKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)alternateCallbackID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAlternateCallbackIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)mainAccountUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersMainAccountUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSData)groupData
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersGroupDataKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)dropMessageIndicatorCommand
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDropMessageIndicatorCommandKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)deliveryMinimumTime
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDeliveryMinimumTimeKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)deliveryMinimumTimeDelay
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDeliveryMinimumTimeDelayKey"];
  v3 = objc_opt_self();

  return v3;
}

- (int64_t)forceQuery
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersForceQueryKey"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (IDSDestination)destinations
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDestinationsKey"];
  v3 = objc_opt_self();

  return v3;
}

- (int64_t)priority
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersPriorityKey"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSDictionary)dictionaryRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_params mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"IDSSendParametersSendMetricKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"IDSSendParametersSendMetricKey"];
  }

  v6 = [v3 objectForKeyedSubscript:@"IDSSendParametersSendReasonKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    reasonString = [v6 reasonString];
    [v3 setObject:reasonString forKeyedSubscript:@"IDSSendParametersSendReasonKey"];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSData)data
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDataKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDictionary)protobuf
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersProtobufKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSArray)bulkedPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBulkedPayloadKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)encryptPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersEncryptPayloadKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)deliveryStatusContext
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDeliveryStatusContextKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)localDelivery
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersLocalDeliveryKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)useDictAsTopLevel
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersUseDictAsTopLevelKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsResponse
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsResponseKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)compressPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCompressPayloadKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)timeout
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersTimeoutKey"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)wantsCertifiedDelivery
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsCertifiedDeliveryKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsDeliveryStatus
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsDeliveryStatusKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)bypassSizeCheck
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassSizeCheckKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)sessionForceInternetInvitation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSessionForceInternetInvitationKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)metricReportIdentifier
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersMetricReportIdentifierKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDictionary)resourceMetadata
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersResourceMetadataKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)requireLocalWiFi
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersRequireLocalWiFiKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)requireBluetooth
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersRequireBluetoothKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enforceRemoteTimeouts
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersEnforceRemoteTimeoutsKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)peerResponseIdentifier
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersPeerResponseIdentifierKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)liveMessageDelivery
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersLiveMessageDeliveryKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)nonCloudWaking
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersNonCloudWakingKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)bypassDuet
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassDuetKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)bypassStorage
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassStorageKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSArray)duetIdentifiersOverride
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDuetIdentifiersOverrideKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)nonWaking
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersNonWakingKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSNumber)messageType
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersMessageTypeKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)allowCloudDelivery
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAllowCloudDeliveryKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)disableAliasValidation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDisableAliasValidationKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSArray)requireAllRegistrationProperties
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersRequireAllRegistrationPropertiesKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSArray)interestingRegistrationProperties
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersInterestingRegistrationPropertiesKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSArray)requireLackOfRegistrationProperties
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersRequireLackOfRegistrationPropertiesKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)subService
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSubServiceKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)wantsProgress
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsProgressKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)homeKitPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersHomeKitPayloadKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)forceEncryptionOff
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersForceEncryptionOffKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)resourcePath
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersResourcePathKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSData)dataToEncrypt
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDataToEncryptKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)queueOneIdentifier
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersQueueOneIdentifierKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDate)expirationDate
{
  [(IDSSendParameters *)self timeout];
  if (v2 <= 2.22044605e-16)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
  }

  return v3;
}

- (BOOL)expectsPeerResponse
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersExpectsPeerResponseKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsAppAck
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsAppAckKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)compressed
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCompressedKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isProxiedOutgoingMessage
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIsProxiedOutgoingMessageKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSNumber)commandContext
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCommandContextKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)originalTimestamp
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersOriginalTimestampKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)isUPlusOne
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIsUPlusOneKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSNumber)isInitiator
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIsInitiatorKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSNumber)quickRelayUserType
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersQuickRelayUserTypeKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)groupSessionUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersGroupSessionUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)dedupeTimestamp
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDedupeTimestampKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSArray)finalDestinationURIs
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersFinalDestinationURIsKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDictionary)encryptionAttributes
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersEncryptionAttributesKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)fireAndForget
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersFireAndForgetKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)fromShortHandle
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersFromShortHandleKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSData)accessToken
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAccessTokenKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)fakeMessage
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersFakeMessageKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)alwaysSkipSelf
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAlwaysSkipSelfKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)alwaysIncludeSelf
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAlwaysIncludeSelfKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSNumber)pushPriority
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersPushPriorityKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)ignoreMaxRetryCount
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIgnoreMaxRetryCountKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)disallowRefresh
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDisallowRefreshKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (IDSPrioritizedTokenList)prioritizedTokenList
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersPrioritizedTokenListKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)wantsFirewallDonation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsFirewallDonationKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSNumber)sendMode
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSendModeKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSDictionary)keyTransparencyURIVerificationMap
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersKeyTransparencyURIVerificationMapKey"];
  v3 = objc_opt_self();

  return v3;
}

- (BOOL)daemonDeathResend
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDaemonDeathResendKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (IDSSendParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IDSSendParameters;
  v5 = [(IDSSendParameters *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    params = v6->_params;
    v6->_params = v9;

    v11 = [(NSMutableDictionary *)v6->_params objectForKeyedSubscript:@"IDSSendParametersSendMetricKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IDSMessageSendMetric alloc] initWithDictionary:v11];
      [(IDSSendParameters *)v6 setSendMetric:v12];
    }

    v13 = [(NSMutableDictionary *)v6->_params objectForKeyedSubscript:@"IDSSendParametersSendReasonKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [IDSSendReasonContainer createWithReasonString:v13];
      [(IDSSendParameters *)v6 setSendReasonContainer:v14];
    }
  }

  return v6;
}

- (IDSSendParameters)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"params"];
  v5 = [(IDSSendParameters *)self initWithDictionary:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:self->_params];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_params objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  params = self->_params;
  if (objectCopy)
  {
    [(NSMutableDictionary *)params setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)params removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_params forKey:@"params"];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)subServiceAccountUUID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSubServiceAccountUUIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)originalfromID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersOriginalfromIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (NSString)sessionID
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSessionIDKey"];
  v3 = objc_opt_self();

  return v3;
}

- (void)setExpectsPeerResponse:(BOOL)response
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!response)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersExpectsPeerResponseKey"];
}

- (void)setCompressed:(BOOL)compressed
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!compressed)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersCompressedKey"];
}

- (void)setUseDictAsTopLevel:(BOOL)level
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!level)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersUseDictAsTopLevelKey"];
}

- (void)setWantsAppAck:(BOOL)ack
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!ack)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsAppAckKey"];
}

- (void)setEncryptPayload:(BOOL)payload
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!payload)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersEncryptPayloadKey"];
}

- (void)setCompressPayload:(BOOL)payload
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!payload)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersCompressPayloadKey"];
}

- (void)setWantsResponse:(BOOL)response
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!response)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsResponseKey"];
}

- (void)setWantsProgress:(BOOL)progress
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!progress)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsProgressKey"];
}

- (void)setWantsDeliveryStatus:(BOOL)status
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!status)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsDeliveryStatusKey"];
}

- (void)setWantsCertifiedDelivery:(BOOL)delivery
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!delivery)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsCertifiedDeliveryKey"];
}

- (void)setPriority:(int64_t)priority
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = v5;
  if (!priority && sel_integerValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersPriorityKey"];
}

- (void)setLocalDelivery:(BOOL)delivery
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!delivery)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersLocalDeliveryKey"];
}

- (void)setRequireBluetooth:(BOOL)bluetooth
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!bluetooth)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersRequireBluetoothKey"];
}

- (void)setRequireLocalWiFi:(BOOL)fi
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!fi)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersRequireLocalWiFiKey"];
}

- (void)setTimeout:(double)timeout
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = v5;
  if (timeout == 0.0 && sel_doubleValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v8 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersTimeoutKey"];
}

- (void)setBypassDuet:(BOOL)duet
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!duet)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassDuetKey"];
}

- (void)setFakeMessage:(BOOL)message
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!message)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersFakeMessageKey"];
}

- (void)setBypassStorage:(BOOL)storage
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!storage)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassStorageKey"];
}

- (void)setActivityContinuation:(BOOL)continuation
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!continuation)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersActivityContinuationKey"];
}

- (BOOL)activityContinuation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersActivityContinuationKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setNonWaking:(BOOL)waking
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!waking)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersNonWakingKey"];
}

- (void)setNonCloudWaking:(BOOL)waking
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!waking)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersNonCloudWakingKey"];
}

- (void)setDaemonDeathResend:(BOOL)resend
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!resend)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDaemonDeathResendKey"];
}

- (void)setBypassSizeCheck:(BOOL)check
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!check)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassSizeCheckKey"];
}

- (void)setFireAndForget:(BOOL)forget
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!forget)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersFireAndForgetKey"];
}

- (void)setIsProxiedOutgoingMessage:(BOOL)message
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!message)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIsProxiedOutgoingMessageKey"];
}

- (void)setEnforceRemoteTimeouts:(BOOL)timeouts
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!timeouts)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersEnforceRemoteTimeoutsKey"];
}

- (void)setHomeKitPayload:(BOOL)payload
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!payload)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersHomeKitPayloadKey"];
}

- (void)setDisableAliasValidation:(BOOL)validation
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!validation)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDisableAliasValidationKey"];
}

- (void)setForceEncryptionOff:(BOOL)off
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!off)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersForceEncryptionOffKey"];
}

- (void)setAllowCloudDelivery:(BOOL)delivery
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!delivery)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAllowCloudDeliveryKey"];
}

- (void)setAlwaysSkipSelf:(BOOL)self
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!self)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAlwaysSkipSelfKey"];
}

- (void)setForceQuery:(int64_t)query
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = v5;
  if (!query && sel_integerValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersForceQueryKey"];
}

- (void)setAlwaysIncludeSelf:(BOOL)self
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!self)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAlwaysIncludeSelfKey"];
}

- (void)setDisallowRefresh:(BOOL)refresh
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!refresh)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDisallowRefreshKey"];
}

- (void)setLiveMessageDelivery:(BOOL)delivery
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!delivery)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersLiveMessageDeliveryKey"];
}

- (void)setIsUPlusOne:(BOOL)one
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!one)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIsUPlusOneKey"];
}

- (void)setSessionForceInternetInvitation:(BOOL)invitation
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!invitation)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersSessionForceInternetInvitationKey"];
}

- (void)setWantsFirewallDonation:(BOOL)donation
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!donation)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsFirewallDonationKey"];
}

- (void)setIgnoreMaxRetryCount:(BOOL)count
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!count)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIgnoreMaxRetryCountKey"];
}

@end