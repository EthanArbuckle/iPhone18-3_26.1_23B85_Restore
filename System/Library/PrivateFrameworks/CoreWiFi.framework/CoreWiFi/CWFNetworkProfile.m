@interface CWFNetworkProfile
+ (id)supportedOSSpecificKeys;
- (BOOL)_isHomeNetwork;
- (BOOL)allowedBeforeFirstUnlock;
- (BOOL)bypassCaptive;
- (BOOL)is2GHzBssPresent;
- (BOOL)isAmbiguousNetworkName;
- (BOOL)isAppBased;
- (BOOL)isAutoJoinDisabled;
- (BOOL)isAutojoinDisabledUntilFirstUserJoin;
- (BOOL)isBlueAtlasNetwork;
- (BOOL)isCaptive;
- (BOOL)isCaptiveStateDetermined;
- (BOOL)isCarPlay;
- (BOOL)isCarPlayNetwork;
- (BOOL)isCarPlayOnly;
- (BOOL)isCloudSyncable;
- (BOOL)isDNSHeuristicsFilteredNetwork;
- (BOOL)isEAP;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNetworkProfile:(id)a3;
- (BOOL)isHighPopularity;
- (BOOL)isHighQuality;
- (BOOL)isHotspot;
- (BOOL)isLowPopularity;
- (BOOL)isLowQuality;
- (BOOL)isNearbySyncable;
- (BOOL)isPSK;
- (BOOL)isPasspoint;
- (BOOL)isPasspointHomeOperatorNetwork;
- (BOOL)isPasspointProvisionedNetwork;
- (BOOL)isPasswordSharingDisabled;
- (BOOL)isPayloadIdentifierTelemetryApproved;
- (BOOL)isPersonalHotspot;
- (BOOL)isPotentiallyCaptive;
- (BOOL)isPotentiallyMoving;
- (BOOL)isPrivacyProxyEnabled;
- (BOOL)isProfileBased;
- (BOOL)isProminentDisplay;
- (BOOL)isPublicAirPlayNetwork;
- (BOOL)isServiceProviderRoamingEnabled;
- (BOOL)isSessionBased;
- (BOOL)isStandalone6G;
- (BOOL)isSuspicious;
- (BOOL)isSystemMode;
- (BOOL)isTCPGood;
- (BOOL)isTLSCertificateRequired;
- (BOOL)supportsPersonalHotspotFallbackUponBrokenBackhaul;
- (BOOL)wasCaptive;
- (BOOL)wasManuallyJoinedRecentlyInProximityOf:(id)a3;
- (BOOL)wasMoreRecentlyAdded;
- (BOOL)wasMoreRecentlyJoinedByUser;
- (BOOL)wasRecently6GHzOnlyOnAnyDevice;
- (CWFNetworkProfile)init;
- (CWFNetworkProfile)initWithCloudSyncExternalForm:(id)a3;
- (CWFNetworkProfile)initWithCoder:(id)a3;
- (CWFNetworkProfile)initWithExternalForm:(id)a3;
- (CWFNetworkProfile)initWithMigrationData:(id)a3;
- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID;
- (NSArray)TLSTrustedServerNames;
- (NSArray)acceptedEAPTypes;
- (NSArray)innerAcceptedEAPTypes;
- (NSDate)addedOrJoinedByUserAt;
- (NSDate)captiveWebsheetLoginDate;
- (NSDate)lastJoinedAt;
- (NSDate)lastJoinedOnAnyDeviceAt;
- (NSDate)was6GHzOnlyOnAnyDeviceAt;
- (NSDictionary)OSSpecificAttributes;
- (NSSet)properties;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)networkName;
- (double)networkQualityResponsiveness;
- (id)JSONCompatibleKeyValueMap;
- (id)OSSpecificValueForKey:(id)a3;
- (id)__basicDescription;
- (id)__classDStorageSpecificPropertiesSet;
- (id)__descriptionFor6EMode;
- (id)__descriptionForBSSListWithLimit:(unint64_t)a3;
- (id)__descriptionForCaptiveFlags;
- (id)__descriptionForHiddenState;
- (id)__descriptionForLowDataMode;
- (id)__descriptionForMovingAttribute;
- (id)__descriptionForNOIHomeState;
- (id)__descriptionForNOIWorkState;
- (id)__descriptionForNearbyShareableStatus;
- (id)__descriptionForPrivateMAC;
- (id)__descriptionForPublicAttribute;
- (id)__filteredNetworkProfileWithProperties:(id)a3 OSSpecificKeys:(id)a4;
- (id)__keyForProperty:(int64_t)a3;
- (id)_location;
- (id)changedOSSpecificKeysFromNetworkProfile:(id)a3;
- (id)changedPropertiesFromNetworkProfile:(id)a3;
- (id)cloudSyncExternalForm;
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreWiFiSpecificAttributes;
- (id)deepCopy;
- (id)externalForm;
- (id)filteredClassDStorageNetworkProfile;
- (id)filteredCloudNetworkProfile;
- (id)filteredNearbySyncableNetworkProfile;
- (id)filteredTombstoneNetworkProfile;
- (id)filteredWiFiNetworkSharingNetworkProfile;
- (id)identifier;
- (id)matchingKnownBSS:(id)a3;
- (id)migrationData;
- (int)lastDisconnectReason;
- (int)transitionDisabledFlags;
- (int64_t)WAPISubtype;
- (int64_t)WEPSubtype;
- (int64_t)__propertyForKey:(id)a3;
- (int64_t)addReason;
- (int64_t)brokenBackhaulState;
- (int64_t)compareReceivedFromDeviceFlags:(id)a3;
- (int64_t)compareSupportedSecurityTypes:(id)a3;
- (int64_t)compareUserPriority:(id)a3;
- (int64_t)defaultPrivateMACMode;
- (int64_t)disable6EMode;
- (int64_t)effectivePrivateMACModeWithSystemSetting:(int64_t)a3;
- (int64_t)hiddenState;
- (int64_t)locationOfInterest;
- (int64_t)lowDataMode;
- (int64_t)mapCWFSecurityTypeToCWFMigrationSecurityType:(unint64_t)a3;
- (int64_t)mapPrivateMACAddress:(id)a3;
- (int64_t)mapPrivateMacToCWFPrivateMACMode:(int64_t)a3 setByUser:(BOOL *)a4;
- (int64_t)movingAttribute;
- (int64_t)nearbyShareableStatus;
- (int64_t)networkOfInterestHomeState;
- (int64_t)networkOfInterestWorkState;
- (int64_t)privateMACAddressEvaluationState;
- (int64_t)privateMACAddressModeConfigurationProfileSetting;
- (int64_t)privateMACAddressModeUserSetting;
- (int64_t)publicAttribute;
- (int64_t)ssidHarvestStatus;
- (unint64_t)CWFNetworkWarningFlagsFromNetworkProfile;
- (unint64_t)deploymentIssues;
- (unint64_t)effectiveSupportedSecurityTypes;
- (unint64_t)hash;
- (unint64_t)lastJoinedBySystemAtWeek;
- (unint64_t)mapCWFMigrationSecurityTypeToCWFSecurityType:(int64_t)a3;
- (unint64_t)networkGroupPriority;
- (unint64_t)popularityScore;
- (unint64_t)qualityScore;
- (unint64_t)receivedFromDeviceFlags;
- (unint64_t)shortSSID;
- (unint64_t)strongestSupportedSecurityType;
- (unint64_t)supportedSecurityTypes;
- (unint64_t)totalNetworkUsage;
- (unint64_t)was6GHzOnlyAtWeek;
- (unint64_t)weakestSupportedSecurityType;
- (void)mergeWithCloudNetworkProfile:(id)a3;
- (void)mergeWithNetworkProfile:(id)a3;
- (void)setAddReason:(int64_t)a3;
- (void)setBSSList:(id)a3;
- (void)setBrokenBackhaulState:(int64_t)a3;
- (void)setCoreWiFiSpecificAttributes:(id)a3;
- (void)setDeploymentIssues:(unint64_t)a3;
- (void)setDisable6EMode:(int64_t)a3;
- (void)setHiddenState:(int64_t)a3;
- (void)setLastJoinedBySystemAtWeek:(unint64_t)a3;
- (void)setLocationOfInterest:(int64_t)a3;
- (void)setLowDataMode:(int64_t)a3;
- (void)setMovingAttribute:(int64_t)a3;
- (void)setNearbyShareableStatus:(int64_t)a3;
- (void)setNetworkGroupPriority:(unint64_t)a3;
- (void)setNetworkOfInterestHomeState:(int64_t)a3;
- (void)setNetworkOfInterestWorkState:(int64_t)a3;
- (void)setNetworkQualityResponsiveness:(double)a3;
- (void)setOSSpecificAttributes:(id)a3;
- (void)setOSSpecificValue:(id)a3 forKey:(id)a4;
- (void)setPayloadIdentifier:(id)a3;
- (void)setPopularityScore:(unint64_t)a3;
- (void)setPrivateMACAddressEvaluationState:(int64_t)a3;
- (void)setPrivateMACAddressModeConfigurationProfileSetting:(int64_t)a3;
- (void)setPrivateMACAddressModeUserSetting:(int64_t)a3;
- (void)setPublicAttribute:(int64_t)a3;
- (void)setQualityScore:(unint64_t)a3;
- (void)setReceivedFromDeviceFlags:(unint64_t)a3;
- (void)setSSID:(id)a3;
- (void)setSSIDHarvestStatus:(int64_t)a3;
- (void)setSupportedSecurityTypes:(unint64_t)a3;
- (void)setTotalNetworkUsage:(unint64_t)a3;
- (void)setWAPISubtype:(int64_t)a3;
- (void)setWEPSubtype:(int64_t)a3;
- (void)setWas6GHzOnlyAtWeek:(unint64_t)a3;
@end

@implementation CWFNetworkProfile

- (unint64_t)supportedSecurityTypes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8F0];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (int64_t)addReason
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBC38];
  v3 = [v2 integerValue];

  return v3;
}

- (CWFNetworkProfile)init
{
  v6.receiver = self;
  v6.super_class = CWFNetworkProfile;
  v2 = [(CWFNetworkProfile *)&v6 init];
  if (!v2 || (v3 = objc_alloc_init(MEMORY[0x1E695DF90]), internal = v2->_internal, v2->_internal = v3, internal, !v2->_internal))
  {

    return 0;
  }

  return v2;
}

- (NSSet)properties
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_internal allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)supportedOSSpecificKeys
{
  if (qword_1ED7E3958 != -1)
  {
    dispatch_once(&qword_1ED7E3958, &unk_1F5B89AF0);
  }

  v3 = qword_1ED7E3950;

  return v3;
}

- (BOOL)isPasspoint
{
  v2 = [(CWFNetworkProfile *)self domainName];
  v3 = v2 != 0;

  return v3;
}

- (NSString)networkName
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(CWFNetworkProfile *)v2 useCachedNetworkName])
  {
    v3 = [(CWFNetworkProfile *)v2 SSID];
    v4 = CWFHumanReadableStringFromData(v3);
    [(CWFNetworkProfile *)v2 setCachedNetworkName:v4];

    [(CWFNetworkProfile *)v2 setUseCachedNetworkName:1];
  }

  v5 = [(CWFNetworkProfile *)v2 cachedNetworkName];
  objc_sync_exit(v2);

  return v5;
}

