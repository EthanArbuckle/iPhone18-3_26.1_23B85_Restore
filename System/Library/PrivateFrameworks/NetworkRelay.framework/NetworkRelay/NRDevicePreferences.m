@interface NRDevicePreferences
- (BOOL)hasPreferWiFiRequest;
- (BOOL)hasQuickRelayRequest;
- (NRBluetoothLinkPreferences)bluetoothLinkPreferences;
- (NRCompanionLinkPreferences)companionLinkPreferences;
- (NRDevicePreferences)initWithDeviceIdentifier:(id)a3;
- (NSSet)policyTrafficClassifiers;
- (const)copyDetailsLocked;
- (id)description;
- (uint64_t)restartConnectionLocked;
- (void)addPreferWiFiRequest;
- (void)addQuickRelayRequest;
- (void)cancel;
- (void)cancelConnectionLocked;
- (void)dealloc;
- (void)deviceSetupCompleted;
- (void)deviceSetupStarted;
- (void)removeAllQuickRelayRequests;
- (void)removePreferWiFiRequest;
- (void)removePreferWiFiRequestLocked;
- (void)removeQuickRelayRequest;
- (void)removeQuickRelayRequestLocked:(uint64_t)a1;
- (void)resetCompanionLinkPreferencesLocked;
- (void)sendDevicePreferencesLocked;
- (void)setBluetoothLinkPreferences:(id)a3;
- (void)setBluetoothLinkPreferencesLocked:(uint64_t)a1;
- (void)setCompanionLinkPreferences:(id)a3;
- (void)setPolicyTrafficClassifiers:(id)a3;
@end

@implementation NRDevicePreferences

- (void)setPolicyTrafficClassifiers:(id)a3
{
  v25 = a3;
  if (v25)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v25 copyItems:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalPolicyTrafficClassifiers = self->_internalPolicyTrafficClassifiers;
  }

  else
  {
    internalPolicyTrafficClassifiers = 0;
  }

  if ([v5 isEqual:internalPolicyTrafficClassifiers])
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v7 = nrCopyLogObj_sNRLogObj_115;
      v22 = _NRCopyPolicyTrafficClassifiersDescription(v5);
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@ policy traffic classifiers already set to %@", v8, v9, v10, v11, v12, "");
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v13 = nrCopyLogObj_sNRLogObj_115;
      if (self)
      {
        v14 = self->_internalPolicyTrafficClassifiers;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = v13;
      v23 = _NRCopyPolicyTrafficClassifiersDescription(v15);
      v24 = _NRCopyPolicyTrafficClassifiersDescription(v5);
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@ setting policy traffic classifiers from %@ to %@", v17, v18, v19, v20, v21, "");
    }

    if (self)
    {
      objc_storeStrong(&self->_internalPolicyTrafficClassifiers, v5);
      [(NRDevicePreferences *)self sendDevicePreferencesLocked];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sendDevicePreferencesLocked
{
  location[2] = *MEMORY[0x277D85DE8];
  if (!a1 || (os_unfair_lock_assert_owner((a1 + 16)), ([a1 isNRDTestServer] & 1) != 0))
  {
LABEL_34:
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_assert_owner((a1 + 16));
  v2 = *(a1 + 64);
  if (([v2 isNotEmpty] & 1) != 0 || objc_msgSend(*(a1 + 80), "count") || *(a1 + 8) == 1)
  {

    goto LABEL_7;
  }

  v31 = *(a1 + 9);

  if (v31)
  {
LABEL_7:
    if (!*(a1 + 56))
    {
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      v3 = nrXPCCopyQueue_nrXPCQueue;
      mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v3, 2uLL);
      v5 = *(a1 + 56);
      *(a1 + 56) = mach_service;

      objc_initWeak(location, a1);
      v6 = *(a1 + 56);
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke;
      v79[3] = &unk_27996B2D8;
      objc_copyWeak(&v80, location);
      xpc_connection_set_event_handler(v6, v79);

      v7 = *(a1 + 56);
      xpc_connection_activate(v7);

      objc_destroyWeak(&v80);
      objc_destroyWeak(location);
    }

    v13 = [(NRDevicePreferences *)a1 copyDetailsLocked];
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ sending device preferences: %@", v8, v9, v10, v11, v12, "");
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      xpc_dictionary_set_uint64(v14, "Type", 0xBuLL);
      v16 = [a1 deviceIdentifier];
      v17 = [v16 nrDeviceIdentifier];
      v18 = v15;
      v19 = v17;
      v20 = v19;
      if (v19)
      {
        location[0] = 0;
        location[1] = 0;
        [v19 getUUIDBytes:location];
        xpc_dictionary_set_uuid(v18, "DeviceIdentifier", location);
        goto LABEL_19;
      }

      v40 = nrCopyLogObj_117();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v52 = v40;
        v53 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

        if (!v53)
        {
          goto LABEL_19;
        }
      }

      v54 = nrCopyLogObj_117();
      _NRLogWithArgs(v54, 17, "%s called with null uuid", v55, v56, v57, v58, v59, "nr_xpc_dictionary_set_nsuuid");

LABEL_19:
      xpc_dictionary_set_BOOL(v18, "DevicePreferencesIsDeviceSetupInProgress", *(a1 + 8));
      if ([*(a1 + 64) isNotEmpty])
      {
        v21 = [*(a1 + 64) copyEncodedXPCDict];
        xpc_dictionary_set_value(v18, "DevicePreferencesBTLinkPreferences", v21);
      }

      if (![*(a1 + 80) count])
      {
        goto LABEL_31;
      }

      v22 = xpc_array_create(0, 0);
      if (v22)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v23 = *(a1 + 80);
        v24 = [v23 countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v24)
        {
          v25 = *v76;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v76 != v25)
              {
                objc_enumerationMutation(v23);
              }

              xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v75 + 1) + 8 * i) UTF8String]);
            }

            v24 = [v23 countByEnumeratingWithState:&v75 objects:v81 count:16];
          }

          while (v24);
        }

        xpc_dictionary_set_value(v18, "DevicePreferencesPolicyTrafficClassifiers", v22);
