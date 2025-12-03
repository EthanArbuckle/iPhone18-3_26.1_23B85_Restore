@interface MXAdditiveRoutingManager
+ (id)sharedInstance;
- (MXAdditiveRoutingManager)init;
- (NSDictionary)detailedRoutesDescription;
- (id)copyActiveSessionsInfo;
- (id)copyActiveVoiceOverSessionPlayingToOnDemandVAD;
- (id)copyAndUpdateSessionInformation:(id)information;
- (id)copyVADNamesFromSessionAudioBehavior;
- (int)sendActiveSessionsInfoToVA;
- (void)dealloc;
- (void)discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:(id)needed;
- (void)populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:(id)behaviors newVADIDToNameMap:(id)map;
- (void)refreshDetailedRouteDescriptionCache;
- (void)setDetailedRoutesDescription:(id)description;
@end

@implementation MXAdditiveRoutingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[MXAdditiveRoutingManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_16;
}

- (id)copyActiveVoiceOverSessionPlayingToOnDemandVAD
{
  v16 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"VoiceOver"] && objc_msgSend(v7, "isActive") && objc_msgSend(CMSUtility_GetCurrentAudioDestination(v7), "containsString:", 0x1F2893BD0))
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)refreshDetailedRouteDescriptionCache
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];
  if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXAdditiveRoutingManager setDetailedRoutesDescription:](self, "setDetailedRoutesDescription:", [MEMORY[0x1E695DF20] dictionary]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager speechDetectionVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager musicVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager perAppAirPlayVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager lowLatencyVADID]);
  if (CMSMVAUtility_IsAdditiveRoutingEnabled())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    vadNameToID = [(MXAdditiveRoutingManager *)self vadNameToID];
    v5 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(vadNameToID);
          }

          -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [-[NSDictionary objectForKey:](-[MXAdditiveRoutingManager vadNameToID](self "vadNameToID")]);
        }

        v6 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }
  }

  if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v22;
    if (os_log_type_enabled(v9, type))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v24 = 136315138;
      v25 = "[MXAdditiveRoutingManager refreshDetailedRouteDescriptionCache]";
      LODWORD(v16) = 12;
      v14 = &v24;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock unlock:v14];
  v12 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)detailedRoutesDescription
{
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];
  v3 = self->mDetailedRoutesDescription;
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock unlock];
  return v3;
}

MXAdditiveRoutingManager *__42__MXAdditiveRoutingManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAdditiveRoutingManager);
  sharedInstance_sSharedInstance_16 = result;
  return result;
}

- (MXAdditiveRoutingManager)init
{
  v4.receiver = self;
  v4.super_class = MXAdditiveRoutingManager;
  v2 = [(MXAdditiveRoutingManager *)&v4 init];
  if (v2)
  {
    v2->mDetailedRoutesDescription = objc_alloc_init(MEMORY[0x1E695DF20]);
    v2->mDetailedRoutesDescriptionLock = objc_alloc_init(MEMORY[0x1E696AE68]);
    v2->_mostRecentActiveSessions = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v2;
}

- (void)dealloc
{
  self->mDetailedRoutesDescription = 0;

  self->mDetailedRoutesDescriptionLock = 0;
  self->_mostRecentActiveSessions = 0;

  self->_vadIDToName = 0;
  self->_vadNameToID = 0;
  v3.receiver = self;
  v3.super_class = MXAdditiveRoutingManager;
  [(MXAdditiveRoutingManager *)&v3 dealloc];
}

- (void)setDetailedRoutesDescription:(id)description
{
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];

  self->mDetailedRoutesDescription = description;
  mDetailedRoutesDescriptionLock = self->mDetailedRoutesDescriptionLock;

  [(NSRecursiveLock *)mDetailedRoutesDescriptionLock unlock];
}