- (id)deepCopy
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v3 = v16;
  if (v2)
  {
    v15 = v3;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v15];
    v5 = v15;

    if (v4)
    {
      v6 = v4;
      v7 = v6;
    }

    else
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v5;
        _os_log_send_and_compose_impl();
      }

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
    v5 = v3;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)identifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(CWFNetworkProfile *)v2 useCachedIdentifier])
  {
    if ([(CWFNetworkProfile *)v2 isPasspoint])
    {
      v3 = [(CWFNetworkProfile *)v2 domainName];
      if (!v3)
      {
LABEL_11:

        [(CWFNetworkProfile *)v2 setUseCachedIdentifier:1];
        goto LABEL_12;
      }

      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifi.network.passpoint.%@", v3];
      [(CWFNetworkProfile *)v2 setCachedIdentifier:v4];
    }

    else
    {
      v3 = [(CWFNetworkProfile *)v2 networkName];
      if (v3)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifi.network.ssid.%@", v3];
        [(CWFNetworkProfile *)v2 setCachedIdentifier:v4];
      }

      else
      {
        v5 = [(CWFNetworkProfile *)v2 SSID];
        v4 = v5;
        if (v5)
        {
          v6 = MEMORY[0x1E696AEC0];
          v7 = CWFHexadecimalStringFromData(v5);
          v8 = [v6 stringWithFormat:@"wifi.network.ssid.%@", v7];
          [(CWFNetworkProfile *)v2 setCachedIdentifier:v8];
        }

        v3 = 0;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v9 = [(CWFNetworkProfile *)v2 cachedIdentifier];
  objc_sync_exit(v2);

  return v9;
}

- (BOOL)isAutoJoinDisabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB78];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPersonalHotspot
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBCB0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isCaptiveStateDetermined
{
  if (!sub_1E0BCE0D8())
  {
    return 0;
  }

  v3 = [(CWFNetworkProfile *)self captiveProfile];
  sub_1E0BCE288();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isCarPlay
{
  if ([(CWFNetworkProfile *)self isCarPlayNetwork])
  {
    return 1;
  }

  v4 = [(CWFNetworkProfile *)self carplayUUID];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)isCarPlayNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE48];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)hiddenState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB90];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isPublicAirPlayNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF38];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)publicAttribute
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF80];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)movingAttribute
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF68];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isPrivacyProxyEnabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF08];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)disable6EMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB908];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isStandalone6G
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD10];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wasRecently6GHzOnlyOnAnyDevice
{
  v3 = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
  if (v3)
  {
    v4 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
    [v7 timeIntervalSinceReferenceDate];
    if (v6 >= v8)
    {
      v10 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
      [v10 timeIntervalSinceReferenceDate];
      v12 = v11;
      v13 = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
      [v13 timeIntervalSinceReferenceDate];
      v9 = v12 - v14 <= 1209600.0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDate)was6GHzOnlyOnAnyDeviceAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(CWFNetworkProfile *)self was6GHzOnlyAt];
  [v5 timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(CWFNetworkProfile *)self was6GHzOnlyAtWeek];
  if (v4 >= (604800 * v8))
  {
    v9 = (604800 * v8);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = v10;
  if (v7 > 0.0 || v9 > 0.0)
  {
    if (v7 <= v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = v5;
    }

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;

  return v12;
}

- (unint64_t)was6GHzOnlyAtWeek
{
  v3 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB950];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(CWFNetworkProfile *)self was6GHzOnlyAt];
  [v5 timeIntervalSinceReferenceDate];
  v7 = vcvtmd_u64_f64(v6 / 86400.0 / 7.0);

  if (v4 <= v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (NSDate)lastJoinedAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [(NSDate *)v5 timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [(NSDate *)v8 timeIntervalSinceReferenceDate];
  if (v9 > v4)
  {
    v9 = 0.0;
  }

  if (v7 <= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (int64_t)defaultPrivateMACMode
{
  if ([(CWFNetworkProfile *)self isHotspot]|| [(CWFNetworkProfile *)self isPublicAirPlayNetwork]|| [(CWFNetworkProfile *)self isCarPlay]|| [(CWFNetworkProfile *)self addReason]== 10 || [(CWFNetworkProfile *)self addReason]== 17 || [(CWFNetworkProfile *)self addReason]== 15 || [(CWFNetworkProfile *)self addReason]== 14 || [(CWFNetworkProfile *)self addReason]== 18 || [(CWFNetworkProfile *)self isOpen]|| [(CWFNetworkProfile *)self isOWE]|| [(CWFNetworkProfile *)self isWEP]|| [(CWFNetworkProfile *)self isWAPI]|| [(CWFNetworkProfile *)self isWPA])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)isHotspot
{
  if ([(CWFNetworkProfile *)self isCaptive]|| [(CWFNetworkProfile *)self isPasspoint])
  {
    return 1;
  }

  v4 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([v4 containsObject:&unk_1F5BBBCC8])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(CWFNetworkProfile *)self acceptedEAPTypes];
    v3 = [v5 containsObject:&unk_1F5BBBCE0];
  }

  return v3;
}

- (BOOL)isCaptive
{
  v3 = sub_1E0BCE0D8();
  if (v3)
  {
    v4 = [(CWFNetworkProfile *)self captiveProfile];
    sub_1E0BCE288();
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 BOOLValue];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (NSArray)acceptedEAPTypes
{
  v2 = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [v2 objectForKeyedSubscript:@"AcceptEAPTypes"];

  return v3;
}

- (id)__basicDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self networkName];
  v5 = [v4 redactedForWiFi];

  if (([v5 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @" "))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v5];

    v5 = v6;
  }

  [v3 appendFormat:@"%@ - ", v5];
  v7 = [(CWFNetworkProfile *)self SSID];
  v8 = CWFHexadecimalStringFromData(v7);
  v9 = [v8 redactedForWiFi];
  [v3 appendFormat:@"ssid=%@ (%lu), ", v9, -[CWFNetworkProfile shortSSID](self, "shortSSID")];

  v10 = sub_1E0BD331C([(CWFNetworkProfile *)self effectiveSupportedSecurityTypes], [(CWFNetworkProfile *)self WEPSubtype], [(CWFNetworkProfile *)self WAPISubtype]);
  [v3 appendFormat:@"security=%@, ", v10];

  v11 = [(CWFNetworkProfile *)self __descriptionForPrivateMAC];
  [v3 appendFormat:@"privateMAC=[%@], ", v11];

  if ([(CWFNetworkProfile *)self isPasspoint])
  {
    v12 = [(CWFNetworkProfile *)self domainName];
    v13 = [(CWFNetworkProfile *)self displayedOperatorName];
    v14 = [(CWFNetworkProfile *)self isServiceProviderRoamingEnabled];
    v15 = "no";
    if (v14)
    {
      v15 = "yes";
    }

    [v3 appendFormat:@"hs20=[domain=%@, display=%@, sproam=%s], ", v12, v13, v15];
  }

  if ([(CWFNetworkProfile *)self isAddReasonCarrierBundle])
  {
    v16 = [(CWFNetworkProfile *)self payloadIdentifier];
    v17 = [v16 redactedForWiFi];
    [v3 appendFormat:@"carrierPayloadIdentifier=%@, ", v17];
  }

  if ([(CWFNetworkProfile *)self isAutoJoinDisabled])
  {
    [v3 appendString:{@"disabled=yes, "}];
  }

  if ([(CWFNetworkProfile *)self hiddenState]== 1)
  {
    [v3 appendString:{@"hidden=yes, "}];
  }

  v18 = [(CWFNetworkProfile *)self __descriptionForCaptiveFlags];
  v19 = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];
  v20 = sub_1E0BCC248(v19);
  [v3 appendFormat:@"captive=[state=%@, login=%@], ", v18, v20];

  v21 = sub_1E0BD3BE8([(CWFNetworkProfile *)self brokenBackhaulState]);
  v22 = [(CWFNetworkProfile *)self brokenBackhaulStateUpdatedAt];
  v23 = sub_1E0BCC248(v22);
  [v3 appendFormat:@"bbh=[%@ (%@)], ", v21, v23];

  if ([(CWFNetworkProfile *)self isPersonalHotspot])
  {
    [v3 appendString:{@"ph=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isCarPlay])
  {
    [v3 appendString:{@"carplay=yes, "}];
  }

  if ([(CWFNetworkProfile *)self lowDataMode]== 1)
  {
    [v3 appendString:{@"lowDataMode=on, "}];
  }

  if ([(CWFNetworkProfile *)self isStandalone6G])
  {
    [v3 appendString:{@"6g-split=yes, "}];
  }

  if ([(CWFNetworkProfile *)self disable6EMode]== 2)
  {
    v24 = [(CWFNetworkProfile *)self disable6EModeTimestamp];
    v25 = sub_1E0BCC248(v24);
    [v3 appendFormat:@"6e-mode=[off (%@)], ", v25];
  }

  if ([(CWFNetworkProfile *)self wasRecently6GHzOnlyOnAnyDevice])
  {
    v26 = [(CWFNetworkProfile *)self was6GHzOnlyAt];
    [v3 appendFormat:@"6g-only=[yes, (%@)], ", v26];
  }

  v27 = [(CWFNetworkProfile *)self lastJoinedAt];

  if (v27)
  {
    v28 = [(CWFNetworkProfile *)self lastJoinedAt];
    v29 = sub_1E0BCC248(v28);
    v30 = [(CWFNetworkProfile *)self wasMoreRecentlyJoinedByUser];
    v31 = "auto";
    if (v30)
    {
      v31 = "user";
    }

    [v3 appendFormat:@"assoc=%@ (%s), ", v29, v31];
  }

  v32 = [(CWFNetworkProfile *)self lastDisconnectTimestamp];

  if (v32)
  {
    v33 = [(CWFNetworkProfile *)self lastDisconnectTimestamp];
    v34 = sub_1E0BCC248(v33);
    [v3 appendFormat:@"disassoc=[%@ (%d)], ", v34, -[CWFNetworkProfile lastDisconnectReason](self, "lastDisconnectReason")];
  }

  if ([(CWFNetworkProfile *)self isPublicAirPlayNetwork])
  {
    [v3 appendString:{@"publicAirPlayNetwork=yes, "}];
  }

  v35 = [(CWFNetworkProfile *)self wasHiddenBefore];

  if (v35)
  {
    v36 = [(CWFNetworkProfile *)self wasHiddenBefore];
    v37 = sub_1E0BCC248(v36);
    [v3 appendFormat:@"wasHiddenBefore=%@, ", v37];
  }

  v38 = [(CWFNetworkProfile *)self addedAt];

  if (v38)
  {
    v39 = [(CWFNetworkProfile *)self addedAt];
    v40 = sub_1E0BCC248(v39);
    v41 = sub_1E0BD3F78([(CWFNetworkProfile *)self addReason]);
    v42 = [(CWFNetworkProfile *)self addedByVersion];
    [v3 appendFormat:@"addedAt=[%@ (reason=%@, vers=%@)], ", v40, v41, v42];
  }

  v43 = [(CWFNetworkProfile *)self removedAt];

  if (v43)
  {
    v44 = [(CWFNetworkProfile *)self removedAt];
    v45 = sub_1E0BCC248(v44);
    v46 = [(CWFNetworkProfile *)self removedByVersion];
    [v3 appendFormat:@"removedAt=[%@ (vers=%@)], ", v45, v46];
  }

  v47 = [(CWFNetworkProfile *)self receivedFromDeviceAt];

  if (v47)
  {
    v48 = [(CWFNetworkProfile *)self receivedFromDeviceAt];
    v49 = sub_1E0BCC248(v48);
    v50 = [(CWFNetworkProfile *)self receivedFromDeviceID];
    v51 = [v50 redactedForWiFi];
    v52 = [(CWFNetworkProfile *)self receivedFromDeviceName];
    v53 = [v52 redactedForWiFi];
    [v3 appendFormat:@"receivedFromDeviceAt=[%@ (id=%@, name=%@, flags=0x%llx)], ", v49, v51, v53, -[CWFNetworkProfile receivedFromDeviceFlags](self, "receivedFromDeviceFlags")];
  }

  if ([(CWFNetworkProfile *)self allowedBeforeFirstUnlock])
  {
    [v3 appendString:{@"allowedBeforeFirstUnlock=yes, "}];
  }

  v54 = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];
  if (v54)
  {
  }

  else
  {
    v55 = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];

    if (!v55)
    {
      goto LABEL_48;
    }
  }

  v56 = [(CWFNetworkProfile *)self __descriptionForNOIHomeState];
  v57 = [(CWFNetworkProfile *)self __descriptionForNOIWorkState];
  [v3 appendFormat:@"NOI=[%@ %@], ", v56, v57];

LABEL_48:
  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  return v3;
}

- (unint64_t)shortSSID
{
  if (![(CWFNetworkProfile *)self useCachedShortSSID])
  {
    v3 = [(CWFNetworkProfile *)self SSID];
    if (v3)
    {
      Apple80211CalculateShortSSIDCopy();
    }

    [(CWFNetworkProfile *)self setCachedShortSSID:0];
    [(CWFNetworkProfile *)self setUseCachedShortSSID:1];
  }

  return [(CWFNetworkProfile *)self cachedShortSSID];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self __basicDescription];
  [v3 appendString:v4];

  [v3 appendString:{@", "}];
  v5 = [(CWFNetworkProfile *)self __descriptionForBSSListWithLimit:3];
  [v3 appendString:v5];

  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  return v3;
}

- (NSDictionary)OSSpecificAttributes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];
  v3 = [v2 copy];

  return v3;
}

- (id)coreWiFiSpecificAttributes
{
  v3 = [(CWFNetworkProfile *)self __coreWiFiSpecificProperties];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(CWFNetworkProfile *)self __filteredNetworkProfileWithProperties:v4 OSSpecificKeys:v5];

  v7 = [v6 externalForm];

  return v7;
}

- (id)externalForm
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = [(NSMutableDictionary *)self->_internal allKeys];
  v5 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E695E110];
    v8 = MEMORY[0x1E695E118];
    v38 = *v44;
    v34 = v4;
    v35 = v3;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = -[CWFNetworkProfile __keyForProperty:](self, "__keyForProperty:", [v10 integerValue]);
        v12 = [v10 integerValue];
        if (v11)
        {
          switch(v12)
          {
            case 2:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BECE30([v13 unsignedIntegerValue]);
              goto LABEL_31;
            case 3:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BED2F4([v13 integerValue]);
              goto LABEL_31;
            case 4:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BED470([v13 integerValue]);
              goto LABEL_31;
            case 6:
            case 27:
            case 40:
            case 41:
              v14 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v15 = [v14 integerValue];

              if (v15)
              {
                if (v15 == 1)
                {
                  v16 = v8;
                }

                else
                {
                  v16 = v7;
                }

                [v3 setObject:v16 forKeyedSubscript:v11];
              }

              goto LABEL_15;
            case 7:
            case 8:
            case 10:
            case 17:
            case 18:
            case 31:
            case 44:
            case 47:
            case 49:
            case 50:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 80:
            case 81:
            case 86:
            case 105:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              if (![v13 BOOLValue])
              {
                break;
              }

              goto LABEL_13;
            case 13:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BD3F78([v13 integerValue]);
              goto LABEL_31;
            case 22:
            case 23:
            case 24:
            case 28:
            case 32:
            case 33:
            case 73:
            case 74:
            case 85:
            case 87:
            case 96:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              if ([v13 count])
              {
                goto LABEL_13;
              }

              break;
            case 25:
            case 38:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              if ([v13 BOOLValue])
              {
                break;
              }

              goto LABEL_13;
            case 35:
            case 42:
            case 43:
            case 45:
            case 61:
            case 62:
            case 63:
            case 66:
            case 67:
            case 69:
            case 71:
            case 77:
            case 82:
            case 84:
            case 93:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              if (![v13 integerValue])
              {
                break;
              }

              goto LABEL_13;
            case 37:
              v19 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"BSSID" ascending:0];
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v36 = v20;
              v47 = v20;
              v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
              v37 = v19;
              v22 = [v19 sortedArrayUsingDescriptors:v21];

              v23 = [v22 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = 0;
                v26 = *v40;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v40 != v26)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v28 = [*(*(&v39 + 1) + 8 * i) externalForm];
                    if (v28)
                    {
                      if (!v25)
                      {
                        v25 = [MEMORY[0x1E695DF70] array];
                      }

                      [v25 addObject:v28];
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v39 objects:v48 count:16];
                }

                while (v24);
              }

              else
              {
                v25 = 0;
              }

              v29 = [v25 copy];
              v3 = v35;
              [v35 setObject:v29 forKeyedSubscript:v11];

              v4 = v34;
              v7 = MEMORY[0x1E695E110];
              v8 = MEMORY[0x1E695E118];
              goto LABEL_15;
            case 90:
            case 92:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BEF2F4([v13 integerValue]);
              goto LABEL_31;
            case 109:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
              v17 = sub_1E0BD3BE8([v13 integerValue]);
LABEL_31:
              v18 = v17;
              [v3 setObject:v17 forKeyedSubscript:v11];

              break;
            default:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
LABEL_13:
              [v3 setObject:v13 forKeyedSubscript:v11];
              break;
          }
        }

LABEL_15:

        ++v9;
      }

      while (v9 != v6);
      v30 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
      v6 = v30;
    }

    while (v30);
  }

  v31 = [v3 copy];
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)__descriptionForCaptiveFlags
{
  v3 = [(CWFNetworkProfile *)self bypassCaptive];
  if (![(CWFNetworkProfile *)self isCaptiveStateDetermined])
  {
    v4 = @"?";
    v5 = @"? (bypass)";
LABEL_5:
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_15;
  }

  if ([(CWFNetworkProfile *)self isCaptive])
  {
    v4 = @"yes";
    v5 = @"yes (bypass)";
    goto LABEL_5;
  }

  v7 = [(CWFNetworkProfile *)self wasCaptive];
  v8 = @"no";
  if (v3)
  {
    v8 = @"no (bypass)";
  }

  v9 = @"was (bypass)";
  if (!v3)
  {
    v9 = @"was";
  }

  if (v7)
  {
    v6 = v9;
  }

  else
  {
    v6 = v8;
  }

LABEL_15:

  return v6;
}

- (BOOL)bypassCaptive
{
  if (!sub_1E0BCE0D8())
  {
    return 0;
  }

  v3 = [(CWFNetworkProfile *)self captiveProfile];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = qword_1ED7E3820;
  v14 = qword_1ED7E3820;
  if (!qword_1ED7E3820)
  {
    v5 = sub_1E0C30BBC();
    v12[3] = dlsym(v5, "kCNSCaptiveBypassProperty");
    qword_1ED7E3820 = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v4)
  {
    v6 = [v3 objectForKeyedSubscript:*v4];
    v7 = [v6 BOOLValue];

    return v7;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSCaptiveBypassProperty(void)"];
  [v9 handleFailureInFunction:v10 file:@"CWFNetworkProfile.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (int64_t)privateMACAddressModeUserSetting
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB9F8];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)privateMACAddressModeConfigurationProfileSetting
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBA28];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)privateMACAddressEvaluationState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBA40];
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)effectiveSupportedSecurityTypes
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CWFNetworkProfile *)self supportedSecurityTypes];
  if (v3 == 16)
  {
    v4 = 80;
  }

  else
  {
    v4 = v3;
  }

  if (v4 == 512)
  {
    v5 = 768;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(CWFNetworkProfile *)self transitionDisabledFlags];
  if (v5 & 0x50) != 0 && (v6)
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v5 = 64;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int)transitionDisabledFlags
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBCF8];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (int64_t)WEPSubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB48];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)WAPISubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB60];
  v3 = [v2 integerValue];

  return v3;
}