LABEL_31:
        objc_initWeak(location, a1);
        v27 = *(a1 + 56);
        if (nrXPCCopyQueue_onceToken != -1)
        {
          dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
        }

        v28 = nrXPCCopyQueue_nrXPCQueue;
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke_2;
        v72[3] = &unk_27996AEF8;
        objc_copyWeak(&v74, location);
        v29 = v13;
        v73 = v29;
        xpc_connection_send_message_with_reply(v27, v18, v28, v72);

        objc_destroyWeak(&v74);
        objc_destroyWeak(location);

        goto LABEL_34;
      }

      v41 = nrCopyLogObj_117();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v60 = v41;
        v61 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

        if (!v61)
        {
LABEL_57:
          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v68 = *__error();
          v69 = _os_log_pack_fill();
          __os_log_helper_1_2_3_8_34_8_0_4_0(v69, "nr_xpc_array_create");
LABEL_58:
          v70 = nrCopyLogObj_117();
          _NRLogAbortWithPack(v70);
        }
      }

      v62 = nrCopyLogObj_117();
      _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", v63, v64, v65, v66, v67, "");

      goto LABEL_57;
    }

    v39 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v39;
      v43 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_52:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v50 = *__error();
        v51 = _os_log_pack_fill();
        __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v51, "nr_xpc_dictionary_create");
        goto LABEL_58;
      }
    }

    v44 = nrCopyLogObj_117();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v45, v46, v47, v48, v49, "");

    goto LABEL_52;
  }

  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v32 = nrCopyLogObj_sNRLogObj_115;
    v71 = [(NRDevicePreferences *)a1 copyDetailsLocked];
    _NRLogWithArgs(v32, 0, "%s%.30s:%-4d %@ cancelling connection because not needed %@", v33, v34, v35, v36, v37, "");
  }

  v38 = *MEMORY[0x277D85DE8];

  [(NRDevicePreferences *)a1 cancelConnectionLocked];
}

