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
- (IDSSendParameters)initWithCoder:(id)a3;
- (IDSSendParameters)initWithDictionary:(id)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (int64_t)forceQuery;
- (int64_t)priority;
- (void)encodeWithCoder:(id)a3;
- (void)setActivityContinuation:(BOOL)a3;
- (void)setAllowCloudDelivery:(BOOL)a3;
- (void)setAlwaysIncludeSelf:(BOOL)a3;
- (void)setAlwaysSkipSelf:(BOOL)a3;
- (void)setBypassDuet:(BOOL)a3;
- (void)setBypassSizeCheck:(BOOL)a3;
- (void)setBypassStorage:(BOOL)a3;
- (void)setCompressPayload:(BOOL)a3;
- (void)setCompressed:(BOOL)a3;
- (void)setDaemonDeathResend:(BOOL)a3;
- (void)setDisableAliasValidation:(BOOL)a3;
- (void)setDisallowRefresh:(BOOL)a3;
- (void)setEncryptPayload:(BOOL)a3;
- (void)setEnforceRemoteTimeouts:(BOOL)a3;
- (void)setExpectsPeerResponse:(BOOL)a3;
- (void)setFakeMessage:(BOOL)a3;
- (void)setFireAndForget:(BOOL)a3;
- (void)setForceEncryptionOff:(BOOL)a3;
- (void)setForceQuery:(int64_t)a3;
- (void)setHomeKitPayload:(BOOL)a3;
- (void)setIgnoreMaxRetryCount:(BOOL)a3;
- (void)setIsProxiedOutgoingMessage:(BOOL)a3;
- (void)setIsUPlusOne:(BOOL)a3;
- (void)setLiveMessageDelivery:(BOOL)a3;
- (void)setLocalDelivery:(BOOL)a3;
- (void)setNonCloudWaking:(BOOL)a3;
- (void)setNonWaking:(BOOL)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPriority:(int64_t)a3;
- (void)setRequireBluetooth:(BOOL)a3;
- (void)setRequireLocalWiFi:(BOOL)a3;
- (void)setSessionForceInternetInvitation:(BOOL)a3;
- (void)setTimeout:(double)a3;
- (void)setUseDictAsTopLevel:(BOOL)a3;
- (void)setWantsAppAck:(BOOL)a3;
- (void)setWantsCertifiedDelivery:(BOOL)a3;
- (void)setWantsDeliveryStatus:(BOOL)a3;
- (void)setWantsFirewallDonation:(BOOL)a3;
- (void)setWantsProgress:(BOOL)a3;
- (void)setWantsResponse:(BOOL)a3;
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
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [v2 integerValue];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_params mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"IDSSendParametersSendMetricKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"IDSSendParametersSendMetricKey"];
  }

  v6 = [v3 objectForKeyedSubscript:@"IDSSendParametersSendReasonKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 reasonString];
    [v3 setObject:v7 forKeyedSubscript:@"IDSSendParametersSendReasonKey"];
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)useDictAsTopLevel
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersUseDictAsTopLevelKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wantsResponse
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsResponseKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)compressPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCompressPayloadKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wantsDeliveryStatus
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsDeliveryStatusKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)bypassSizeCheck
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassSizeCheckKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)sessionForceInternetInvitation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersSessionForceInternetInvitationKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)requireBluetooth
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersRequireBluetoothKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enforceRemoteTimeouts
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersEnforceRemoteTimeoutsKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)nonCloudWaking
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersNonCloudWakingKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)bypassDuet
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassDuetKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)bypassStorage
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersBypassStorageKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disableAliasValidation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDisableAliasValidationKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)homeKitPayload
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersHomeKitPayloadKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)forceEncryptionOff
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersForceEncryptionOffKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wantsAppAck
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersWantsAppAckKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)compressed
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersCompressedKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isProxiedOutgoingMessage
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersIsProxiedOutgoingMessageKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)alwaysSkipSelf
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAlwaysSkipSelfKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)alwaysIncludeSelf
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersAlwaysIncludeSelfKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disallowRefresh
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersDisallowRefreshKey"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (IDSSendParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IDSSendParameters;
  v5 = [(IDSSendParameters *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 mutableCopy];
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

- (IDSSendParameters)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"params"];
  v5 = [(IDSSendParameters *)self initWithDictionary:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:self->_params];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_params objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  params = self->_params;
  if (v8)
  {
    [(NSMutableDictionary *)params setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)params removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_params forKey:@"params"];

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