- (id)__descriptionForPrivateMAC
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self cachedPrivateMACAddress];
  v5 = [v4 redactedForWiFi];
  v6 = [(CWFNetworkProfile *)self cachedPrivateMACAddressUpdatedAt];
  v7 = sub_1E0BCC248(v6);
  [v3 appendFormat:@"%@ (%@), ", v5, v7];

  if ([(CWFNetworkProfile *)self privateMACAddressModeUserSetting])
  {
    v8 = sub_1E0BEF2F4([(CWFNetworkProfile *)self privateMACAddressModeUserSetting]);
    v9 = [(CWFNetworkProfile *)self privateMACAddressModeUserSettingUpdatedAt];
    v10 = sub_1E0BCC248(v9);
    [v3 appendFormat:@"user=%@ (%@), ", v8, v10];
  }

  if ([(CWFNetworkProfile *)self privateMACAddressEvaluationState])
  {
    v11 = sub_1E0BEF284([(CWFNetworkProfile *)self privateMACAddressEvaluationState]);
    v12 = [(CWFNetworkProfile *)self privateMACAddressEvaluatedAt];
    v13 = sub_1E0BCC248(v12);
    [v3 appendFormat:@"eval=%@ (%@), ", v11, v13];
  }

  if ([(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting])
  {
    v14 = sub_1E0BEF2F4([(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting]);
    [v3 appendFormat:@"prof=%@, ", v14];
  }

  v15 = [(CWFNetworkProfile *)self cachedNetworkID];

  if (v15)
  {
    v16 = [(CWFNetworkProfile *)self cachedNetworkID];
    [v3 appendFormat:@"netID=%@, ", v16];
  }

  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  return v3;
}

- (BOOL)wasCaptive
{
  if (!sub_1E0BCE0D8())
  {
    return 0;
  }

  v3 = [(CWFNetworkProfile *)self captiveProfile];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = qword_1ED7E3840;
  v14 = qword_1ED7E3840;
  if (!qword_1ED7E3840)
  {
    v5 = sub_1E0C30BBC();
    v12[3] = dlsym(v5, "kCNSNetworkWasCaptiveProperty");
    qword_1ED7E3840 = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v4)
  {
    v6 = [v3 objectForKeyedSubscript:*v4];
    v7 = [v6 BOOLValue];

    return v7;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSNetworkWasCaptiveProperty(void)"];
  [v9 handleFailureInFunction:v10 file:@"CWFNetworkProfile.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)isPasswordSharingDisabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBBD8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSDate)captiveWebsheetLoginDate
{
  if (sub_1E0BCE0D8())
  {
    v3 = [(CWFNetworkProfile *)self captiveProfile];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v4 = qword_1ED7E3848;
    v13 = qword_1ED7E3848;
    if (!qword_1ED7E3848)
    {
      v5 = sub_1E0C30BBC();
      v11[3] = dlsym(v5, "kCNSCaptiveNetworkWebSheetLoginDateProperty");
      qword_1ED7E3848 = v11[3];
      v4 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSCaptiveNetworkWebSheetLoginDateProperty(void)"];
      [v8 handleFailureInFunction:v9 file:@"CWFNetworkProfile.m" lineNumber:41 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v6 = [v3 objectForKeyedSubscript:*v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)brokenBackhaulState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB18];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)lowDataMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD58];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isServiceProviderRoamingEnabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE00];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)networkGroupPriority
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBEC0];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)isDNSHeuristicsFilteredNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC058];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)allowedBeforeFirstUnlock
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE60];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPayloadIdentifierTelemetryApproved
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBC08];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)networkOfInterestWorkState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBAD0];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)networkOfInterestHomeState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBAA0];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)wasMoreRecentlyJoinedByUser
{
  v3 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v5 > v7;

  return v8;
}

- (BOOL)isProfileBased
{
  v2 = [(CWFNetworkProfile *)self payloadUUID];
  v3 = v2 != 0;

  return v3;
}

- (NSDate)lastJoinedOnAnyDeviceAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(CWFNetworkProfile *)self lastJoinedAt];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(CWFNetworkProfile *)self lastDisconnectTimestamp];
  [v8 timeIntervalSinceReferenceDate];
  if (v7 <= v4 && v9 <= v4)
  {
    v11 = v9;
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v12 = v8;

      v5 = v12;
    }
  }

  else
  {
    v11 = 0.0;
  }

  v13 = [(CWFNetworkProfile *)self lastJoinedBySystemAtWeek];
  if (v4 >= (604800 * v13))
  {
    v14 = (604800 * v13);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v14];
  v16 = v15;
  if (v11 > 0.0 || v14 > 0.0)
  {
    if (v11 <= v14)
    {
      v18 = v15;
    }

    else
    {
      v18 = v5;
    }

    v17 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = v17;

  return v17;
}

- (unint64_t)lastJoinedBySystemAtWeek
{
  v3 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB968];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [v5 timeIntervalSinceReferenceDate];
  v7 = vcvtmd_u64_f64(v6 / 86400.0 / 7.0);

  if (v4 <= v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)strongestSupportedSecurityType
{
  v3 = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = [(CWFNetworkProfile *)self WAPISubtype];
  v5 = [(CWFNetworkProfile *)self WEPSubtype];

  return CWFStrongestSecurityType(v3, v4, v5);
}