- (const)copyDetailsLocked
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 4);
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = *&v1[8]._os_unfair_lock_opaque;
    v4 = *&v1[16]._os_unfair_lock_opaque;
    v5 = *&v1[20]._os_unfair_lock_opaque;
    v6 = v4;
    v7 = _NRCopyPolicyTrafficClassifiersDescription(v5);
    v8 = [v2 initWithFormat:@"%llu preferWiFi, %@, %@", v3, v6, v7];

    return v8;
  }

  return result;
}

- (void)cancelConnectionLocked
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v2 = nrCopyLogObj_sNRLogObj_115;
      os_unfair_lock_assert_owner((a1 + 16));
      v3 = objc_alloc(MEMORY[0x277CCACA8]);
      v4 = *(a1 + 32);
      v5 = *(a1 + 80);
      v6 = *(a1 + 64);
      v7 = v5;
      v8 = _NRCopyPolicyTrafficClassifiersDescription(v7);
      v9 = [v3 initWithFormat:@"%llu preferWiFi, %@, %@", v4, v6, v8];

      _NRLogWithArgs(v2, 0, "%s%.30s:%-4d %@ cancelling connection %@", v10, v11, v12, v13, v14, "");
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      xpc_connection_cancel(v15);
      v16 = *(a1 + 56);
      *(a1 + 56) = 0;
    }
  }
}

void __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MEMORY[0x25F8746E0](v14) == MEMORY[0x277D86480])
    {
      os_unfair_lock_lock(WeakRetained + 4);
      if (v14 == MEMORY[0x277D863F0])
      {
        if (nrCopyLogObj_onceToken_113 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ interrupted, resubmitting device preferences", v9, v10, v11, v12, v13, "");
        }

        [(NRDevicePreferences *)WeakRetained sendDevicePreferencesLocked];
      }

      else
      {
        if (v14 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_113 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ received XPC error invalid", v9, v10, v11, v12, v13, "");
          }
        }

        else
        {
          if (nrCopyLogObj_onceToken_113 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ received unknown XPC error: %@", v9, v10, v11, v12, v13, "");
          }
        }

        [(NRDevicePreferences *)WeakRetained restartConnectionLocked];
      }

      os_unfair_lock_unlock(WeakRetained + 4);
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ received unexpected XPC message %@", v4, v5, v6, v7, v8, "");
      }
    }
  }
}

void __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (MEMORY[0x25F8746E0](v11) == MEMORY[0x277D86480])
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ failed to send device preferences: %@, error %@", v4, v5, v6, v7, v8, "");
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ sent device preferences: %@", v4, v5, v6, v7, v8, "");
      }
    }
  }
}

- (uint64_t)restartConnectionLocked
{
  os_unfair_lock_assert_owner((a1 + 16));
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v2 = nrCopyLogObj_sNRLogObj_115;
    os_unfair_lock_assert_owner((a1 + 16));
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = *(a1 + 32);
    v5 = *(a1 + 80);
    v6 = *(a1 + 64);
    v7 = v5;
    v8 = _NRCopyPolicyTrafficClassifiersDescription(v7);
    v9 = [v3 initWithFormat:@"%llu preferWiFi, %@, %@", v4, v6, v8];

    _NRLogWithArgs(v2, 0, "%s%.30s:%-4d %@ restarting connection %@", v10, v11, v12, v13, v14, "");
  }

  [(NRDevicePreferences *)a1 cancelConnectionLocked];

  return [(NRDevicePreferences *)a1 sendDevicePreferencesLocked];
}

- (NSSet)policyTrafficClassifiers
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v3 = MEMORY[0x277CBEB98];
    if (self->_internalPolicyTrafficClassifiers)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:self->_internalPolicyTrafficClassifiers copyItems:1];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEB98];
  }

  v4 = objc_alloc_init(v3);