- (int)sendActiveSessionsInfoToVA
{
  v13 = *MEMORY[0x1E69E9840];
  result = CMSMVAUtility_IsAdditiveRoutingEnabled();
  if (result)
  {
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
    {
      result = 0;
    }

    else
    {
      v12 = 0;
      copyActiveSessionsInfo = [(MXAdditiveRoutingManager *)self copyActiveSessionsInfo];
      if (([copyActiveSessionsInfo isEqual:{-[MXAdditiveRoutingManager mostRecentActiveSessions](self, "mostRecentActiveSessions")}] & 1) == 0)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v5 setObject:copyActiveSessionsInfo forKey:0x1F28974D0];
        v11 = 0;
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v12 = vaemSetRouteConfigurationDictionaryOnVAD(v5, 0, 0, &v11);
        if (v12)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(MXAdditiveRoutingManager *)self setMostRecentActiveSessions:copyActiveSessionsInfo, v9, v10];
      }

      result = v12;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyAndUpdateSessionInformation:(id)information
{
  v121 = *MEMORY[0x1E69E9840];
  if (information)
  {
    v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = information;
    v76 = [information countByEnumeratingWithState:&v105 objects:v120 count:16];
    if (v76)
    {
      v74 = *v106;
      do
      {
        v4 = 0;
        do
        {
          if (*v106 != v74)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v78 = v4;
          v6 = *(*(&v105 + 1) + 8 * v4);
          v7 = [v6 objectForKey:{0x1F28979D0, v62, v65}];
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v101 objects:v119 count:16];
          if (v8)
          {
            v9 = *v102;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v102 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v101 + 1) + 8 * i);
                if ([v11 unsignedIntValue])
                {
                  v12 = +[MXSessionManagerBase copySessionWithAudioSessionID:](MXSessionManagerBase, "copySessionWithAudioSessionID:", [v11 unsignedIntValue]);
                  if (v12)
                  {
                    if (dword_1EB75DE40)
                    {
                      v100 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    if ([v12 updateAudioBehaviorFromVARouteConfig:{v6, v63, v66}])
                    {
                      [v84 addObject:v12];
                    }
                  }

                  else
                  {
                    v100 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v101 objects:v119 count:16];
            }

            while (v8);
          }

          v15 = [v6 objectForKey:{0x1F28979B0, v63, v66}];
          v16 = [v6 objectForKey:0x1F28979F0];
          v17 = v16;
          if (v15)
          {
            v18 = v16 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            v100 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            [v80 setObject:v16 forKey:v15];
            [v70 setObject:v15 forKey:v17];
            if (dword_1EB75DE40)
            {
              v100 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [v15 unsignedIntValue]);
          }

          v4 = v78 + 1;
        }

        while ((v78 + 1) != v76);
        v76 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
      }

      while (v76);
    }

    allKeys = [(NSDictionary *)[(MXAdditiveRoutingManager *)self vadIDToName:v62] allKeys];
    allKeys2 = [v80 allKeys];
    v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (allKeys)
    {
      v23 = [(NSDictionary *)[(MXAdditiveRoutingManager *)self detailedRoutesDescription] mutableCopy];
      v24 = [allKeys2 differenceFromArray:allKeys];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      removals = [v24 removals];
      v25 = [removals countByEnumeratingWithState:&v95 objects:v111 count:16];
      if (v25)
      {
        v26 = *v96;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v96 != v26)
            {
              objc_enumerationMutation(removals);
            }

            v28 = *(*(&v95 + 1) + 8 * j);
            if (dword_1EB75DE40)
            {
              v100 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v30 = v100;
              if (os_log_type_enabled(v29, type))
              {
                v31 = v30;
              }

              else
              {
                v31 = v30 & 0xFFFFFFFE;
              }

              if (v31)
              {
                object = [v28 object];
                v112 = 136315394;
                v113 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
                v114 = 2114;
                v115 = object;
                LODWORD(v67) = 22;
                v64 = &v112;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v83 addObject:{objc_msgSend(v28, "object", v64, v67)}];
            [v23 removeObjectForKey:{objc_msgSend(v28, "object")}];
          }

          v25 = [removals countByEnumeratingWithState:&v95 objects:v111 count:16];
        }

        while (v25);
      }

      [(MXAdditiveRoutingManager *)self setDetailedRoutesDescription:v23];
    }

    v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
    copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    copyMXCoreSessionSecureList = [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure copyMXCoreSessionSecureList];
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v75 addObjectsFromArray:copyMXCoreSessionList];
    [v75 addObjectsFromArray:copyMXCoreSessionSecureList];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v82 = [v75 countByEnumeratingWithState:&v91 objects:v110 count:16];
    if (v82)
    {
      v79 = *v92;
      do
      {
        for (k = 0; k != v82; ++k)
        {
          if (*v92 != v79)
          {
            objc_enumerationMutation(v75);
          }

          v34 = *(*(&v91 + 1) + 8 * k);
          if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v34 audioCategory]))
          {
            v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:CMSUtility_GetCurrentOutputVADID(v34)];
            v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:CMSUtility_GetCurrentInputVADID(v34)];
            v37 = [v80 objectForKey:v35];
            v38 = [v80 objectForKey:v36];
            if (v38)
            {
              v39 = 0;
            }

            else
            {
              v39 = v37 == 0;
            }

            if (v39)
            {
              if (([v83 containsObject:v35] & 1) != 0 || objc_msgSend(v83, "containsObject:", v36))
              {
                if (dword_1EB75DE40)
                {
                  v100 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v41 = v100;
                  if (os_log_type_enabled(v40, type))
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v42 = v41 & 0xFFFFFFFE;
                  }

                  if (v42)
                  {
                    clientName = [v34 clientName];
                    v112 = 136315394;
                    v113 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
                    v114 = 2114;
                    v115 = clientName;
                    LODWORD(v67) = 22;
                    v64 = &v112;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                [v34 setAudioBehaviour:{0, v64, v67}];
                [v34 setAudioDestinationPriority:0];
                cmsUpdateAudioBehavior(v34);
                [v77 addObject:v34];
                [v84 addObject:v34];
                if ([v34 isMemberOfClass:objc_opt_class()])
                {
                  CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(v34, 0);
                }

                goto LABEL_90;
              }
            }

            else if (v37 && v38)
            {
LABEL_90:

              continue;
            }

            if (([v83 containsObject:v35] & 1) != 0 || objc_msgSend(v83, "containsObject:", v36))
            {
              if (v37)
              {
                v44 = @"AudioBehaviour_Source";
              }

              else
              {
                v44 = @"AudioBehaviour_Destination";
              }

              v73 = CMSUtility_CopySessionAudioBehaviour(v34);
              v45 = [objc_msgSend(v34 "audioBehaviour")];
              [v45 removeObjectForKey:v44];
              v46 = [v73 objectForKey:v44];
              if (v46)
              {
                if (dword_1EB75DE40)
                {
                  v100 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v48 = v100;
                  v49 = os_log_type_enabled(v47, type);
                  v50 = v48 & 0xFFFFFFFE;
                  if (v49)
                  {
                    v50 = v48;
                  }

                  if (v50)
                  {
                    clientName2 = [v34 clientName];
                    v112 = 136315650;
                    v113 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
                    v114 = 2114;
                    v115 = clientName2;
                    v116 = 2114;
                    v117 = v45;
                    LODWORD(v67) = 32;
                    v64 = &v112;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                [v45 setObject:v46 forKey:v44];
                [v34 setAudioBehaviour:v45];
                if (!v37)
                {
                  [v34 setAudioDestinationPriority:v46];
                }

                CMSMNotificationUtility_PostSessionAudioBehaviourDidChange(v34);
                if ([v34 isMemberOfClass:objc_opt_class()])
                {
                  CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(v34, 0);
                }

                [v77 addObject:{v34, v64, v67}];
                [v84 addObject:v34];
              }
            }

            goto LABEL_90;
          }
        }

        v82 = [v75 countByEnumeratingWithState:&v91 objects:v110 count:16];
      }

      while (v82);
    }

    if (dword_1EB75DE40)
    {
      v100 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v53 = v100;
      if (os_log_type_enabled(v52, type))
      {
        v54 = v53;
      }

      else
      {
        v54 = v53 & 0xFFFFFFFE;
      }

      if (v54)
      {
        v112 = 136315650;
        v113 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
        v114 = 2114;
        v115 = v80;
        v116 = 2114;
        v117 = v70;
        LODWORD(v67) = 32;
        v64 = &v112;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXAdditiveRoutingManager *)self setVadIDToName:v80, v64, v67];
    [(MXAdditiveRoutingManager *)self setVadNameToID:v70];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v55 = [v77 countByEnumeratingWithState:&v87 objects:v109 count:16];
    if (v55)
    {
      v56 = *v88;
      do
      {
        for (m = 0; m != v55; ++m)
        {
          if (*v88 != v56)
          {
            objc_enumerationMutation(v77);
          }

          v58 = *(*(&v87 + 1) + 8 * m);
          if ([v58 isActive])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_initWeak(location, v58);
              v59 = MXGetSerialQueue();
              v85[0] = MEMORY[0x1E69E9820];
              v85[1] = 3221225472;
              v85[2] = __60__MXAdditiveRoutingManager_copyAndUpdateSessionInformation___block_invoke;
              v85[3] = &unk_1E7AEA958;
              objc_copyWeak(&v86, location);
              MXDispatchAsync("[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]", "MXAdditiveRoutingManager.m", 456, 0, 0, v59, v85);
              objc_destroyWeak(&v86);
              objc_destroyWeak(location);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                MXSimulateCrash("Active MXCoreSessionSecure has lost an on-demand VAD! Please file a radar against 'MediaExperience Session | All'");
              }
            }
          }
        }

        v55 = [v77 countByEnumeratingWithState:&v87 objects:v109 count:16];
      }

      while (v55);
    }
  }

  else
  {
    v84 = 0;
  }

  v60 = *MEMORY[0x1E69E9840];
  return v84;
}

