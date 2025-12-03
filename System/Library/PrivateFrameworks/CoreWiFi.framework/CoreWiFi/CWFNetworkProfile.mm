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
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNetworkProfile:(id)profile;
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
- (BOOL)wasManuallyJoinedRecentlyInProximityOf:(id)of;
- (BOOL)wasMoreRecentlyAdded;
- (BOOL)wasMoreRecentlyJoinedByUser;
- (BOOL)wasRecently6GHzOnlyOnAnyDevice;
- (CWFNetworkProfile)init;
- (CWFNetworkProfile)initWithCloudSyncExternalForm:(id)form;
- (CWFNetworkProfile)initWithCoder:(id)coder;
- (CWFNetworkProfile)initWithExternalForm:(id)form;
- (CWFNetworkProfile)initWithMigrationData:(id)data;
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
- (id)OSSpecificValueForKey:(id)key;
- (id)__basicDescription;
- (id)__classDStorageSpecificPropertiesSet;
- (id)__descriptionFor6EMode;
- (id)__descriptionForBSSListWithLimit:(unint64_t)limit;
- (id)__descriptionForCaptiveFlags;
- (id)__descriptionForHiddenState;
- (id)__descriptionForLowDataMode;
- (id)__descriptionForMovingAttribute;
- (id)__descriptionForNOIHomeState;
- (id)__descriptionForNOIWorkState;
- (id)__descriptionForNearbyShareableStatus;
- (id)__descriptionForPrivateMAC;
- (id)__descriptionForPublicAttribute;
- (id)__filteredNetworkProfileWithProperties:(id)properties OSSpecificKeys:(id)keys;
- (id)__keyForProperty:(int64_t)property;
- (id)_location;
- (id)changedOSSpecificKeysFromNetworkProfile:(id)profile;
- (id)changedPropertiesFromNetworkProfile:(id)profile;
- (id)cloudSyncExternalForm;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreWiFiSpecificAttributes;
- (id)deepCopy;
- (id)externalForm;
- (id)filteredClassDStorageNetworkProfile;
- (id)filteredCloudNetworkProfile;
- (id)filteredNearbySyncableNetworkProfile;
- (id)filteredTombstoneNetworkProfile;
- (id)filteredWiFiNetworkSharingNetworkProfile;
- (id)identifier;
- (id)matchingKnownBSS:(id)s;
- (id)migrationData;
- (int)lastDisconnectReason;
- (int)transitionDisabledFlags;
- (int64_t)WAPISubtype;
- (int64_t)WEPSubtype;
- (int64_t)__propertyForKey:(id)key;
- (int64_t)addReason;
- (int64_t)brokenBackhaulState;
- (int64_t)compareReceivedFromDeviceFlags:(id)flags;
- (int64_t)compareSupportedSecurityTypes:(id)types;
- (int64_t)compareUserPriority:(id)priority;
- (int64_t)defaultPrivateMACMode;
- (int64_t)disable6EMode;
- (int64_t)effectivePrivateMACModeWithSystemSetting:(int64_t)setting;
- (int64_t)hiddenState;
- (int64_t)locationOfInterest;
- (int64_t)lowDataMode;
- (int64_t)mapCWFSecurityTypeToCWFMigrationSecurityType:(unint64_t)type;
- (int64_t)mapPrivateMACAddress:(id)address;
- (int64_t)mapPrivateMacToCWFPrivateMACMode:(int64_t)mode setByUser:(BOOL *)user;
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
- (unint64_t)mapCWFMigrationSecurityTypeToCWFSecurityType:(int64_t)type;
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
- (void)mergeWithCloudNetworkProfile:(id)profile;
- (void)mergeWithNetworkProfile:(id)profile;
- (void)setAddReason:(int64_t)reason;
- (void)setBSSList:(id)list;
- (void)setBrokenBackhaulState:(int64_t)state;
- (void)setCoreWiFiSpecificAttributes:(id)attributes;
- (void)setDeploymentIssues:(unint64_t)issues;
- (void)setDisable6EMode:(int64_t)mode;
- (void)setHiddenState:(int64_t)state;
- (void)setLastJoinedBySystemAtWeek:(unint64_t)week;
- (void)setLocationOfInterest:(int64_t)interest;
- (void)setLowDataMode:(int64_t)mode;
- (void)setMovingAttribute:(int64_t)attribute;
- (void)setNearbyShareableStatus:(int64_t)status;
- (void)setNetworkGroupPriority:(unint64_t)priority;
- (void)setNetworkOfInterestHomeState:(int64_t)state;
- (void)setNetworkOfInterestWorkState:(int64_t)state;
- (void)setNetworkQualityResponsiveness:(double)responsiveness;
- (void)setOSSpecificAttributes:(id)attributes;
- (void)setOSSpecificValue:(id)value forKey:(id)key;
- (void)setPayloadIdentifier:(id)identifier;
- (void)setPopularityScore:(unint64_t)score;
- (void)setPrivateMACAddressEvaluationState:(int64_t)state;
- (void)setPrivateMACAddressModeConfigurationProfileSetting:(int64_t)setting;
- (void)setPrivateMACAddressModeUserSetting:(int64_t)setting;
- (void)setPublicAttribute:(int64_t)attribute;
- (void)setQualityScore:(unint64_t)score;
- (void)setReceivedFromDeviceFlags:(unint64_t)flags;
- (void)setSSID:(id)d;
- (void)setSSIDHarvestStatus:(int64_t)status;
- (void)setSupportedSecurityTypes:(unint64_t)types;
- (void)setTotalNetworkUsage:(unint64_t)usage;
- (void)setWAPISubtype:(int64_t)subtype;
- (void)setWEPSubtype:(int64_t)subtype;
- (void)setWas6GHzOnlyAtWeek:(unint64_t)week;
@end

@implementation CWFNetworkProfile

- (unint64_t)supportedSecurityTypes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8F0];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)addReason
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBC38];
  integerValue = [v2 integerValue];

  return integerValue;
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
  allKeys = [(NSMutableDictionary *)self->_internal allKeys];
  v4 = [v2 setWithArray:allKeys];

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
  domainName = [(CWFNetworkProfile *)self domainName];
  v3 = domainName != 0;

  return v3;
}