- (id)filteredNearbySyncableNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(CWFNetworkProfile *)self __nearbySyncSpecificProperties];
  v5 = [v3 setWithArray:v4];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (BOOL)isNearbySyncable
{
  result = 0;
  if (![(CWFNetworkProfile *)self isEAP]&& ![(CWFNetworkProfile *)self isProfileBased]&& ![(CWFNetworkProfile *)self isAppBased]&& ![(CWFNetworkProfile *)self isCarPlayOnly]&& ![(CWFNetworkProfile *)self isPersonalHotspot])
  {
    if ([(CWFNetworkProfile *)self isCaptiveStateDetermined])
    {
      if (![(CWFNetworkProfile *)self wasCaptive]&& ![(CWFNetworkProfile *)self isCaptive]&& ![(CWFNetworkProfile *)self bypassCaptive])
      {
        v3 = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];

        if (!v3)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (BOOL)isEAP
{
  v3 = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if ((v3 & 8) != 0)
    {
      return 1;
    }

    return (v4 & 0x20) != 0 || v4 < 0;
  }

  v6 = [(CWFNetworkProfile *)self WEPSubtype];
  result = 1;
  if ((v4 & 8) == 0 && v6 != 5)
  {
    return (v4 & 0x20) != 0 || v4 < 0;
  }

  return result;
}

- (BOOL)isAppBased
{
  v2 = [(CWFNetworkProfile *)self bundleID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isCarPlayOnly
{
  if (![(CWFNetworkProfile *)self isCarPlay]|| [(CWFNetworkProfile *)self isProfileBased]|| [(CWFNetworkProfile *)self isPasspoint])
  {
    return 0;
  }

  v5 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  v3 = v5 == 0;

  return v3;
}

- (BOOL)isPSK
{
  v3 = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      return 1;
    }

    return (v4 & 0x14) != 0 || (v4 & 0x40) != 0;
  }

  v6 = [(CWFNetworkProfile *)self WEPSubtype];
  result = 1;
  if ((v4 & 2) == 0 && v6 == 5)
  {
    return (v4 & 0x14) != 0 || (v4 & 0x40) != 0;
  }

  return result;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = [(CWFNetworkProfile *)self externalForm];
  v4 = [v3 mutableCopy];

  v5 = [(CWFNetworkProfile *)self networkName];
  [v4 setObject:v5 forKeyedSubscript:@"NetworkName"];

  v6 = [(CWFNetworkProfile *)self removedAt];
  [v4 setObject:v6 forKeyedSubscript:@"RemovedAt"];

  v7 = [(CWFNetworkProfile *)self removedByVersion];
  [v4 setObject:v7 forKeyedSubscript:@"RemovedByVersion"];

  v8 = [(CWFNetworkProfile *)self addedByVersion];
  [v4 setObject:v8 forKeyedSubscript:@"AddedByVersion"];

  if ([(CWFNetworkProfile *)self isSessionBased])
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v9 forKeyedSubscript:@"isSessionBased"];
  v10 = [(CWFNetworkProfile *)self receivedFromDeviceAt];
  [v4 setObject:v10 forKeyedSubscript:@"ReceivedFromDeviceAt"];

  v11 = [(CWFNetworkProfile *)self receivedFromDeviceID];
  [v4 setObject:v11 forKeyedSubscript:@"ReceivedFromDeviceID"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFNetworkProfile receivedFromDeviceFlags](self, "receivedFromDeviceFlags")}];
  [v4 setObject:v12 forKeyedSubscript:@"ReceivedFromDeviceFlags"];

  v13 = sub_1E0BCEC64(v4, 0, 1u);
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)__filteredNetworkProfileWithProperties:(id)a3 OSSpecificKeys:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CWFNetworkProfile);
  v9 = [(NSMutableDictionary *)self->_internal mutableCopy];
  if (v6)
  {
    v10 = [(CWFNetworkProfile *)self properties];
    v11 = [v10 mutableCopy];

    [v11 minusSet:v6];
    v12 = [v11 allObjects];
    [v9 removeObjectsForKeys:v12];
  }

  [(CWFNetworkProfile *)v8 setInternal:v9];
  v13 = [v6 containsObject:&unk_1F5BBB8C0];
  if (v7 && v13)
  {
    v27 = v9;
    v28 = v8;
    v29 = v6;
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [(CWFNetworkProfile *)self OSSpecificAttributes];
    v16 = [v15 allKeys];

    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          if ([v7 containsObject:v21])
          {
            v22 = [(CWFNetworkProfile *)self OSSpecificAttributes];
            v23 = [v22 objectForKeyedSubscript:v21];
            [v14 setObject:v23 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v24 = [v14 copy];
    v8 = v28;
    [(CWFNetworkProfile *)v28 setOSSpecificAttributes:v24];

    v6 = v29;
    v9 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (int64_t)compareSupportedSecurityTypes:(id)a3
{
  v4 = a3;
  v5 = [(CWFNetworkProfile *)self weakestSupportedSecurityType];
  v6 = [v4 weakestSupportedSecurityType];
  v7 = [(CWFNetworkProfile *)self strongestSupportedSecurityType];
  v8 = [v4 strongestSupportedSecurityType];
  v9 = [(CWFNetworkProfile *)self WAPISubtype];
  v10 = [v4 WAPISubtype];
  v11 = [(CWFNetworkProfile *)self WEPSubtype];
  v12 = [v4 WEPSubtype];

  if (v5 == v6)
  {
    if (v7 == v8)
    {
      return 0;
    }

    v14 = v7;
    v15 = v11;
    v16 = v9;
    v17 = v8;
  }

  else
  {
    v14 = v5;
    v15 = v11;
    v16 = v9;
    v17 = v6;
  }

  return CWFCompareSecurityType(v14, v15, v16, v17, v12, v10);
}

- (int64_t)compareUserPriority:(id)a3
{
  v4 = a3;
  v5 = [(CWFNetworkProfile *)self userPreferredNetworkNames];
  v6 = [v4 userPreferredNetworkNames];
  v7 = [(CWFNetworkProfile *)self userPreferredPasspointDomains];
  v8 = [v4 userPreferredPasspointDomains];
  v9 = [(CWFNetworkProfile *)self domainName];
  v10 = [v4 domainName];
  v11 = [(CWFNetworkProfile *)self networkName];
  v12 = [v4 networkName];

  v26 = v9;
  v27 = v8;
  v13 = [v8 objectForKeyedSubscript:v9];
  v28 = v7;
  v14 = [v7 objectForKeyedSubscript:v10];
  v29 = v6;
  v15 = [v6 objectForKeyedSubscript:v11];
  v30 = v5;
  v16 = [v5 objectForKeyedSubscript:v12];
  if (v15 && v13)
  {
    v17 = [v15 laterDate:v13];
  }

  else
  {
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    v17 = v18;
  }

  v19 = v17;
  if (v16 && v14)
  {
    v20 = [v16 laterDate:v14];
  }

  else
  {
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v14;
    }

    v20 = v21;
  }

  v22 = v20;
  if (v19 && v20)
  {
    v23 = [v19 compare:v20];
  }

  else
  {
    if (v20)
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }

    if (v19)
    {
      v23 = 1;
    }

    else
    {
      v23 = v24;
    }
  }

  return v23;
}

- (id)matchingKnownBSS:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CWFNetworkProfile *)self BSSList];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 BSSID];
        if (v9)
        {
          v10 = v9;
          v11 = [v4 BSSID];
          if (v11)
          {
            v12 = v11;
            v13 = [v8 BSSID];
            v14 = [v4 BSSID];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              v5 = v8;
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)__keyForProperty:(int64_t)a3
{
  v4 = 0;
  v5 = CWFNetworkProfilePropertySSIDKey;
  switch(a3)
  {
    case 1:
      goto LABEL_104;
    case 2:
      v5 = CWFNetworkProfilePropertySupportedSecurityTypesKey;
      goto LABEL_104;
    case 3:
      v5 = CWFNetworkProfilePropertyWEPSubtypeKey;
      goto LABEL_104;
    case 4:
      v5 = CWFNetworkProfilePropertyWAPISubtypeKey;
      goto LABEL_104;
    case 5:
      v5 = CWFNetworkProfilePropertyCaptiveProfileKey;
      goto LABEL_104;
    case 6:
      v5 = CWFNetworkProfilePropertyHiddenStateKey;
      goto LABEL_104;
    case 7:
      v5 = CWFNetworkProfilePropertyAutoJoinDisabledKey;
      goto LABEL_104;
    case 8:
      v5 = CWFNetworkProfilePropertyPasswordSharingDisabledKey;
      goto LABEL_104;
    case 9:
      v5 = CWFNetworkProfilePropertyPayloadIdentifierKey;
      goto LABEL_104;
    case 10:
      v5 = CWFNetworkProfilePropertyPayloadIdentifierTelemetryApprovedKey;
      goto LABEL_104;
    case 11:
      v5 = CWFNetworkProfilePropertyPayloadUUIDKey;
      goto LABEL_104;
    case 12:
      v5 = CWFNetworkProfilePropertyBundleIDKey;
      goto LABEL_104;
    case 13:
      v5 = CWFNetworkProfilePropertyAddReasonKey;
      goto LABEL_104;
    case 14:
      v5 = CWFNetworkProfilePropertyAddedAtKey;
      goto LABEL_104;
    case 15:
      v5 = CWFNetworkProfilePropertyLastJoinedByUserAtKey;
      goto LABEL_104;
    case 16:
      v5 = CWFNetworkProfilePropertyLastJoinedBySystemAtKey;
      goto LABEL_104;
    case 17:
      v5 = CWFNetworkProfilePropertyPersonalHotspotKey;
      goto LABEL_104;
    case 18:
      v5 = CWFNetworkProfilePropertySystemModeKey;
      goto LABEL_104;
    case 20:
      v5 = CWFNetworkProfilePropertyEAPProfileKey;
      goto LABEL_104;
    case 21:
      v5 = CWFNetworkProfilePropertyPasspointDomainNameKey;
      goto LABEL_104;
    case 22:
      v5 = CWFNetworkProfilePropertyPasspointNAIRealmNameListKey;
      goto LABEL_104;
    case 23:
      v5 = CWFNetworkProfilePropertyPasspointRoamingConsortiumListKey;
      goto LABEL_104;
    case 24:
      v5 = CWFNetworkProfilePropertyPasspointCellularNetworkInfoKey;
      goto LABEL_104;
    case 25:
      v5 = CWFNetworkProfilePropertyPasspointServiceProviderRoamingEnabledKey;
      goto LABEL_104;
    case 26:
      v5 = CWFNetworkProfilePropertyPasspointDisplayedOperatorNameKey;
      goto LABEL_104;
    case 27:
      v5 = CWFNetworkProfilePropertyLowDataModeKey;
      goto LABEL_104;
    case 28:
      v5 = CWFNetworkProfilePropertyOSSpecificAttributesKey;
      goto LABEL_104;
    case 29:
      v5 = CWFNetworkProfilePropertyUpdatedAtKey;
      goto LABEL_104;
    case 30:
      v5 = CWFNetworkProfilePropertyCarPlayUUIDKey;
      goto LABEL_104;
    case 31:
      v5 = CWFNetworkProfilePropertyCarPlayNetworkKey;
      goto LABEL_104;
    case 32:
      v5 = CWFNetworkProfilePropertyUserPreferredNetworkNamesKey;
      goto LABEL_104;
    case 33:
      v5 = CWFNetworkProfilePropertyUserPreferredPasspointDomainsKey;
      goto LABEL_104;
    case 34:
      v5 = CWFNetworkProfilePropertyNetworkGroupIDKey;
      goto LABEL_104;
    case 35:
      v5 = CWFNetworkProfilePropertyNetworkGroupPriorityKey;
      goto LABEL_104;
    case 36:
      v5 = CWFNetworkProfilePropertyLastDiscoveredAtKey;
      goto LABEL_104;
    case 37:
      v5 = CWFNetworkProfilePropertyBSSListKey;
      goto LABEL_104;
    case 38:
      v5 = CWFNetworkProfilePropertyPrivacyProxyEnabledKey;
      goto LABEL_104;
    case 39:
      v5 = CWFNetworkProfilePropertyPrivacyProxyBlockedReasonKey;
      goto LABEL_104;
    case 40:
      v5 = CWFNetworkProfilePropertyMovingKey;
      goto LABEL_104;
    case 41:
      v5 = CWFNetworkProfilePropertyPublicKey;
      goto LABEL_104;
    case 42:
      v5 = CWFNetworkProfilePropertyTransitionDisabledFlagsKey;
      goto LABEL_104;
    case 43:
      v5 = CWFNetworkProfilePropertyNearbyShareableStatusKey;
      goto LABEL_104;
    case 44:
      v5 = CWFNetworkProfilePropertyStandalone6GKey;
      goto LABEL_104;
    case 45:
      v5 = CWFNetworkProfilePropertyDisable6EModeKey;
      goto LABEL_104;
    case 46:
      v5 = CWFNetworkProfilePropertyDisable6EModeTimestampKey;
      goto LABEL_104;
    case 47:
      v5 = CWFNetworkProfilePropertyDisableAutojoinUntilFirstUserJoinKey;
      goto LABEL_104;
    case 48:
      v5 = CWFNetworkProfilePropertyNetworkDisabledUntilDateKey;
      goto LABEL_104;
    case 49:
      v5 = CWFNetworkProfilePropertyPasspointHomeOperatorNetworkKey;
      goto LABEL_104;
    case 50:
      v5 = CWFNetworkProfilePropertyPasspointProvisionedNetworkKey;
      goto LABEL_104;
    case 51:
      v5 = CWFNetworkProfilePropertyPasspointAccountNameKey;
      goto LABEL_104;
    case 52:
      v5 = CWFNetworkProfilePropertyHighPopularityKey;
      goto LABEL_104;
    case 53:
      v5 = CWFNetworkProfilePropertyHighQualityKey;
      goto LABEL_104;
    case 54:
      v5 = CWFNetworkProfilePropertyPotentiallyCaptiveKey;
      goto LABEL_104;
    case 55:
      v5 = CWFNetworkProfilePropertyPotentiallyMovingKey;
      goto LABEL_104;
    case 56:
      v5 = CWFNetworkProfilePropertySuspiciousKey;
      goto LABEL_104;
    case 57:
      v5 = CWFNetworkProfilePropertyTCPGoodKey;
      goto LABEL_104;
    case 58:
      v5 = CWFNetworkProfilePropertyLowPopularityKey;
      goto LABEL_104;
    case 59:
      v5 = CWFNetworkProfilePropertyLowQualityKey;
      goto LABEL_104;
    case 60:
      v5 = CWFNetworkProfilePropertyProminentDisplayKey;
      goto LABEL_104;
    case 61:
      v5 = CWFNetworkProfilePropertyPopularityScoreKey;
      goto LABEL_104;
    case 62:
      v5 = CWFNetworkProfilePropertyQualityScoreKey;
      goto LABEL_104;
    case 63:
      v5 = CWFNetworkProfilePropertyTotalNetworkUsageKey;
      goto LABEL_104;
    case 64:
      v5 = CWFNetworkProfilePropertyExpirationDateKey;
      goto LABEL_104;
    case 65:
      v5 = CWFNetworkProfilePropertyLastHomeForceFixDateKey;
      goto LABEL_104;
    case 67:
      v5 = CWFNetworkProfilePropertyNetworkOfInterestHomeStateKey;
      goto LABEL_104;
    case 68:
      v5 = CWFNetworkProfilePropertyNetworkOfInterestHomeStateUpdatedAtKey;
      goto LABEL_104;
    case 69:
      v5 = CWFNetworkProfilePropertyNetworkOfInterestWorkStateKey;
      goto LABEL_104;
    case 70:
      v5 = CWFNetworkProfilePropertyNetworkOfInterestWorkStateUpdatedAtKey;
      goto LABEL_104;
    case 71:
      v5 = CWFNetworkProfilePropertySSIDHarvestStatusKey;
      goto LABEL_104;
    case 72:
      v5 = CWFNetworkProfilePropertyWalletIdentifierKey;
      goto LABEL_104;
    case 73:
      v5 = CWFNetworkProfilePropertyOTASystemInfoBeaconProbeListKey;
      goto LABEL_104;
    case 74:
      v5 = CWFNetworkProfilePropertySIMIdentifiersKey;
      goto LABEL_104;
    case 75:
      v5 = CWFNetworkProfilePropertyNetworkQualityResponsivenessKey;
      goto LABEL_104;
    case 76:
      v5 = CWFNetworkProfilePropertyNetworkQualityDateKey;
      goto LABEL_104;
    case 77:
      v5 = CWFNetworkProfilePropertyLastDisconnectReasonKey;
      goto LABEL_104;
    case 78:
      v5 = CWFNetworkProfilePropertyLastDisconnectTimestampKey;
      goto LABEL_104;
    case 79:
      v5 = CWFNetworkProfilePropertyNANServiceIDKey;
      goto LABEL_104;
    case 80:
      v5 = CWFNetworkProfilePropertyBlueAtlasNetworkKey;
      goto LABEL_104;
    case 81:
      v5 = CWFNetworkProfilePropertyPublicAirPlayNetworkKey;
      goto LABEL_104;
    case 82:
      v5 = CWFNetworkProfilePropertyLastJoinedBySystemAtWeekKey;
      goto LABEL_104;
    case 83:
      v5 = CWFNetworkProfilePropertyWas6GHzOnlyAtKey;
      goto LABEL_104;
    case 84:
      v5 = CWFNetworkProfilePropertyWas6GHzOnlyAtWeekKey;
      goto LABEL_104;
    case 85:
      v5 = CWFNetworkProfilePropertySeamlessSSIDListKey;
      goto LABEL_104;
    case 86:
      v5 = CWFNetworkProfilePropertyDNSHeuristicsFilteredNetworkKey;
      goto LABEL_104;
    case 87:
      v5 = CWFNetworkProfilePropertyDNSHeuristicsFailureStateInfoKey;
      goto LABEL_104;
    case 88:
      v5 = CWFNetworkProfilePropertyCachedPrivateMACAddressKey;
      goto LABEL_104;
    case 89:
      v5 = CWFNetworkProfilePropertyCachedPrivateMACAddressUpdatedAtKey;
      goto LABEL_104;
    case 90:
      v5 = CWFNetworkProfilePropertyPrivateMACAddressModeUserSettingKey;
      goto LABEL_104;
    case 91:
      v5 = CWFNetworkProfilePropertyPrivateMACAddressModeUserSettingUpdatedAtKey;
      goto LABEL_104;
    case 92:
      v5 = CWFNetworkProfilePropertyPrivateMACAddressModeConfigurationProfileSettingKey;
      goto LABEL_104;
    case 93:
      v5 = CWFNetworkProfilePropertyPrivateMACAddressEvaluationStateKey;
      goto LABEL_104;
    case 94:
      v5 = CWFNetworkProfilePropertyPrivateMACAddressEvaluatedAtKey;
      goto LABEL_104;
    case 95:
      v5 = CWFNetworkProfilePropertyWasHiddenBeforeKey;
      goto LABEL_104;
    case 96:
      v5 = CWFNetworkProfilePropertyDiscoveredDevicesKey;
      goto LABEL_104;
    case 97:
      v5 = CWFNetworkProfilePropertyCachedNetworkIDKey;
      goto LABEL_104;
    case 98:
      v5 = CWFNetworkProfilePropertyRemovedAtKey;
      goto LABEL_104;
    case 101:
      v5 = CWFNetworkProfilePropertyReceivedFromDeviceFlagsKey;
      goto LABEL_104;
    case 102:
      v5 = CWFNetworkProfilePropertyReceivedFromDeviceAtKey;
      goto LABEL_104;
    case 103:
      v5 = CWFNetworkProfilePropertyReceivedFromDeviceIDKey;
      goto LABEL_104;
    case 106:
      v5 = CWFNetworkProfilePropertyReceivedFromDeviceNameKey;
      goto LABEL_104;
    case 108:
      v5 = CWFNetworkProfilePropertyIs2GHzBssPresentKey;
      goto LABEL_104;
    case 109:
      v5 = CWFNetworkProfilePropertyBrokenBackhaulStateKey;
      goto LABEL_104;
    case 110:
      v5 = CWFNetworkProfilePropertyBrokenBackhaulStateUpdatedAtKey;
LABEL_104:
      v4 = *v5;
      break;
    default:
      break;
  }

  return v4;
}

- (int64_t)__propertyForKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SSID"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SupportedSecurityTypes"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WEPSubtype"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WAPISubtype"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CaptiveProfile"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Hidden"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AutoJoinDisabled"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PasswordSharingDisabled"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PayloadIdentifierTelemetryApproved"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PayloadIdentifier"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PayloadUUID"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"BundleID"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"AddReason"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AddedAt"])
  {
    v4 = 14;
  }

  else
  {
    if ([v3 isEqualToString:@"JoinedByUserAt"])
    {
      goto LABEL_30;
    }

    if ([v3 isEqualToString:@"JoinedBySystemAt"])
    {
      v4 = 16;
      goto LABEL_33;
    }

    if ([v3 isEqualToString:@"JoinedByUserAt"])
    {
LABEL_30:
      v4 = 15;
    }

    else if ([v3 isEqualToString:@"PersonalHotspot"])
    {
      v4 = 17;
    }

    else if ([v3 isEqualToString:@"SystemMode"])
    {
      v4 = 18;
    }

    else if ([v3 isEqualToString:@"EAPProfile"])
    {
      v4 = 20;
    }

    else if ([v3 isEqualToString:@"PasspointDomain"])
    {
      v4 = 21;
    }

    else if ([v3 isEqualToString:@"PasspointNAIRealmList"])
    {
      v4 = 22;
    }

    else if ([v3 isEqualToString:@"PasspointRCList"])
    {
      v4 = 23;
    }

    else if ([v3 isEqualToString:@"PasspointCellularNetworkInfo"])
    {
      v4 = 24;
    }

    else if ([v3 isEqualToString:@"PasspointSPRoamingEnabled"])
    {
      v4 = 25;
    }

    else if ([v3 isEqualToString:@"PasspointDisplayName"])
    {
      v4 = 26;
    }

    else if ([v3 isEqualToString:@"LowDataMode"])
    {
      v4 = 27;
    }

    else if ([v3 isEqualToString:@"__OSSpecific__"])
    {
      v4 = 28;
    }

    else if ([v3 isEqualToString:@"allowedBeforeFirstUnlock"])
    {
      v4 = 105;
    }

    else if ([v3 isEqualToString:@"UpdatedAt"])
    {
      v4 = 29;
    }

    else if ([v3 isEqualToString:@"CarPlayUUID"])
    {
      v4 = 30;
    }

    else if ([v3 isEqualToString:@"CarPlayNetwork"])
    {
      v4 = 31;
    }

    else if ([v3 isEqualToString:@"UserPreferredNetworkNames"])
    {
      v4 = 32;
    }

    else if ([v3 isEqualToString:@"UserPreferredPasspointDomains"])
    {
      v4 = 33;
    }

    else if ([v3 isEqualToString:@"NetworkGroupID"])
    {
      v4 = 34;
    }

    else if ([v3 isEqualToString:@"NetworkGroupPriority"])
    {
      v4 = 35;
    }

    else if ([v3 isEqualToString:@"LastDiscoveredAt"])
    {
      v4 = 36;
    }

    else if ([v3 isEqualToString:@"BSSList"])
    {
      v4 = 37;
    }

    else if ([v3 isEqualToString:@"PrivacyProxyEnabled"])
    {
      v4 = 38;
    }

    else if ([v3 isEqualToString:@"PrivacyProxyBlockedReason"])
    {
      v4 = 39;
    }

    else if ([v3 isEqualToString:@"Moving"])
    {
      v4 = 40;
    }

    else if ([v3 isEqualToString:@"Public"])
    {
      v4 = 41;
    }

    else if ([v3 isEqualToString:@"BlueAtlasNetwork"])
    {
      v4 = 80;
    }

    else if ([v3 isEqualToString:@"PublicAirPlayNetwork"])
    {
      v4 = 81;
    }

    else if ([v3 isEqualToString:@"TransitionDisabledFlags"])
    {
      v4 = 42;
    }

    else if ([v3 isEqualToString:@"NearbyShareableStatus"])
    {
      v4 = 43;
    }

    else if ([v3 isEqualToString:@"Standalone6G"])
    {
      v4 = 44;
    }

    else if ([v3 isEqualToString:@"Disable6EMode"])
    {
      v4 = 45;
    }

    else if ([v3 isEqualToString:@"Disable6EModeTimestamp"])
    {
      v4 = 46;
    }

    else if ([v3 isEqualToString:@"DisableAutojoinUntilFirstUserJoin"])
    {
      v4 = 47;
    }

    else if ([v3 isEqualToString:@"NetworkDisabledUntilDate"])
    {
      v4 = 48;
    }

    else if ([v3 isEqualToString:@"PasspointHomeOperatorNetwork"])
    {
      v4 = 49;
    }

    else if ([v3 isEqualToString:@"PasspointProvisionedNetwork"])
    {
      v4 = 50;
    }

    else if ([v3 isEqualToString:@"PasspointAccountName"])
    {
      v4 = 51;
    }

    else if ([v3 isEqualToString:@"HighPopularity"])
    {
      v4 = 52;
    }

    else if ([v3 isEqualToString:@"HighQuality"])
    {
      v4 = 53;
    }

    else if ([v3 isEqualToString:@"PotentiallyCaptive"])
    {
      v4 = 54;
    }

    else if ([v3 isEqualToString:@"PotentiallyMoving"])
    {
      v4 = 55;
    }

    else if ([v3 isEqualToString:@"TCPGood"])
    {
      v4 = 57;
    }

    else if ([v3 isEqualToString:@"LowPopularity"])
    {
      v4 = 58;
    }

    else if ([v3 isEqualToString:@"LowQuality"])
    {
      v4 = 59;
    }

    else if ([v3 isEqualToString:@"ProminentDisplay"])
    {
      v4 = 60;
    }

    else if ([v3 isEqualToString:@"PopularityScore"])
    {
      v4 = 61;
    }

    else if ([v3 isEqualToString:@"QualityScore"])
    {
      v4 = 62;
    }

    else if ([v3 isEqualToString:@"TotalNetworkUsage"])
    {
      v4 = 63;
    }

    else if ([v3 isEqualToString:@"ExpirationDate"])
    {
      v4 = 64;
    }

    else if ([v3 isEqualToString:@"HomeForceFixDate"])
    {
      v4 = 65;
    }

    else if ([v3 isEqualToString:@"LocationOfInterestType"])
    {
      v4 = 66;
    }

    else if ([v3 isEqualToString:@"NetworkOfInterestHomeState"])
    {
      v4 = 67;
    }

    else if ([v3 isEqualToString:@"NetworkOfInterestHomeStateUpdatedAt"])
    {
      v4 = 68;
    }

    else if ([v3 isEqualToString:@"NetworkOfInterestWorkState"])
    {
      v4 = 69;
    }

    else if ([v3 isEqualToString:@"NetworkOfInterestWorkStateUpdatedAt"])
    {
      v4 = 70;
    }

    else if ([v3 isEqualToString:@"SSIDHarvestStatus"])
    {
      v4 = 71;
    }

    else if ([v3 isEqualToString:@"WalletIdentifier"])
    {
      v4 = 72;
    }

    else if ([v3 isEqualToString:@"OTASystemInfoBeaconProbeList"])
    {
      v4 = 73;
    }

    else if ([v3 isEqualToString:@"SIMIdentifiers"])
    {
      v4 = 74;
    }

    else if ([v3 isEqualToString:@"NetworkQualityResponsiveness"])
    {
      v4 = 75;
    }

    else if ([v3 isEqualToString:@"NetworkQualityDate"])
    {
      v4 = 76;
    }

    else if ([v3 isEqualToString:@"LastDisconnectReason"])
    {
      v4 = 77;
    }

    else if ([v3 isEqualToString:@"LastDisconnectTimestamp"])
    {
      v4 = 78;
    }

    else if ([v3 isEqualToString:@"NANServiceID"])
    {
      v4 = 79;
    }

    else if ([v3 isEqualToString:@"JoinedBySystemAtWeek"])
    {
      v4 = 82;
    }

    else if ([v3 isEqualToString:@"Was6GHzOnlyAt"])
    {
      v4 = 83;
    }

    else if ([v3 isEqualToString:@"Was6GHzOnlyAtWeek"])
    {
      v4 = 84;
    }

    else if ([v3 isEqualToString:@"SeamlessSSIDList"])
    {
      v4 = 85;
    }

    else if ([v3 isEqualToString:@"DNSHeuristicsFilteredNetwork"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"FilteredNetwork"))
    {
      v4 = 86;
    }

    else if ([v3 isEqualToString:@"DNSHeuristicsFailureStateInfo"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DNSFailures"))
    {
      v4 = 87;
    }

    else if ([v3 isEqualToString:@"CachedPrivateMACAddress"])
    {
      v4 = 88;
    }

    else if ([v3 isEqualToString:@"CachedPrivateMACAddressUpdatedAt"])
    {
      v4 = 89;
    }

    else if ([v3 isEqualToString:@"PrivateMACAddressModeUserSetting"])
    {
      v4 = 90;
    }

    else if ([v3 isEqualToString:@"PrivateMACAddressModeUserSettingUpdatedAt"])
    {
      v4 = 91;
    }

    else if ([v3 isEqualToString:@"PrivateMACAddressEvaluationState"])
    {
      v4 = 93;
    }

    else if ([v3 isEqualToString:@"PrivateMACAddressModeConfigurationProfileSetting"])
    {
      v4 = 92;
    }

    else if ([v3 isEqualToString:@"PrivateMACAddressEvaluatedAt"])
    {
      v4 = 94;
    }

    else if ([v3 isEqualToString:@"WasHiddenBefore"])
    {
      v4 = 95;
    }

    else if ([v3 isEqualToString:@"DiscoveredDevices"])
    {
      v4 = 96;
    }

    else if ([v3 isEqualToString:@"CachedNetworkID"])
    {
      v4 = 97;
    }

    else if ([v3 isEqualToString:@"RemovedAt"])
    {
      v4 = 98;
    }

    else if ([v3 isEqualToString:@"ReceivedFromDeviceAt"])
    {
      v4 = 102;
    }

    else if ([v3 isEqualToString:@"ReceivedFromDeviceFlags"])
    {
      v4 = 101;
    }

    else if ([v3 isEqualToString:@"ReceivedFromDeviceID"])
    {
      v4 = 103;
    }

    else if ([v3 isEqualToString:@"ReceivedFromDeviceName"])
    {
      v4 = 106;
    }

    else if ([v3 isEqualToString:@"DeploymentIssues"])
    {
      v4 = 107;
    }

    else if ([v3 isEqualToString:@"is2GHzBssPresent"])
    {
      v4 = 108;
    }

    else if ([v3 isEqualToString:@"BrokenBackhaulState"])
    {
      v4 = 109;
    }

    else if ([v3 isEqualToString:@"BrokenBackhaulStateUdatedAt"])
    {
      v4 = 110;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_33:

  return v4;
}

- (CWFNetworkProfile)initWithExternalForm:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFNetworkProfile *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v4 allKeys];
    v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v43)
    {
      goto LABEL_68;
    }

    v42 = *v49;
    v39 = v4;
    v40 = v5;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * v7);
        v9 = [(CWFNetworkProfile *)v5 __propertyForKey:v8];
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
          v12 = [v6 objectForKeyedSubscript:v11];

          if (!v12)
          {
            if (v10 > 36)
            {
              if (v10 > 89)
              {
                if (v10 == 90 || v10 == 92)
                {
                  v22 = MEMORY[0x1E696AD98];
                  v14 = [v4 objectForKeyedSubscript:v8];
                  v15 = [v22 numberWithInteger:sub_1E0BEF318(v14)];
                  v16 = MEMORY[0x1E696AD98];
                  v17 = v10;
                }

                else
                {
                  if (v10 != 109)
                  {
                    goto LABEL_64;
                  }

                  v21 = MEMORY[0x1E696AD98];
                  v14 = [v4 objectForKeyedSubscript:v8];
                  v15 = [v21 numberWithInteger:sub_1E0BD6118(v14)];
                  v16 = MEMORY[0x1E696AD98];
                  v17 = 109;
                }

                goto LABEL_60;
              }

              switch(v10)
              {
                case '%':
                  v15 = [v4 objectForKeyedSubscript:v8];
                  v44 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v24 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v14 = 0;
                    v26 = *v45;
                    do
                    {
                      for (i = 0; i != v25; ++i)
                      {
                        if (*v45 != v26)
                        {
                          objc_enumerationMutation(v15);
                        }

                        v28 = [[CWFBSS alloc] initWithExternalForm:*(*(&v44 + 1) + 8 * i)];
                        if (v28)
                        {
                          if (!v14)
                          {
                            v14 = [MEMORY[0x1E695DFA8] set];
                          }

                          [v14 addObject:v28];
                        }
                      }

                      v25 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
                    }

                    while (v25);
                  }

                  else
                  {
                    v14 = 0;
                  }

                  v34 = [v14 copy];
                  v35 = [MEMORY[0x1E696AD98] numberWithInteger:37];
                  [v6 setObject:v34 forKeyedSubscript:v35];

                  v4 = v39;
                  v5 = v40;
                  goto LABEL_61;
                case '(':
                  v14 = [v4 objectForKeyedSubscript:v8];
                  if ([v14 BOOLValue])
                  {
                    v18 = &unk_1F5BBB8D8;
                  }

                  else
                  {
                    v18 = &unk_1F5BBB8F0;
                  }

                  v19 = MEMORY[0x1E696AD98];
                  v20 = 40;
                  break;
                case ')':
                  v14 = [v4 objectForKeyedSubscript:v8];
                  if ([v14 BOOLValue])
                  {
                    v18 = &unk_1F5BBB8D8;
                  }

                  else
                  {
                    v18 = &unk_1F5BBB8F0;
                  }

                  v19 = MEMORY[0x1E696AD98];
                  v20 = 41;
                  break;
                default:
                  goto LABEL_64;
              }
            }

            else
            {
              if (v10 <= 5)
              {
                switch(v10)
                {
                  case 2:
                    v23 = MEMORY[0x1E696AD98];
                    v14 = [v4 objectForKeyedSubscript:v8];
                    v15 = [v23 numberWithUnsignedInteger:sub_1E0BED0BC(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 2;
                    break;
                  case 3:
                    v29 = MEMORY[0x1E696AD98];
                    v14 = [v4 objectForKeyedSubscript:v8];
                    v15 = [v29 numberWithInteger:sub_1E0BED36C(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 3;
                    break;
                  case 4:
                    v13 = MEMORY[0x1E696AD98];
                    v14 = [v4 objectForKeyedSubscript:v8];
                    v15 = [v13 numberWithInteger:sub_1E0BED4E8(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 4;
                    break;
                  default:
LABEL_64:
                    v14 = [v4 objectForKeyedSubscript:v8];
                    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
                    v30 = v6;
                    v31 = v14;
LABEL_58:
                    [v30 setObject:v31 forKeyedSubscript:v15];
LABEL_61:

                    goto LABEL_62;
                }

LABEL_60:
                v33 = [v16 numberWithInteger:v17];
                [v6 setObject:v15 forKeyedSubscript:v33];

                goto LABEL_61;
              }

              switch(v10)
              {
                case 6:
                  v14 = [v4 objectForKeyedSubscript:v8];
                  if ([v14 BOOLValue])
                  {
                    v18 = &unk_1F5BBB8D8;
                  }

                  else
                  {
                    v18 = &unk_1F5BBB8F0;
                  }

                  v19 = MEMORY[0x1E696AD98];
                  v20 = 6;
                  break;
                case 13:
                  v32 = MEMORY[0x1E696AD98];
                  v14 = [v4 objectForKeyedSubscript:v8];
                  v15 = [v32 numberWithInteger:sub_1E0BED598(v14)];
                  v16 = MEMORY[0x1E696AD98];
                  v17 = 13;
                  goto LABEL_60;
                case 27:
                  v14 = [v4 objectForKeyedSubscript:v8];
                  if ([v14 BOOLValue])
                  {
                    v18 = &unk_1F5BBB8D8;
                  }

                  else
                  {
                    v18 = &unk_1F5BBB8F0;
                  }

                  v19 = MEMORY[0x1E696AD98];
                  v20 = 27;
                  break;
                default:
                  goto LABEL_64;
              }
            }

            v15 = [v19 numberWithInteger:v20];
            v30 = v6;
            v31 = v18;
            goto LABEL_58;
          }
        }

LABEL_62:
        ++v7;
      }

      while (v7 != v43);
      v36 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      v43 = v36;
      if (!v36)
      {
LABEL_68:

        [(CWFNetworkProfile *)v5 setInternal:v6];
        break;
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)mergeWithNetworkProfile:(id)a3
{
  v4 = a3;
  v9 = [v4 OSSpecificAttributes];
  v5 = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v6 = [v5 mutableCopy];

  internal = self->_internal;
  v8 = [v4 internal];

  [(NSMutableDictionary *)internal addEntriesFromDictionary:v8];
  if (v9 && v6)
  {
    [v6 addEntriesFromDictionary:v9];
    [(CWFNetworkProfile *)self setOSSpecificAttributes:v6];
  }
}

- (void)setCoreWiFiSpecificAttributes:(id)a3
{
  v4 = a3;
  v11 = [(CWFNetworkProfile *)self __coreWiFiSpecificProperties];
  v5 = [[CWFNetworkProfile alloc] initWithExternalForm:v4];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = [(CWFNetworkProfile *)v5 __filteredNetworkProfileWithProperties:v6 OSSpecificKeys:v7];

  internal = self->_internal;
  v10 = [v8 internal];
  [(NSMutableDictionary *)internal addEntriesFromDictionary:v10];
}

- (id)changedPropertiesFromNetworkProfile:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = [(CWFNetworkProfile *)self externalForm];
  v5 = [[CWFNetworkProfile alloc] initWithExternalForm:v34];
  v35 = v4;
  v33 = [v4 externalForm];
  v6 = [[CWFNetworkProfile alloc] initWithExternalForm:v33];
  v41 = [MEMORY[0x1E695DFA8] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = [(CWFNetworkProfile *)v5 internal];
  v8 = [v7 allKeys];

  obj = v8;
  v45 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v45)
  {
    v44 = *v48;
    v36 = v6;
    v37 = v5;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [(CWFNetworkProfile *)v5 internal];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [(CWFNetworkProfile *)v6 internal];
        v14 = [v13 objectForKeyedSubscript:v10];
        v15 = v14;
        if (v12 == v14)
        {

          continue;
        }

        v46 = v11;
        v16 = [(CWFNetworkProfile *)v5 internal];
        v17 = [v16 objectForKeyedSubscript:v10];
        if (!v17)
        {
          goto LABEL_13;
        }

        v18 = v6;
        v43 = [(CWFNetworkProfile *)v6 internal];
        v19 = [v43 objectForKeyedSubscript:v10];
        if (!v19)
        {

LABEL_13:
LABEL_14:
          [v41 addObject:v10];
          continue;
        }

        v39 = v19;
        v38 = [(CWFNetworkProfile *)v5 internal];
        v20 = [v38 objectForKeyedSubscript:v10];
        v21 = [(CWFNetworkProfile *)v18 internal];
        v22 = [v21 objectForKeyedSubscript:v10];
        v40 = [v20 isEqual:v22];

        v5 = v37;
        v6 = v36;
        if ((v40 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v45 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v45);
  }

  v23 = MEMORY[0x1E695DFA8];
  v24 = [(CWFNetworkProfile *)v6 internal];
  v25 = [v24 allKeys];
  v26 = [v23 setWithArray:v25];

  v27 = MEMORY[0x1E695DFA8];
  v28 = [(CWFNetworkProfile *)v5 internal];
  v29 = [v28 allKeys];
  v30 = [v27 setWithArray:v29];
  [v26 minusSet:v30];

  [v41 unionSet:v26];
  v31 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)changedOSSpecificKeysFromNetworkProfile:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v34 = [(CWFNetworkProfile *)self externalForm];
  v33 = [[CWFNetworkProfile alloc] initWithExternalForm:v34];
  v6 = [(CWFNetworkProfile *)v33 OSSpecificAttributes];
  v35 = v4;
  v32 = [v4 externalForm];
  v31 = [[CWFNetworkProfile alloc] initWithExternalForm:v32];
  v7 = [(CWFNetworkProfile *)v31 OSSpecificAttributes];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v6 allKeys];
  v40 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v9 = *v42;
    v36 = v8;
    v37 = v7;
    v38 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v7 objectForKeyedSubscript:v11];
        v14 = v13;
        if (v12 == v13)
        {

          continue;
        }

        v15 = [v6 objectForKeyedSubscript:v11];
        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = v15;
        v17 = [v7 objectForKeyedSubscript:v11];
        if (!v17)
        {

          v9 = v38;
LABEL_13:

LABEL_14:
          [v5 addObject:v11];
          continue;
        }

        v18 = v17;
        v19 = [v6 objectForKeyedSubscript:v11];
        [v7 objectForKeyedSubscript:v11];
        v20 = v6;
        v22 = v21 = v5;
        v39 = [v19 isEqual:v22];

        v5 = v21;
        v6 = v20;
        v7 = v37;

        v8 = v36;
        v9 = v38;
        if ((v39 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v40 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }

  v23 = MEMORY[0x1E695DFA8];
  v24 = [v7 allKeys];
  v25 = [v23 setWithArray:v24];

  v26 = MEMORY[0x1E695DFA8];
  v27 = [v6 allKeys];
  v28 = [v26 setWithArray:v27];
  [v25 minusSet:v28];

  [v5 unionSet:v25];
  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setSSID:(id)a3
{
  [(NSMutableDictionary *)self->_internal setObject:a3 forKeyedSubscript:&unk_1F5BBB8D8];
  *&self->_useCachedIdentifier = 0;
  self->_useCachedShortSSID = 0;
}

- (void)setDisable6EMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB908];
}

