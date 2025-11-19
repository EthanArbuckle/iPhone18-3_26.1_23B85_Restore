@interface IDSServiceProperties
- (BOOL)allowLocalDelivery;
- (BOOL)canUseLargePayload;
- (BOOL)disallowFirewallAutoEnroll;
- (BOOL)isFirewallEnabled;
- (BOOL)needsLaunchOnNearbyDevicesChanged;
- (IDSServiceProperties)initWithServiceDictionary:(id)a3;
- (IDSServiceProperties)initWithServiceIdentifier:(id)a3;
- (NSArray)allInterestedQueryServices;
- (NSArray)duetIdentifiers;
- (NSSet)allowedTrafficClasses;
- (NSString)launchDarwinNotification;
- (NSString)launchMachServiceNotification;
- (NSString)legacyPreferencesDomain;
- (NSString)preferencesDomain;
- (id)_resolveProtocolName:(id)a3;
- (id)_resolveShouldUseMachNotification:(id)a3;
- (id)_stringToUseGivenName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)a3;
@end

@implementation IDSServiceProperties

- (BOOL)canUseLargePayload
{
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (*(self + 52) >> 5) & 1;
  }

  return v3;
}

- (NSArray)duetIdentifiers
{
  v8[1] = *MEMORY[0x1E69E9840];
  duetIdentifiersIndices = self->_duetIdentifiersIndices;
  if (duetIdentifiersIndices)
  {
    v4 = sub_1A7AFFFBC(duetIdentifiersIndices);
  }

  else
  {
    v5 = [(IDSServiceProperties *)self serviceName];
    if (v5)
    {
      v6 = [(IDSServiceProperties *)self serviceName];
      v8[0] = v6;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)launchDarwinNotification
{
  if ((*(self + 57) & 2) != 0)
  {
    return self->_launchNotification;
  }

  else
  {
    return 0;
  }
}

- (NSString)launchMachServiceNotification
{
  if ((*(self + 57) & 2) != 0)
  {
    launchNotification = 0;
  }

  else
  {
    launchNotification = self->_launchNotification;
    if (!launchNotification)
    {
      v3 = [(IDSServiceProperties *)self _identifierWithProtocolAndMachServiceSuffix];
      goto LABEL_6;
    }
  }

  v3 = launchNotification;
LABEL_6:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSServiceProperties *)self identifier];
  v5 = [(IDSServiceProperties *)self displayName];
  v6 = [(IDSServiceProperties *)self pushTopic];
  v7 = [(IDSServiceProperties *)self serviceName];
  v8 = [(IDSServiceProperties *)self protocolName];
  v9 = [v3 stringWithFormat:@"IDSServiceProperties: %p [Identifier: %@ Display Name: %@ Topic: %@   Service: %@   Protocol: %@]", self, v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)allowLocalDelivery
{
  if ([(IDSServiceProperties *)self allowWiProxDelivery])
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel_allowMagnetDelivery);
}