- (NSString)networkName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(CWFNetworkProfile *)selfCopy useCachedNetworkName])
  {
    sSID = [(CWFNetworkProfile *)selfCopy SSID];
    v4 = CWFHumanReadableStringFromData(sSID);
    [(CWFNetworkProfile *)selfCopy setCachedNetworkName:v4];

    [(CWFNetworkProfile *)selfCopy setUseCachedNetworkName:1];
  }

  cachedNetworkName = [(CWFNetworkProfile *)selfCopy cachedNetworkName];
  objc_sync_exit(selfCopy);

  return cachedNetworkName;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(CWFNetworkProfile *)selfCopy useCachedIdentifier])
  {
    if ([(CWFNetworkProfile *)selfCopy isPasspoint])
    {
      domainName = [(CWFNetworkProfile *)selfCopy domainName];
      if (!domainName)
      {
LABEL_11:

        [(CWFNetworkProfile *)selfCopy setUseCachedIdentifier:1];
        goto LABEL_12;
      }

      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifi.network.passpoint.%@", domainName];
      [(CWFNetworkProfile *)selfCopy setCachedIdentifier:v4];
    }

    else
    {
      domainName = [(CWFNetworkProfile *)selfCopy networkName];
      if (domainName)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifi.network.ssid.%@", domainName];
        [(CWFNetworkProfile *)selfCopy setCachedIdentifier:v4];
      }

      else
      {
        sSID = [(CWFNetworkProfile *)selfCopy SSID];
        v4 = sSID;
        if (sSID)
        {
          v6 = MEMORY[0x1E696AEC0];
          v7 = CWFHexadecimalStringFromData(sSID);
          v8 = [v6 stringWithFormat:@"wifi.network.ssid.%@", v7];
          [(CWFNetworkProfile *)selfCopy setCachedIdentifier:v8];
        }

        domainName = 0;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  cachedIdentifier = [(CWFNetworkProfile *)selfCopy cachedIdentifier];
  objc_sync_exit(selfCopy);

  return cachedIdentifier;
}

- (BOOL)isAutoJoinDisabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB78];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPersonalHotspot
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBCB0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCaptiveStateDetermined
{
  if (!sub_1E0BCE0D8())
  {
    return 0;
  }

  captiveProfile = [(CWFNetworkProfile *)self captiveProfile];
  sub_1E0BCE288();
  v5 = [captiveProfile objectForKeyedSubscript:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isCarPlay
{
  if ([(CWFNetworkProfile *)self isCarPlayNetwork])
  {
    return 1;
  }

  carplayUUID = [(CWFNetworkProfile *)self carplayUUID];
  v3 = carplayUUID != 0;

  return v3;
}

- (BOOL)isCarPlayNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE48];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)hiddenState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB90];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isPublicAirPlayNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF38];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)publicAttribute
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF80];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)movingAttribute
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF68];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isPrivacyProxyEnabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF08];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (int64_t)disable6EMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB908];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isStandalone6G
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD10];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasRecently6GHzOnlyOnAnyDevice
{
  was6GHzOnlyOnAnyDeviceAt = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
  if (was6GHzOnlyOnAnyDeviceAt)
  {
    lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
    [lastJoinedByUserAt timeIntervalSinceReferenceDate];
    v6 = v5;
    was6GHzOnlyOnAnyDeviceAt2 = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
    [was6GHzOnlyOnAnyDeviceAt2 timeIntervalSinceReferenceDate];
    if (v6 >= v8)
    {
      lastJoinedByUserAt2 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
      [lastJoinedByUserAt2 timeIntervalSinceReferenceDate];
      v12 = v11;
      was6GHzOnlyOnAnyDeviceAt3 = [(CWFNetworkProfile *)self was6GHzOnlyOnAnyDeviceAt];
      [was6GHzOnlyOnAnyDeviceAt3 timeIntervalSinceReferenceDate];
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
  was6GHzOnlyAt = [(CWFNetworkProfile *)self was6GHzOnlyAt];
  [was6GHzOnlyAt timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  was6GHzOnlyAtWeek = [(CWFNetworkProfile *)self was6GHzOnlyAtWeek];
  if (v4 >= (604800 * was6GHzOnlyAtWeek))
  {
    v9 = (604800 * was6GHzOnlyAtWeek);
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
      v13 = was6GHzOnlyAt;
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
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  was6GHzOnlyAt = [(CWFNetworkProfile *)self was6GHzOnlyAt];
  [was6GHzOnlyAt timeIntervalSinceReferenceDate];
  v7 = vcvtmd_u64_f64(v6 / 86400.0 / 7.0);

  if (unsignedIntegerValue <= v7)
  {
    return v7;
  }

  else
  {
    return unsignedIntegerValue;
  }
}

- (NSDate)lastJoinedAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  lastJoinedBySystemAt = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [(NSDate *)lastJoinedBySystemAt timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [(NSDate *)lastJoinedByUserAt timeIntervalSinceReferenceDate];
  if (v9 > v4)
  {
    v9 = 0.0;
  }

  if (v7 <= v9)
  {
    v10 = lastJoinedByUserAt;
  }

  else
  {
    v10 = lastJoinedBySystemAt;
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

  acceptedEAPTypes = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([acceptedEAPTypes containsObject:&unk_1F5BBBCC8])
  {
    v3 = 1;
  }

  else
  {
    acceptedEAPTypes2 = [(CWFNetworkProfile *)self acceptedEAPTypes];
    v3 = [acceptedEAPTypes2 containsObject:&unk_1F5BBBCE0];
  }

  return v3;
}

- (BOOL)isCaptive
{
  v3 = sub_1E0BCE0D8();
  if (v3)
  {
    captiveProfile = [(CWFNetworkProfile *)self captiveProfile];
    sub_1E0BCE288();
    v6 = [captiveProfile objectForKeyedSubscript:v5];
    bOOLValue = [v6 BOOLValue];

    LOBYTE(v3) = bOOLValue;
  }

  return v3;
}

- (NSArray)acceptedEAPTypes
{
  eAPProfile = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [eAPProfile objectForKeyedSubscript:@"AcceptEAPTypes"];

  return v3;
}

- (id)__basicDescription
{
  string = [MEMORY[0x1E696AD60] string];
  networkName = [(CWFNetworkProfile *)self networkName];
  redactedForWiFi = [networkName redactedForWiFi];

  if (([redactedForWiFi hasPrefix:@" "] & 1) != 0 || objc_msgSend(redactedForWiFi, "hasSuffix:", @" "))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", redactedForWiFi];

    redactedForWiFi = v6;
  }

  [string appendFormat:@"%@ - ", redactedForWiFi];
  sSID = [(CWFNetworkProfile *)self SSID];
  v8 = CWFHexadecimalStringFromData(sSID);
  redactedForWiFi2 = [v8 redactedForWiFi];
  [string appendFormat:@"ssid=%@ (%lu), ", redactedForWiFi2, -[CWFNetworkProfile shortSSID](self, "shortSSID")];

  v10 = sub_1E0BD331C([(CWFNetworkProfile *)self effectiveSupportedSecurityTypes], [(CWFNetworkProfile *)self WEPSubtype], [(CWFNetworkProfile *)self WAPISubtype]);
  [string appendFormat:@"security=%@, ", v10];

  __descriptionForPrivateMAC = [(CWFNetworkProfile *)self __descriptionForPrivateMAC];
  [string appendFormat:@"privateMAC=[%@], ", __descriptionForPrivateMAC];

  if ([(CWFNetworkProfile *)self isPasspoint])
  {
    domainName = [(CWFNetworkProfile *)self domainName];
    displayedOperatorName = [(CWFNetworkProfile *)self displayedOperatorName];
    isServiceProviderRoamingEnabled = [(CWFNetworkProfile *)self isServiceProviderRoamingEnabled];
    v15 = "no";
    if (isServiceProviderRoamingEnabled)
    {
      v15 = "yes";
    }

    [string appendFormat:@"hs20=[domain=%@, display=%@, sproam=%s], ", domainName, displayedOperatorName, v15];
  }

  if ([(CWFNetworkProfile *)self isAddReasonCarrierBundle])
  {
    payloadIdentifier = [(CWFNetworkProfile *)self payloadIdentifier];
    redactedForWiFi3 = [payloadIdentifier redactedForWiFi];
    [string appendFormat:@"carrierPayloadIdentifier=%@, ", redactedForWiFi3];
  }

  if ([(CWFNetworkProfile *)self isAutoJoinDisabled])
  {
    [string appendString:{@"disabled=yes, "}];
  }

  if ([(CWFNetworkProfile *)self hiddenState]== 1)
  {
    [string appendString:{@"hidden=yes, "}];
  }

  __descriptionForCaptiveFlags = [(CWFNetworkProfile *)self __descriptionForCaptiveFlags];
  captiveWebsheetLoginDate = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];
  v20 = sub_1E0BCC248(captiveWebsheetLoginDate);
  [string appendFormat:@"captive=[state=%@, login=%@], ", __descriptionForCaptiveFlags, v20];

  v21 = sub_1E0BD3BE8([(CWFNetworkProfile *)self brokenBackhaulState]);
  brokenBackhaulStateUpdatedAt = [(CWFNetworkProfile *)self brokenBackhaulStateUpdatedAt];
  v23 = sub_1E0BCC248(brokenBackhaulStateUpdatedAt);
  [string appendFormat:@"bbh=[%@ (%@)], ", v21, v23];

  if ([(CWFNetworkProfile *)self isPersonalHotspot])
  {
    [string appendString:{@"ph=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isCarPlay])
  {
    [string appendString:{@"carplay=yes, "}];
  }

  if ([(CWFNetworkProfile *)self lowDataMode]== 1)
  {
    [string appendString:{@"lowDataMode=on, "}];
  }

  if ([(CWFNetworkProfile *)self isStandalone6G])
  {
    [string appendString:{@"6g-split=yes, "}];
  }

  if ([(CWFNetworkProfile *)self disable6EMode]== 2)
  {
    disable6EModeTimestamp = [(CWFNetworkProfile *)self disable6EModeTimestamp];
    v25 = sub_1E0BCC248(disable6EModeTimestamp);
    [string appendFormat:@"6e-mode=[off (%@)], ", v25];
  }

  if ([(CWFNetworkProfile *)self wasRecently6GHzOnlyOnAnyDevice])
  {
    was6GHzOnlyAt = [(CWFNetworkProfile *)self was6GHzOnlyAt];
    [string appendFormat:@"6g-only=[yes, (%@)], ", was6GHzOnlyAt];
  }

  lastJoinedAt = [(CWFNetworkProfile *)self lastJoinedAt];

  if (lastJoinedAt)
  {
    lastJoinedAt2 = [(CWFNetworkProfile *)self lastJoinedAt];
    v29 = sub_1E0BCC248(lastJoinedAt2);
    wasMoreRecentlyJoinedByUser = [(CWFNetworkProfile *)self wasMoreRecentlyJoinedByUser];
    v31 = "auto";
    if (wasMoreRecentlyJoinedByUser)
    {
      v31 = "user";
    }

    [string appendFormat:@"assoc=%@ (%s), ", v29, v31];
  }

  lastDisconnectTimestamp = [(CWFNetworkProfile *)self lastDisconnectTimestamp];

  if (lastDisconnectTimestamp)
  {
    lastDisconnectTimestamp2 = [(CWFNetworkProfile *)self lastDisconnectTimestamp];
    v34 = sub_1E0BCC248(lastDisconnectTimestamp2);
    [string appendFormat:@"disassoc=[%@ (%d)], ", v34, -[CWFNetworkProfile lastDisconnectReason](self, "lastDisconnectReason")];
  }

  if ([(CWFNetworkProfile *)self isPublicAirPlayNetwork])
  {
    [string appendString:{@"publicAirPlayNetwork=yes, "}];
  }

  wasHiddenBefore = [(CWFNetworkProfile *)self wasHiddenBefore];

  if (wasHiddenBefore)
  {
    wasHiddenBefore2 = [(CWFNetworkProfile *)self wasHiddenBefore];
    v37 = sub_1E0BCC248(wasHiddenBefore2);
    [string appendFormat:@"wasHiddenBefore=%@, ", v37];
  }

  addedAt = [(CWFNetworkProfile *)self addedAt];

  if (addedAt)
  {
    addedAt2 = [(CWFNetworkProfile *)self addedAt];
    v40 = sub_1E0BCC248(addedAt2);
    v41 = sub_1E0BD3F78([(CWFNetworkProfile *)self addReason]);
    addedByVersion = [(CWFNetworkProfile *)self addedByVersion];
    [string appendFormat:@"addedAt=[%@ (reason=%@, vers=%@)], ", v40, v41, addedByVersion];
  }

  removedAt = [(CWFNetworkProfile *)self removedAt];

  if (removedAt)
  {
    removedAt2 = [(CWFNetworkProfile *)self removedAt];
    v45 = sub_1E0BCC248(removedAt2);
    removedByVersion = [(CWFNetworkProfile *)self removedByVersion];
    [string appendFormat:@"removedAt=[%@ (vers=%@)], ", v45, removedByVersion];
  }

  receivedFromDeviceAt = [(CWFNetworkProfile *)self receivedFromDeviceAt];

  if (receivedFromDeviceAt)
  {
    receivedFromDeviceAt2 = [(CWFNetworkProfile *)self receivedFromDeviceAt];
    v49 = sub_1E0BCC248(receivedFromDeviceAt2);
    receivedFromDeviceID = [(CWFNetworkProfile *)self receivedFromDeviceID];
    redactedForWiFi4 = [receivedFromDeviceID redactedForWiFi];
    receivedFromDeviceName = [(CWFNetworkProfile *)self receivedFromDeviceName];
    redactedForWiFi5 = [receivedFromDeviceName redactedForWiFi];
    [string appendFormat:@"receivedFromDeviceAt=[%@ (id=%@, name=%@, flags=0x%llx)], ", v49, redactedForWiFi4, redactedForWiFi5, -[CWFNetworkProfile receivedFromDeviceFlags](self, "receivedFromDeviceFlags")];
  }

  if ([(CWFNetworkProfile *)self allowedBeforeFirstUnlock])
  {
    [string appendString:{@"allowedBeforeFirstUnlock=yes, "}];
  }

  networkOfInterestHomeStateUpdatedAt = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];
  if (networkOfInterestHomeStateUpdatedAt)
  {
  }

  else
  {
    networkOfInterestWorkStateUpdatedAt = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];

    if (!networkOfInterestWorkStateUpdatedAt)
    {
      goto LABEL_48;
    }
  }

  __descriptionForNOIHomeState = [(CWFNetworkProfile *)self __descriptionForNOIHomeState];
  __descriptionForNOIWorkState = [(CWFNetworkProfile *)self __descriptionForNOIWorkState];
  [string appendFormat:@"NOI=[%@ %@], ", __descriptionForNOIHomeState, __descriptionForNOIWorkState];

LABEL_48:
  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (unint64_t)shortSSID
{
  if (![(CWFNetworkProfile *)self useCachedShortSSID])
  {
    sSID = [(CWFNetworkProfile *)self SSID];
    if (sSID)
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
  string = [MEMORY[0x1E696AD60] string];
  __basicDescription = [(CWFNetworkProfile *)self __basicDescription];
  [string appendString:__basicDescription];

  [string appendString:{@", "}];
  v5 = [(CWFNetworkProfile *)self __descriptionForBSSListWithLimit:3];
  [string appendString:v5];

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (NSDictionary)OSSpecificAttributes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];
  v3 = [v2 copy];

  return v3;
}

- (id)coreWiFiSpecificAttributes
{
  __coreWiFiSpecificProperties = [(CWFNetworkProfile *)self __coreWiFiSpecificProperties];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:__coreWiFiSpecificProperties];
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(CWFNetworkProfile *)self __filteredNetworkProfileWithProperties:v4 OSSpecificKeys:v5];

  externalForm = [v6 externalForm];

  return externalForm;
}

- (id)externalForm
{
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  allKeys = [(NSMutableDictionary *)self->_internal allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E695E110];
    v8 = MEMORY[0x1E695E118];
    v38 = *v44;
    v34 = allKeys;
    v35 = dictionary;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = -[CWFNetworkProfile __keyForProperty:](self, "__keyForProperty:", [v10 integerValue]);
        integerValue = [v10 integerValue];
        if (v11)
        {
          switch(integerValue)
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
              integerValue2 = [v14 integerValue];

              if (integerValue2)
              {
                if (integerValue2 == 1)
                {
                  v16 = v8;
                }

                else
                {
                  v16 = v7;
                }

                [dictionary setObject:v16 forKeyedSubscript:v11];
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
                array = 0;
                v26 = *v40;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v40 != v26)
                    {
                      objc_enumerationMutation(v22);
                    }

                    externalForm = [*(*(&v39 + 1) + 8 * i) externalForm];
                    if (externalForm)
                    {
                      if (!array)
                      {
                        array = [MEMORY[0x1E695DF70] array];
                      }

                      [array addObject:externalForm];
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v39 objects:v48 count:16];
                }

                while (v24);
              }

              else
              {
                array = 0;
              }

              v29 = [array copy];
              dictionary = v35;
              [v35 setObject:v29 forKeyedSubscript:v11];

              allKeys = v34;
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
              [dictionary setObject:v17 forKeyedSubscript:v11];

              break;
            default:
              v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v10];
LABEL_13:
              [dictionary setObject:v13 forKeyedSubscript:v11];
              break;
          }
        }

LABEL_15:

        ++v9;
      }

      while (v9 != v6);
      v30 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
      v6 = v30;
    }

    while (v30);
  }

  v31 = [dictionary copy];
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)__descriptionForCaptiveFlags
{
  bypassCaptive = [(CWFNetworkProfile *)self bypassCaptive];
  if (![(CWFNetworkProfile *)self isCaptiveStateDetermined])
  {
    v4 = @"?";
    v5 = @"? (bypass)";
LABEL_5:
    if (bypassCaptive)
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

  wasCaptive = [(CWFNetworkProfile *)self wasCaptive];
  v8 = @"no";
  if (bypassCaptive)
  {
    v8 = @"no (bypass)";
  }

  v9 = @"was (bypass)";
  if (!bypassCaptive)
  {
    v9 = @"was";
  }

  if (wasCaptive)
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

  captiveProfile = [(CWFNetworkProfile *)self captiveProfile];
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
    v6 = [captiveProfile objectForKeyedSubscript:*v4];
    bOOLValue = [v6 BOOLValue];

    return bOOLValue;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSCaptiveBypassProperty(void)"];
  [currentHandler handleFailureInFunction:v10 file:@"CWFNetworkProfile.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (int64_t)privateMACAddressModeUserSetting
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB9F8];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)privateMACAddressModeConfigurationProfileSetting
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBA28];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)privateMACAddressEvaluationState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBA40];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)effectiveSupportedSecurityTypes
{
  v13 = *MEMORY[0x1E69E9840];
  supportedSecurityTypes = [(CWFNetworkProfile *)self supportedSecurityTypes];
  if (supportedSecurityTypes == 16)
  {
    v4 = 80;
  }

  else
  {
    v4 = supportedSecurityTypes;
  }

  if (v4 == 512)
  {
    v5 = 768;
  }

  else
  {
    v5 = v4;
  }

  transitionDisabledFlags = [(CWFNetworkProfile *)self transitionDisabledFlags];
  if (v5 & 0x50) != 0 && (transitionDisabledFlags)
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
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (int64_t)WEPSubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB48];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)WAPISubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB60];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)__descriptionForPrivateMAC
{
  string = [MEMORY[0x1E696AD60] string];
  cachedPrivateMACAddress = [(CWFNetworkProfile *)self cachedPrivateMACAddress];
  redactedForWiFi = [cachedPrivateMACAddress redactedForWiFi];
  cachedPrivateMACAddressUpdatedAt = [(CWFNetworkProfile *)self cachedPrivateMACAddressUpdatedAt];
  v7 = sub_1E0BCC248(cachedPrivateMACAddressUpdatedAt);
  [string appendFormat:@"%@ (%@), ", redactedForWiFi, v7];

  if ([(CWFNetworkProfile *)self privateMACAddressModeUserSetting])
  {
    v8 = sub_1E0BEF2F4([(CWFNetworkProfile *)self privateMACAddressModeUserSetting]);
    privateMACAddressModeUserSettingUpdatedAt = [(CWFNetworkProfile *)self privateMACAddressModeUserSettingUpdatedAt];
    v10 = sub_1E0BCC248(privateMACAddressModeUserSettingUpdatedAt);
    [string appendFormat:@"user=%@ (%@), ", v8, v10];
  }

  if ([(CWFNetworkProfile *)self privateMACAddressEvaluationState])
  {
    v11 = sub_1E0BEF284([(CWFNetworkProfile *)self privateMACAddressEvaluationState]);
    privateMACAddressEvaluatedAt = [(CWFNetworkProfile *)self privateMACAddressEvaluatedAt];
    v13 = sub_1E0BCC248(privateMACAddressEvaluatedAt);
    [string appendFormat:@"eval=%@ (%@), ", v11, v13];
  }

  if ([(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting])
  {
    v14 = sub_1E0BEF2F4([(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting]);
    [string appendFormat:@"prof=%@, ", v14];
  }

  cachedNetworkID = [(CWFNetworkProfile *)self cachedNetworkID];

  if (cachedNetworkID)
  {
    cachedNetworkID2 = [(CWFNetworkProfile *)self cachedNetworkID];
    [string appendFormat:@"netID=%@, ", cachedNetworkID2];
  }

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (BOOL)wasCaptive
{
  if (!sub_1E0BCE0D8())
  {
    return 0;
  }

  captiveProfile = [(CWFNetworkProfile *)self captiveProfile];
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
    v6 = [captiveProfile objectForKeyedSubscript:*v4];
    bOOLValue = [v6 BOOLValue];

    return bOOLValue;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSNetworkWasCaptiveProperty(void)"];
  [currentHandler handleFailureInFunction:v10 file:@"CWFNetworkProfile.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)isPasswordSharingDisabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBBD8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDate)captiveWebsheetLoginDate
{
  if (sub_1E0BCE0D8())
  {
    captiveProfile = [(CWFNetworkProfile *)self captiveProfile];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSCaptiveNetworkWebSheetLoginDateProperty(void)"];
      [currentHandler handleFailureInFunction:v9 file:@"CWFNetworkProfile.m" lineNumber:41 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v6 = [captiveProfile objectForKeyedSubscript:*v4];
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)lowDataMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD58];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isServiceProviderRoamingEnabled
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE00];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)networkGroupPriority
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBEC0];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isDNSHeuristicsFilteredNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC058];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowedBeforeFirstUnlock
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBE60];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPayloadIdentifierTelemetryApproved
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBC08];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)networkOfInterestWorkState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBAD0];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)networkOfInterestHomeState
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBAA0];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)wasMoreRecentlyJoinedByUser
{
  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [lastJoinedByUserAt timeIntervalSinceReferenceDate];
  v5 = v4;
  lastJoinedBySystemAt = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [lastJoinedBySystemAt timeIntervalSinceReferenceDate];
  v8 = v5 > v7;

  return v8;
}