- (BOOL)isAmbiguousNetworkName
{
  v2 = [(CWFNetworkProfile *)self networkName];
  v3 = sub_1E0BEE360(v2);

  return v3;
}

- (void)setSupportedSecurityTypes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB8F0];
}

- (void)setWEPSubtype:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB48];
}

- (void)setWAPISubtype:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB60];
}

- (unint64_t)weakestSupportedSecurityType
{
  v3 = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = [(CWFNetworkProfile *)self WAPISubtype];
  v5 = [(CWFNetworkProfile *)self WEPSubtype];

  return CWFWeakestSecurityType(v3, v4, v5);
}

- (void)setHiddenState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB90];
}

- (void)setPayloadIdentifier:(id)a3
{
  v4 = a3;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  if ([(CWFNetworkProfile *)self isAddReasonCarrierBundle]&& CWFIsPayloadIdentifierTelemetryApproved(v4))
  {
    [(CWFNetworkProfile *)self setPayloadIdentifierTelemetryApproved:1];
  }
}

- (void)setAddReason:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBC38];
}

- (BOOL)isSystemMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD28];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isSessionBased
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD40];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setLowDataMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBD58];
}

- (NSArray)innerAcceptedEAPTypes
{
  v2 = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [v2 objectForKeyedSubscript:@"InnerAcceptEAPTypes"];

  return v3;
}