- (NSSet)allowedTrafficClasses
{
  if (self->_allowedTrafficClassesIndices)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFD8]);
    v4 = sub_1A7AFFFBC(self->_allowedTrafficClassesIndices);
    v5 = [v3 initWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IDSServiceProperties)initWithServiceIdentifier:(id)a3
{
  v4 = _IDSServiceDictionaryForIdentifier(a3);
  if (v4)
  {
    self = [(IDSServiceProperties *)self initWithServiceDictionary:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IDSServiceProperties)initWithServiceDictionary:(id)a3
{
  v188 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v186.receiver = self;
  v186.super_class = IDSServiceProperties;
  v5 = [(IDSServiceProperties *)&v186 init];
  if (!v5)
  {
LABEL_197:
    v25 = v5;
    goto LABEL_198;
  }

  v6 = [v4 objectForKey:@"Identifier"];

  if (v6)
  {
    v7 = [(IDSServiceProperties *)v5 _resolveProtocolName:v4];
    protocolName = v5->_protocolName;
    v5->_protocolName = v7;

    v9 = [v4 objectForKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = [v4 objectForKey:@"ServiceName"];
    v12 = [(IDSServiceProperties *)v5 _stringToUseGivenName:v11];
    serviceName = v5->_serviceName;
    v5->_serviceName = v12;

    v14 = [v4 objectForKey:@"PushTopic"];
    v15 = [(IDSServiceProperties *)v5 _stringToUseGivenName:v14];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v15;

    v17 = [v4 objectForKey:@"LegacyIdentifier"];
    legacyIdentifier = v5->_legacyIdentifier;
    v5->_legacyIdentifier = v17;

    v19 = [v4 objectForKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v19;

    v21 = [v4 objectForKey:@"DataProtectionClass"];
    v181 = v21;
    if (v21)
    {
      LOBYTE(v21) = [v21 unsignedIntValue];
    }

    v5->_dataProtectionClass = v21;
    v22 = [v4 objectForKey:@"LaunchDarwinNotification"];
    v23 = [v4 objectForKey:@"LaunchMachServiceNotification"];
    v179 = v23;
    if (v23)
    {
      v24 = [(IDSServiceProperties *)v5 _resolveShouldUseMachNotification:v23];
    }

    else
    {
      if (!v22)
      {
LABEL_11:
        v180 = v22;
        v27 = [v4 objectForKey:@"SuperService"];
        superService = v5->_superService;
        v5->_superService = v27;

        v29 = [v4 objectForKey:@"DataUsageBundleID"];
        dataUsageBundleID = v5->_dataUsageBundleID;
        v5->_dataUsageBundleID = v29;

        v31 = [v4 objectForKey:@"AdHocServiceType"];
        v5->_adHocServiceType = [v31 unsignedIntValue];

        v32 = [v4 objectForKey:@"ControlCategory"];
        v5->_controlCategory = [v32 unsignedIntValue];

        v33 = [v4 objectForKey:@"ConstraintType"];
        v5->_constraintType = [v33 unsignedIntValue];

        v34 = [v4 objectForKey:@"AllowedCommandCategories"];
        v178 = v34;
        if (v34)
        {
          LODWORD(v34) = [v34 unsignedIntValue];
        }

        v5->_allowedCommandGroup = v34;
        v35 = [v4 objectForKey:@"FirewallNotificationStyle"];
        v5->_firewallNotificationStyle = [v35 unsignedIntValue];

        v36 = [v4 objectForKey:@"FirewallNotificationRateLimitType"];
        v5->_firewallNotificationRateLimitType = [v36 unsignedIntValue];

        v177 = [v4 objectForKey:@"AllowedTrafficClasses"];
        v37 = sub_1A7AFED78(v177);
        allowedTrafficClassesIndices = v5->_allowedTrafficClassesIndices;
        v5->_allowedTrafficClassesIndices = v37;

        v39 = [v4 objectForKey:@"AllowLocalDelivery"];
        if ([v39 BOOLValue])
        {
          v40 = 2;
        }

        else
        {
          v40 = 0;
        }

        *(v5 + 52) = *(v5 + 52) & 0xFD | v40;

        v41 = [v4 objectForKey:@"AllowPartialSendsToSucceed"];
        if ([v41 BOOLValue])
        {
          v42 = 16;
        }

        else
        {
          v42 = 0;
        }

        *(v5 + 52) = *(v5 + 52) & 0xEF | v42;

        v43 = [v4 objectForKey:@"CanUseLargePayload"];
        if ([v43 BOOLValue])
        {
          v44 = 32;
        }

        else
        {
          v44 = 0;
        }

        *(v5 + 52) = *(v5 + 52) & 0xDF | v44;

        v45 = [v4 objectForKey:@"SendOnePerToken"];
        if ([v45 BOOLValue])
        {
          v46 = 64;
        }

        else
        {
          v46 = 0;
        }

        *(v5 + 52) = *(v5 + 52) & 0xBF | v46;

        v47 = [v4 objectForKey:@"SupportsPhoneNumberRegistration"];
        if ([v47 BOOLValue])
        {
          v48 = 0x80;
        }

        else
        {
          v48 = 0;
        }

        *(v5 + 52) = v48 & 0x80 | *(v5 + 52) & 0x7F;

        v49 = [v4 objectForKey:@"iCloudService"];
        *(v5 + 53) = *(v5 + 53) & 0xFE | [v49 BOOLValue];

        v50 = [v4 objectForKey:@"TunnelService"];
        if ([v50 BOOLValue])
        {
          v51 = 2;
        }

        else
        {
          v51 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xFD | v51;

        v52 = [v4 objectForKey:@"ShouldShowUsageNotifications"];
        if ([v52 BOOLValue])
        {
          v53 = 8;
        }

        else
        {
          v53 = 0;
        }

        *(v5 + 52) = *(v5 + 52) & 0xF7 | v53;

        v54 = [v4 objectForKey:@"AutoConfigureVettedAddresses"];
        if ([v54 BOOLValue])
        {
          v55 = 8;
        }

        else
        {
          v55 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xF7 | v55;

        v56 = [v4 objectForKey:@"AutoConfigureDSID"];
        if ([v56 BOOLValue])
        {
          v57 = 16;
        }

        else
        {
          v57 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xEF | v57;

        v58 = [v4 objectForKey:@"SyncAccounts"];
        if ([v58 BOOLValue])
        {
          v59 = 32;
        }

        else
        {
          v59 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xDF | v59;

        v60 = [v4 objectForKey:@"NoSyncPhoneNumberAccounts"];
        if ([v60 BOOLValue])
        {
          v61 = 64;
        }

        else
        {
          v61 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xBF | v61;

        v62 = [v4 objectForKey:@"AllowProxyDelivery"];
        if ([v62 BOOLValue])
        {
          v63 = 0x80;
        }

        else
        {
          v63 = 0;
        }

        *(v5 + 53) = v63 & 0x80 | *(v5 + 53) & 0x7F;

        v64 = [v4 objectForKey:@"WantsLocalReflectedSend"];
        *(v5 + 54) = *(v5 + 54) & 0xFE | [v64 BOOLValue];

        v65 = [v4 objectForKey:@"WantsNetworkAvailableHint"];
        if ([v65 BOOLValue])
        {
          v66 = 2;
        }

        else
        {
          v66 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xFD | v66;

        v67 = [v4 objectForKey:@"AllowLaunchOnNearbyDevicesChanged"];
        v5->_allowLaunchOnNearbyDevicesChanged = [v67 BOOLValue];

        v68 = [v4 objectForKey:@"WatchOnlyService"];
        if ([v68 BOOLValue])
        {
          v69 = 4;
        }

        else
        {
          v69 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xFB | v69;

        v70 = [v4 objectForKey:@"AllowDuplicateMessages"];
        if ([v70 BOOLValue])
        {
          v71 = 8;
        }

        else
        {
          v71 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xF7 | v71;

        v72 = [v4 objectForKey:@"UseiMessageCallerID"];
        if ([v72 BOOLValue])
        {
          v73 = 16;
        }

        else
        {
          v73 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xEF | v73;

        v74 = [v4 objectForKey:@"UseFaceTimeCallerID"];
        if ([v74 BOOLValue])
        {
          v75 = 32;
        }

        else
        {
          v75 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xDF | v75;

        v76 = [v4 objectForKey:@"AllowPendingMessagesForInactiveDevice"];
        if ([v76 BOOLValue])
        {
          v77 = 64;
        }

        else
        {
          v77 = 0;
        }

        *(v5 + 54) = *(v5 + 54) & 0xBF | v77;

        v78 = [v4 objectForKey:@"AllowSendingMessagesToInactiveDevice"];
        if ([v78 BOOLValue])
        {
          v79 = 0x80;
        }

        else
        {
          v79 = 0;
        }

        *(v5 + 54) = v79 & 0x80 | *(v5 + 54) & 0x7F;

        v80 = [v4 objectForKey:@"ClassAProtectedTraffic"];
        *(v5 + 55) = *(v5 + 55) & 0xFE | [v80 BOOLValue];

        v81 = [v4 objectForKey:@"SilentlyFailMessagesOnSwitch"];
        if ([v81 BOOLValue])
        {
          v82 = 2;
        }

        else
        {
          v82 = 0;
        }

        *(v5 + 55) = *(v5 + 55) & 0xFD | v82;

        v83 = [v4 objectForKey:@"AllowCloudDelivery"];
        if ([v83 BOOLValue])
        {
          v84 = 4;
        }

        else
        {
          v84 = 0;
        }

        *(v5 + 55) = *(v5 + 55) & 0xFB | v84;

        if (v5->_adHocServiceType == 2)
        {
          *(v5 + 55) &= ~8u;
        }

        else
        {
          v85 = [v4 objectForKey:@"AllowLiveMessageDelivery"];
          *(v5 + 55) = *(v5 + 55) & 0xF7 | (8 * (v85 != 0));
        }

        v86 = [v4 objectForKey:@"EnabledOnlyWhenPaired"];
        if ([v86 BOOLValue])
        {
          v87 = 16;
        }

        else
        {
          v87 = 0;
        }

        *(v5 + 55) = *(v5 + 55) & 0xEF | v87;

        v88 = [v4 objectForKey:@"forceHTTPQueries"];
        if ([v88 BOOLValue])
        {
          v89 = 32;
        }

        else
        {
          v89 = 0;
        }

        *(v5 + 55) = *(v5 + 55) & 0xDF | v89;

        v90 = [v4 objectForKey:@"WantsRemoteErrors"];
        if ([v90 BOOLValue])
        {
          v91 = 64;
        }

        else
        {
          v91 = 0;
        }

        *(v5 + 55) = *(v5 + 55) & 0xBF | v91;

        v92 = [v4 objectForKey:@"UseTransportZone"];
        if ([v92 BOOLValue])
        {
          v93 = 0x80;
        }

        else
        {
          v93 = 0;
        }

        *(v5 + 55) = v93 & 0x80 | *(v5 + 55) & 0x7F;

        v94 = [v4 objectForKey:@"DontFilterSelfMessagesForUnknownDevice"];
        *(v5 + 56) = *(v5 + 56) & 0xFE | [v94 BOOLValue];

        v95 = [v4 objectForKey:@"PassThroughMessagesFromStorage"];
        if ([v95 BOOLValue])
        {
          v96 = 2;
        }

        else
        {
          v96 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xFD | v96;

        v97 = [v4 objectForKey:@"SkipServerStorageRetry"];
        if ([v97 BOOLValue])
        {
          v98 = 4;
        }

        else
        {
          v98 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xFB | v98;

        v99 = [v4 objectForKey:@"PushToWakeDisabled"];
        if ([v99 BOOLValue])
        {
          v100 = 8;
        }

        else
        {
          v100 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xF7 | v100;

        v101 = [v4 objectForKey:@"DisableOnLowRAMDevice"];
        if ([v101 BOOLValue])
        {
          v102 = 16;
        }

        else
        {
          v102 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xEF | v102;

        if (v5->_adHocServiceType == 2)
        {
          *(v5 + 52) |= 4u;
        }

        else
        {
          v103 = [v4 objectForKey:@"AllowMagnetDelivery"];
          if ([v103 BOOLValue])
          {
            LOBYTE(v104) = 4;
          }

          else
          {
            v104 = (*(v5 + 53) >> 5) & 4;
          }

          *(v5 + 52) = *(v5 + 52) & 0xFB | v104;
        }

        v105 = [v4 objectForKey:@"HoldMessagesUntilClassCUnlock"];
        if ([v105 BOOLValue])
        {
          v106 = 4;
        }

        else
        {
          v106 = 0;
        }

        *(v5 + 53) = *(v5 + 53) & 0xFB | v106;

        v107 = [v4 objectForKey:@"WantsPendingMessageUpdates"];
        if ([v107 BOOLValue])
        {
          v108 = 32;
        }

        else
        {
          v108 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xDF | v108;

        v109 = [v4 objectForKey:@"WantsPendingResourceUpdates"];
        if ([v109 BOOLValue])
        {
          v110 = 0x80;
        }

        else
        {
          v110 = 0;
        }

        *(v5 + 58) = v110 & 0x80 | *(v5 + 58) & 0x7F;

        v111 = [v4 objectForKey:@"CrossAccountMessages"];
        if ([v111 BOOLValue])
        {
          v112 = 4;
        }

        else
        {
          v112 = 0;
        }

        *(v5 + 57) = *(v5 + 57) & 0xFB | v112;

        v113 = [v4 objectForKey:@"BlockRemoteTimeouts"];
        if ([v113 BOOLValue])
        {
          v114 = 8;
        }

        else
        {
          v114 = 0;
        }

        *(v5 + 57) = *(v5 + 57) & 0xF7 | v114;

        v115 = [v4 objectForKey:@"AllowWakingMessages"];
        if ([v115 BOOLValue])
        {
          v116 = 16;
        }

        else
        {
          v116 = 0;
        }

        *(v5 + 57) = *(v5 + 57) & 0xEF | v116;

        v117 = [v4 objectForKey:@"AllowUrgentMessages"];
        if ([v117 BOOLValue])
        {
          v118 = 32;
        }

        else
        {
          v118 = 0;
        }

        *(v5 + 57) = *(v5 + 57) & 0xDF | v118;

        v119 = [v4 objectForKey:@"PrototypingOnly"];
        if ([v119 BOOLValue])
        {
          v120 = 64;
        }

        else
        {
          v120 = 0;
        }

        *(v5 + 57) = *(v5 + 57) & 0xBF | v120;

        v121 = [v4 objectForKey:@"IsFamilyService"];
        if ([v121 BOOLValue])
        {
          v122 = 0x80;
        }

        else
        {
          v122 = 0;
        }

        *(v5 + 57) = v122 & 0x80 | *(v5 + 57) & 0x7F;

        v123 = [v4 objectForKey:@"IsInvitationService"];
        *(v5 + 58) = *(v5 + 58) & 0xFE | [v123 BOOLValue];

        v124 = [v4 objectForKey:@"HadStandalonePreference"];
        if ([v124 BOOLValue])
        {
          v125 = 4;
        }

        else
        {
          v125 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xFB | v125;

        v126 = [v4 objectForKey:@"RestrictedLogging"];
        if ([v126 BOOLValue])
        {
          v127 = 8;
        }

        else
        {
          v127 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xF7 | v127;

        v128 = [v4 objectForKey:@"FirewallAutoEnroll"];
        if ([v128 BOOLValue])
        {
          v129 = 16;
        }

        else
        {
          v129 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xEF | v129;

        v130 = [v4 objectForKey:@"DisableFirewall"];
        if ([v130 BOOLValue])
        {
          v131 = 32;
        }

        else
        {
          v131 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xDF | v131;

        v132 = [v4 objectForKey:@"SupportsOfflineDelivery"];
        *(v5 + 59) = *(v5 + 59) & 0xFE | [v132 BOOLValue];

        v133 = [v4 objectForKey:@"SupportsBatchDelivery"];
        if ([v133 BOOLValue])
        {
          v134 = 8;
        }

        else
        {
          v134 = 0;
        }

        *(v5 + 59) = *(v5 + 59) & 0xF7 | v134;

        v135 = [v4 objectForKey:@"ApplicationKeyIndex"];
        v136 = [v135 unsignedIntValue];
        if (v136)
        {
          if ([v135 unsignedIntValue] > 1)
          {
            LOBYTE(v136) = 0;
          }

          else
          {
            LOBYTE(v136) = [v135 unsignedIntValue];
          }
        }

        v5->_applicationKeyIndex = v136;
        v137 = [v4 objectForKey:@"KTRegistrationDataIndex"];
        v138 = [v137 unsignedIntValue];
        if (v138)
        {
          if ([v137 unsignedIntValue] > 3)
          {
            LOBYTE(v138) = 0;
          }

          else
          {
            LOBYTE(v138) = [v137 unsignedIntValue];
          }
        }

        v5->_ktRegistrationDataIndex = v138;
        v139 = [v4 objectForKey:@"TinkerMessagingOnly"];
        *(v5 + 57) = *(v5 + 57) & 0xFE | [v139 BOOLValue];

        v140 = [v4 objectForKey:@"DefaultSendModeNormal"];
        if ([v140 BOOLValue])
        {
          v141 = 2;
        }

        else
        {
          v141 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xFD | v141;

        v5->_linkedDeviceRelationships = 1;
        v142 = [v4 objectForKey:@"LinkedDeviceRelationships"];
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v143 = [v142 countByEnumeratingWithState:&v182 objects:v187 count:16];
        if (v143)
        {
          v144 = v143;
          v145 = *v183;
          do
          {
            for (i = 0; i != v144; ++i)
            {
              if (*v183 != v145)
              {
                objc_enumerationMutation(v142);
              }

              v5->_linkedDeviceRelationships |= [*(*(&v182 + 1) + 8 * i) intValue];
            }

            v144 = [v142 countByEnumeratingWithState:&v182 objects:v187 count:16];
          }

          while (v144);
        }

        v147 = [v4 objectForKey:@"EnabledOnlyOnStandaloneDevices"];
        if ([v147 BOOLValue])
        {
          v148 = 0x80;
        }

        else
        {
          v148 = 0;
        }

        *(v5 + 56) = v148 & 0x80 | *(v5 + 56) & 0x7F;

        v149 = [v4 objectForKey:@"DisabledOnTinkerWatch"];
        if ([v149 BOOLValue])
        {
          v150 = 64;
        }

        else
        {
          v150 = 0;
        }

        *(v5 + 56) = *(v5 + 56) & 0xBF | v150;

        v151 = [v4 objectForKey:@"DuetIdentifiers"];
        v152 = sub_1A7AFED78(v151);
        duetIdentifiersIndices = v5->_duetIdentifiersIndices;
        v5->_duetIdentifiersIndices = v152;

        v154 = [v4 objectForKey:@"MinCompatibilityVersion"];
        v155 = v154;
        if (v154)
        {
          LOBYTE(v154) = [v154 unsignedCharValue];
        }

        v5->_minCompatibilityVersion = v154;
        v156 = [v4 objectForKey:@"AccountSyncMinCompatibilityVersion"];
        v157 = v156;
        if (v156)
        {
          LOBYTE(v156) = [v156 unsignedCharValue];
        }

        v5->_accountSyncMinCompatibilityVersion = v156;
        v158 = [v4 objectForKey:@"QueryServiceName"];
        queryService = v5->_queryService;
        v5->_queryService = v158;

        if (!v5->_queryService)
        {
          objc_storeStrong(&v5->_queryService, v5->_pushTopic);
        }

        v160 = [v4 objectForKey:@"LinkedServices"];
        linkedServiceNames = v5->_linkedServiceNames;
        v5->_linkedServiceNames = v160;

        v162 = [v4 objectForKey:@"QueryLinkedServices"];
        queryLinkedServiceNames = v5->_queryLinkedServiceNames;
        v5->_queryLinkedServiceNames = v162;

        v164 = [v4 objectForKey:@"IsUserDrivenRealTime"];
        if ([v164 BOOLValue])
        {
          v165 = 64;
        }

        else
        {
          v165 = 0;
        }

        *(v5 + 58) = *(v5 + 58) & 0xBF | v165;

        v166 = [v4 objectForKey:@"IsUltraConstrainedPushAllowed"];
        if ([v166 BOOLValue])
        {
          v167 = 2;
        }

        else
        {
          v167 = 0;
        }

        *(v5 + 59) = *(v5 + 59) & 0xFD | v167;

        v168 = [v4 objectForKey:@"RequiresPinnedIdentity"];
        if ([v168 BOOLValue])
        {
          v169 = 4;
        }

        else
        {
          v169 = 0;
        }

        *(v5 + 59) = *(v5 + 59) & 0xFB | v169;

        v170 = [v4 objectForKey:@"IgnoreServerStorageSSM"];
        if ([v170 BOOLValue])
        {
          v171 = 16;
        }

        else
        {
          v171 = 0;
        }

        *(v5 + 59) = *(v5 + 59) & 0xEF | v171;

        v172 = [v4 objectForKey:@"IsInternalOnly"];
        if ([v172 BOOLValue])
        {
          v173 = 32;
        }

        else
        {
          v173 = 0;
        }

        *(v5 + 59) = *(v5 + 59) & 0xDF | v173;

        v174 = [v4 objectForKey:@"IPMessageFormat"];
        v5->_ipMessageFormat = [v174 unsignedCharValue];

        v175 = [v4 objectForKey:@"allow-expensive-quality-metrics"];
        v5->_allowExpensiveQualityMetrics = [v175 BOOLValue];

        goto LABEL_197;
      }

      *(v5 + 57) |= 2u;
      v24 = v22;
    }

    launchNotification = v5->_launchNotification;
    v5->_launchNotification = v24;

    goto LABEL_11;
  }

  v25 = 0;
LABEL_198:

  return v25;
}

- (id)_resolveProtocolName:(id)a3
{
  v3 = [a3 objectForKey:@"ProtocolName"];
  v4 = v3;
  v5 = @"com.apple.private.alloy";
  if (v3 && ([v3 isEqualToString:@"com.apple.private.alloy"] & 1) == 0)
  {
    v5 = v4;
  }

  return v5;
}

- (id)_stringToUseGivenName:(id)a3
{
  v4 = a3;
  if (!v4 || (v5 = [(NSString *)self->_identifier isEqualToString:v4], identifier = v4, v5))
  {
    identifier = self->_identifier;
  }

  v7 = identifier;

  return v7;
}

- (id)_resolveShouldUseMachNotification:(id)a3
{
  v4 = a3;
  v5 = [(IDSServiceProperties *)self _identifierWithProtocolAndMachServiceSuffix];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A6180] sharedDefaults];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v7 = [(IDSServiceProperties *)self preferencesDomain];
  [v5 setValue:v6 forKey:@"needsLaunchOnNearbyDevicesChanged" appID:v7];

  v9 = [MEMORY[0x1E69A6180] sharedDefaults];
  v8 = [(IDSServiceProperties *)self preferencesDomain];
  [v9 synchronizeAppID:v8];
}

- (BOOL)needsLaunchOnNearbyDevicesChanged
{
  v3 = [(IDSServiceProperties *)self allowLaunchOnNearbyDevicesChanged];
  if (v3)
  {
    v4 = [MEMORY[0x1E69A6180] sharedDefaults];
    v5 = [(IDSServiceProperties *)self preferencesDomain];
    v6 = [v4 copyValueForKey:@"needsLaunchOnNearbyDevicesChanged" appID:v5];
    v7 = [v6 BOOLValue];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (NSString)preferencesDomain
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = qword_1EB2B3870;
  v4 = [(IDSServiceProperties *)self identifier];
  v5 = [v2 stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (NSString)legacyPreferencesDomain
{
  v3 = [(IDSServiceProperties *)self legacyIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = qword_1EB2B3870;
    v6 = [(IDSServiceProperties *)self legacyIdentifier];
    v7 = [v4 stringWithFormat:@"%@.%@", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFirewallEnabled
{
  if (![(IDSServiceProperties *)self allowCrossAccountMessages]|| (*(self + 58) & 0x20) != 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(self + 57);
    if (v3 >= 0)
    {
      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)disallowFirewallAutoEnroll
{
  if ((*(self + 58) & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return ![(IDSServiceProperties *)self isFirewallEnabled];
  }
}

- (NSArray)allInterestedQueryServices
{
  v7[1] = *MEMORY[0x1E69E9840];
  queryLinkedServiceNames = self->_queryLinkedServiceNames;
  if (queryLinkedServiceNames || self->_queryService)
  {
    if ([(NSArray *)queryLinkedServiceNames count])
    {
      v4 = [MEMORY[0x1E695DF70] arrayWithObject:self->_queryService];
      [v4 addObjectsFromArray:self->_queryLinkedServiceNames];
      v5 = [v4 copy];
    }

    else
    {
      v7[0] = self->_queryService;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(IDSServiceProperties);
  [(IDSServiceProperties *)v4 setServiceName:self->_serviceName];
  [(IDSServiceProperties *)v4 setProtocolName:self->_protocolName];
  [(IDSServiceProperties *)v4 setDisplayName:self->_displayName];
  [(IDSServiceProperties *)v4 setIdentifier:self->_identifier];
  [(IDSServiceProperties *)v4 setLegacyIdentifier:self->_legacyIdentifier];
  [(IDSServiceProperties *)v4 setPushTopic:self->_pushTopic];
  objc_storeStrong(&v4->_launchNotification, self->_launchNotification);
  *(v4 + 57) = *(v4 + 57) & 0xFD | *(self + 57) & 2;
  [(IDSServiceProperties *)v4 setSuperService:self->_superService];
  [(IDSServiceProperties *)v4 setDataUsageBundleID:self->_dataUsageBundleID];
  v4->_adHocServiceType = self->_adHocServiceType;
  v4->_controlCategory = self->_controlCategory;
  v4->_constraintType = self->_constraintType;
  v4->_allowedCommandGroup = self->_allowedCommandGroup;
  v4->_firewallNotificationStyle = self->_firewallNotificationStyle;
  v4->_firewallNotificationRateLimitType = self->_firewallNotificationRateLimitType;
  objc_storeStrong(&v4->_allowedTrafficClassesIndices, self->_allowedTrafficClassesIndices);
  v5 = *(v4 + 52) & 0xFD | (2 * ((*(self + 52) >> 1) & 1));
  *(v4 + 52) = v5;
  v6 = v5 & 0xFFFFFFEF | (16 * ((*(self + 52) >> 4) & 1));
  *(v4 + 52) = v6;
  v7 = v6 & 0xFFFFFFDF | (32 * ((*(self + 52) >> 5) & 1));
  *(v4 + 52) = v7;
  LOBYTE(v7) = v7 & 0xBF | (((*(self + 52) & 0x40) != 0) << 6);
  *(v4 + 52) = v7;
  v8 = *(self + 52) & 0x80 | v7 & 0x7F;
  *(v4 + 52) = v8;
  v9 = *(v4 + 57) & 0xFB | (4 * ((*(self + 57) >> 2) & 1));
  *(v4 + 57) = v9;
  v10 = v9 & 0xFFFFFFF7 | (8 * ((*(self + 57) >> 3) & 1));
  *(v4 + 57) = v10;
  v11 = v10 & 0xFFFFFFEF | (16 * ((*(self + 57) >> 4) & 1));
  *(v4 + 57) = v11;
  v12 = v11 & 0xFFFFFFDF | (32 * ((*(self + 57) >> 5) & 1));
  *(v4 + 57) = v12;
  LOBYTE(v12) = v12 & 0xBF | (((*(self + 57) & 0x40) != 0) << 6);
  *(v4 + 57) = v12;
  v13 = *(self + 57) & 0x80 | v12 & 0x7F;
  *(v4 + 57) = v13;
  *(v4 + 58) = *(v4 + 58) & 0xFE | *(self + 58) & 1;
  v14 = *(v4 + 53) & 0xFE | *(self + 53) & 1;
  *(v4 + 53) = v14;
  v15 = v14 & 0xFFFFFFFD | (2 * ((*(self + 53) >> 1) & 1));
  *(v4 + 53) = v15;
  v16 = v8 & 0xF7 | (8 * ((*(self + 52) & 8) != 0));
  *(v4 + 52) = v16;
  v17 = v15 & 0xFFFFFFF7 | (8 * ((*(self + 53) >> 3) & 1));
  *(v4 + 53) = v17;
  v18 = v17 & 0xFFFFFFEF | (16 * ((*(self + 53) >> 4) & 1));
  *(v4 + 53) = v18;
  v19 = v18 & 0xFFFFFFDF | (32 * ((*(self + 53) >> 5) & 1));
  *(v4 + 53) = v19;
  LOBYTE(v19) = v19 & 0xBF | (((*(self + 53) & 0x40) != 0) << 6);
  *(v4 + 53) = v19;
  LOBYTE(v12) = *(self + 53) & 0x80 | v19 & 0x7F;
  *(v4 + 53) = v12;
  v20 = *(v4 + 54) & 0xFE | *(self + 54) & 1;
  *(v4 + 54) = v20;
  v21 = v20 & 0xFFFFFFFD | (2 * ((*(self + 54) >> 1) & 1));
  *(v4 + 54) = v21;
  v4->_allowLaunchOnNearbyDevicesChanged = self->_allowLaunchOnNearbyDevicesChanged;
  v22 = v21 & 0xFFFFFFFB | (4 * ((*(self + 54) >> 2) & 1));
  *(v4 + 54) = v22;
  v23 = v22 & 0xFFFFFFF7 | (8 * ((*(self + 54) >> 3) & 1));
  *(v4 + 54) = v23;
  v24 = v23 & 0xFFFFFFEF | (16 * ((*(self + 54) >> 4) & 1));
  *(v4 + 54) = v24;
  v25 = v24 & 0xFFFFFFDF | (32 * ((*(self + 54) >> 5) & 1));
  *(v4 + 54) = v25;
  LOBYTE(v25) = v25 & 0xBF | (((*(self + 54) & 0x40) != 0) << 6);
  *(v4 + 54) = v25;
  *(v4 + 54) = *(self + 54) & 0x80 | v25 & 0x7F;
  v26 = *(v4 + 55) & 0xFE | *(self + 55) & 1;
  *(v4 + 55) = v26;
  v27 = v26 & 0xFFFFFFFD | (2 * ((*(self + 55) >> 1) & 1));
  *(v4 + 55) = v27;
  v28 = v27 & 0xFFFFFFFB | (4 * ((*(self + 55) >> 2) & 1));
  *(v4 + 55) = v28;
  v29 = v28 & 0xFFFFFFEF | (16 * ((*(self + 55) >> 4) & 1));
  *(v4 + 55) = v29;
  v30 = v29 & 0xFFFFFFDF | (32 * ((*(self + 55) >> 5) & 1));
  *(v4 + 55) = v30;
  LOBYTE(v30) = v30 & 0xBF | (((*(self + 55) & 0x40) != 0) << 6);
  *(v4 + 55) = v30;
  LOBYTE(v19) = *(self + 55) & 0x80 | v30 & 0x7F;
  *(v4 + 55) = v19;
  v31 = *(v4 + 56) & 0xFE | *(self + 56) & 1;
  *(v4 + 56) = v31;
  v32 = v31 & 0xFFFFFFFD | (2 * ((*(self + 56) >> 1) & 1));
  *(v4 + 56) = v32;
  v33 = v32 & 0xFFFFFFFB | (4 * ((*(self + 56) >> 2) & 1));
  *(v4 + 56) = v33;
  *(v4 + 52) = *(self + 52) & 4 | v16 & 0xFB;
  *(v4 + 53) = *(self + 53) & 4 | v12 & 0xFB;
  *(v4 + 55) = *(self + 55) & 8 | v19 & 0xF7;
  v34 = v33 & 0xFFFFFFEF | (16 * ((*(self + 56) >> 4) & 1));
  *(v4 + 56) = v34;
  v35 = v34 & 0xFFFFFFDF | (32 * ((*(self + 56) >> 5) & 1));
  *(v4 + 56) = v35;
  v4->_linkedDeviceRelationships = self->_linkedDeviceRelationships;
  v36 = *(self + 56) & 0x80 | v35 & 0x7F;
  *(v4 + 56) = v36;
  *(v4 + 57) = v13 & 0xFE | *(self + 57) & 1;
  v37 = v36 & 0xFFFFFFBF | (((*(self + 56) >> 6) & 1) << 6);
  *(v4 + 56) = v37;
  *(v4 + 56) = v37 & 0xF7 | *(self + 56) & 8;
  objc_storeStrong(&v4->_duetIdentifiersIndices, self->_duetIdentifiersIndices);
  v4->_minCompatibilityVersion = self->_minCompatibilityVersion;
  v4->_accountSyncMinCompatibilityVersion = self->_accountSyncMinCompatibilityVersion;
  v4->_dataProtectionClass = self->_dataProtectionClass;
  [(IDSServiceProperties *)v4 setQueryService:self->_queryService];
  [(IDSServiceProperties *)v4 setLinkedServiceNames:self->_linkedServiceNames];
  [(IDSServiceProperties *)v4 setQueryLinkedServiceNames:self->_queryLinkedServiceNames];
  v38 = *(v4 + 58) & 0xFD | (2 * ((*(self + 58) >> 1) & 1));
  *(v4 + 58) = v38;
  v4->_applicationKeyIndex = self->_applicationKeyIndex;
  v4->_ktRegistrationDataIndex = self->_ktRegistrationDataIndex;
  v39 = v38 & 0xFFFFFFEF | (16 * ((*(self + 58) >> 4) & 1));
  *(v4 + 58) = v39;
  LOBYTE(v39) = v39 & 0xDF | (32 * ((*(self + 58) & 0x20) != 0));
  *(v4 + 58) = v39;
  v40 = *(v4 + 59) & 0xFE | *(self + 59) & 1;
  *(v4 + 59) = v40;
  v41 = v40 & 0xFFFFFFF7 | (8 * ((*(self + 59) >> 3) & 1));
  *(v4 + 59) = v41;
  *(v4 + 58) = *(self + 58) & 0x40 | v39 & 0xBF;
  v42 = v41 & 0xFFFFFFFD | (2 * ((*(self + 59) >> 1) & 1));
  *(v4 + 59) = v42;
  v43 = v42 & 0xFFFFFFFB | (4 * ((*(self + 59) >> 2) & 1));
  *(v4 + 59) = v43;
  v44 = v43 & 0xFFFFFFEF | (16 * ((*(self + 59) >> 4) & 1));
  *(v4 + 59) = v44;
  *(v4 + 59) = v44 & 0xDF | *(self + 59) & 0x20;
  v4->_ipMessageFormat = self->_ipMessageFormat;
  v4->_allowExpensiveQualityMetrics = self->_allowExpensiveQualityMetrics;
  return v4;
}

@end