LABEL_6:
  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setCompanionLinkPreferences:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (!self || (v6 = self->_internalCompanionLinkPreferences) == 0 || (v7 = v6, v8 = [v5 isEqual:self->_internalCompanionLinkPreferences], v7, !v8)))
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v9 = nrCopyLogObj_sNRLogObj_115;
      if (self)
      {
        internalCompanionLinkPreferences = self->_internalCompanionLinkPreferences;
      }

      v11 = nrCopyLogObj_sNRLogObj_115;
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@ setting link preferences from %@ to %@", v12, v13, v14, v15, v16, "");
    }

    [(NRDevicePreferences *)self resetCompanionLinkPreferencesLocked];
    if (!v5)
    {
      goto LABEL_34;
    }

    if ([v5 serviceClass] == 2 || objc_msgSend(v5, "serviceClass") == 3 || objc_msgSend(v5, "serviceClass") == 4)
    {
      v17 = objc_alloc_init(NRBluetoothLinkPreferences);
      [(NRBluetoothLinkPreferences *)v17 setPacketsPerSecond:&unk_286D2CEA8];
      [(NRDevicePreferences *)self setBluetoothLinkPreferencesLocked:v17];
      if (self)
      {
        self->_hasCmpnLnkPrefsForBT = 1;
      }
    }

    if ([v5 serviceClass] == 3)
    {
      v18 = objc_alloc_init(MEMORY[0x277CD91F0]);
      [v18 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"PhoneCallRelayAgent"];
      v19 = [v18 copyCParameters];
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

      v21 = nw_path_evaluator_copy_path();
      v22 = nw_path_copy_netagent_dictionary();
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      if (v22)
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __51__NRDevicePreferences_setCompanionLinkPreferences___block_invoke;
        applier[3] = &unk_27996AEA0;
        v26 = &v27;
        v25 = v21;
        xpc_dictionary_apply(v22, applier);

        if (self)
        {
          if (v28[3])
          {
            self->_hasCmpnLnkPrefsForIsoch = 1;
            objc_storeStrong(&self->_cmpnLnkPrefsEvaluator, evaluator_for_endpoint);
          }
        }
      }

      _Block_object_dispose(&v27, 8);
    }

    if (![v5 highThroughput])
    {
LABEL_34:
      if (!self)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if ([v5 includeP2P])
    {
      if ([v5 serviceClass] != 2 && objc_msgSend(v5, "serviceClass") != 3 && objc_msgSend(v5, "serviceClass") != 4 && objc_msgSend(v5, "serviceClass") != 5)
      {
        NRPreferP2PSet(1);
        if (!self)
        {
          goto LABEL_40;
        }

        v23 = 10;
        goto LABEL_38;
      }

      NRPreferP2PImmediatelySet(1);
      if (self)
      {
        v23 = 11;
LABEL_38:
        *(&self->super.isa + v23) = 1;
LABEL_39:
        objc_storeStrong(&self->_internalCompanionLinkPreferences, a3);
      }
    }

    else
    {
      NRPreferWiFiSet(1);
      if (self)
      {
        v23 = 12;
        goto LABEL_38;
      }
    }
  }

LABEL_40:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetCompanionLinkPreferencesLocked
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    if (*(a1 + 72))
    {
      if (*(a1 + 13) == 1)
      {
        [(NRDevicePreferences *)a1 setBluetoothLinkPreferencesLocked:?];
        *(a1 + 13) = 0;
      }

      if (*(a1 + 14) == 1)
      {
        v2 = *(a1 + 96);
        nw_path_evaluator_cancel();
        v3 = *(a1 + 96);
        *(a1 + 96) = 0;

        *(a1 + 14) = 0;
      }

      if (*(a1 + 10) == 1)
      {
        NRPreferP2PSet(0);
        *(a1 + 10) = 0;
      }

      if (*(a1 + 11) == 1)
      {
        NRPreferP2PImmediatelySet(0);
        *(a1 + 11) = 0;
      }

      if (*(a1 + 12) == 1)
      {
        NRPreferWiFiSet(0);
        *(a1 + 12) = 0;
      }

      v4 = *(a1 + 72);
      *(a1 + 72) = 0;
    }
  }
}