- (BOOL)isTLSCertificateRequired
{
  v2 = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [v2 objectForKeyedSubscript:@"TLSCertificateIsRequired"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSArray)TLSTrustedServerNames
{
  v2 = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [v2 objectForKeyedSubscript:@"TLSTrustedServerNames"];

  return v3;
}

- (void)setOSSpecificValue:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && (+[CWFNetworkProfile supportedOSSpecificKeys](CWFNetworkProfile, "supportedOSSpecificKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, v9))
  {
    v10 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];

    if (v6 && !v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_internal setObject:v11 forKeyedSubscript:&unk_1F5BBB8C0];
    }

    v12 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];
    [v12 setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)OSSpecificValueForKey:(id)a3
{
  if (a3)
  {
    internal = self->_internal;
    v4 = a3;
    v5 = [(NSMutableDictionary *)internal objectForKeyedSubscript:&unk_1F5BBB8C0];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOSSpecificAttributes:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v24 = self;
    v25 = v4;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v27;
      v11 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [CWFNetworkProfile supportedOSSpecificKeys:v22];
          v15 = [v14 containsObject:v13];

          if ((v15 & 1) == 0)
          {
            if (!v9)
            {
              v9 = [MEMORY[0x1E695DF70] array];
            }

            [v9 addObject:v13];
            v16 = CWFGetOSLog();
            if (v16)
            {
              v17 = CWFGetOSLog();
            }

            else
            {
              v18 = v11;
              v17 = v11;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v30 = 136446978;
              v31 = "[CWFNetworkProfile setOSSpecificAttributes:]";
              v32 = 2082;
              v33 = "CWFNetworkProfile.m";
              v34 = 1024;
              v35 = 2525;
              v36 = 2112;
              v37 = v13;
              LODWORD(v23) = 38;
              v22 = &v30;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ([v9 count])
    {
      v5 = v25;
      v19 = [v25 mutableCopy];
      [v19 removeObjectsForKeys:v9];
    }

    else
    {
      v19 = 0;
      v5 = v25;
    }

    self = v24;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v5;
  }

  [(NSMutableDictionary *)self->_internal setObject:v20 forKeyedSubscript:&unk_1F5BBB8C0, v22, v23];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setNetworkGroupPriority:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBEC0];
}

- (void)setBSSList:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] < 0xB)
  {
    [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBEF0];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [v4 sortedArrayUsingDescriptors:v6];
    v8 = [v7 subarrayWithRange:{0, 10}];

    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    [(NSMutableDictionary *)self->_internal setObject:v9 forKeyedSubscript:&unk_1F5BBBEF0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBlueAtlasNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF20];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMovingAttribute:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF68];
}

- (void)setPublicAttribute:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF80];
}

- (int64_t)nearbyShareableStatus
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF98];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setNearbyShareableStatus:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF98];
}

- (BOOL)isAutojoinDisabledUntilFirstUserJoin
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBFC8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPasspointHomeOperatorNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBFF8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPasspointProvisionedNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC010];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setLastJoinedBySystemAtWeek:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB968];
}

- (void)setWas6GHzOnlyAtWeek:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB950];
}

- (id)__classDStorageSpecificPropertiesSet
{
  v2 = [MEMORY[0x1E695DFA8] set];
  if (v2)
  {
    for (i = 0; i != 106; ++i)
    {
      if (((i - 14) > 0x38 || ((1 << (i - 14)) & 0x14000010048C007) == 0) && ((i - 78) > 0x18 || ((1 << (i - 78)) & 0x1102871) == 0))
      {
        v4 = [MEMORY[0x1E696AD98] numberWithInteger:i];
        [v2 addObject:v4];
      }
    }
  }

  return v2;
}

- (id)filteredClassDStorageNetworkProfile
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(CWFNetworkProfile *)self __classDStorageSpecificPropertiesSet];
  if (!v3)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v30 = 136446722;
    v31 = "[CWFNetworkProfile filteredClassDStorageNetworkProfile]";
    v32 = 2082;
    v33 = "CWFNetworkProfile.m";
    v34 = 1024;
    v35 = 3112;
    goto LABEL_34;
  }

  v4 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v3];
  if (!v4)
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v30 = 136446722;
    v31 = "[CWFNetworkProfile filteredClassDStorageNetworkProfile]";
    v32 = 2082;
    v33 = "CWFNetworkProfile.m";
    v34 = 1024;
    v35 = 3118;
LABEL_34:
    _os_log_send_and_compose_impl();
LABEL_35:
    v10 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 BSSList];
  if (!v6)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v30 = 136446978;
      v31 = "[CWFNetworkProfile filteredClassDStorageNetworkProfile]";
      v32 = 2082;
      v33 = "CWFNetworkProfile.m";
      v34 = 1024;
      v35 = 3125;
      v36 = 2112;
      v37 = v5;
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    v10 = 0;
    v15 = v7;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v26;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v25 + 1) + 8 * i);
      if (v13)
      {
        v14 = [v13 filteredBSSForClassDStorage];
        if (v14)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x1E695DFA8] set];
          }

          [v10 addObject:v14];
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v9);

  if (v10)
  {
    v15 = [v10 copy];
    [v5 setBSSList:v15];
LABEL_20:
  }

  v16 = v5;

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isHighPopularity
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC088];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPotentiallyCaptive
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0A0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPotentiallyMoving
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0B8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isHighQuality
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0D0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isSuspicious
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0E8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isTCPGood
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC100];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isLowPopularity
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC118];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isLowQuality
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC130];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isProminentDisplay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC148];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)popularityScore
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC160];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setPopularityScore:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC160];
}

- (unint64_t)qualityScore
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC178];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setQualityScore:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC178];
}

- (unint64_t)totalNetworkUsage
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC190];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setTotalNetworkUsage:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC190];
}

- (int64_t)locationOfInterest
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC1D8];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setLocationOfInterest:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC1D8];
}

- (void)setNetworkOfInterestHomeState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBAA0];
}

- (void)setNetworkOfInterestWorkState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBAD0];
}

- (int64_t)ssidHarvestStatus
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC1F0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setSSIDHarvestStatus:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC1F0];
}

- (double)networkQualityResponsiveness
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC250];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setNetworkQualityResponsiveness:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC250];
}

- (int)lastDisconnectReason
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB9B0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (BOOL)is2GHzBssPresent
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB00];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPrivateMACAddressModeUserSetting:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB9F8];
}

- (void)setPrivateMACAddressModeConfigurationProfileSetting:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBA28];
}

- (void)setPrivateMACAddressEvaluationState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBA40];
}

- (int64_t)effectivePrivateMACModeWithSystemSetting:(int64_t)a3
{
  v5 = [(CWFNetworkProfile *)self privateMACAddressModeUserSetting];
  if (v5)
  {
    return v5;
  }

  v5 = [(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting];
  if (v5)
  {
    return v5;
  }

  if (a3)
  {
    return a3;
  }

  if ([(CWFNetworkProfile *)self privateMACAddressDisabledByEvaluation])
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel_defaultPrivateMACMode);
}

- (unint64_t)deploymentIssues
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC280];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setDeploymentIssues:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC280];
}

- (void)setBrokenBackhaulState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB18];
}

- (id)__descriptionForLowDataMode
{
  v2 = [(CWFNetworkProfile *)self lowDataMode];
  if (v2 > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E86E68C8[v2];
  }
}

- (id)__descriptionForHiddenState
{
  v2 = [(CWFNetworkProfile *)self hiddenState];
  v3 = @"?";
  if (v2 == 2)
  {
    v3 = @"no";
  }

  if (v2 == 1)
  {
    return @"yes";
  }

  else
  {
    return v3;
  }
}

- (id)__descriptionForMovingAttribute
{
  v2 = [(CWFNetworkProfile *)self movingAttribute];
  v3 = @"?";
  if (v2 == 1)
  {
    v3 = @"moving";
  }

  if (v2 == 2)
  {
    return @"stationary";
  }

  else
  {
    return v3;
  }
}

- (id)__descriptionForPublicAttribute
{
  v2 = [(CWFNetworkProfile *)self publicAttribute];
  v3 = @"?";
  if (v2 == 2)
  {
    v3 = @"private";
  }

  if (v2 == 1)
  {
    return @"public";
  }

  else
  {
    return v3;
  }
}

- (id)__descriptionForNearbyShareableStatus
{
  v2 = [(CWFNetworkProfile *)self nearbyShareableStatus];
  if ((v2 - 1) > 8)
  {
    return @"?";
  }

  else
  {
    return off_1E86E68E0[v2 - 1];
  }
}

- (id)__descriptionFor6EMode
{
  v2 = [(CWFNetworkProfile *)self disable6EMode];
  if (v2 >= 3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", v2];
  }

  else
  {
    v3 = off_1E86E6928[v2];
  }

  return v3;
}

- (id)__descriptionForBSSListWithLimit:(unint64_t)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
  v7 = [(CWFNetworkProfile *)self BSSList];
  v24[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  if ([v9 count])
  {
    [v5 appendString:@"bssList=["];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 count];
    v11 = a3;
    if (v10 <= a3)
    {
      v11 = [v9 count];
    }

    v12 = [v9 subarrayWithRange:{0, v11}];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v5 appendFormat:@"(%@), ", *(*(&v19 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    if ([v9 count] > a3)
    {
      [v5 appendString:{@"..., "}];
    }

    [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 2, 2}];
    [v5 appendString:{@"], "}];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)__descriptionForNOIHomeState
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];

  if (v4)
  {
    v5 = [(CWFNetworkProfile *)self networkOfInterestHomeState];
    v6 = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];
    v7 = sub_1E0BCC248(v6);
    v8 = v7;
    if ((v5 - 1) > 2)
    {
      v9 = @"HOME-UNKNOWN(%@)";
    }

    else
    {
      v9 = off_1E86E6940[v5 - 1];
    }

    [v3 appendFormat:v9, v7];
  }

  return v3;
}

