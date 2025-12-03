@interface NRIdentityProxyClient
- (NRIdentityProxyClient)initWithCertificateReference:(id)reference options:(id)options;
- (NRIdentityProxyClient)initWithIdentityReference:(id)reference options:(id)options;
- (id)copySecKeyProxy;
- (id)description;
- (id)initInternal:(void *)internal options:;
- (void)dealloc;
@end

@implementation NRIdentityProxyClient

- (id)copySecKeyProxy
{
  v83 = *MEMORY[0x277D85DE8];
  if (self->_isIdentityReference)
  {
    os_unfair_lock_lock(&gNRSecKeyProxyCacheLock);
    if (nrCopyLogObj_onceToken_1127 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_DEFAULT))
    {
      options = self->_options;
      v9 = nrCopyLogObj_sNRLogObj_1129;
      v69 = [(NSDictionary *)options objectForKeyedSubscript:@"pid"];
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d starting validation for pid %@", v10, v11, v12, v13, v14, "");
    }

    if (NRIdentityReferencesMonitorCacheLocked_sIdentityReferencesChangeToken != -1)
    {
LABEL_18:
      if (gNRIdentityReferencesCache)
      {
        if (nrCopyLogObj_onceToken_1127 == -1)
        {
          if (sNRCopyLogToStdErr)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
          if (sNRCopyLogToStdErr)
          {
            goto LABEL_22;
          }
        }

        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_DEBUG))
        {
LABEL_33:
          if (!gNRIdentityReferencesCache || ![gNRIdentityReferencesCache count])
          {
            goto LABEL_53;
          }

          if (self->_isIdentityReference)
          {
            v34 = @"id-ref";
          }

          else
          {
            if (!self->_isCertificateReference)
            {
              goto LABEL_53;
            }

            v34 = @"cert-ref";
          }

          v35 = [gNRIdentityReferencesCache objectForKeyedSubscript:v34];
          v36 = [(NSData *)self->_persistentReference isEqualToData:v35];

          if (v36)
          {
            v37 = gNRSecKeyProxies;
            if (!gNRSecKeyProxies)
            {
              v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v39 = gNRSecKeyProxies;
              gNRSecKeyProxies = v38;

              v37 = gNRSecKeyProxies;
            }

            v20 = [v37 objectForKeyedSubscript:self->_persistentReference];
            if (v20)
            {
              goto LABEL_54;
            }

            persistentReference = self->_persistentReference;
            if (!self->_isIdentityReference || !persistentReference)
            {
              v20 = 0;
LABEL_69:
              [gNRSecKeyProxies setObject:v20 forKeyedSubscript:persistentReference];
              goto LABEL_54;
            }

            v41 = *MEMORY[0x277CBED28];
            v42 = *MEMORY[0x277CDC228];
            block = *MEMORY[0x277CDC568];
            v73 = v42;
            v43 = *MEMORY[0x277CDC240];
            handler = v41;
            p_handler = v43;
            v74 = *MEMORY[0x277CDC5F0];
            v79 = persistentReference;
            v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&handler forKeys:&block count:3];
            result = 0;
            SecItemCopyMatching(v44, &result);
            if (result)
            {
              v50 = [objc_alloc(MEMORY[0x277CDBD80]) initWithIdentity:result];
              v56 = v50;
              if (v50)
              {
                endpoint = [v50 endpoint];
                v58 = endpoint == 0;

                if (!v58)
                {
                  if (nrCopyLogObj_onceToken_1127 == -1)
                  {
                    if (sNRCopyLogToStdErr)
                    {
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
                    if (sNRCopyLogToStdErr)
                    {
                      goto LABEL_51;
                    }
                  }

                  if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_52:
                    v20 = v56;
LABEL_62:

LABEL_68:
                    persistentReference = self->_persistentReference;
                    goto LABEL_69;
                  }

LABEL_51:
                  v70 = self->_persistentReference;
                  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 0, "%s%.30s:%-4d %@ created new key proxy for %@", v51, v52, v53, v54, v55, "");
                  goto LABEL_52;
                }
              }

              if (nrCopyLogObj_onceToken_1127 == -1)
              {
                if (sNRCopyLogToStdErr)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
                if (sNRCopyLogToStdErr)
                {
                  goto LABEL_60;
                }
              }

              if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_ERROR))
              {
LABEL_61:
                v20 = 0;
                goto LABEL_62;
              }

LABEL_60:
              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 16, "%s%.30s:%-4d %@ key proxy creation failed ", v51, v52, v53, v54, v55, "");
              goto LABEL_61;
            }

            if (nrCopyLogObj_onceToken_1127 == -1)
            {
              if (sNRCopyLogToStdErr)
              {
                goto LABEL_66;
              }
            }

            else
            {
              dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
              if (sNRCopyLogToStdErr)
              {
                goto LABEL_66;
              }
            }

            if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_ERROR))
            {
LABEL_67:
              v20 = 0;
              goto LABEL_68;
            }

LABEL_66:
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 16, "%s%.30s:%-4d %@ SecItemCopyMatching for identity failed %d", v45, v46, v47, v48, v49, "");
            goto LABEL_67;
          }

LABEL_53:
          v20 = 0;
LABEL_54:
          os_unfair_lock_unlock(&gNRSecKeyProxyCacheLock);
          goto LABEL_55;
        }

LABEL_22:
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 2, "%s%.30s:%-4d identity cache valid", v3, v4, v5, v6, v7, "");
        goto LABEL_33;
      }

      v23 = gNRSecKeyProxies;
      gNRSecKeyProxies = 0;

      v24 = gNRIdentityReferencesCache;
      gNRIdentityReferencesCache = 0;

      if (nrCopyLogObj_onceToken_1127 == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_25:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 0, "%s%.30s:%-4d fetching identity references", v25, v26, v27, v28, v29, "");