- (void)setBluetoothLinkPreferencesLocked:(uint64_t)a1
{
  v17 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 64);
        v10 = nrCopyLogObj_sNRLogObj_115;
        _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@ setting Bluetooth link preferences from %@ to %@", v11, v12, v13, v14, v15, "");
      }

      objc_storeStrong((a1 + 64), a2);
      [(NRDevicePreferences *)a1 sendDevicePreferencesLocked];
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 17, "Invalid bluetooth link preferences", v4, v5, v6, v7, v8, v16);
      }
    }
  }
}

uint64_t __51__NRDevicePreferences_setCompanionLinkPreferences___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "PhoneCallRelayAgent"))
    {
      v7 = *(a1 + 32);
      v8 = nw_path_assert_agent();
      result = 0;
      *(*(*(a1 + 40) + 8) + 24) = v8;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (NRCompanionLinkPreferences)companionLinkPreferences
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalCompanionLinkPreferences = self->_internalCompanionLinkPreferences;
  }

  else
  {
    internalCompanionLinkPreferences = 0;
  }

  v4 = [(NRCompanionLinkPreferences *)internalCompanionLinkPreferences copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setBluetoothLinkPreferences:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    self->_hasCmpnLnkPrefsForBT = 0;
    [(NRDevicePreferences *)self setBluetoothLinkPreferencesLocked:v4];
  }

  else
  {
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NRBluetoothLinkPreferences)bluetoothLinkPreferences
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalBluetoothLinkPreferences = self->_internalBluetoothLinkPreferences;
  }

  else
  {
    internalBluetoothLinkPreferences = 0;
  }

  v4 = [(NRBluetoothLinkPreferences *)internalBluetoothLinkPreferences copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)hasQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_quickRelayRequestCount != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)removeAllQuickRelayRequests
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeQuickRelayRequestLocked:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_assert_owner((a1 + 16));
  v9 = *(a1 + 40);
  if (!v9)
  {
    return;
  }

  if (a2)
  {
    *(a1 + 40) = 0;
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing all quick relay requests (count is now %llu)", v4, v5, v6, v7, v8, "");
    }

    [*(a1 + 48) removeAllQuickRelayRequests];
    if (*(a1 + 40))
    {
      return;
    }

LABEL_17:
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;

    return;
  }

  *(a1 + 40) = v9 - 1;
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing quick relay request (count is now %llu)", v4, v5, v6, v7, v8, "");
  }

  [*(a1 + 48) removeQuickRelayRequest];
  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }
}

- (void)removeQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  quickRelayRequestCount = self->_quickRelayRequestCount;
  if (!quickRelayRequestCount)
  {
    if (self->_quickRelayPreference)
    {
      quickRelayRequestCount = 0;
    }

    else
    {
      v4 = [NRDevicePreferencesQuickRelay alloc];
      v5 = [(NRDevicePreferences *)self deviceIdentifier];
      v6 = [v5 nrDeviceIdentifier];
      v7 = [(NRDevicePreferencesQuickRelay *)v4 initWithNRUUID:v6];
      quickRelayPreference = self->_quickRelayPreference;
      self->_quickRelayPreference = v7;

      quickRelayRequestCount = self->_quickRelayRequestCount;
    }
  }

  self->_quickRelayRequestCount = quickRelayRequestCount + 1;
  [(NRDevicePreferencesQuickRelay *)self->_quickRelayPreference addQuickRelayRequest];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_preferWiFiRequestCount != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)removePreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removePreferWiFiRequestLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePreferWiFiRequestLocked
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    v7 = *(a1 + 32);
    if (v7)
    {
      *(a1 + 32) = v7 - 1;
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing prefer Wi-Fi request (count is now %llu)", v2, v3, v4, v5, v6, "");
      }

      NRPreferWiFiSet(0);
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ not removing prefer Wi-Fi request because count is 0", v2, v3, v4, v5, v6, "");
      }
    }
  }
}