- (BOOL)isProfileBased
{
  payloadUUID = [(CWFNetworkProfile *)self payloadUUID];
  v3 = payloadUUID != 0;

  return v3;
}

- (NSDate)lastJoinedOnAnyDeviceAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  lastJoinedAt = [(CWFNetworkProfile *)self lastJoinedAt];
  [lastJoinedAt timeIntervalSinceReferenceDate];
  v7 = v6;
  lastDisconnectTimestamp = [(CWFNetworkProfile *)self lastDisconnectTimestamp];
  [lastDisconnectTimestamp timeIntervalSinceReferenceDate];
  if (v7 <= v4 && v9 <= v4)
  {
    v11 = v9;
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v12 = lastDisconnectTimestamp;

      lastJoinedAt = v12;
    }
  }

  else
  {
    v11 = 0.0;
  }

  lastJoinedBySystemAtWeek = [(CWFNetworkProfile *)self lastJoinedBySystemAtWeek];
  if (v4 >= (604800 * lastJoinedBySystemAtWeek))
  {
    v14 = (604800 * lastJoinedBySystemAtWeek);
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
      v18 = lastJoinedAt;
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
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  lastJoinedBySystemAt = [(CWFNetworkProfile *)self lastJoinedBySystemAt];
  [lastJoinedBySystemAt timeIntervalSinceReferenceDate];
  v7 = vcvtmd_u64_f64(v6 / 86400.0 / 7.0);

  if (unsignedIntegerValue <= v7)
  {
    return v7;
  }

  else
  {
    return unsignedIntegerValue;
  }
}

- (unint64_t)strongestSupportedSecurityType
{
  supportedSecurityTypes = [(CWFNetworkProfile *)self supportedSecurityTypes];
  wAPISubtype = [(CWFNetworkProfile *)self WAPISubtype];
  wEPSubtype = [(CWFNetworkProfile *)self WEPSubtype];

  return CWFStrongestSecurityType(supportedSecurityTypes, wAPISubtype, wEPSubtype);
}

- (id)filteredNearbySyncableNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  __nearbySyncSpecificProperties = [(CWFNetworkProfile *)self __nearbySyncSpecificProperties];
  v5 = [v3 setWithArray:__nearbySyncSpecificProperties];
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
        captiveWebsheetLoginDate = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];

        if (!captiveWebsheetLoginDate)
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
  supportedSecurityTypes = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = supportedSecurityTypes;
  if ((supportedSecurityTypes & 1) == 0)
  {
    if ((supportedSecurityTypes & 8) != 0)
    {
      return 1;
    }

    return (v4 & 0x20) != 0 || v4 < 0;
  }

  wEPSubtype = [(CWFNetworkProfile *)self WEPSubtype];
  result = 1;
  if ((v4 & 8) == 0 && wEPSubtype != 5)
  {
    return (v4 & 0x20) != 0 || v4 < 0;
  }

  return result;
}

- (BOOL)isAppBased
{
  bundleID = [(CWFNetworkProfile *)self bundleID];
  v3 = bundleID != 0;

  return v3;
}

- (BOOL)isCarPlayOnly
{
  if (![(CWFNetworkProfile *)self isCarPlay]|| [(CWFNetworkProfile *)self isProfileBased]|| [(CWFNetworkProfile *)self isPasspoint])
  {
    return 0;
  }

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  v3 = lastJoinedByUserAt == 0;

  return v3;
}

- (BOOL)isPSK
{
  supportedSecurityTypes = [(CWFNetworkProfile *)self supportedSecurityTypes];
  v4 = supportedSecurityTypes;
  if ((supportedSecurityTypes & 1) == 0)
  {
    if ((supportedSecurityTypes & 2) != 0)
    {
      return 1;
    }

    return (v4 & 0x14) != 0 || (v4 & 0x40) != 0;
  }

  wEPSubtype = [(CWFNetworkProfile *)self WEPSubtype];
  result = 1;
  if ((v4 & 2) == 0 && wEPSubtype == 5)
  {
    return (v4 & 0x14) != 0 || (v4 & 0x40) != 0;
  }

  return result;
}

- (id)JSONCompatibleKeyValueMap
{
  externalForm = [(CWFNetworkProfile *)self externalForm];
  v4 = [externalForm mutableCopy];

  networkName = [(CWFNetworkProfile *)self networkName];
  [v4 setObject:networkName forKeyedSubscript:@"NetworkName"];

  removedAt = [(CWFNetworkProfile *)self removedAt];
  [v4 setObject:removedAt forKeyedSubscript:@"RemovedAt"];

  removedByVersion = [(CWFNetworkProfile *)self removedByVersion];
  [v4 setObject:removedByVersion forKeyedSubscript:@"RemovedByVersion"];

  addedByVersion = [(CWFNetworkProfile *)self addedByVersion];
  [v4 setObject:addedByVersion forKeyedSubscript:@"AddedByVersion"];

  if ([(CWFNetworkProfile *)self isSessionBased])
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v9 forKeyedSubscript:@"isSessionBased"];
  receivedFromDeviceAt = [(CWFNetworkProfile *)self receivedFromDeviceAt];
  [v4 setObject:receivedFromDeviceAt forKeyedSubscript:@"ReceivedFromDeviceAt"];

  receivedFromDeviceID = [(CWFNetworkProfile *)self receivedFromDeviceID];
  [v4 setObject:receivedFromDeviceID forKeyedSubscript:@"ReceivedFromDeviceID"];

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