void __60__MXAdditiveRoutingManager_copyAndUpdateSessionInformation___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cmsBeginInterruptionGuts(v2, 0, 2))
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtilityApplier_PostNotification_StopCommand(v2, 0);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)copyActiveSessionsInfo
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyActiveSessionsInfoForAdditiveRouting = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveSessionsInfoForAdditiveRouting];
  [v2 addObjectsFromArray:copyActiveSessionsInfoForAdditiveRouting];

  copyActiveSessionsInfoForAdditiveRouting2 = [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure copyActiveSessionsInfoForAdditiveRouting];
  [v2 addObjectsFromArray:copyActiveSessionsInfoForAdditiveRouting2];

  return v2;
}

- (id)copyVADNamesFromSessionAudioBehavior
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v8 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "audioBehaviour"), "objectForKey:", @"AudioBehaviour_Destination"}];
        [v8 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "audioBehaviour"), "objectForKey:", @"AudioBehaviour_Source"}];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              if ([v13 containsString:0x1F2893BD0] && (objc_msgSend(v3, "containsObject:", v13) & 1) == 0)
              {
                [v3 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:(id)behaviors newVADIDToNameMap:(id)map
{
  v22 = *MEMORY[0x1E69E9840];
  copyVADNamesFromSessionAudioBehavior = [(MXAdditiveRoutingManager *)self copyVADNamesFromSessionAudioBehavior];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [copyVADNamesFromSessionAudioBehavior countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(copyVADNamesFromSessionAudioBehavior);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![behaviors objectForKey:v11])
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSMUtility_GetVADIDForVADName(v11)];
          [behaviors setObject:v12 forKey:v11];
          [map setObject:v11 forKey:v12];
        }
      }

      v8 = [copyVADNamesFromSessionAudioBehavior countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXAdditiveRoutingManager setVadIDToName:v15], "setVadIDToName:", map];
  [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setVadNameToID:"setVadNameToID:", behaviors];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:(id)needed
{
  v29 = *MEMORY[0x1E69E9840];
  allKeys = [(NSDictionary *)[(MXAdditiveRoutingManager *)self vadIDToName] allKeys];
  if (dword_1EB75DE40)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (needed)
  {
    v17 = -[NSDictionary mutableCopy]([+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager detailedRoutesDescription], "mutableCopy");
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [needed countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(needed);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if (![(NSArray *)allKeys containsObject:v10, v15, v16])
          {
            if (dword_1EB75DE40)
            {
              v23 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v12 = v23;
              if (os_log_type_enabled(v11, type))
              {
                v13 = v12;
              }

              else
              {
                v13 = v12 & 0xFFFFFFFE;
              }

              if (v13)
              {
                v25 = 136315394;
                v26 = "[MXAdditiveRoutingManager discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:]";
                v27 = 2114;
                v28 = v10;
                LODWORD(v16) = 22;
                v15 = &v25;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v17 removeObjectForKey:{v10, v15, v16}];
          }
        }

        v7 = [needed countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    [+[MXAdditiveRoutingManager setDetailedRoutesDescription:v15], "setDetailedRoutesDescription:", v17];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end