- (void)addPreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_preferWiFiRequestCount;
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    preferWiFiRequestCount = self->_preferWiFiRequestCount;
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ adding prefer Wi-Fi request (count is now %llu)", v3, v4, v5, v6, v7, "");
  }

  NRPreferWiFiSet(1);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deviceSetupCompleted
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_internalDeviceSetupStarted = 256;
  [(NRDevicePreferences *)self sendDevicePreferencesLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deviceSetupStarted
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_internalDeviceSetupStarted = 1;
  [(NRDevicePreferences *)self sendDevicePreferencesLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  v5 = [(NRDevicePreferences *)self deviceIdentifier];
  v6 = [v5 nrDeviceIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v3 initWithFormat:@"DevPref[%llu %@]", identifier, v7];

  return v8;
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d Dealloc: %@", v2, v3, v4, v5, v6, "");
  }

  [(NRDevicePreferences *)self cancel];
  v8.receiver = self;
  v8.super_class = NRDevicePreferences;
  [(NRDevicePreferences *)&v8 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v3 = nrCopyLogObj_sNRLogObj_115;
    v10 = [(NRDevicePreferences *)self copyDetailsLocked];
    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Cancel: %@ %@", v4, v5, v6, v7, v8, "");
  }

  while (self->_preferWiFiRequestCount)
  {
    [(NRDevicePreferences *)self removePreferWiFiRequestLocked];
  }

  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];
  internalBluetoothLinkPreferences = self->_internalBluetoothLinkPreferences;
  self->_internalBluetoothLinkPreferences = 0;

  *&self->_internalDeviceSetupStarted = 0;
  [(NRDevicePreferences *)self resetCompanionLinkPreferencesLocked];
  [(NRDevicePreferences *)self cancelConnectionLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (NRDevicePreferences)initWithDeviceIdentifier:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v16 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v16;
      v19 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
LABEL_15:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v26 = *__error();
        v27 = _os_log_pack_fill();
        *v27 = 136446466;
        *(v27 + 4) = "[NRDevicePreferences initWithDeviceIdentifier:]";
        *(v27 + 12) = 2080;
        *(v27 + 14) = "[NRDevicePreferences initWithDeviceIdentifier:]";
        goto LABEL_19;
      }
    }

    v20 = nrCopyLogObj_117();
    _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", v21, v22, v23, v24, v25, "");

    goto LABEL_15;
  }

  v6 = v5;
  v39.receiver = self;
  v39.super_class = NRDevicePreferences;
  v7 = [(NRDevicePreferences *)&v39 init];
  if (!v7)
  {
    v17 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v17;
      v29 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
LABEL_18:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v36 = *__error();
        v37 = _os_log_pack_fill();
        *v37 = 136446210;
        *(v37 + 4) = "[NRDevicePreferences initWithDeviceIdentifier:]";
LABEL_19:
        v38 = nrCopyLogObj_117();
        _NRLogAbortWithPack(v38);
      }
    }

    v30 = nrCopyLogObj_117();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v31, v32, v33, v34, v35, "");

    goto LABEL_18;
  }

  v8 = v7;
  objc_storeStrong(&v7->_deviceIdentifier, a3);
  v8->_lock._os_unfair_lock_opaque = 0;
  v8->_identifier = atomic_fetch_add_explicit(&initWithDeviceIdentifier__sNRDevicePreferencesIndex, 1uLL, memory_order_relaxed);
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d Init: %@", v9, v10, v11, v12, v13, "");
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

@end