- (id)__filteredNetworkProfileWithProperties:(id)properties OSSpecificKeys:(id)keys
{
  v35 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  keysCopy = keys;
  v8 = objc_alloc_init(CWFNetworkProfile);
  v9 = [(NSMutableDictionary *)self->_internal mutableCopy];
  if (propertiesCopy)
  {
    properties = [(CWFNetworkProfile *)self properties];
    v11 = [properties mutableCopy];

    [v11 minusSet:propertiesCopy];
    allObjects = [v11 allObjects];
    [v9 removeObjectsForKeys:allObjects];
  }

  [(CWFNetworkProfile *)v8 setInternal:v9];
  v13 = [propertiesCopy containsObject:&unk_1F5BBB8C0];
  if (keysCopy && v13)
  {
    v27 = v9;
    v28 = v8;
    v29 = propertiesCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    oSSpecificAttributes = [(CWFNetworkProfile *)self OSSpecificAttributes];
    allKeys = [oSSpecificAttributes allKeys];

    v17 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          if ([keysCopy containsObject:v21])
          {
            oSSpecificAttributes2 = [(CWFNetworkProfile *)self OSSpecificAttributes];
            v23 = [oSSpecificAttributes2 objectForKeyedSubscript:v21];
            [dictionary setObject:v23 forKeyedSubscript:v21];
          }
        }

        v18 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v24 = [dictionary copy];
    v8 = v28;
    [(CWFNetworkProfile *)v28 setOSSpecificAttributes:v24];

    propertiesCopy = v29;
    v9 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (int64_t)compareSupportedSecurityTypes:(id)types
{
  typesCopy = types;
  weakestSupportedSecurityType = [(CWFNetworkProfile *)self weakestSupportedSecurityType];
  weakestSupportedSecurityType2 = [typesCopy weakestSupportedSecurityType];
  strongestSupportedSecurityType = [(CWFNetworkProfile *)self strongestSupportedSecurityType];
  strongestSupportedSecurityType2 = [typesCopy strongestSupportedSecurityType];
  wAPISubtype = [(CWFNetworkProfile *)self WAPISubtype];
  wAPISubtype2 = [typesCopy WAPISubtype];
  wEPSubtype = [(CWFNetworkProfile *)self WEPSubtype];
  wEPSubtype2 = [typesCopy WEPSubtype];

  if (weakestSupportedSecurityType == weakestSupportedSecurityType2)
  {
    if (strongestSupportedSecurityType == strongestSupportedSecurityType2)
    {
      return 0;
    }

    v14 = strongestSupportedSecurityType;
    v15 = wEPSubtype;
    v16 = wAPISubtype;
    v17 = strongestSupportedSecurityType2;
  }

  else
  {
    v14 = weakestSupportedSecurityType;
    v15 = wEPSubtype;
    v16 = wAPISubtype;
    v17 = weakestSupportedSecurityType2;
  }

  return CWFCompareSecurityType(v14, v15, v16, v17, wEPSubtype2, wAPISubtype2);
}

- (int64_t)compareUserPriority:(id)priority
{
  priorityCopy = priority;
  userPreferredNetworkNames = [(CWFNetworkProfile *)self userPreferredNetworkNames];
  userPreferredNetworkNames2 = [priorityCopy userPreferredNetworkNames];
  userPreferredPasspointDomains = [(CWFNetworkProfile *)self userPreferredPasspointDomains];
  userPreferredPasspointDomains2 = [priorityCopy userPreferredPasspointDomains];
  domainName = [(CWFNetworkProfile *)self domainName];
  domainName2 = [priorityCopy domainName];
  networkName = [(CWFNetworkProfile *)self networkName];
  networkName2 = [priorityCopy networkName];

  v26 = domainName;
  v27 = userPreferredPasspointDomains2;
  v13 = [userPreferredPasspointDomains2 objectForKeyedSubscript:domainName];
  v28 = userPreferredPasspointDomains;
  v14 = [userPreferredPasspointDomains objectForKeyedSubscript:domainName2];
  v29 = userPreferredNetworkNames2;
  v15 = [userPreferredNetworkNames2 objectForKeyedSubscript:networkName];
  v30 = userPreferredNetworkNames;
  v16 = [userPreferredNetworkNames objectForKeyedSubscript:networkName2];
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

- (id)matchingKnownBSS:(id)s
{
  v24 = *MEMORY[0x1E69E9840];
  sCopy = s;
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
        bSSID = [v8 BSSID];
        if (bSSID)
        {
          v10 = bSSID;
          bSSID2 = [sCopy BSSID];
          if (bSSID2)
          {
            v12 = bSSID2;
            bSSID3 = [v8 BSSID];
            bSSID4 = [sCopy BSSID];
            v15 = [bSSID3 isEqual:bSSID4];

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

- (id)__keyForProperty:(int64_t)property
{
  v4 = 0;
  v5 = CWFNetworkProfilePropertySSIDKey;
  switch(property)
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

- (int64_t)__propertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"SSID"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"SupportedSecurityTypes"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"WEPSubtype"])
  {
    v4 = 3;
  }

  else if ([keyCopy isEqualToString:@"WAPISubtype"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"CaptiveProfile"])
  {
    v4 = 5;
  }

  else if ([keyCopy isEqualToString:@"Hidden"])
  {
    v4 = 6;
  }

  else if ([keyCopy isEqualToString:@"AutoJoinDisabled"])
  {
    v4 = 7;
  }

  else if ([keyCopy isEqualToString:@"PasswordSharingDisabled"])
  {
    v4 = 8;
  }

  else if ([keyCopy isEqualToString:@"PayloadIdentifierTelemetryApproved"])
  {
    v4 = 10;
  }

  else if ([keyCopy isEqualToString:@"PayloadIdentifier"])
  {
    v4 = 9;
  }

  else if ([keyCopy isEqualToString:@"PayloadUUID"])
  {
    v4 = 11;
  }

  else if ([keyCopy isEqualToString:@"BundleID"])
  {
    v4 = 12;
  }

  else if ([keyCopy isEqualToString:@"AddReason"])
  {
    v4 = 13;
  }

  else if ([keyCopy isEqualToString:@"AddedAt"])
  {
    v4 = 14;
  }

  else
  {
    if ([keyCopy isEqualToString:@"JoinedByUserAt"])
    {
      goto LABEL_30;
    }

    if ([keyCopy isEqualToString:@"JoinedBySystemAt"])
    {
      v4 = 16;
      goto LABEL_33;
    }

    if ([keyCopy isEqualToString:@"JoinedByUserAt"])
    {
LABEL_30:
      v4 = 15;
    }

    else if ([keyCopy isEqualToString:@"PersonalHotspot"])
    {
      v4 = 17;
    }

    else if ([keyCopy isEqualToString:@"SystemMode"])
    {
      v4 = 18;
    }

    else if ([keyCopy isEqualToString:@"EAPProfile"])
    {
      v4 = 20;
    }

    else if ([keyCopy isEqualToString:@"PasspointDomain"])
    {
      v4 = 21;
    }

    else if ([keyCopy isEqualToString:@"PasspointNAIRealmList"])
    {
      v4 = 22;
    }

    else if ([keyCopy isEqualToString:@"PasspointRCList"])
    {
      v4 = 23;
    }

    else if ([keyCopy isEqualToString:@"PasspointCellularNetworkInfo"])
    {
      v4 = 24;
    }

    else if ([keyCopy isEqualToString:@"PasspointSPRoamingEnabled"])
    {
      v4 = 25;
    }

    else if ([keyCopy isEqualToString:@"PasspointDisplayName"])
    {
      v4 = 26;
    }

    else if ([keyCopy isEqualToString:@"LowDataMode"])
    {
      v4 = 27;
    }

    else if ([keyCopy isEqualToString:@"__OSSpecific__"])
    {
      v4 = 28;
    }

    else if ([keyCopy isEqualToString:@"allowedBeforeFirstUnlock"])
    {
      v4 = 105;
    }

    else if ([keyCopy isEqualToString:@"UpdatedAt"])
    {
      v4 = 29;
    }

    else if ([keyCopy isEqualToString:@"CarPlayUUID"])
    {
      v4 = 30;
    }

    else if ([keyCopy isEqualToString:@"CarPlayNetwork"])
    {
      v4 = 31;
    }

    else if ([keyCopy isEqualToString:@"UserPreferredNetworkNames"])
    {
      v4 = 32;
    }

    else if ([keyCopy isEqualToString:@"UserPreferredPasspointDomains"])
    {
      v4 = 33;
    }

    else if ([keyCopy isEqualToString:@"NetworkGroupID"])
    {
      v4 = 34;
    }

    else if ([keyCopy isEqualToString:@"NetworkGroupPriority"])
    {
      v4 = 35;
    }

    else if ([keyCopy isEqualToString:@"LastDiscoveredAt"])
    {
      v4 = 36;
    }

    else if ([keyCopy isEqualToString:@"BSSList"])
    {
      v4 = 37;
    }

    else if ([keyCopy isEqualToString:@"PrivacyProxyEnabled"])
    {
      v4 = 38;
    }

    else if ([keyCopy isEqualToString:@"PrivacyProxyBlockedReason"])
    {
      v4 = 39;
    }

    else if ([keyCopy isEqualToString:@"Moving"])
    {
      v4 = 40;
    }

    else if ([keyCopy isEqualToString:@"Public"])
    {
      v4 = 41;
    }

    else if ([keyCopy isEqualToString:@"BlueAtlasNetwork"])
    {
      v4 = 80;
    }

    else if ([keyCopy isEqualToString:@"PublicAirPlayNetwork"])
    {
      v4 = 81;
    }

    else if ([keyCopy isEqualToString:@"TransitionDisabledFlags"])
    {
      v4 = 42;
    }

    else if ([keyCopy isEqualToString:@"NearbyShareableStatus"])
    {
      v4 = 43;
    }

    else if ([keyCopy isEqualToString:@"Standalone6G"])
    {
      v4 = 44;
    }

    else if ([keyCopy isEqualToString:@"Disable6EMode"])
    {
      v4 = 45;
    }

    else if ([keyCopy isEqualToString:@"Disable6EModeTimestamp"])
    {
      v4 = 46;
    }

    else if ([keyCopy isEqualToString:@"DisableAutojoinUntilFirstUserJoin"])
    {
      v4 = 47;
    }

    else if ([keyCopy isEqualToString:@"NetworkDisabledUntilDate"])
    {
      v4 = 48;
    }

    else if ([keyCopy isEqualToString:@"PasspointHomeOperatorNetwork"])
    {
      v4 = 49;
    }

    else if ([keyCopy isEqualToString:@"PasspointProvisionedNetwork"])
    {
      v4 = 50;
    }

    else if ([keyCopy isEqualToString:@"PasspointAccountName"])
    {
      v4 = 51;
    }

    else if ([keyCopy isEqualToString:@"HighPopularity"])
    {
      v4 = 52;
    }

    else if ([keyCopy isEqualToString:@"HighQuality"])
    {
      v4 = 53;
    }

    else if ([keyCopy isEqualToString:@"PotentiallyCaptive"])
    {
      v4 = 54;
    }

    else if ([keyCopy isEqualToString:@"PotentiallyMoving"])
    {
      v4 = 55;
    }

    else if ([keyCopy isEqualToString:@"TCPGood"])
    {
      v4 = 57;
    }

    else if ([keyCopy isEqualToString:@"LowPopularity"])
    {
      v4 = 58;
    }

    else if ([keyCopy isEqualToString:@"LowQuality"])
    {
      v4 = 59;
    }

    else if ([keyCopy isEqualToString:@"ProminentDisplay"])
    {
      v4 = 60;
    }

    else if ([keyCopy isEqualToString:@"PopularityScore"])
    {
      v4 = 61;
    }

    else if ([keyCopy isEqualToString:@"QualityScore"])
    {
      v4 = 62;
    }

    else if ([keyCopy isEqualToString:@"TotalNetworkUsage"])
    {
      v4 = 63;
    }

    else if ([keyCopy isEqualToString:@"ExpirationDate"])
    {
      v4 = 64;
    }

    else if ([keyCopy isEqualToString:@"HomeForceFixDate"])
    {
      v4 = 65;
    }

    else if ([keyCopy isEqualToString:@"LocationOfInterestType"])
    {
      v4 = 66;
    }

    else if ([keyCopy isEqualToString:@"NetworkOfInterestHomeState"])
    {
      v4 = 67;
    }

    else if ([keyCopy isEqualToString:@"NetworkOfInterestHomeStateUpdatedAt"])
    {
      v4 = 68;
    }

    else if ([keyCopy isEqualToString:@"NetworkOfInterestWorkState"])
    {
      v4 = 69;
    }

    else if ([keyCopy isEqualToString:@"NetworkOfInterestWorkStateUpdatedAt"])
    {
      v4 = 70;
    }

    else if ([keyCopy isEqualToString:@"SSIDHarvestStatus"])
    {
      v4 = 71;
    }

    else if ([keyCopy isEqualToString:@"WalletIdentifier"])
    {
      v4 = 72;
    }

    else if ([keyCopy isEqualToString:@"OTASystemInfoBeaconProbeList"])
    {
      v4 = 73;
    }

    else if ([keyCopy isEqualToString:@"SIMIdentifiers"])
    {
      v4 = 74;
    }

    else if ([keyCopy isEqualToString:@"NetworkQualityResponsiveness"])
    {
      v4 = 75;
    }

    else if ([keyCopy isEqualToString:@"NetworkQualityDate"])
    {
      v4 = 76;
    }

    else if ([keyCopy isEqualToString:@"LastDisconnectReason"])
    {
      v4 = 77;
    }

    else if ([keyCopy isEqualToString:@"LastDisconnectTimestamp"])
    {
      v4 = 78;
    }

    else if ([keyCopy isEqualToString:@"NANServiceID"])
    {
      v4 = 79;
    }

    else if ([keyCopy isEqualToString:@"JoinedBySystemAtWeek"])
    {
      v4 = 82;
    }

    else if ([keyCopy isEqualToString:@"Was6GHzOnlyAt"])
    {
      v4 = 83;
    }

    else if ([keyCopy isEqualToString:@"Was6GHzOnlyAtWeek"])
    {
      v4 = 84;
    }

    else if ([keyCopy isEqualToString:@"SeamlessSSIDList"])
    {
      v4 = 85;
    }

    else if ([keyCopy isEqualToString:@"DNSHeuristicsFilteredNetwork"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"FilteredNetwork"))
    {
      v4 = 86;
    }

    else if ([keyCopy isEqualToString:@"DNSHeuristicsFailureStateInfo"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DNSFailures"))
    {
      v4 = 87;
    }

    else if ([keyCopy isEqualToString:@"CachedPrivateMACAddress"])
    {
      v4 = 88;
    }

    else if ([keyCopy isEqualToString:@"CachedPrivateMACAddressUpdatedAt"])
    {
      v4 = 89;
    }

    else if ([keyCopy isEqualToString:@"PrivateMACAddressModeUserSetting"])
    {
      v4 = 90;
    }

    else if ([keyCopy isEqualToString:@"PrivateMACAddressModeUserSettingUpdatedAt"])
    {
      v4 = 91;
    }

    else if ([keyCopy isEqualToString:@"PrivateMACAddressEvaluationState"])
    {
      v4 = 93;
    }

    else if ([keyCopy isEqualToString:@"PrivateMACAddressModeConfigurationProfileSetting"])
    {
      v4 = 92;
    }

    else if ([keyCopy isEqualToString:@"PrivateMACAddressEvaluatedAt"])
    {
      v4 = 94;
    }

    else if ([keyCopy isEqualToString:@"WasHiddenBefore"])
    {
      v4 = 95;
    }

    else if ([keyCopy isEqualToString:@"DiscoveredDevices"])
    {
      v4 = 96;
    }

    else if ([keyCopy isEqualToString:@"CachedNetworkID"])
    {
      v4 = 97;
    }

    else if ([keyCopy isEqualToString:@"RemovedAt"])
    {
      v4 = 98;
    }

    else if ([keyCopy isEqualToString:@"ReceivedFromDeviceAt"])
    {
      v4 = 102;
    }

    else if ([keyCopy isEqualToString:@"ReceivedFromDeviceFlags"])
    {
      v4 = 101;
    }

    else if ([keyCopy isEqualToString:@"ReceivedFromDeviceID"])
    {
      v4 = 103;
    }

    else if ([keyCopy isEqualToString:@"ReceivedFromDeviceName"])
    {
      v4 = 106;
    }

    else if ([keyCopy isEqualToString:@"DeploymentIssues"])
    {
      v4 = 107;
    }

    else if ([keyCopy isEqualToString:@"is2GHzBssPresent"])
    {
      v4 = 108;
    }

    else if ([keyCopy isEqualToString:@"BrokenBackhaulState"])
    {
      v4 = 109;
    }

    else if ([keyCopy isEqualToString:@"BrokenBackhaulStateUdatedAt"])
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

- (CWFNetworkProfile)initWithExternalForm:(id)form
{
  v54 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = [(CWFNetworkProfile *)self init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [formCopy allKeys];
    v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v43)
    {
      goto LABEL_68;
    }

    v42 = *v49;
    v39 = formCopy;
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
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (!v12)
          {
            if (v10 > 36)
            {
              if (v10 > 89)
              {
                if (v10 == 90 || v10 == 92)
                {
                  v22 = MEMORY[0x1E696AD98];
                  v14 = [formCopy objectForKeyedSubscript:v8];
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
                  v14 = [formCopy objectForKeyedSubscript:v8];
                  v15 = [v21 numberWithInteger:sub_1E0BD6118(v14)];
                  v16 = MEMORY[0x1E696AD98];
                  v17 = 109;
                }

                goto LABEL_60;
              }

              switch(v10)
              {
                case '%':
                  v15 = [formCopy objectForKeyedSubscript:v8];
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
                  [dictionary setObject:v34 forKeyedSubscript:v35];

                  formCopy = v39;
                  v5 = v40;
                  goto LABEL_61;
                case '(':
                  v14 = [formCopy objectForKeyedSubscript:v8];
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
                  v14 = [formCopy objectForKeyedSubscript:v8];
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
                    v14 = [formCopy objectForKeyedSubscript:v8];
                    v15 = [v23 numberWithUnsignedInteger:sub_1E0BED0BC(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 2;
                    break;
                  case 3:
                    v29 = MEMORY[0x1E696AD98];
                    v14 = [formCopy objectForKeyedSubscript:v8];
                    v15 = [v29 numberWithInteger:sub_1E0BED36C(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 3;
                    break;
                  case 4:
                    v13 = MEMORY[0x1E696AD98];
                    v14 = [formCopy objectForKeyedSubscript:v8];
                    v15 = [v13 numberWithInteger:sub_1E0BED4E8(v14)];
                    v16 = MEMORY[0x1E696AD98];
                    v17 = 4;
                    break;
                  default:
LABEL_64:
                    v14 = [formCopy objectForKeyedSubscript:v8];
                    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
                    v30 = dictionary;
                    v31 = v14;
LABEL_58:
                    [v30 setObject:v31 forKeyedSubscript:v15];
LABEL_61:

                    goto LABEL_62;
                }

LABEL_60:
                v33 = [v16 numberWithInteger:v17];
                [dictionary setObject:v15 forKeyedSubscript:v33];

                goto LABEL_61;
              }

              switch(v10)
              {
                case 6:
                  v14 = [formCopy objectForKeyedSubscript:v8];
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
                  v14 = [formCopy objectForKeyedSubscript:v8];
                  v15 = [v32 numberWithInteger:sub_1E0BED598(v14)];
                  v16 = MEMORY[0x1E696AD98];
                  v17 = 13;
                  goto LABEL_60;
                case 27:
                  v14 = [formCopy objectForKeyedSubscript:v8];
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
            v30 = dictionary;
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

        [(CWFNetworkProfile *)v5 setInternal:dictionary];
        break;
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)mergeWithNetworkProfile:(id)profile
{
  profileCopy = profile;
  oSSpecificAttributes = [profileCopy OSSpecificAttributes];
  oSSpecificAttributes2 = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v6 = [oSSpecificAttributes2 mutableCopy];

  internal = self->_internal;
  internal = [profileCopy internal];

  [(NSMutableDictionary *)internal addEntriesFromDictionary:internal];
  if (oSSpecificAttributes && v6)
  {
    [v6 addEntriesFromDictionary:oSSpecificAttributes];
    [(CWFNetworkProfile *)self setOSSpecificAttributes:v6];
  }
}

- (void)setCoreWiFiSpecificAttributes:(id)attributes
{
  attributesCopy = attributes;
  __coreWiFiSpecificProperties = [(CWFNetworkProfile *)self __coreWiFiSpecificProperties];
  v5 = [[CWFNetworkProfile alloc] initWithExternalForm:attributesCopy];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:__coreWiFiSpecificProperties];
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = [(CWFNetworkProfile *)v5 __filteredNetworkProfileWithProperties:v6 OSSpecificKeys:v7];

  internal = self->_internal;
  internal = [v8 internal];
  [(NSMutableDictionary *)internal addEntriesFromDictionary:internal];
}

- (id)changedPropertiesFromNetworkProfile:(id)profile
{
  v52 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  externalForm = [(CWFNetworkProfile *)self externalForm];
  v5 = [[CWFNetworkProfile alloc] initWithExternalForm:externalForm];
  v35 = profileCopy;
  externalForm2 = [profileCopy externalForm];
  v6 = [[CWFNetworkProfile alloc] initWithExternalForm:externalForm2];
  v41 = [MEMORY[0x1E695DFA8] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  internal = [(CWFNetworkProfile *)v5 internal];
  allKeys = [internal allKeys];

  obj = allKeys;
  v45 = [allKeys countByEnumeratingWithState:&v47 objects:v51 count:16];
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
        internal2 = [(CWFNetworkProfile *)v5 internal];
        v12 = [internal2 objectForKeyedSubscript:v10];
        internal3 = [(CWFNetworkProfile *)v6 internal];
        v14 = [internal3 objectForKeyedSubscript:v10];
        v15 = v14;
        if (v12 == v14)
        {

          continue;
        }

        v46 = internal2;
        internal4 = [(CWFNetworkProfile *)v5 internal];
        v17 = [internal4 objectForKeyedSubscript:v10];
        if (!v17)
        {
          goto LABEL_13;
        }

        v18 = v6;
        internal5 = [(CWFNetworkProfile *)v6 internal];
        v19 = [internal5 objectForKeyedSubscript:v10];
        if (!v19)
        {

LABEL_13:
LABEL_14:
          [v41 addObject:v10];
          continue;
        }

        v39 = v19;
        internal6 = [(CWFNetworkProfile *)v5 internal];
        v20 = [internal6 objectForKeyedSubscript:v10];
        internal7 = [(CWFNetworkProfile *)v18 internal];
        v22 = [internal7 objectForKeyedSubscript:v10];
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
  internal8 = [(CWFNetworkProfile *)v6 internal];
  allKeys2 = [internal8 allKeys];
  v26 = [v23 setWithArray:allKeys2];

  v27 = MEMORY[0x1E695DFA8];
  internal9 = [(CWFNetworkProfile *)v5 internal];
  allKeys3 = [internal9 allKeys];
  v30 = [v27 setWithArray:allKeys3];
  [v26 minusSet:v30];

  [v41 unionSet:v26];
  v31 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)changedOSSpecificKeysFromNetworkProfile:(id)profile
{
  v46 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  v5 = [MEMORY[0x1E695DFA8] set];
  externalForm = [(CWFNetworkProfile *)self externalForm];
  v33 = [[CWFNetworkProfile alloc] initWithExternalForm:externalForm];
  oSSpecificAttributes = [(CWFNetworkProfile *)v33 OSSpecificAttributes];
  v35 = profileCopy;
  externalForm2 = [profileCopy externalForm];
  v31 = [[CWFNetworkProfile alloc] initWithExternalForm:externalForm2];
  oSSpecificAttributes2 = [(CWFNetworkProfile *)v31 OSSpecificAttributes];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  allKeys = [oSSpecificAttributes allKeys];
  v40 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v9 = *v42;
    v36 = allKeys;
    v37 = oSSpecificAttributes2;
    v38 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [oSSpecificAttributes objectForKeyedSubscript:v11];
        v13 = [oSSpecificAttributes2 objectForKeyedSubscript:v11];
        v14 = v13;
        if (v12 == v13)
        {

          continue;
        }

        v15 = [oSSpecificAttributes objectForKeyedSubscript:v11];
        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = v15;
        v17 = [oSSpecificAttributes2 objectForKeyedSubscript:v11];
        if (!v17)
        {

          v9 = v38;
LABEL_13:

LABEL_14:
          [v5 addObject:v11];
          continue;
        }

        v18 = v17;
        v19 = [oSSpecificAttributes objectForKeyedSubscript:v11];
        [oSSpecificAttributes2 objectForKeyedSubscript:v11];
        v20 = oSSpecificAttributes;
        v22 = v21 = v5;
        v39 = [v19 isEqual:v22];

        v5 = v21;
        oSSpecificAttributes = v20;
        oSSpecificAttributes2 = v37;

        allKeys = v36;
        v9 = v38;
        if ((v39 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v40 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }

  v23 = MEMORY[0x1E695DFA8];
  allKeys2 = [oSSpecificAttributes2 allKeys];
  v25 = [v23 setWithArray:allKeys2];

  v26 = MEMORY[0x1E695DFA8];
  allKeys3 = [oSSpecificAttributes allKeys];
  v28 = [v26 setWithArray:allKeys3];
  [v25 minusSet:v28];

  [v5 unionSet:v25];
  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setSSID:(id)d
{
  [(NSMutableDictionary *)self->_internal setObject:d forKeyedSubscript:&unk_1F5BBB8D8];
  *&self->_useCachedIdentifier = 0;
  self->_useCachedShortSSID = 0;
}

- (void)setDisable6EMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB908];
}

- (BOOL)isAmbiguousNetworkName
{
  networkName = [(CWFNetworkProfile *)self networkName];
  v3 = sub_1E0BEE360(networkName);

  return v3;
}

- (void)setSupportedSecurityTypes:(unint64_t)types
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:types];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB8F0];
}

- (void)setWEPSubtype:(int64_t)subtype
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:subtype];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB48];
}

- (void)setWAPISubtype:(int64_t)subtype
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:subtype];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB60];
}

- (unint64_t)weakestSupportedSecurityType
{
  supportedSecurityTypes = [(CWFNetworkProfile *)self supportedSecurityTypes];
  wAPISubtype = [(CWFNetworkProfile *)self WAPISubtype];
  wEPSubtype = [(CWFNetworkProfile *)self WEPSubtype];

  return CWFWeakestSecurityType(supportedSecurityTypes, wAPISubtype, wEPSubtype);
}

- (void)setHiddenState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB90];
}

- (void)setPayloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  if ([(CWFNetworkProfile *)self isAddReasonCarrierBundle]&& CWFIsPayloadIdentifierTelemetryApproved(identifierCopy))
  {
    [(CWFNetworkProfile *)self setPayloadIdentifierTelemetryApproved:1];
  }
}

- (void)setAddReason:(int64_t)reason
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBC38];
}