- (id)__descriptionForNOIWorkState
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];

  if (v4)
  {
    v5 = [(CWFNetworkProfile *)self networkOfInterestWorkState];
    v6 = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];
    v7 = sub_1E0BCC248(v6);
    v8 = v7;
    v9 = @"WORK-UNKNOWN(%@)";
    if (v5 == 2)
    {
      v9 = @"NOT-WORK(%@)";
    }

    if (v5 == 1)
    {
      v10 = @"WORK(%@)";
    }

    else
    {
      v10 = v9;
    }

    [v3 appendFormat:v10, v7];
  }

  return v3;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFNetworkProfile *)self __basicDescription];
  [v3 appendString:v4];

  [v3 appendString:{@", "}];
  if ([(CWFNetworkProfile *)self isEAP]&& [(CWFNetworkProfile *)self isSystemMode])
  {
    [v3 appendString:{@"systemMode=yes, "}];
  }

  if ([(CWFNetworkProfile *)self transitionDisabledFlags])
  {
    v5 = sub_1E0BEE49C([(CWFNetworkProfile *)self transitionDisabledFlags]);
    [v3 appendFormat:@"transitionDisabledFlags=%@, ", v5];
  }

  if ([(CWFNetworkProfile *)self movingAttribute])
  {
    v6 = [(CWFNetworkProfile *)self __descriptionForMovingAttribute];
    [v3 appendFormat:@"moving=%@, ", v6];
  }

  if ([(CWFNetworkProfile *)self publicAttribute])
  {
    v7 = [(CWFNetworkProfile *)self __descriptionForPublicAttribute];
    [v3 appendFormat:@"public=%@, ", v7];
  }

  if ([(CWFNetworkProfile *)self nearbyShareableStatus])
  {
    v8 = [(CWFNetworkProfile *)self __descriptionForNearbyShareableStatus];
    [v3 appendFormat:@"nearbyShareStatus=%@, ", v8];
  }

  if (![(CWFNetworkProfile *)self isPrivacyProxyEnabled])
  {
    [v3 appendString:{@"privacyProxy=no, "}];
  }

  if ([(CWFNetworkProfile *)self isAutojoinDisabledUntilFirstUserJoin])
  {
    [v3 appendString:{@"disableAutojoinUntilFirstUserJoin=yes, "}];
  }

  v9 = [(CWFNetworkProfile *)self networkDisabledUntilDate];

  if (v9)
  {
    v10 = [(CWFNetworkProfile *)self networkDisabledUntilDate];
    v11 = sub_1E0BCC248(v10);
    [v3 appendFormat:@"networkDisabledUntilDate=%@, ", v11];
  }

  if ([(CWFNetworkProfile *)self isPasspointHomeOperatorNetwork])
  {
    [v3 appendString:{@"passpointHomeOperatorNetwork=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPasspointProvisionedNetwork])
  {
    [v3 appendString:{@"passpointProvisionedNetwork=yes, "}];
  }

  v12 = [(CWFNetworkProfile *)self passpointAccountName];

  if (v12)
  {
    v13 = [(CWFNetworkProfile *)self passpointAccountName];
    [v3 appendFormat:@"passpointAccountName=%@, ", v13];
  }

  v14 = [(CWFNetworkProfile *)self payloadIdentifier];

  if (v14)
  {
    v15 = [(CWFNetworkProfile *)self payloadIdentifier];
    [v3 appendFormat:@"payloadIdentifier=%@, ", v15];
  }

  if ([(CWFNetworkProfile *)self isHighPopularity])
  {
    [v3 appendString:{@"highPopularity=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isHighQuality])
  {
    [v3 appendString:{@"highQuality=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPotentiallyCaptive])
  {
    [v3 appendString:{@"potentiallyCaptive=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPotentiallyMoving])
  {
    [v3 appendString:{@"potentiallyMoving=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isSuspicious])
  {
    [v3 appendString:{@"suspicious=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isTCPGood])
  {
    [v3 appendString:{@"tcpGood=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isLowPopularity])
  {
    [v3 appendString:{@"lowPopularity=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isLowQuality])
  {
    [v3 appendString:{@"lowQuality=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isProminentDisplay])
  {
    [v3 appendString:{@"prominentDisplay=yes, "}];
  }

  if ([(CWFNetworkProfile *)self popularityScore])
  {
    [v3 appendFormat:@"popularityScore=%lu, ", -[CWFNetworkProfile popularityScore](self, "popularityScore")];
  }

  if ([(CWFNetworkProfile *)self qualityScore])
  {
    [v3 appendFormat:@"qualityScore=%lu, ", -[CWFNetworkProfile qualityScore](self, "qualityScore")];
  }

  if ([(CWFNetworkProfile *)self totalNetworkUsage])
  {
    [v3 appendFormat:@"totalNetworkUsage=%lu, ", -[CWFNetworkProfile totalNetworkUsage](self, "totalNetworkUsage")];
  }

  v16 = [(CWFNetworkProfile *)self expirationDate];

  if (v16)
  {
    v17 = [(CWFNetworkProfile *)self expirationDate];
    v18 = sub_1E0BCC248(v17);
    [v3 appendFormat:@"expirationDate=%@, ", v18];
  }

  v19 = [(CWFNetworkProfile *)self lastHomeForceFixDate];

  if (v19)
  {
    v20 = [(CWFNetworkProfile *)self lastHomeForceFixDate];
    v21 = sub_1E0BCC248(v20);
    [v3 appendFormat:@"lastHomeForceFixDate=%@, ", v21];
  }

  if ([(CWFNetworkProfile *)self locationOfInterest])
  {
    [v3 appendFormat:@"locationOfInterest=%lu, ", -[CWFNetworkProfile locationOfInterest](self, "locationOfInterest")];
  }

  if ([(CWFNetworkProfile *)self networkOfInterestHomeState])
  {
    [v3 appendString:{@"networkOfInterestHomeState=yes, "}];
  }

  if ([(CWFNetworkProfile *)self networkOfInterestWorkState])
  {
    [v3 appendString:{@"networkOfInterestWorkState=yes, "}];
  }

  if ([(CWFNetworkProfile *)self ssidHarvestStatus])
  {
    [v3 appendFormat:@"ssidHarvestStatus=%lu, ", -[CWFNetworkProfile ssidHarvestStatus](self, "ssidHarvestStatus")];
  }

  v22 = [(CWFNetworkProfile *)self walletIdentifier];

  if (v22)
  {
    v23 = [(CWFNetworkProfile *)self walletIdentifier];
    [v3 appendFormat:@"walletIdentifier=%@, ", v23];
  }

  v24 = [(CWFNetworkProfile *)self OTASystemInfoBeaconProbeList];

  if (v24)
  {
    v25 = [(CWFNetworkProfile *)self OTASystemInfoBeaconProbeList];
    [v3 appendFormat:@"OTASystemInfoBeaconProbeList=%@, ", v25];
  }

  v26 = [(CWFNetworkProfile *)self SIMIdentifiers];

  if (v26)
  {
    v27 = [(CWFNetworkProfile *)self SIMIdentifiers];
    [v3 appendFormat:@"SIMIdentifiers=%@, ", v27];
  }

  [(CWFNetworkProfile *)self networkQualityResponsiveness];
  if (v28 > 0.0)
  {
    [(CWFNetworkProfile *)self networkQualityResponsiveness];
    [v3 appendFormat:@"networkQualityResponsiveness=%f, ", v29];
  }

  v30 = [(CWFNetworkProfile *)self networkQualityDate];

  if (v30)
  {
    v31 = [(CWFNetworkProfile *)self networkQualityDate];
    v32 = sub_1E0BCC248(v31);
    [v3 appendFormat:@"networkQualityDate=%@, ", v32];
  }

  if ([(CWFNetworkProfile *)self isPublicAirPlayNetwork])
  {
    [v3 appendString:{@"publicAirPlayNetwork=yes, "}];
  }

  if ([(CWFNetworkProfile *)self is2GHzBssPresent])
  {
    [v3 appendString:{@"2GHBssPresent=yes, "}];
  }

  v33 = [(CWFNetworkProfile *)self __descriptionForBSSListWithLimit:-1];
  [v3 appendString:v33];

  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v34 = v3;

  return v3;
}

- (BOOL)isEqualToNetworkProfile:(id)a3
{
  v5 = a3;
  v6 = [(CWFNetworkProfile *)self SSID];
  v7 = [v5 SSID];
  if (v6 != v7)
  {
    v35 = [(CWFNetworkProfile *)self SSID];
    if (!v35)
    {
      v17 = 0;
      goto LABEL_32;
    }

    v8 = [v5 SSID];
    if (!v8)
    {
      v17 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v9 = [(CWFNetworkProfile *)self SSID];
    v10 = [v5 SSID];
    if (![v9 isEqual:v10])
    {
      v17 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v32 = v10;
    v33 = v9;
    v34 = v8;
  }

  v11 = [(CWFNetworkProfile *)self domainName];
  v12 = [v5 domainName];
  if (v11 != v12)
  {
    v13 = [(CWFNetworkProfile *)self domainName];
    if (v13)
    {
      v14 = v13;
      v15 = [v5 domainName];
      if (v15)
      {
        v3 = [(CWFNetworkProfile *)self domainName];
        v16 = [v5 domainName];
        if ([v3 isEqual:v16])
        {
          v28 = v16;
          v29 = v15;
          v30 = v14;
          goto LABEL_12;
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

LABEL_12:
  v18 = [(CWFNetworkProfile *)self internal];
  v19 = [v5 internal];
  v20 = v19;
  if (v18 == v19)
  {

    v17 = 1;
    if (v11 == v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v3;
    v21 = [(CWFNetworkProfile *)self internal];
    if (v21)
    {
      v22 = v21;
      v23 = [v5 internal];
      if (v23)
      {
        v27 = v23;
        v26 = [(CWFNetworkProfile *)self internal];
        v24 = [v5 internal];
        v17 = [v26 isEqual:v24];

        v23 = v27;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {

      v17 = 0;
    }

    v3 = v31;
    if (v11 == v12)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
LABEL_29:
  v9 = v33;
  v8 = v34;
  v10 = v32;
  if (v6 != v7)
  {
    goto LABEL_30;
  }

LABEL_32:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNetworkProfile *)self isEqualToNetworkProfile:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFNetworkProfile *)self SSID];
  v4 = [v3 hash];
  v5 = [(CWFNetworkProfile *)self domainName];
  v6 = [v5 hash] ^ v4;
  v7 = [(CWFNetworkProfile *)self internal];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFNetworkProfile allocWithZone:?]];
  v5 = v4;
  if (self->_internal)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_internal copyItems:1];
    [(CWFNetworkProfile *)v5 setInternal:v6];
  }

  else
  {
    [(CWFNetworkProfile *)v4 setInternal:0];
  }

  return v5;
}

- (CWFNetworkProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CWFNetworkProfile;
  v5 = [(CWFNetworkProfile *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_internal"];
    v16 = [v15 mutableCopy];
    internal = v5->_internal;
    v5->_internal = v16;
  }

  return v5;
}

- (BOOL)wasManuallyJoinedRecentlyInProximityOf:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(CWFNetworkProfile *)self BSSList];
  if (![v5 count])
  {
    goto LABEL_5;
  }

  v6 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = sub_1E0BF1C80(v7, 5, v8);

  if (!v9)
  {
    v10 = [(CWFNetworkProfile *)self BSSList];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0C2EBE4;
    v13[3] = &unk_1E86E6890;
    v14 = v4;
    v15 = &v16;
    [v10 enumerateObjectsUsingBlock:v13];

    v5 = v14;
LABEL_5:
  }

  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (BOOL)supportsPersonalHotspotFallbackUponBrokenBackhaul
{
  result = 0;
  if (![(CWFNetworkProfile *)self isAppBased]&& ![(CWFNetworkProfile *)self isCarPlayOnly]&& ![(CWFNetworkProfile *)self isPersonalHotspot])
  {
    if ([(CWFNetworkProfile *)self isCaptiveStateDetermined])
    {
      if (![(CWFNetworkProfile *)self wasCaptive]&& ![(CWFNetworkProfile *)self isCaptive]&& ![(CWFNetworkProfile *)self bypassCaptive])
      {
        v3 = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];

        if (!v3)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (id)filteredTombstoneNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(CWFNetworkProfile *)self __tombstoneSpecificProperties];
  v5 = [v3 setWithArray:v4];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (int64_t)compareReceivedFromDeviceFlags:(id)a3
{
  v4 = a3;
  v5 = [(CWFNetworkProfile *)self receivedFromDeviceFlags];
  v6 = [v4 receivedFromDeviceFlags];

  v7 = *&v6 & 0x80000;
  v8 = 1;
  if ((*&v6 & 0x20000) != 0)
  {
    v8 = -1;
  }

  if ((*&v6 & 0x20000) == (*&v5 & 0x20000))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = 1;
  if ((v6 & 0x4000) != 0)
  {
    v10 = -1;
  }

  if ((v6 & 0x4000) == (v5 & 0x4000))
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1;
  if (v7)
  {
    v12 = -1;
  }

  if (v7 == (*&v5 & 0x80000))
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

- (unint64_t)receivedFromDeviceFlags
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC2C8];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setReceivedFromDeviceFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC2C8];
}

- (NSDate)addedOrJoinedByUserAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(CWFNetworkProfile *)self addedAt];
  [(NSDate *)v5 timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [(NSDate *)v8 timeIntervalSinceReferenceDate];
  if (v9 > v4)
  {
    v9 = 0.0;
  }

  if (v7 <= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (CWFNetworkProfile)initWithCloudSyncExternalForm:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFNetworkProfile *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"SSID"];
    v7 = [v6 dataUsingEncoding:4];
    [(CWFNetworkProfile *)v5 setSSID:v7];

    v8 = [v4 objectForKeyedSubscript:@"isWEP"];
    v9 = [v8 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"isWPA"];
    v11 = [v10 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"isWPA2"];
    v13 = [v12 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"isWPA3"];
    v15 = [v14 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"isWAPI"];
    v17 = [v16 BOOLValue];

    v18 = v9;
    if (v17)
    {
      v18 = v9 | 2;
    }

    if (v11)
    {
      v18 |= 4uLL;
    }

    if (v13)
    {
      v18 |= 0x10uLL;
    }

    if (v15)
    {
      v19 = v18 | 0x40;
    }

    else
    {
      v19 = v18;
    }

    [(CWFNetworkProfile *)v5 setSupportedSecurityTypes:v19];
    [(CWFNetworkProfile *)v5 setWAPISubtype:v17];
    [(CWFNetworkProfile *)v5 setWEPSubtype:0];
    v20 = [v4 objectForKeyedSubscript:@"addedAt"];
    [(CWFNetworkProfile *)v5 setAddedAt:v20];

    v21 = [v4 objectForKeyedSubscript:@"addedByVersion"];
    [(CWFNetworkProfile *)v5 setAddedByVersion:v21];

    v22 = [v4 objectForKeyedSubscript:@"removedAt"];
    [(CWFNetworkProfile *)v5 setRemovedAt:v22];

    v23 = [v4 objectForKeyedSubscript:@"removedByVersion"];
    [(CWFNetworkProfile *)v5 setRemovedByVersion:v23];

    v24 = [v4 objectForKeyedSubscript:@"lowDataMode"];
    v25 = v24;
    if (v24)
    {
      if ([v24 BOOLValue])
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      [(CWFNetworkProfile *)v5 setLowDataMode:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"lastJoinedByUserAt"];
    [(CWFNetworkProfile *)v5 setLastJoinedByUserAt:v27];

    v28 = [v4 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];

    if (v28)
    {
      -[CWFNetworkProfile setLastJoinedBySystemAtWeek:](v5, "setLastJoinedBySystemAtWeek:", [v28 unsignedIntegerValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"isPrivacyProxyEnabled"];

    if (v29)
    {
      -[CWFNetworkProfile setPrivacyProxyEnabled:](v5, "setPrivacyProxyEnabled:", [v29 BOOLValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"isMoving"];

    if (v30)
    {
      if ([v30 BOOLValue])
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      [(CWFNetworkProfile *)v5 setMovingAttribute:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"isPublic"];

    if (v32)
    {
      if ([v32 BOOLValue])
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [(CWFNetworkProfile *)v5 setMovingAttribute:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];

    if (v34)
    {
      -[CWFNetworkProfile setWas6GHzOnlyAtWeek:](v5, "setWas6GHzOnlyAtWeek:", [v34 unsignedIntegerValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"seamlessSSIDList"];
    [(CWFNetworkProfile *)v5 setSeamlessSSIDList:v35];

    v36 = [v4 objectForKeyedSubscript:@"isCaptive"];

    if (v36 && sub_1E0BCE0D8())
    {
      sub_1E0BCE288();
      v41 = v37;
      v42[0] = v36;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      [(CWFNetworkProfile *)v5 setCaptiveProfile:v38];
    }
  }

  else
  {
    v36 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)cloudSyncExternalForm
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CWFNetworkProfile *)self networkName];
  [v3 setObject:v4 forKeyedSubscript:@"SSID"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWEP](self, "isWEP")}];
  [v3 setObject:v5 forKeyedSubscript:@"isWEP"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWAPI](self, "isWAPI")}];
  [v3 setObject:v6 forKeyedSubscript:@"isWAPI"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA](self, "isWPA")}];
  [v3 setObject:v7 forKeyedSubscript:@"isWPA"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA2](self, "isWPA2")}];
  [v3 setObject:v8 forKeyedSubscript:@"isWPA2"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA3](self, "isWPA3")}];
  [v3 setObject:v9 forKeyedSubscript:@"isWPA3"];

  v10 = [(CWFNetworkProfile *)self addedAt];
  [v3 setObject:v10 forKeyedSubscript:@"addedAt"];

  v11 = [(CWFNetworkProfile *)self addedByVersion];
  [v3 setObject:v11 forKeyedSubscript:@"addedByVersion"];

  v12 = [(CWFNetworkProfile *)self removedAt];
  [v3 setObject:v12 forKeyedSubscript:@"removedAt"];

  v13 = [(CWFNetworkProfile *)self removedByVersion];
  [v3 setObject:v13 forKeyedSubscript:@"removedByVersion"];

  v14 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [v3 setObject:v14 forKeyedSubscript:@"lastJoinedByUserAt"];

  if ([(CWFNetworkProfile *)self lastJoinedBySystemAtWeek])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFNetworkProfile lastJoinedBySystemAtWeek](self, "lastJoinedBySystemAtWeek")}];
    [v3 setObject:v15 forKeyedSubscript:@"lastJoinedBySystemAtWeek"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"lastJoinedBySystemAtWeek"];
  }

  v16 = [(CWFNetworkProfile *)self lowDataMode];
  v17 = MEMORY[0x1E695E110];
  v18 = MEMORY[0x1E695E118];
  if (v16)
  {
    if ([(CWFNetworkProfile *)self lowDataMode]== 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }
  }

  else
  {
    v19 = 0;
  }

  [v3 setObject:v19 forKeyedSubscript:@"lowDataMode"];
  v20 = [(CWFNetworkProfile *)self properties];
  if ([v20 containsObject:&unk_1F5BBBF08])
  {
    if ([(CWFNetworkProfile *)self isPrivacyProxyEnabled])
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }
  }

  else
  {
    v21 = 0;
  }

  [v3 setObject:v21 forKeyedSubscript:@"isPrivacyProxyEnabled"];

  if ([(CWFNetworkProfile *)self movingAttribute])
  {
    if ([(CWFNetworkProfile *)self movingAttribute]== 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = v17;
    }
  }

  else
  {
    v22 = 0;
  }

  [v3 setObject:v22 forKeyedSubscript:@"isMoving"];
  if ([(CWFNetworkProfile *)self publicAttribute])
  {
    if ([(CWFNetworkProfile *)self publicAttribute]== 1)
    {
      v23 = v18;
    }

    else
    {
      v23 = v17;
    }
  }

  else
  {
    v23 = 0;
  }

  [v3 setObject:v23 forKeyedSubscript:@"isPublic"];
  if ([(CWFNetworkProfile *)self was6GHzOnlyAtWeek])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFNetworkProfile was6GHzOnlyAtWeek](self, "was6GHzOnlyAtWeek")}];
    [v3 setObject:v24 forKeyedSubscript:@"was6GHzOnlyAtWeek"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"was6GHzOnlyAtWeek"];
  }

  v25 = [(CWFNetworkProfile *)self seamlessSSIDList];
  [v3 setObject:v25 forKeyedSubscript:@"seamlessSSIDList"];

  if ([(CWFNetworkProfile *)self isCaptiveStateDetermined])
  {
    if ([(CWFNetworkProfile *)self isCaptive])
    {
      v26 = v18;
    }

    else
    {
      v26 = v17;
    }

    [v3 setObject:v26 forKeyedSubscript:@"isCaptive"];
  }

  v27 = [v3 copy];

  return v27;
}

- (BOOL)isCloudSyncable
{
  if ([(CWFNetworkProfile *)self isOpen]|| [(CWFNetworkProfile *)self isOWE]|| [(CWFNetworkProfile *)self isEAP]|| [(CWFNetworkProfile *)self isAutoJoinDisabled]|| [(CWFNetworkProfile *)self hiddenState]== 1 || [(CWFNetworkProfile *)self isProfileBased]|| [(CWFNetworkProfile *)self isAppBased]|| [(CWFNetworkProfile *)self isCarPlayOnly])
  {
    return 0;
  }

  v3 = [(CWFNetworkProfile *)self expirationDate];
  if (v3 || ![(CWFNetworkProfile *)self isCaptiveStateDetermined]|| [(CWFNetworkProfile *)self isCaptive])
  {

    return 0;
  }

  return ![(CWFNetworkProfile *)self bypassCaptive];
}

- (BOOL)wasMoreRecentlyAdded
{
  v3 = [(CWFNetworkProfile *)self addedAt];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [(CWFNetworkProfile *)self removedAt];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v5 > v7;

  return v8;
}

- (void)mergeWithCloudNetworkProfile:(id)a3
{
  v73 = a3;
  v4 = [(CWFNetworkProfile *)self addedAt];
  v5 = [(CWFNetworkProfile *)v73 addedAt];
  v6 = [(CWFNetworkProfile *)self removedAt];
  v7 = [(CWFNetworkProfile *)v73 removedAt];
  v8 = [(CWFNetworkProfile *)self addedAt];
  v9 = [(CWFNetworkProfile *)v73 addedAt];
  v10 = [v8 laterDate:v9];
  [(CWFNetworkProfile *)self setAddedAt:v10];

  [v4 timeIntervalSinceReferenceDate];
  v12 = v11;
  [v5 timeIntervalSinceReferenceDate];
  v13 = v73;
  if (v12 > v14)
  {
    v13 = self;
  }

  v15 = [(CWFNetworkProfile *)v13 addedByVersion];
  [(CWFNetworkProfile *)self setAddedByVersion:v15];

  v16 = [(CWFNetworkProfile *)self removedAt];
  v17 = [(CWFNetworkProfile *)v73 removedAt];
  v18 = [v16 laterDate:v17];
  [(CWFNetworkProfile *)self setRemovedAt:v18];

  [v6 timeIntervalSinceReferenceDate];
  v20 = v19;
  [v7 timeIntervalSinceReferenceDate];
  v21 = v73;
  if (v20 > v22)
  {
    v21 = self;
  }

  v23 = [(CWFNetworkProfile *)v21 removedByVersion];
  [(CWFNetworkProfile *)self setRemovedByVersion:v23];

  v24 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  v25 = [(CWFNetworkProfile *)v73 lastJoinedByUserAt];
  v26 = [v24 laterDate:v25];
  [(CWFNetworkProfile *)self setLastJoinedByUserAt:v26];

  v27 = [(CWFNetworkProfile *)self lastJoinedBySystemAtWeek];
  v28 = v27 > [(CWFNetworkProfile *)v73 lastJoinedBySystemAtWeek];
  v29 = v73;
  if (v28)
  {
    v29 = self;
  }

  [(CWFNetworkProfile *)self setLastJoinedBySystemAtWeek:[(CWFNetworkProfile *)v29 lastJoinedBySystemAtWeek]];
  [v4 timeIntervalSinceReferenceDate];
  v31 = v30;
  [v5 timeIntervalSinceReferenceDate];
  v32 = v73;
  if (v31 > v33)
  {
    v32 = self;
  }

  [(CWFNetworkProfile *)self setSupportedSecurityTypes:[(CWFNetworkProfile *)v32 supportedSecurityTypes]];
  if ([(CWFNetworkProfile *)self lowDataMode]&& [(CWFNetworkProfile *)v73 lowDataMode])
  {
    [v4 timeIntervalSinceReferenceDate];
    v35 = v34;
    [v5 timeIntervalSinceReferenceDate];
    v36 = v73;
    if (v35 > v37)
    {
      v36 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self lowDataMode]== 0;
    v36 = v73;
    if (!v38)
    {
      v36 = self;
    }
  }

  [(CWFNetworkProfile *)self setLowDataMode:[(CWFNetworkProfile *)v36 lowDataMode]];
  v39 = [(CWFNetworkProfile *)self properties];
  if ([v39 containsObject:&unk_1F5BBBF08])
  {
    v40 = [(CWFNetworkProfile *)v73 properties];
    v41 = [v40 containsObject:&unk_1F5BBBF08];

    if (v41)
    {
      [v4 timeIntervalSinceReferenceDate];
      v43 = v42;
      [v5 timeIntervalSinceReferenceDate];
      v44 = v73;
      if (v43 > v45)
      {
        v44 = self;
      }

      [(CWFNetworkProfile *)self setPrivacyProxyEnabled:[(CWFNetworkProfile *)v44 isPrivacyProxyEnabled]];
      goto LABEL_25;
    }
  }

  else
  {
  }

  v46 = [(CWFNetworkProfile *)self properties];
  v38 = [v46 containsObject:&unk_1F5BBBF08] == 0;
  v47 = v73;
  if (!v38)
  {
    v47 = self;
  }

  [(CWFNetworkProfile *)self setPrivacyProxyEnabled:[(CWFNetworkProfile *)v47 isPrivacyProxyEnabled]];

LABEL_25:
  if ([(CWFNetworkProfile *)self publicAttribute]&& [(CWFNetworkProfile *)v73 publicAttribute])
  {
    [v4 timeIntervalSinceReferenceDate];
    v49 = v48;
    [v5 timeIntervalSinceReferenceDate];
    v50 = v73;
    if (v49 > v51)
    {
      v50 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self publicAttribute]== 0;
    v50 = v73;
    if (!v38)
    {
      v50 = self;
    }
  }

  [(CWFNetworkProfile *)self setPublicAttribute:[(CWFNetworkProfile *)v50 publicAttribute]];
  if ([(CWFNetworkProfile *)self movingAttribute]&& [(CWFNetworkProfile *)v73 movingAttribute])
  {
    [v4 timeIntervalSinceReferenceDate];
    v53 = v52;
    [v5 timeIntervalSinceReferenceDate];
    v54 = v73;
    if (v53 > v55)
    {
      v54 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self movingAttribute]== 0;
    v54 = v73;
    if (!v38)
    {
      v54 = self;
    }
  }

  [(CWFNetworkProfile *)self setMovingAttribute:[(CWFNetworkProfile *)v54 movingAttribute]];
  v56 = [(CWFNetworkProfile *)self was6GHzOnlyAtWeek];
  v28 = v56 > [(CWFNetworkProfile *)v73 was6GHzOnlyAtWeek];
  v57 = v73;
  if (v28)
  {
    v57 = self;
  }

  [(CWFNetworkProfile *)self setWas6GHzOnlyAtWeek:[(CWFNetworkProfile *)v57 was6GHzOnlyAtWeek]];
  v58 = [(CWFNetworkProfile *)self seamlessSSIDList];
  if (v58 && (v59 = v58, [(CWFNetworkProfile *)v73 seamlessSSIDList], v60 = objc_claimAutoreleasedReturnValue(), v60, v59, v60))
  {
    v61 = MEMORY[0x1E695DFA0];
    [v4 timeIntervalSinceReferenceDate];
    v63 = v62;
    [v5 timeIntervalSinceReferenceDate];
    v64 = v73;
    if (v63 > v65)
    {
      v64 = self;
    }

    v66 = [(CWFNetworkProfile *)v64 seamlessSSIDList];
    v67 = [v61 orderedSetWithArray:v66];

    v68 = [(CWFNetworkProfile *)self seamlessSSIDList];
    [v67 addObjectsFromArray:v68];

    v69 = [(CWFNetworkProfile *)v73 seamlessSSIDList];
    [v67 addObjectsFromArray:v69];

    v70 = [v67 array];
  }

  else
  {
    v67 = [(CWFNetworkProfile *)self seamlessSSIDList];
    v71 = v73;
    if (v67)
    {
      v71 = self;
    }

    v70 = [(CWFNetworkProfile *)v71 seamlessSSIDList];
  }

  v72 = v70;
  [(CWFNetworkProfile *)self setSeamlessSSIDList:v70];
}

- (id)filteredCloudNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(CWFNetworkProfile *)self __cloudNetworkSpecificProperties];
  v5 = [v3 setWithArray:v4];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (CWFNetworkProfile)initWithMigrationData:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(__s, 0, sizeof(__s));
  v5 = [(CWFNetworkProfile *)self init];
  if (!v5)
  {
    goto LABEL_22;
  }

  if ([v4 length] == 400)
  {
    [v4 getBytes:__s length:400];
    if (!memchr(__s, 0, 0x21uLL) || ([MEMORY[0x1E696AEC0] stringWithUTF8String:__s], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      NSLog(&cfstr_SsidIsEitherNo.isa);
      v6 = 0;
    }

    v7 = [v6 dataUsingEncoding:4];
    [(CWFNetworkProfile *)v5 setSSID:v7];

    if (BYTE1(v30))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [(CWFNetworkProfile *)v5 setHiddenState:v8];
    if (!memchr(v31, 0, 0x41uLL) || ([MEMORY[0x1E696AEC0] stringWithUTF8String:v31], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      NSLog(&cfstr_PasswordIsEith.isa);
      v9 = 0;
    }

    v10 = [(CWFNetworkProfile *)v5 SSID];
    sub_1E0BEE9FC(v10, 0, v9);

    if ((*(&v32 + 1) - 1) > 0xFF)
    {
      NSLog(&cfstr_InvalidPublick.isa, *(&v32 + 1));
      [(CWFNetworkProfile *)v5 setPublicKey:0];
    }

    else
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31[4] + 1 length:?];
      [(CWFNetworkProfile *)v5 setPublicKey:v11];
    }

    [(CWFNetworkProfile *)v5 setAutoJoinDisabled:(BYTE8(v33) & 1) == 0];
    [(CWFNetworkProfile *)v5 setSupportedSecurityTypes:[(CWFNetworkProfile *)v5 mapCWFMigrationSecurityTypeToCWFSecurityType:*(&v30 + 1)]];
    [(CWFNetworkProfile *)v5 setAddReason:20];
    v26 = 0;
    v13 = [(CWFNetworkProfile *)v5 mapPrivateMacToCWFPrivateMACMode:v33 setByUser:&v26];
    v14 = MEMORY[0x1E695DF90];
    v27[0] = @"PRIVATE_MAC_ADDRESS_TYPE";
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    v27[1] = @"PRIVATE_MAC_SET_BY_USER";
    v28[0] = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v26];
    v28[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v18 = [v14 dictionaryWithDictionary:v17];

    v19 = [(CWFNetworkProfile *)v5 OSSpecificAttributes];
    if (v19 && ([(CWFNetworkProfile *)v5 OSSpecificAttributes], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = [(CWFNetworkProfile *)v5 OSSpecificAttributes];
      v21 = [v20 mutableCopy];
      [(CWFNetworkProfile *)v5 setOSSpecificAttributes:v21];
    }

    else
    {
      v22 = [MEMORY[0x1E695DF90] dictionary];
      [(CWFNetworkProfile *)v5 setOSSpecificAttributes:v22];

      if (!v19)
      {
LABEL_21:

        v23 = [(NSMutableDictionary *)v5->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];
        [v23 setObject:v18 forKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];

LABEL_22:
        v12 = v5;
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  NSLog(&cfstr_DataSizeDoesNo.isa);
  v12 = 0;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)migrationData
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__dst = 0u;
  v18 = 0u;
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CWFNetworkProfile *)self SSID];
  v5 = [v3 initWithData:v4 encoding:4];

  if (v5)
  {
    strncpy(__dst, [v5 UTF8String], 0x20uLL);
    LOBYTE(v19) = 0;
  }

  BYTE1(v19) = [(CWFNetworkProfile *)self hiddenState]== 1;
  *(&v19 + 1) = [(CWFNetworkProfile *)self mapCWFSecurityTypeToCWFMigrationSecurityType:[(CWFNetworkProfile *)self supportedSecurityTypes]];
  v6 = [(CWFNetworkProfile *)self SSID];
  v16 = 0;
  CWFSecItemQueryPassword_0(v6, &v16);
  v7 = v16;

  if (v7)
  {
    strncpy(v20, [v7 UTF8String], 0x40uLL);
    LOBYTE(v20[4]) = 0;
  }

  [(CWFNetworkProfile *)self setPublicKey:0];
  v8 = [(CWFNetworkProfile *)self publicKey];
  if ([v8 length] >= 0x100)
  {
    *(&v21 + 1) = 256;
  }

  else
  {
    v9 = [(CWFNetworkProfile *)self publicKey];
    *(&v21 + 1) = [v9 length];
  }

  v10 = [(CWFNetworkProfile *)self publicKey];
  [v10 getBytes:&v20[4] + 1 length:*(&v21 + 1)];

  v11 = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v12 = [v11 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];

  if (v12)
  {
    *&v22 = [(CWFNetworkProfile *)self mapPrivateMACAddress:v12];
  }

  BYTE8(v22) = ![(CWFNetworkProfile *)self isAutoJoinDisabled];
  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:__dst length:400];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)mapCWFMigrationSecurityTypeToCWFSecurityType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81980[a3 - 1];
  }
}

- (int64_t)mapCWFSecurityTypeToCWFMigrationSecurityType:(unint64_t)a3
{
  if ([(CWFNetworkProfile *)self isOpen]&& [(CWFNetworkProfile *)self isOWE])
  {
    return 1;
  }

  if ([(CWFNetworkProfile *)self isWPA]&& [(CWFNetworkProfile *)self isWPA2]|| [(CWFNetworkProfile *)self isWPA2]&& [(CWFNetworkProfile *)self isWPA3])
  {
    return 3;
  }

  if (a3 > 15)
  {
    if (a3 > 255)
    {
      if (a3 == 512)
      {
        return 1;
      }

      if (a3 == 256)
      {
        return 5;
      }

      return 0;
    }

    if (a3 != 16)
    {
      if (a3 == 64)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  if (a3 == 1)
  {
    return 2;
  }

  if (a3 != 2)
  {
    if (a3 != 4)
    {
      return 0;
    }

    return 3;
  }

  return 6;
}

- (int64_t)mapPrivateMACAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS_TYPE"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"PRIVATE_MAC_SET_BY_USER"];

  v7 = [v6 BOOLValue];
  v8 = 4;
  if (v5 == 3)
  {
    v8 = 5;
  }

  v9 = 1;
  if (v5 == 3)
  {
    v9 = 2;
  }

  if (v5 == 2)
  {
    v8 = 6;
    v9 = 3;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (int64_t)mapPrivateMacToCWFPrivateMACMode:(int64_t)a3 setByUser:(BOOL *)a4
{
  if (a3 <= 6)
  {
    if (((1 << a3) & 0x12) != 0)
    {
      *a4 = a3 == 4;
      return 1;
    }

    if (((1 << a3) & 0x24) != 0)
    {
      *a4 = a3 == 5;
      return 3;
    }

    if (((1 << a3) & 0x48) != 0)
    {
      *a4 = a3 == 6;
      return 2;
    }
  }

  if (a3)
  {
    *a4 = 0;
    return 1;
  }

  *a4 = 1;
  if ([(CWFNetworkProfile *)self isOpen:v4])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID
{
  v2 = [(CWFNetworkProfile *)self SSID];
  if (v2)
  {
    v3 = [[CWFWiFiNetworkSharingNetworkID alloc] initWithSSID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filteredWiFiNetworkSharingNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(CWFNetworkProfile *)self __wifiNetworkSharingSpecificProperties];
  v5 = [v3 setWithArray:v4];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (id)_location
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CWFNetworkProfile *)self BSSList];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 location];

        if (v7)
        {
          v3 = [v6 location];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_isHomeNetwork
{
  if ([(CWFNetworkProfile *)self networkOfInterestHomeState]== 1 || [(CWFNetworkProfile *)self networkOfInterestHomeState]== 3)
  {
    return 1;
  }

  v4 = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v5 = [v4 objectForKeyedSubscript:@"NetworkOfInterestHomeState"];
  if ([v5 integerValue] == 1)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(CWFNetworkProfile *)self OSSpecificAttributes];
    v7 = [v6 objectForKeyedSubscript:@"NetworkAtLocationOfInterestType"];
    if ([v7 integerValue] == 2)
    {
      v3 = 1;
    }

    else
    {
      v8 = [(CWFNetworkProfile *)self OSSpecificAttributes];
      v9 = [v8 objectForKeyedSubscript:@"NetworkAtLocationOfInterestType"];
      v3 = [v9 integerValue] == 4;
    }
  }

  return v3;
}

- (unint64_t)CWFNetworkWarningFlagsFromNetworkProfile
{
  v3 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([v3 count] == 1)
  {
    v4 = [(CWFNetworkProfile *)self acceptedEAPTypes];
    v5 = [v4 containsObject:&unk_1F5BBD4C8];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ([(CWFNetworkProfile *)self isEAP]&& !(([(CWFNetworkProfile *)self addReason]!= 10) | v6 & 1))
  {
    v8 = [(CWFNetworkProfile *)self TLSTrustedServerNames];
    v9 = v8 == 0;

    v7 = v9 << 20;
  }

  else
  {
    v7 = 0;
  }

  if ([(CWFNetworkProfile *)self isStandalone6G])
  {
    v7 |= 0x80000uLL;
  }

  if ([(CWFNetworkProfile *)self isDNSHeuristicsFilteredNetwork])
  {
    v7 |= 0x400uLL;
  }

  v10 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([v10 containsObject:&unk_1F5BBD4E0])
  {
    goto LABEL_15;
  }

  v11 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([v11 containsObject:&unk_1F5BBD4F8])
  {

LABEL_15:
    goto LABEL_16;
  }

  v18 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  v19 = [v18 containsObject:&unk_1F5BBD510];

  if ((v19 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_25;
  }

LABEL_16:
  v12 = [(CWFNetworkProfile *)self EAPProfile];
  v13 = v12;
  if (!v12)
  {
LABEL_25:
    v14 = 0;
    goto LABEL_22;
  }

  v14 = [v12 objectForKey:@"EAPClientConfiguration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 objectForKey:@"EAPSIMAKAEncryptedIdentityEnabled"];
    if (v15)
    {
      v16 = v15;
      if (![v15 BOOLValue])
      {
        v7 |= 0x200uLL;
      }
    }
  }

LABEL_22:

  return v7;
}

@end