- (void)setExpectsPeerResponse:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersExpectsPeerResponseKey"];
}

- (void)setCompressed:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersCompressedKey"];
}

- (void)setUseDictAsTopLevel:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersUseDictAsTopLevelKey"];
}

- (void)setWantsAppAck:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsAppAckKey"];
}

- (void)setEncryptPayload:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersEncryptPayloadKey"];
}

- (void)setCompressPayload:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersCompressPayloadKey"];
}

- (void)setWantsResponse:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsResponseKey"];
}

- (void)setWantsProgress:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsProgressKey"];
}

- (void)setWantsDeliveryStatus:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsDeliveryStatusKey"];
}

- (void)setWantsCertifiedDelivery:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsCertifiedDeliveryKey"];
}

- (void)setPriority:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = v5;
  if (!a3 && sel_integerValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersPriorityKey"];
}

- (void)setLocalDelivery:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersLocalDeliveryKey"];
}

- (void)setRequireBluetooth:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersRequireBluetoothKey"];
}

- (void)setRequireLocalWiFi:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersRequireLocalWiFiKey"];
}

- (void)setTimeout:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = v5;
  if (a3 == 0.0 && sel_doubleValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v8 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersTimeoutKey"];
}

- (void)setBypassDuet:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassDuetKey"];
}

- (void)setFakeMessage:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersFakeMessageKey"];
}

- (void)setBypassStorage:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassStorageKey"];
}

- (void)setActivityContinuation:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersActivityContinuationKey"];
}

- (BOOL)activityContinuation
{
  v2 = [(IDSSendParameters *)self objectForKey:@"IDSSendParametersActivityContinuationKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setNonWaking:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersNonWakingKey"];
}

- (void)setNonCloudWaking:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersNonCloudWakingKey"];
}

- (void)setDaemonDeathResend:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDaemonDeathResendKey"];
}

- (void)setBypassSizeCheck:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersBypassSizeCheckKey"];
}

- (void)setFireAndForget:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersFireAndForgetKey"];
}

- (void)setIsProxiedOutgoingMessage:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIsProxiedOutgoingMessageKey"];
}

- (void)setEnforceRemoteTimeouts:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersEnforceRemoteTimeoutsKey"];
}

- (void)setHomeKitPayload:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersHomeKitPayloadKey"];
}

- (void)setDisableAliasValidation:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDisableAliasValidationKey"];
}

- (void)setForceEncryptionOff:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersForceEncryptionOffKey"];
}

- (void)setAllowCloudDelivery:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAllowCloudDeliveryKey"];
}

- (void)setAlwaysSkipSelf:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAlwaysSkipSelfKey"];
}

- (void)setForceQuery:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = v5;
  if (!a3 && sel_integerValue == sel_BOOLValue)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersForceQueryKey"];
}

- (void)setAlwaysIncludeSelf:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersAlwaysIncludeSelfKey"];
}

- (void)setDisallowRefresh:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersDisallowRefreshKey"];
}

- (void)setLiveMessageDelivery:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersLiveMessageDeliveryKey"];
}

- (void)setIsUPlusOne:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIsUPlusOneKey"];
}

- (void)setSessionForceInternetInvitation:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersSessionForceInternetInvitationKey"];
}

- (void)setWantsFirewallDonation:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersWantsFirewallDonationKey"];
}

- (void)setIgnoreMaxRetryCount:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!a3)
  {

    v6 = 0;
  }

  v7 = v6;
  [(IDSSendParameters *)self setObject:v6 forKey:@"IDSSendParametersIgnoreMaxRetryCountKey"];
}

@end