- (BOOL)isSystemMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD28];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSessionBased
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBD40];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setLowDataMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBD58];
}

- (NSArray)innerAcceptedEAPTypes
{
  eAPProfile = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [eAPProfile objectForKeyedSubscript:@"InnerAcceptEAPTypes"];

  return v3;
}

- (BOOL)isTLSCertificateRequired
{
  eAPProfile = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [eAPProfile objectForKeyedSubscript:@"TLSCertificateIsRequired"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSArray)TLSTrustedServerNames
{
  eAPProfile = [(CWFNetworkProfile *)self EAPProfile];
  v3 = [eAPProfile objectForKeyedSubscript:@"TLSTrustedServerNames"];

  return v3;
}

- (void)setOSSpecificValue:(id)value forKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy && (+[CWFNetworkProfile supportedOSSpecificKeys](CWFNetworkProfile, "supportedOSSpecificKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:keyCopy], v8, v9))
  {
    v10 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];

    if (valueCopy && !v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_internal setObject:dictionary forKeyedSubscript:&unk_1F5BBB8C0];
    }

    v12 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB8C0];
    [v12 setObject:valueCopy forKeyedSubscript:keyCopy];
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

- (id)OSSpecificValueForKey:(id)key
{
  if (key)
  {
    internal = self->_internal;
    keyCopy = key;
    v5 = [(NSMutableDictionary *)internal objectForKeyedSubscript:&unk_1F5BBB8C0];
    v6 = [v5 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOSSpecificAttributes:(id)attributes
{
  v39 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy)
  {
    selfCopy = self;
    v25 = attributesCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [attributesCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      array = 0;
      v10 = *v27;
      v11 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [CWFNetworkProfile supportedOSSpecificKeys:v22];
          v15 = [v14 containsObject:v13];

          if ((v15 & 1) == 0)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v13];
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

        v8 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      array = 0;
    }

    if ([array count])
    {
      v5 = v25;
      v19 = [v25 mutableCopy];
      [v19 removeObjectsForKeys:array];
    }

    else
    {
      v19 = 0;
      v5 = v25;
    }

    self = selfCopy;
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

- (void)setNetworkGroupPriority:(unint64_t)priority
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBEC0];
}

- (void)setBSSList:(id)list
{
  v11[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ([listCopy count] < 0xB)
  {
    [(NSMutableDictionary *)self->_internal setObject:listCopy forKeyedSubscript:&unk_1F5BBBEF0];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [listCopy sortedArrayUsingDescriptors:v6];
    v8 = [v7 subarrayWithRange:{0, 10}];

    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    [(NSMutableDictionary *)self->_internal setObject:v9 forKeyedSubscript:&unk_1F5BBBEF0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBlueAtlasNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF20];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMovingAttribute:(int64_t)attribute
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:attribute];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF68];
}

- (void)setPublicAttribute:(int64_t)attribute
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:attribute];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF80];
}

- (int64_t)nearbyShareableStatus
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBF98];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setNearbyShareableStatus:(int64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBF98];
}

- (BOOL)isAutojoinDisabledUntilFirstUserJoin
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBFC8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPasspointHomeOperatorNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBFF8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPasspointProvisionedNetwork
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC010];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setLastJoinedBySystemAtWeek:(unint64_t)week
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:week];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB968];
}

- (void)setWas6GHzOnlyAtWeek:(unint64_t)week
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:week];
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
  __classDStorageSpecificPropertiesSet = [(CWFNetworkProfile *)self __classDStorageSpecificPropertiesSet];
  if (!__classDStorageSpecificPropertiesSet)
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

  v4 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:__classDStorageSpecificPropertiesSet];
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
  bSSList = [v4 BSSList];
  if (!bSSList)
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
  v7 = bSSList;
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
        filteredBSSForClassDStorage = [v13 filteredBSSForClassDStorage];
        if (filteredBSSForClassDStorage)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x1E695DFA8] set];
          }

          [v10 addObject:filteredBSSForClassDStorage];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPotentiallyCaptive
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0A0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPotentiallyMoving
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0B8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHighQuality
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0D0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSuspicious
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC0E8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isTCPGood
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC100];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLowPopularity
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC118];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLowQuality
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC130];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isProminentDisplay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC148];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)popularityScore
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC160];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setPopularityScore:(unint64_t)score
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:score];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC160];
}

- (unint64_t)qualityScore
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC178];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setQualityScore:(unint64_t)score
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:score];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC178];
}

- (unint64_t)totalNetworkUsage
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC190];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setTotalNetworkUsage:(unint64_t)usage
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:usage];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC190];
}

- (int64_t)locationOfInterest
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC1D8];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setLocationOfInterest:(int64_t)interest
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:interest];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC1D8];
}

- (void)setNetworkOfInterestHomeState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBAA0];
}

- (void)setNetworkOfInterestWorkState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBAD0];
}

- (int64_t)ssidHarvestStatus
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC1F0];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setSSIDHarvestStatus:(int64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC1F0];
}

- (double)networkQualityResponsiveness
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC250];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setNetworkQualityResponsiveness:(double)responsiveness
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:responsiveness];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC250];
}

- (int)lastDisconnectReason
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBB9B0];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)is2GHzBssPresent
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBBB00];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPrivateMACAddressModeUserSetting:(int64_t)setting
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:setting];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBB9F8];
}

- (void)setPrivateMACAddressModeConfigurationProfileSetting:(int64_t)setting
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:setting];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBA28];
}

- (void)setPrivateMACAddressEvaluationState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBA40];
}

- (int64_t)effectivePrivateMACModeWithSystemSetting:(int64_t)setting
{
  privateMACAddressModeUserSetting = [(CWFNetworkProfile *)self privateMACAddressModeUserSetting];
  if (privateMACAddressModeUserSetting)
  {
    return privateMACAddressModeUserSetting;
  }

  privateMACAddressModeUserSetting = [(CWFNetworkProfile *)self privateMACAddressModeConfigurationProfileSetting];
  if (privateMACAddressModeUserSetting)
  {
    return privateMACAddressModeUserSetting;
  }

  if (setting)
  {
    return setting;
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
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setDeploymentIssues:(unint64_t)issues
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:issues];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC280];
}

- (void)setBrokenBackhaulState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBBB18];
}

- (id)__descriptionForLowDataMode
{
  lowDataMode = [(CWFNetworkProfile *)self lowDataMode];
  if (lowDataMode > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E86E68C8[lowDataMode];
  }
}

- (id)__descriptionForHiddenState
{
  hiddenState = [(CWFNetworkProfile *)self hiddenState];
  v3 = @"?";
  if (hiddenState == 2)
  {
    v3 = @"no";
  }

  if (hiddenState == 1)
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
  movingAttribute = [(CWFNetworkProfile *)self movingAttribute];
  v3 = @"?";
  if (movingAttribute == 1)
  {
    v3 = @"moving";
  }

  if (movingAttribute == 2)
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
  publicAttribute = [(CWFNetworkProfile *)self publicAttribute];
  v3 = @"?";
  if (publicAttribute == 2)
  {
    v3 = @"private";
  }

  if (publicAttribute == 1)
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
  nearbyShareableStatus = [(CWFNetworkProfile *)self nearbyShareableStatus];
  if ((nearbyShareableStatus - 1) > 8)
  {
    return @"?";
  }

  else
  {
    return off_1E86E68E0[nearbyShareableStatus - 1];
  }
}