LABEL_27:
      handler = 0;
      p_handler = &handler;
      v79 = 0x3032000000;
      v80 = __Block_byref_object_copy__1143;
      v81 = __Block_byref_object_dispose__1144;
      v82 = 0;
      v30 = dispatch_group_create();
      if (NRIPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&NRIPCCopyQueue_onceToken, &__block_literal_global_68);
      }

      block = MEMORY[0x277D85DD0];
      v73 = 3221225472;
      v74 = __NRIPCFetchReferencesLocked_block_invoke;
      v75 = &unk_27996B420;
      v76 = &handler;
      dispatch_group_async(v30, NRIPCCopyQueue_queue, &block);
      v31 = dispatch_time(0, 3000000000);
      if (dispatch_group_wait(v30, v31))
      {
        v61 = nrCopyLogObj_1145();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v62 = v61;
          v63 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);

          if (!v63)
          {
            goto LABEL_32;
          }
        }

        v33 = nrCopyLogObj_1145();
        _NRLogWithArgs(v33, 16, "%s%.30s:%-4d timed out waiting for identity proxy resolution", v64, v65, v66, v67, v68, "");
      }

      else
      {
        v32 = *(p_handler + 40);
        v33 = gNRIdentityReferencesCache;
        gNRIdentityReferencesCache = v32;
      }

LABEL_32:
      _Block_object_dispose(&handler, 8);

      goto LABEL_33;
    }

    if (NRIPCCopyQueue_onceToken != -1)
    {
      dispatch_once(&NRIPCCopyQueue_onceToken, &__block_literal_global_68);
    }

    handler = MEMORY[0x277D85DD0];
    p_handler = 3221225472;
    v79 = __NRIdentityReferencesMonitorCacheLocked_block_invoke_2;
    v80 = &unk_27996B0D8;
    v81 = &__block_literal_global_63;
    if (!notify_register_dispatch("com.apple.private.restrict-post.networkrelay.referencesChanged", &NRIdentityReferencesMonitorCacheLocked_sIdentityReferencesChangeToken, NRIPCCopyQueue_queue, &handler))
    {
      v21 = gNRSecKeyProxies;
      gNRSecKeyProxies = 0;

      v22 = gNRIdentityReferencesCache;
      gNRIdentityReferencesCache = 0;

      goto LABEL_17;
    }

    NRIdentityReferencesMonitorCacheLocked_sIdentityReferencesChangeToken = -1;
    if (nrCopyLogObj_onceToken_1127 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_14;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_FAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_14:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 17, "notify_register_check(%s) failed: %u", v15, v16, v17, v18, v19, "com.apple.private.restrict-post.networkrelay.referencesChanged");
    goto LABEL_17;
  }

  v20 = 0;
LABEL_55:
  v59 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  if (self->_isIdentityReference)
  {
    v2 = @"id";
  }

  else if (self->_isCertificateReference)
  {
    v2 = @"cert";
  }

  else
  {
    v2 = &stru_286D23DB8;
  }

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NRIdentityProxyClient[%llu, %@]", self->_identifier, v2];

  return v3;
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_1127 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1129, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1129, 0, "%s%.30s:%-4d %@ dealloc", v2, v3, v4, v5, v6, "");
  }

  v8.receiver = self;
  v8.super_class = NRIdentityProxyClient;
  [(NRIdentityProxyClient *)&v8 dealloc];
}

- (NRIdentityProxyClient)initWithCertificateReference:(id)reference options:(id)options
{
  referenceCopy = reference;
  optionsCopy = options;
  if (!referenceCopy)
  {
    v10 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v13 = nrCopyLogObj_1145();
    _NRLogWithArgs(v13, 17, "%s called with null certificateReference", v14, v15, v16, v17, v18, "[NRIdentityProxyClient initWithCertificateReference:options:]");

    goto LABEL_8;
  }

  if (![referenceCopy length])
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v8 = [(NRIdentityProxyClient *)&self->super.isa initInternal:referenceCopy options:optionsCopy];
  *(v8 + 9) = 1;
  self = v8;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)initInternal:(void *)internal options:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  internalCopy = internal;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = NRIdentityProxyClient;
    v8 = objc_msgSendSuper2(&v25, sel_init);
    if (v8)
    {
      self = v8;
      v8[2] = atomic_fetch_add_explicit(&initInternal_options__sNRIPCClientID, 1uLL, memory_order_relaxed);
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(self + 3, internal);
      goto LABEL_4;
    }

    v11 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = nrCopyLogObj_1145();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v15, v16, v17, v18, v19, "");

LABEL_9:
    v20 = _os_log_pack_size();
    MEMORY[0x28223BE20](v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "[NRIdentityProxyClient initInternal:options:]";
    v24 = nrCopyLogObj_1145();
    _NRLogAbortWithPack(v24);
  }

LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
  return self;
}

- (NRIdentityProxyClient)initWithIdentityReference:(id)reference options:(id)options
{
  referenceCopy = reference;
  optionsCopy = options;
  if (!referenceCopy)
  {
    v10 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v13 = nrCopyLogObj_1145();
    _NRLogWithArgs(v13, 17, "%s called with null identityReference", v14, v15, v16, v17, v18, "[NRIdentityProxyClient initWithIdentityReference:options:]");

    goto LABEL_8;
  }

  if (![referenceCopy length])
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v8 = [(NRIdentityProxyClient *)&self->super.isa initInternal:referenceCopy options:optionsCopy];
  *(v8 + 8) = 1;
  self = v8;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

@end