- (id)__descriptionFor6EMode
{
  disable6EMode = [(CWFNetworkProfile *)self disable6EMode];
  if (disable6EMode >= 3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", disable6EMode];
  }

  else
  {
    v3 = off_1E86E6928[disable6EMode];
  }

  return v3;
}

- (id)__descriptionForBSSListWithLimit:(unint64_t)limit
{
  v24[1] = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
  bSSList = [(CWFNetworkProfile *)self BSSList];
  v24[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [bSSList sortedArrayUsingDescriptors:v8];

  if ([v9 count])
  {
    [string appendString:@"bssList=["];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 count];
    limitCopy = limit;
    if (v10 <= limit)
    {
      limitCopy = [v9 count];
    }

    v12 = [v9 subarrayWithRange:{0, limitCopy}];
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

          [string appendFormat:@"(%@), ", *(*(&v19 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    if ([v9 count] > limit)
    {
      [string appendString:{@"..., "}];
    }

    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
    [string appendString:{@"], "}];
  }

  v17 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)__descriptionForNOIHomeState
{
  string = [MEMORY[0x1E696AD60] string];
  networkOfInterestHomeStateUpdatedAt = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];

  if (networkOfInterestHomeStateUpdatedAt)
  {
    networkOfInterestHomeState = [(CWFNetworkProfile *)self networkOfInterestHomeState];
    networkOfInterestHomeStateUpdatedAt2 = [(CWFNetworkProfile *)self networkOfInterestHomeStateUpdatedAt];
    v7 = sub_1E0BCC248(networkOfInterestHomeStateUpdatedAt2);
    v8 = v7;
    if ((networkOfInterestHomeState - 1) > 2)
    {
      v9 = @"HOME-UNKNOWN(%@)";
    }

    else
    {
      v9 = off_1E86E6940[networkOfInterestHomeState - 1];
    }

    [string appendFormat:v9, v7];
  }

  return string;
}

- (id)__descriptionForNOIWorkState
{
  string = [MEMORY[0x1E696AD60] string];
  networkOfInterestWorkStateUpdatedAt = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];

  if (networkOfInterestWorkStateUpdatedAt)
  {
    networkOfInterestWorkState = [(CWFNetworkProfile *)self networkOfInterestWorkState];
    networkOfInterestWorkStateUpdatedAt2 = [(CWFNetworkProfile *)self networkOfInterestWorkStateUpdatedAt];
    v7 = sub_1E0BCC248(networkOfInterestWorkStateUpdatedAt2);
    v8 = v7;
    v9 = @"WORK-UNKNOWN(%@)";
    if (networkOfInterestWorkState == 2)
    {
      v9 = @"NOT-WORK(%@)";
    }

    if (networkOfInterestWorkState == 1)
    {
      v10 = @"WORK(%@)";
    }

    else
    {
      v10 = v9;
    }

    [string appendFormat:v10, v7];
  }

  return string;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  __basicDescription = [(CWFNetworkProfile *)self __basicDescription];
  [string appendString:__basicDescription];

  [string appendString:{@", "}];
  if ([(CWFNetworkProfile *)self isEAP]&& [(CWFNetworkProfile *)self isSystemMode])
  {
    [string appendString:{@"systemMode=yes, "}];
  }

  if ([(CWFNetworkProfile *)self transitionDisabledFlags])
  {
    v5 = sub_1E0BEE49C([(CWFNetworkProfile *)self transitionDisabledFlags]);
    [string appendFormat:@"transitionDisabledFlags=%@, ", v5];
  }

  if ([(CWFNetworkProfile *)self movingAttribute])
  {
    __descriptionForMovingAttribute = [(CWFNetworkProfile *)self __descriptionForMovingAttribute];
    [string appendFormat:@"moving=%@, ", __descriptionForMovingAttribute];
  }

  if ([(CWFNetworkProfile *)self publicAttribute])
  {
    __descriptionForPublicAttribute = [(CWFNetworkProfile *)self __descriptionForPublicAttribute];
    [string appendFormat:@"public=%@, ", __descriptionForPublicAttribute];
  }

  if ([(CWFNetworkProfile *)self nearbyShareableStatus])
  {
    __descriptionForNearbyShareableStatus = [(CWFNetworkProfile *)self __descriptionForNearbyShareableStatus];
    [string appendFormat:@"nearbyShareStatus=%@, ", __descriptionForNearbyShareableStatus];
  }

  if (![(CWFNetworkProfile *)self isPrivacyProxyEnabled])
  {
    [string appendString:{@"privacyProxy=no, "}];
  }

  if ([(CWFNetworkProfile *)self isAutojoinDisabledUntilFirstUserJoin])
  {
    [string appendString:{@"disableAutojoinUntilFirstUserJoin=yes, "}];
  }

  networkDisabledUntilDate = [(CWFNetworkProfile *)self networkDisabledUntilDate];

  if (networkDisabledUntilDate)
  {
    networkDisabledUntilDate2 = [(CWFNetworkProfile *)self networkDisabledUntilDate];
    v11 = sub_1E0BCC248(networkDisabledUntilDate2);
    [string appendFormat:@"networkDisabledUntilDate=%@, ", v11];
  }

  if ([(CWFNetworkProfile *)self isPasspointHomeOperatorNetwork])
  {
    [string appendString:{@"passpointHomeOperatorNetwork=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPasspointProvisionedNetwork])
  {
    [string appendString:{@"passpointProvisionedNetwork=yes, "}];
  }

  passpointAccountName = [(CWFNetworkProfile *)self passpointAccountName];

  if (passpointAccountName)
  {
    passpointAccountName2 = [(CWFNetworkProfile *)self passpointAccountName];
    [string appendFormat:@"passpointAccountName=%@, ", passpointAccountName2];
  }

  payloadIdentifier = [(CWFNetworkProfile *)self payloadIdentifier];

  if (payloadIdentifier)
  {
    payloadIdentifier2 = [(CWFNetworkProfile *)self payloadIdentifier];
    [string appendFormat:@"payloadIdentifier=%@, ", payloadIdentifier2];
  }

  if ([(CWFNetworkProfile *)self isHighPopularity])
  {
    [string appendString:{@"highPopularity=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isHighQuality])
  {
    [string appendString:{@"highQuality=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPotentiallyCaptive])
  {
    [string appendString:{@"potentiallyCaptive=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isPotentiallyMoving])
  {
    [string appendString:{@"potentiallyMoving=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isSuspicious])
  {
    [string appendString:{@"suspicious=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isTCPGood])
  {
    [string appendString:{@"tcpGood=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isLowPopularity])
  {
    [string appendString:{@"lowPopularity=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isLowQuality])
  {
    [string appendString:{@"lowQuality=yes, "}];
  }

  if ([(CWFNetworkProfile *)self isProminentDisplay])
  {
    [string appendString:{@"prominentDisplay=yes, "}];
  }

  if ([(CWFNetworkProfile *)self popularityScore])
  {
    [string appendFormat:@"popularityScore=%lu, ", -[CWFNetworkProfile popularityScore](self, "popularityScore")];
  }

  if ([(CWFNetworkProfile *)self qualityScore])
  {
    [string appendFormat:@"qualityScore=%lu, ", -[CWFNetworkProfile qualityScore](self, "qualityScore")];
  }

  if ([(CWFNetworkProfile *)self totalNetworkUsage])
  {
    [string appendFormat:@"totalNetworkUsage=%lu, ", -[CWFNetworkProfile totalNetworkUsage](self, "totalNetworkUsage")];
  }

  expirationDate = [(CWFNetworkProfile *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(CWFNetworkProfile *)self expirationDate];
    v18 = sub_1E0BCC248(expirationDate2);
    [string appendFormat:@"expirationDate=%@, ", v18];
  }

  lastHomeForceFixDate = [(CWFNetworkProfile *)self lastHomeForceFixDate];

  if (lastHomeForceFixDate)
  {
    lastHomeForceFixDate2 = [(CWFNetworkProfile *)self lastHomeForceFixDate];
    v21 = sub_1E0BCC248(lastHomeForceFixDate2);
    [string appendFormat:@"lastHomeForceFixDate=%@, ", v21];
  }

  if ([(CWFNetworkProfile *)self locationOfInterest])
  {
    [string appendFormat:@"locationOfInterest=%lu, ", -[CWFNetworkProfile locationOfInterest](self, "locationOfInterest")];
  }

  if ([(CWFNetworkProfile *)self networkOfInterestHomeState])
  {
    [string appendString:{@"networkOfInterestHomeState=yes, "}];
  }

  if ([(CWFNetworkProfile *)self networkOfInterestWorkState])
  {
    [string appendString:{@"networkOfInterestWorkState=yes, "}];
  }

  if ([(CWFNetworkProfile *)self ssidHarvestStatus])
  {
    [string appendFormat:@"ssidHarvestStatus=%lu, ", -[CWFNetworkProfile ssidHarvestStatus](self, "ssidHarvestStatus")];
  }

  walletIdentifier = [(CWFNetworkProfile *)self walletIdentifier];

  if (walletIdentifier)
  {
    walletIdentifier2 = [(CWFNetworkProfile *)self walletIdentifier];
    [string appendFormat:@"walletIdentifier=%@, ", walletIdentifier2];
  }

  oTASystemInfoBeaconProbeList = [(CWFNetworkProfile *)self OTASystemInfoBeaconProbeList];

  if (oTASystemInfoBeaconProbeList)
  {
    oTASystemInfoBeaconProbeList2 = [(CWFNetworkProfile *)self OTASystemInfoBeaconProbeList];
    [string appendFormat:@"OTASystemInfoBeaconProbeList=%@, ", oTASystemInfoBeaconProbeList2];
  }

  sIMIdentifiers = [(CWFNetworkProfile *)self SIMIdentifiers];

  if (sIMIdentifiers)
  {
    sIMIdentifiers2 = [(CWFNetworkProfile *)self SIMIdentifiers];
    [string appendFormat:@"SIMIdentifiers=%@, ", sIMIdentifiers2];
  }

  [(CWFNetworkProfile *)self networkQualityResponsiveness];
  if (v28 > 0.0)
  {
    [(CWFNetworkProfile *)self networkQualityResponsiveness];
    [string appendFormat:@"networkQualityResponsiveness=%f, ", v29];
  }

  networkQualityDate = [(CWFNetworkProfile *)self networkQualityDate];

  if (networkQualityDate)
  {
    networkQualityDate2 = [(CWFNetworkProfile *)self networkQualityDate];
    v32 = sub_1E0BCC248(networkQualityDate2);
    [string appendFormat:@"networkQualityDate=%@, ", v32];
  }

  if ([(CWFNetworkProfile *)self isPublicAirPlayNetwork])
  {
    [string appendString:{@"publicAirPlayNetwork=yes, "}];
  }

  if ([(CWFNetworkProfile *)self is2GHzBssPresent])
  {
    [string appendString:{@"2GHBssPresent=yes, "}];
  }

  v33 = [(CWFNetworkProfile *)self __descriptionForBSSListWithLimit:-1];
  [string appendString:v33];

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  v34 = string;

  return string;
}

- (BOOL)isEqualToNetworkProfile:(id)profile
{
  profileCopy = profile;
  sSID = [(CWFNetworkProfile *)self SSID];
  sSID2 = [profileCopy SSID];
  if (sSID != sSID2)
  {
    sSID3 = [(CWFNetworkProfile *)self SSID];
    if (!sSID3)
    {
      v17 = 0;
      goto LABEL_32;
    }

    sSID4 = [profileCopy SSID];
    if (!sSID4)
    {
      v17 = 0;
LABEL_31:

      goto LABEL_32;
    }

    sSID5 = [(CWFNetworkProfile *)self SSID];
    sSID6 = [profileCopy SSID];
    if (![sSID5 isEqual:sSID6])
    {
      v17 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v32 = sSID6;
    v33 = sSID5;
    v34 = sSID4;
  }

  domainName = [(CWFNetworkProfile *)self domainName];
  domainName2 = [profileCopy domainName];
  if (domainName != domainName2)
  {
    domainName3 = [(CWFNetworkProfile *)self domainName];
    if (domainName3)
    {
      v14 = domainName3;
      domainName4 = [profileCopy domainName];
      if (domainName4)
      {
        domainName5 = [(CWFNetworkProfile *)self domainName];
        domainName6 = [profileCopy domainName];
        if ([domainName5 isEqual:domainName6])
        {
          v28 = domainName6;
          v29 = domainName4;
          v30 = v14;
          goto LABEL_12;
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

LABEL_12:
  internal = [(CWFNetworkProfile *)self internal];
  internal2 = [profileCopy internal];
  v20 = internal2;
  if (internal == internal2)
  {

    v17 = 1;
    if (domainName == domainName2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = domainName5;
    internal3 = [(CWFNetworkProfile *)self internal];
    if (internal3)
    {
      v22 = internal3;
      internal4 = [profileCopy internal];
      if (internal4)
      {
        v27 = internal4;
        internal5 = [(CWFNetworkProfile *)self internal];
        internal6 = [profileCopy internal];
        v17 = [internal5 isEqual:internal6];

        internal4 = v27;
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

    domainName5 = v31;
    if (domainName == domainName2)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
LABEL_29:
  sSID5 = v33;
  sSID4 = v34;
  sSID6 = v32;
  if (sSID != sSID2)
  {
    goto LABEL_30;
  }

LABEL_32:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNetworkProfile *)self isEqualToNetworkProfile:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  sSID = [(CWFNetworkProfile *)self SSID];
  v4 = [sSID hash];
  domainName = [(CWFNetworkProfile *)self domainName];
  v6 = [domainName hash] ^ v4;
  internal = [(CWFNetworkProfile *)self internal];
  v8 = [internal hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (CWFNetworkProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_internal"];
    v16 = [v15 mutableCopy];
    internal = v5->_internal;
    v5->_internal = v16;
  }

  return v5;
}

- (BOOL)wasManuallyJoinedRecentlyInProximityOf:(id)of
{
  ofCopy = of;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  bSSList = [(CWFNetworkProfile *)self BSSList];
  if (![bSSList count])
  {
    goto LABEL_5;
  }

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  if (!lastJoinedByUserAt)
  {
    goto LABEL_5;
  }

  lastJoinedByUserAt2 = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  date = [MEMORY[0x1E695DF00] date];
  v9 = sub_1E0BF1C80(lastJoinedByUserAt2, 5, date);

  if (!v9)
  {
    bSSList2 = [(CWFNetworkProfile *)self BSSList];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0C2EBE4;
    v13[3] = &unk_1E86E6890;
    v14 = ofCopy;
    v15 = &v16;
    [bSSList2 enumerateObjectsUsingBlock:v13];

    bSSList = v14;
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
        captiveWebsheetLoginDate = [(CWFNetworkProfile *)self captiveWebsheetLoginDate];

        if (!captiveWebsheetLoginDate)
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
  __tombstoneSpecificProperties = [(CWFNetworkProfile *)self __tombstoneSpecificProperties];
  v5 = [v3 setWithArray:__tombstoneSpecificProperties];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (int64_t)compareReceivedFromDeviceFlags:(id)flags
{
  flagsCopy = flags;
  receivedFromDeviceFlags = [(CWFNetworkProfile *)self receivedFromDeviceFlags];
  receivedFromDeviceFlags2 = [flagsCopy receivedFromDeviceFlags];

  v7 = *&receivedFromDeviceFlags2 & 0x80000;
  v8 = 1;
  if ((*&receivedFromDeviceFlags2 & 0x20000) != 0)
  {
    v8 = -1;
  }

  if ((*&receivedFromDeviceFlags2 & 0x20000) == (*&receivedFromDeviceFlags & 0x20000))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = 1;
  if ((receivedFromDeviceFlags2 & 0x4000) != 0)
  {
    v10 = -1;
  }

  if ((receivedFromDeviceFlags2 & 0x4000) == (receivedFromDeviceFlags & 0x4000))
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

  if (v7 == (*&receivedFromDeviceFlags & 0x80000))
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
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setReceivedFromDeviceFlags:(unint64_t)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:flags];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC2C8];
}

- (NSDate)addedOrJoinedByUserAt
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  addedAt = [(CWFNetworkProfile *)self addedAt];
  [(NSDate *)addedAt timeIntervalSinceReferenceDate];
  if (v6 <= v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [(NSDate *)lastJoinedByUserAt timeIntervalSinceReferenceDate];
  if (v9 > v4)
  {
    v9 = 0.0;
  }

  if (v7 <= v9)
  {
    v10 = lastJoinedByUserAt;
  }

  else
  {
    v10 = addedAt;
  }

  v11 = v10;

  return v10;
}

- (CWFNetworkProfile)initWithCloudSyncExternalForm:(id)form
{
  v42[1] = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = [(CWFNetworkProfile *)self init];
  if (v5)
  {
    v6 = [formCopy objectForKeyedSubscript:@"SSID"];
    v7 = [v6 dataUsingEncoding:4];
    [(CWFNetworkProfile *)v5 setSSID:v7];

    v8 = [formCopy objectForKeyedSubscript:@"isWEP"];
    bOOLValue = [v8 BOOLValue];

    v10 = [formCopy objectForKeyedSubscript:@"isWPA"];
    bOOLValue2 = [v10 BOOLValue];

    v12 = [formCopy objectForKeyedSubscript:@"isWPA2"];
    bOOLValue3 = [v12 BOOLValue];

    v14 = [formCopy objectForKeyedSubscript:@"isWPA3"];
    bOOLValue4 = [v14 BOOLValue];

    v16 = [formCopy objectForKeyedSubscript:@"isWAPI"];
    bOOLValue5 = [v16 BOOLValue];

    v18 = bOOLValue;
    if (bOOLValue5)
    {
      v18 = bOOLValue | 2;
    }

    if (bOOLValue2)
    {
      v18 |= 4uLL;
    }

    if (bOOLValue3)
    {
      v18 |= 0x10uLL;
    }

    if (bOOLValue4)
    {
      v19 = v18 | 0x40;
    }

    else
    {
      v19 = v18;
    }

    [(CWFNetworkProfile *)v5 setSupportedSecurityTypes:v19];
    [(CWFNetworkProfile *)v5 setWAPISubtype:bOOLValue5];
    [(CWFNetworkProfile *)v5 setWEPSubtype:0];
    v20 = [formCopy objectForKeyedSubscript:@"addedAt"];
    [(CWFNetworkProfile *)v5 setAddedAt:v20];

    v21 = [formCopy objectForKeyedSubscript:@"addedByVersion"];
    [(CWFNetworkProfile *)v5 setAddedByVersion:v21];

    v22 = [formCopy objectForKeyedSubscript:@"removedAt"];
    [(CWFNetworkProfile *)v5 setRemovedAt:v22];

    v23 = [formCopy objectForKeyedSubscript:@"removedByVersion"];
    [(CWFNetworkProfile *)v5 setRemovedByVersion:v23];

    v24 = [formCopy objectForKeyedSubscript:@"lowDataMode"];
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

    v27 = [formCopy objectForKeyedSubscript:@"lastJoinedByUserAt"];
    [(CWFNetworkProfile *)v5 setLastJoinedByUserAt:v27];

    v28 = [formCopy objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];

    if (v28)
    {
      -[CWFNetworkProfile setLastJoinedBySystemAtWeek:](v5, "setLastJoinedBySystemAtWeek:", [v28 unsignedIntegerValue]);
    }

    v29 = [formCopy objectForKeyedSubscript:@"isPrivacyProxyEnabled"];

    if (v29)
    {
      -[CWFNetworkProfile setPrivacyProxyEnabled:](v5, "setPrivacyProxyEnabled:", [v29 BOOLValue]);
    }

    v30 = [formCopy objectForKeyedSubscript:@"isMoving"];

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

    v32 = [formCopy objectForKeyedSubscript:@"isPublic"];

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

    v34 = [formCopy objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];

    if (v34)
    {
      -[CWFNetworkProfile setWas6GHzOnlyAtWeek:](v5, "setWas6GHzOnlyAtWeek:", [v34 unsignedIntegerValue]);
    }

    v35 = [formCopy objectForKeyedSubscript:@"seamlessSSIDList"];
    [(CWFNetworkProfile *)v5 setSeamlessSSIDList:v35];

    v36 = [formCopy objectForKeyedSubscript:@"isCaptive"];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  networkName = [(CWFNetworkProfile *)self networkName];
  [dictionary setObject:networkName forKeyedSubscript:@"SSID"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWEP](self, "isWEP")}];
  [dictionary setObject:v5 forKeyedSubscript:@"isWEP"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWAPI](self, "isWAPI")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isWAPI"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA](self, "isWPA")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isWPA"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA2](self, "isWPA2")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isWPA2"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFNetworkProfile isWPA3](self, "isWPA3")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isWPA3"];

  addedAt = [(CWFNetworkProfile *)self addedAt];
  [dictionary setObject:addedAt forKeyedSubscript:@"addedAt"];

  addedByVersion = [(CWFNetworkProfile *)self addedByVersion];
  [dictionary setObject:addedByVersion forKeyedSubscript:@"addedByVersion"];

  removedAt = [(CWFNetworkProfile *)self removedAt];
  [dictionary setObject:removedAt forKeyedSubscript:@"removedAt"];

  removedByVersion = [(CWFNetworkProfile *)self removedByVersion];
  [dictionary setObject:removedByVersion forKeyedSubscript:@"removedByVersion"];

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  [dictionary setObject:lastJoinedByUserAt forKeyedSubscript:@"lastJoinedByUserAt"];

  if ([(CWFNetworkProfile *)self lastJoinedBySystemAtWeek])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFNetworkProfile lastJoinedBySystemAtWeek](self, "lastJoinedBySystemAtWeek")}];
    [dictionary setObject:v15 forKeyedSubscript:@"lastJoinedBySystemAtWeek"];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"lastJoinedBySystemAtWeek"];
  }

  lowDataMode = [(CWFNetworkProfile *)self lowDataMode];
  v17 = MEMORY[0x1E695E110];
  v18 = MEMORY[0x1E695E118];
  if (lowDataMode)
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

  [dictionary setObject:v19 forKeyedSubscript:@"lowDataMode"];
  properties = [(CWFNetworkProfile *)self properties];
  if ([properties containsObject:&unk_1F5BBBF08])
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

  [dictionary setObject:v21 forKeyedSubscript:@"isPrivacyProxyEnabled"];

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

  [dictionary setObject:v22 forKeyedSubscript:@"isMoving"];
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

  [dictionary setObject:v23 forKeyedSubscript:@"isPublic"];
  if ([(CWFNetworkProfile *)self was6GHzOnlyAtWeek])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFNetworkProfile was6GHzOnlyAtWeek](self, "was6GHzOnlyAtWeek")}];
    [dictionary setObject:v24 forKeyedSubscript:@"was6GHzOnlyAtWeek"];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"was6GHzOnlyAtWeek"];
  }

  seamlessSSIDList = [(CWFNetworkProfile *)self seamlessSSIDList];
  [dictionary setObject:seamlessSSIDList forKeyedSubscript:@"seamlessSSIDList"];

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

    [dictionary setObject:v26 forKeyedSubscript:@"isCaptive"];
  }

  v27 = [dictionary copy];

  return v27;
}

- (BOOL)isCloudSyncable
{
  if ([(CWFNetworkProfile *)self isOpen]|| [(CWFNetworkProfile *)self isOWE]|| [(CWFNetworkProfile *)self isEAP]|| [(CWFNetworkProfile *)self isAutoJoinDisabled]|| [(CWFNetworkProfile *)self hiddenState]== 1 || [(CWFNetworkProfile *)self isProfileBased]|| [(CWFNetworkProfile *)self isAppBased]|| [(CWFNetworkProfile *)self isCarPlayOnly])
  {
    return 0;
  }

  expirationDate = [(CWFNetworkProfile *)self expirationDate];
  if (expirationDate || ![(CWFNetworkProfile *)self isCaptiveStateDetermined]|| [(CWFNetworkProfile *)self isCaptive])
  {

    return 0;
  }

  return ![(CWFNetworkProfile *)self bypassCaptive];
}

- (BOOL)wasMoreRecentlyAdded
{
  addedAt = [(CWFNetworkProfile *)self addedAt];
  [addedAt timeIntervalSinceReferenceDate];
  v5 = v4;
  removedAt = [(CWFNetworkProfile *)self removedAt];
  [removedAt timeIntervalSinceReferenceDate];
  v8 = v5 > v7;

  return v8;
}

- (void)mergeWithCloudNetworkProfile:(id)profile
{
  profileCopy = profile;
  addedAt = [(CWFNetworkProfile *)self addedAt];
  addedAt2 = [(CWFNetworkProfile *)profileCopy addedAt];
  removedAt = [(CWFNetworkProfile *)self removedAt];
  removedAt2 = [(CWFNetworkProfile *)profileCopy removedAt];
  addedAt3 = [(CWFNetworkProfile *)self addedAt];
  addedAt4 = [(CWFNetworkProfile *)profileCopy addedAt];
  v10 = [addedAt3 laterDate:addedAt4];
  [(CWFNetworkProfile *)self setAddedAt:v10];

  [addedAt timeIntervalSinceReferenceDate];
  v12 = v11;
  [addedAt2 timeIntervalSinceReferenceDate];
  selfCopy = profileCopy;
  if (v12 > v14)
  {
    selfCopy = self;
  }

  addedByVersion = [(CWFNetworkProfile *)selfCopy addedByVersion];
  [(CWFNetworkProfile *)self setAddedByVersion:addedByVersion];

  removedAt3 = [(CWFNetworkProfile *)self removedAt];
  removedAt4 = [(CWFNetworkProfile *)profileCopy removedAt];
  v18 = [removedAt3 laterDate:removedAt4];
  [(CWFNetworkProfile *)self setRemovedAt:v18];

  [removedAt timeIntervalSinceReferenceDate];
  v20 = v19;
  [removedAt2 timeIntervalSinceReferenceDate];
  selfCopy2 = profileCopy;
  if (v20 > v22)
  {
    selfCopy2 = self;
  }

  removedByVersion = [(CWFNetworkProfile *)selfCopy2 removedByVersion];
  [(CWFNetworkProfile *)self setRemovedByVersion:removedByVersion];

  lastJoinedByUserAt = [(CWFNetworkProfile *)self lastJoinedByUserAt];
  lastJoinedByUserAt2 = [(CWFNetworkProfile *)profileCopy lastJoinedByUserAt];
  v26 = [lastJoinedByUserAt laterDate:lastJoinedByUserAt2];
  [(CWFNetworkProfile *)self setLastJoinedByUserAt:v26];

  lastJoinedBySystemAtWeek = [(CWFNetworkProfile *)self lastJoinedBySystemAtWeek];
  v28 = lastJoinedBySystemAtWeek > [(CWFNetworkProfile *)profileCopy lastJoinedBySystemAtWeek];
  selfCopy3 = profileCopy;
  if (v28)
  {
    selfCopy3 = self;
  }

  [(CWFNetworkProfile *)self setLastJoinedBySystemAtWeek:[(CWFNetworkProfile *)selfCopy3 lastJoinedBySystemAtWeek]];
  [addedAt timeIntervalSinceReferenceDate];
  v31 = v30;
  [addedAt2 timeIntervalSinceReferenceDate];
  selfCopy4 = profileCopy;
  if (v31 > v33)
  {
    selfCopy4 = self;
  }

  [(CWFNetworkProfile *)self setSupportedSecurityTypes:[(CWFNetworkProfile *)selfCopy4 supportedSecurityTypes]];
  if ([(CWFNetworkProfile *)self lowDataMode]&& [(CWFNetworkProfile *)profileCopy lowDataMode])
  {
    [addedAt timeIntervalSinceReferenceDate];
    v35 = v34;
    [addedAt2 timeIntervalSinceReferenceDate];
    selfCopy6 = profileCopy;
    if (v35 > v37)
    {
      selfCopy6 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self lowDataMode]== 0;
    selfCopy6 = profileCopy;
    if (!v38)
    {
      selfCopy6 = self;
    }
  }

  [(CWFNetworkProfile *)self setLowDataMode:[(CWFNetworkProfile *)selfCopy6 lowDataMode]];
  properties = [(CWFNetworkProfile *)self properties];
  if ([properties containsObject:&unk_1F5BBBF08])
  {
    properties2 = [(CWFNetworkProfile *)profileCopy properties];
    v41 = [properties2 containsObject:&unk_1F5BBBF08];

    if (v41)
    {
      [addedAt timeIntervalSinceReferenceDate];
      v43 = v42;
      [addedAt2 timeIntervalSinceReferenceDate];
      selfCopy7 = profileCopy;
      if (v43 > v45)
      {
        selfCopy7 = self;
      }

      [(CWFNetworkProfile *)self setPrivacyProxyEnabled:[(CWFNetworkProfile *)selfCopy7 isPrivacyProxyEnabled]];
      goto LABEL_25;
    }
  }

  else
  {
  }

  properties3 = [(CWFNetworkProfile *)self properties];
  v38 = [properties3 containsObject:&unk_1F5BBBF08] == 0;
  selfCopy8 = profileCopy;
  if (!v38)
  {
    selfCopy8 = self;
  }

  [(CWFNetworkProfile *)self setPrivacyProxyEnabled:[(CWFNetworkProfile *)selfCopy8 isPrivacyProxyEnabled]];

LABEL_25:
  if ([(CWFNetworkProfile *)self publicAttribute]&& [(CWFNetworkProfile *)profileCopy publicAttribute])
  {
    [addedAt timeIntervalSinceReferenceDate];
    v49 = v48;
    [addedAt2 timeIntervalSinceReferenceDate];
    selfCopy10 = profileCopy;
    if (v49 > v51)
    {
      selfCopy10 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self publicAttribute]== 0;
    selfCopy10 = profileCopy;
    if (!v38)
    {
      selfCopy10 = self;
    }
  }

  [(CWFNetworkProfile *)self setPublicAttribute:[(CWFNetworkProfile *)selfCopy10 publicAttribute]];
  if ([(CWFNetworkProfile *)self movingAttribute]&& [(CWFNetworkProfile *)profileCopy movingAttribute])
  {
    [addedAt timeIntervalSinceReferenceDate];
    v53 = v52;
    [addedAt2 timeIntervalSinceReferenceDate];
    selfCopy12 = profileCopy;
    if (v53 > v55)
    {
      selfCopy12 = self;
    }
  }

  else
  {
    v38 = [(CWFNetworkProfile *)self movingAttribute]== 0;
    selfCopy12 = profileCopy;
    if (!v38)
    {
      selfCopy12 = self;
    }
  }

  [(CWFNetworkProfile *)self setMovingAttribute:[(CWFNetworkProfile *)selfCopy12 movingAttribute]];
  was6GHzOnlyAtWeek = [(CWFNetworkProfile *)self was6GHzOnlyAtWeek];
  v28 = was6GHzOnlyAtWeek > [(CWFNetworkProfile *)profileCopy was6GHzOnlyAtWeek];
  selfCopy13 = profileCopy;
  if (v28)
  {
    selfCopy13 = self;
  }

  [(CWFNetworkProfile *)self setWas6GHzOnlyAtWeek:[(CWFNetworkProfile *)selfCopy13 was6GHzOnlyAtWeek]];
  seamlessSSIDList = [(CWFNetworkProfile *)self seamlessSSIDList];
  if (seamlessSSIDList && (v59 = seamlessSSIDList, [(CWFNetworkProfile *)profileCopy seamlessSSIDList], v60 = objc_claimAutoreleasedReturnValue(), v60, v59, v60))
  {
    v61 = MEMORY[0x1E695DFA0];
    [addedAt timeIntervalSinceReferenceDate];
    v63 = v62;
    [addedAt2 timeIntervalSinceReferenceDate];
    selfCopy14 = profileCopy;
    if (v63 > v65)
    {
      selfCopy14 = self;
    }

    seamlessSSIDList2 = [(CWFNetworkProfile *)selfCopy14 seamlessSSIDList];
    seamlessSSIDList5 = [v61 orderedSetWithArray:seamlessSSIDList2];

    seamlessSSIDList3 = [(CWFNetworkProfile *)self seamlessSSIDList];
    [seamlessSSIDList5 addObjectsFromArray:seamlessSSIDList3];

    seamlessSSIDList4 = [(CWFNetworkProfile *)profileCopy seamlessSSIDList];
    [seamlessSSIDList5 addObjectsFromArray:seamlessSSIDList4];

    array = [seamlessSSIDList5 array];
  }

  else
  {
    seamlessSSIDList5 = [(CWFNetworkProfile *)self seamlessSSIDList];
    selfCopy15 = profileCopy;
    if (seamlessSSIDList5)
    {
      selfCopy15 = self;
    }

    array = [(CWFNetworkProfile *)selfCopy15 seamlessSSIDList];
  }

  v72 = array;
  [(CWFNetworkProfile *)self setSeamlessSSIDList:array];
}

- (id)filteredCloudNetworkProfile
{
  v3 = MEMORY[0x1E695DFD8];
  __cloudNetworkSpecificProperties = [(CWFNetworkProfile *)self __cloudNetworkSpecificProperties];
  v5 = [v3 setWithArray:__cloudNetworkSpecificProperties];
  v6 = [(CWFNetworkProfile *)self filteredNetworkProfileWithProperties:v5];

  return v6;
}

- (CWFNetworkProfile)initWithMigrationData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
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

  if ([dataCopy length] == 400)
  {
    [dataCopy getBytes:__s length:400];
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

    sSID = [(CWFNetworkProfile *)v5 SSID];
    sub_1E0BEE9FC(sSID, 0, v9);

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

    oSSpecificAttributes = [(CWFNetworkProfile *)v5 OSSpecificAttributes];
    if (oSSpecificAttributes && ([(CWFNetworkProfile *)v5 OSSpecificAttributes], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      oSSpecificAttributes2 = [(CWFNetworkProfile *)v5 OSSpecificAttributes];
      v21 = [oSSpecificAttributes2 mutableCopy];
      [(CWFNetworkProfile *)v5 setOSSpecificAttributes:v21];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(CWFNetworkProfile *)v5 setOSSpecificAttributes:dictionary];

      if (!oSSpecificAttributes)
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
  sSID = [(CWFNetworkProfile *)self SSID];
  v5 = [v3 initWithData:sSID encoding:4];

  if (v5)
  {
    strncpy(__dst, [v5 UTF8String], 0x20uLL);
    LOBYTE(v19) = 0;
  }

  BYTE1(v19) = [(CWFNetworkProfile *)self hiddenState]== 1;
  *(&v19 + 1) = [(CWFNetworkProfile *)self mapCWFSecurityTypeToCWFMigrationSecurityType:[(CWFNetworkProfile *)self supportedSecurityTypes]];
  sSID2 = [(CWFNetworkProfile *)self SSID];
  v16 = 0;
  CWFSecItemQueryPassword_0(sSID2, &v16);
  v7 = v16;

  if (v7)
  {
    strncpy(v20, [v7 UTF8String], 0x40uLL);
    LOBYTE(v20[4]) = 0;
  }

  [(CWFNetworkProfile *)self setPublicKey:0];
  publicKey = [(CWFNetworkProfile *)self publicKey];
  if ([publicKey length] >= 0x100)
  {
    *(&v21 + 1) = 256;
  }

  else
  {
    publicKey2 = [(CWFNetworkProfile *)self publicKey];
    *(&v21 + 1) = [publicKey2 length];
  }

  publicKey3 = [(CWFNetworkProfile *)self publicKey];
  [publicKey3 getBytes:&v20[4] + 1 length:*(&v21 + 1)];

  oSSpecificAttributes = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v12 = [oSSpecificAttributes objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];

  if (v12)
  {
    *&v22 = [(CWFNetworkProfile *)self mapPrivateMACAddress:v12];
  }

  BYTE8(v22) = ![(CWFNetworkProfile *)self isAutoJoinDisabled];
  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:__dst length:400];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)mapCWFMigrationSecurityTypeToCWFSecurityType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81980[type - 1];
  }
}

- (int64_t)mapCWFSecurityTypeToCWFMigrationSecurityType:(unint64_t)type
{
  if ([(CWFNetworkProfile *)self isOpen]&& [(CWFNetworkProfile *)self isOWE])
  {
    return 1;
  }

  if ([(CWFNetworkProfile *)self isWPA]&& [(CWFNetworkProfile *)self isWPA2]|| [(CWFNetworkProfile *)self isWPA2]&& [(CWFNetworkProfile *)self isWPA3])
  {
    return 3;
  }

  if (type > 15)
  {
    if (type > 255)
    {
      if (type == 512)
      {
        return 1;
      }

      if (type == 256)
      {
        return 5;
      }

      return 0;
    }

    if (type != 16)
    {
      if (type == 64)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  if (type == 1)
  {
    return 2;
  }

  if (type != 2)
  {
    if (type != 4)
    {
      return 0;
    }

    return 3;
  }

  return 6;
}

- (int64_t)mapPrivateMACAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS_TYPE"];
  integerValue = [v4 integerValue];

  v6 = [addressCopy objectForKeyedSubscript:@"PRIVATE_MAC_SET_BY_USER"];

  bOOLValue = [v6 BOOLValue];
  v8 = 4;
  if (integerValue == 3)
  {
    v8 = 5;
  }

  v9 = 1;
  if (integerValue == 3)
  {
    v9 = 2;
  }

  if (integerValue == 2)
  {
    v8 = 6;
    v9 = 3;
  }

  if (bOOLValue)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (int64_t)mapPrivateMacToCWFPrivateMACMode:(int64_t)mode setByUser:(BOOL *)user
{
  if (mode <= 6)
  {
    if (((1 << mode) & 0x12) != 0)
    {
      *user = mode == 4;
      return 1;
    }

    if (((1 << mode) & 0x24) != 0)
    {
      *user = mode == 5;
      return 3;
    }

    if (((1 << mode) & 0x48) != 0)
    {
      *user = mode == 6;
      return 2;
    }
  }

  if (mode)
  {
    *user = 0;
    return 1;
  }

  *user = 1;
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
  sSID = [(CWFNetworkProfile *)self SSID];
  if (sSID)
  {
    v3 = [[CWFWiFiNetworkSharingNetworkID alloc] initWithSSID:sSID];
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
  __wifiNetworkSharingSpecificProperties = [(CWFNetworkProfile *)self __wifiNetworkSharingSpecificProperties];
  v5 = [v3 setWithArray:__wifiNetworkSharingSpecificProperties];
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
  bSSList = [(CWFNetworkProfile *)self BSSList];
  location2 = [bSSList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (location2)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != location2; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(bSSList);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        location = [v6 location];

        if (location)
        {
          location2 = [v6 location];
          goto LABEL_11;
        }
      }

      location2 = [bSSList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (location2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return location2;
}

- (BOOL)_isHomeNetwork
{
  if ([(CWFNetworkProfile *)self networkOfInterestHomeState]== 1 || [(CWFNetworkProfile *)self networkOfInterestHomeState]== 3)
  {
    return 1;
  }

  oSSpecificAttributes = [(CWFNetworkProfile *)self OSSpecificAttributes];
  v5 = [oSSpecificAttributes objectForKeyedSubscript:@"NetworkOfInterestHomeState"];
  if ([v5 integerValue] == 1)
  {
    v3 = 1;
  }

  else
  {
    oSSpecificAttributes2 = [(CWFNetworkProfile *)self OSSpecificAttributes];
    v7 = [oSSpecificAttributes2 objectForKeyedSubscript:@"NetworkAtLocationOfInterestType"];
    if ([v7 integerValue] == 2)
    {
      v3 = 1;
    }

    else
    {
      oSSpecificAttributes3 = [(CWFNetworkProfile *)self OSSpecificAttributes];
      v9 = [oSSpecificAttributes3 objectForKeyedSubscript:@"NetworkAtLocationOfInterestType"];
      v3 = [v9 integerValue] == 4;
    }
  }

  return v3;
}

- (unint64_t)CWFNetworkWarningFlagsFromNetworkProfile
{
  acceptedEAPTypes = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([acceptedEAPTypes count] == 1)
  {
    acceptedEAPTypes2 = [(CWFNetworkProfile *)self acceptedEAPTypes];
    v5 = [acceptedEAPTypes2 containsObject:&unk_1F5BBD4C8];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ([(CWFNetworkProfile *)self isEAP]&& !(([(CWFNetworkProfile *)self addReason]!= 10) | v6 & 1))
  {
    tLSTrustedServerNames = [(CWFNetworkProfile *)self TLSTrustedServerNames];
    v9 = tLSTrustedServerNames == 0;

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

  acceptedEAPTypes3 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([acceptedEAPTypes3 containsObject:&unk_1F5BBD4E0])
  {
    goto LABEL_15;
  }

  acceptedEAPTypes4 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  if ([acceptedEAPTypes4 containsObject:&unk_1F5BBD4F8])
  {

LABEL_15:
    goto LABEL_16;
  }

  acceptedEAPTypes5 = [(CWFNetworkProfile *)self acceptedEAPTypes];
  v19 = [acceptedEAPTypes5 containsObject:&unk_1F5BBD510];

  if ((v19 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_25;
  }

LABEL_16:
  eAPProfile = [(CWFNetworkProfile *)self EAPProfile];
  v13 = eAPProfile;
  if (!eAPProfile)
  {
LABEL_25:
    v14 = 0;
    goto LABEL_22;
  }

  v14 = [eAPProfile objectForKey:@"EAPClientConfiguration"];
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