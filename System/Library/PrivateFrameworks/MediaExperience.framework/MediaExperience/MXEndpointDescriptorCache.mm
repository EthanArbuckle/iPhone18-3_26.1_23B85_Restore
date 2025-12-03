@interface MXEndpointDescriptorCache
+ (id)sharedInstance;
- (MXEndpointDescriptorCache)init;
- (OpaqueFigEndpoint)copyEndpointFromRouteDescriptor:(__CFDictionary *)descriptor routingContextUUID:(__CFString *)d retryCount:(unint64_t)count;
- (OpaqueFigEndpoint)copyEndpointWithDeviceID:(__CFString *)d isStreamID:(BOOL)iD managerType:(__CFString *)type routingContextUUID:(__CFString *)uID;
- (OpaqueFigEndpointManager)getEndpointManagerForType:(__CFString *)type;
- (__CFArray)_copyEndpoints:(__CFArray *)endpoints withPredicate:(id)predicate;
- (__CFArray)_copyMatchingEndpointsForManagerType:(__CFString *)type predicateMatchFunction:(void *)function inEndpointPredicateRefCon:(void *)con;
- (__CFArray)copyAvailableEndpointsForManager:(OpaqueFigEndpointManager *)manager;
- (__CFArray)copyAvailableRouteDescriptorsForManager:(OpaqueFigEndpointManager *)manager;
- (__CFArray)copyRegisteredEndpointMangers;
- (__CFArray)copyRouteDescriptorsForEndpoints:(__CFArray *)endpoints;
- (__CFDictionary)copyRouteDescriptorForEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)_availableEndpointsDidChangeForEndpointManager:(OpaqueFigEndpointManager *)manager atDate:(id)date;
- (void)_endpointDescriptionDidChangeForEndpoint:(OpaqueFigEndpoint *)endpoint notificationName:(__CFString *)name payload:(__CFDictionary *)payload;
- (void)dealloc;
- (void)registerEndpointManagerForCaching:(OpaqueFigEndpointManager *)caching;
@end

@implementation MXEndpointDescriptorCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[MXEndpointDescriptorCache sharedInstance];
  }

  return sharedInstance_sSharedInstance_17;
}

- (__CFArray)copyRegisteredEndpointMangers
{
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], registeredEndpointManagers);
  }

  else
  {
    Copy = 0;
  }

  v6 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  return Copy;
}

MXEndpointDescriptorCache *__43__MXEndpointDescriptorCache_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXEndpointDescriptorCache);
  sharedInstance_sSharedInstance_17 = result;
  return result;
}

- (MXEndpointDescriptorCache)init
{
  v7.receiver = self;
  v7.super_class = MXEndpointDescriptorCache;
  v2 = [(MXEndpointDescriptorCache *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = MEMORY[0x1E695E9C0];
    v2->_registeredEndpointManagers = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v2->_availableEndpointsInfo = CFArrayCreateMutable(v3, 0, v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_notificationQueue = dispatch_queue_create("com.apple.mediaexperience.mxendpointdescriptor.notificationQueue", v5);
    v2->_cacheMutex = FigReentrantMutexCreate();
  }

  return v2;
}

- (void)dealloc
{
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers)
  {
    CFRelease(registeredEndpointManagers);
  }

  self->_registeredEndpointManagers = 0;
  availableEndpointsInfo = self->_availableEndpointsInfo;
  if (availableEndpointsInfo)
  {
    CFRelease(availableEndpointsInfo);
  }

  self->_availableEndpointsInfo = 0;
  dispatch_release(self->_notificationQueue);
  self->_notificationQueue = 0;
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexDestroy();
  self->_cacheMutex = 0;
  v6.receiver = self;
  v6.super_class = MXEndpointDescriptorCache;
  [(MXEndpointDescriptorCache *)&v6 dealloc];
}

- (__CFArray)copyRouteDescriptorsForEndpoints:(__CFArray *)endpoints
{
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  v5 = MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(self->_availableEndpointsInfo);
  v6 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  return v5;
}

- (OpaqueFigEndpoint)copyEndpointFromRouteDescriptor:(__CFDictionary *)descriptor routingContextUUID:(__CFString *)d retryCount:(unint64_t)count
{
  v67 = *MEMORY[0x1E69E9840];
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
LABEL_87:
    if (count)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MEMORY[0x1B2734EB0](100000);
      v44 = [(MXEndpointDescriptorCache *)self copyEndpointFromRouteDescriptor:descriptor routingContextUUID:d retryCount:count - 1];
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_92;
  }

  v10 = Value;
  countCopy = count;
  dCopy = d;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(d);
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  theDict = descriptor;
  CFDictionaryGetValue(descriptor, @"AudioRouteName");
  v13 = 0;
  v14 = 0;
  v53 = *MEMORY[0x1E69618B8];
  v15 = *MEMORY[0x1E695E480];
  v58 = *MEMORY[0x1E69618D0];
  v16 = *MEMORY[0x1E69618D8];
  v55 = *MEMORY[0x1E69618F8];
  v57 = ContextType;
  while (1)
  {
    registeredEndpointManagers = self->_registeredEndpointManagers;
    if (registeredEndpointManagers)
    {
      registeredEndpointManagers = CFArrayGetCount(registeredEndpointManagers);
    }

    if (v13 >= registeredEndpointManagers)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v13);
    if (!FigRoutingManagerShouldSkipEndpointManager())
    {
      selfCopy = self;
      v65[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v21(CMBaseObject, v53, v15, v65);
      }

      if (FigCFEqual() && FigCFEqual())
      {
        v22 = v65[0];
        self = selfCopy;
        ContextType = v57;
        if (!v65[0])
        {
          goto LABEL_24;
        }

LABEL_23:
        CFRelease(v22);
LABEL_24:
        v14 = ValueAtIndex;
        break;
      }

      self = selfCopy;
      ContextType = v57;
      if (FigCFEqual() && v57 != 13 && (FigCFEqual() || FigCFEqual()))
      {
        if (!CFDictionaryGetValue(theDict, @"PortNumber"))
        {
          goto LABEL_22;
        }
      }

      else if (FigCFEqual())
      {
        v14 = ValueAtIndex;
        if (v57 == 13)
        {
LABEL_22:
          v22 = v65[0];
          if (v65[0])
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      if (v65[0])
      {
        CFRelease(v65[0]);
      }
    }

    ++v13;
  }

  descriptor = theDict;
  if (!v14)
  {
    v35 = self->_cacheMutex;
    FigSimpleMutexUnlock();
    d = dCopy;
    goto LABEL_87;
  }

  if (ContextType == 13)
  {
    selfCopy2 = self;
    v65[0] = 0;
    v23 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (v23)
    {
      v23(v14, 0x1F289BB30, v15, 0, 0, v65);
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = v65[0];
    v26 = [v65[0] countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v61;
      v29 = *MEMORY[0x1E69620F8];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v61 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v60 + 1) + 8 * i);
          cf = 0;
          v32 = FigEndpointGetCMBaseObject();
          v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v33)
          {
            v33(v32, v29, v15, &cf);
          }

          if ([cf containsString:v10])
          {
            [v24 addObject:v31];
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v27);
    }

    v34 = v24;

    if (v65[0])
    {
      CFRelease(v65[0]);
    }

    descriptor = theDict;
    self = selfCopy2;
    ContextType = v57;
  }

  else
  {
    v36 = [(MXEndpointDescriptorCache *)self copyAvailableEndpointsForManager:v14];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __91__MXEndpointDescriptorCache_copyEndpointFromRouteDescriptor_routingContextUUID_retryCount___block_invoke;
    v59[3] = &__block_descriptor_40_e28_B16__0__OpaqueFigEndpoint__8l;
    v59[4] = v10;
    v34 = [(MXEndpointDescriptorCache *)self _copyEndpoints:v36 withPredicate:v59];
    if (v36)
    {
      CFRelease(v36);
    }
  }

  v65[0] = 0;
  v37 = FigEndpointManagerGetCMBaseObject();
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v38)
  {
    v38(v37, v53, v15, v65);
  }

  FigRoutingManagerLogEndpointIDs(@"The matching endpoints are:", v34, 0, 1);
  if (!FigCFEqual())
  {
    count = countCopy;
    d = dCopy;
    if (!v34 || CFArrayGetCount(v34) < 1)
    {
      v44 = 0;
      goto LABEL_79;
    }

    selfCopy4 = self;
    descriptorCopy3 = descriptor;
    v42 = CFArrayGetValueAtIndex(v34, 0);
    if (v42)
    {
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  count = countCopy;
  d = dCopy;
  if (v34)
  {
    Count = CFArrayGetCount(v34);
  }

  else
  {
    Count = 0;
  }

  selfCopy4 = self;
  if (ContextType == 7 || ContextType == 9)
  {
    if (Count >= 1)
    {
      descriptorCopy3 = descriptor;
      v43 = 0;
      while (1)
      {
        v42 = CFArrayGetValueAtIndex(v34, v43);
        if ((FigEndpointGetSupportedFeatures() & 0x10) != 0)
        {
          goto LABEL_74;
        }

        if (Count == ++v43)
        {
          goto LABEL_76;
        }
      }
    }
  }

  else if (Count >= 1)
  {
    descriptorCopy3 = descriptor;
    v45 = 0;
    while (1)
    {
      v42 = CFArrayGetValueAtIndex(v34, v45);
      if ((FigEndpointGetSupportedFeatures() & 0x10) == 0)
      {
        break;
      }

      if (Count == ++v45)
      {
        goto LABEL_76;
      }
    }

LABEL_74:
    if (v42)
    {
LABEL_75:
      v44 = CFRetain(v42);
LABEL_77:
      descriptor = descriptorCopy3;
      goto LABEL_78;
    }

LABEL_76:
    v44 = 0;
    goto LABEL_77;
  }

  v44 = 0;
LABEL_78:
  self = selfCopy4;
LABEL_79:
  if (v65[0])
  {
    CFRelease(v65[0]);
    v65[0] = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v46 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  if (!v44)
  {
    goto LABEL_87;
  }

  v47 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(v44))
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(v44, 0))
    {
      CFRelease(v44);
      v44 = FigRoutingManagerCopyEndpointWithDeviceID(v10, 0, v55, 0);
      if (!v44)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_92:
  v49 = *MEMORY[0x1E69E9840];
  return v44;
}

BOOL __91__MXEndpointDescriptorCache_copyEndpointFromRouteDescriptor_routingContextUUID_retryCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (FigRoutingManagerIsEndpointDissociated(a2))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  return FigEndpointUtility_EndpointPredicate_ContainsID() != 0;
}

- (OpaqueFigEndpointManager)getEndpointManagerForType:(__CFString *)type
{
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  v5 = 0;
  v6 = *MEMORY[0x1E69618B8];
  v7 = *MEMORY[0x1E695E480];
  while (1)
  {
    registeredEndpointManagers = self->_registeredEndpointManagers;
    if (registeredEndpointManagers)
    {
      registeredEndpointManagers = CFArrayGetCount(registeredEndpointManagers);
    }

    if (v5 >= registeredEndpointManagers)
    {
      ValueAtIndex = 0;
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v5);
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, v6, v7, &cf);
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v5;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  v12 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

- (__CFArray)_copyMatchingEndpointsForManagerType:(__CFString *)type predicateMatchFunction:(void *)function inEndpointPredicateRefCon:(void *)con
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = 0; ; ++i)
  {
    availableEndpointsInfo = self->_availableEndpointsInfo;
    if (availableEndpointsInfo)
    {
      availableEndpointsInfo = CFArrayGetCount(availableEndpointsInfo);
    }

    if (i >= availableEndpointsInfo)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_availableEndpointsInfo, i);
    CFDictionaryGetValue(ValueAtIndex, @"ManagerType");
    Value = CFDictionaryGetValue(ValueAtIndex, @"Endpoint");
    if (FigCFEqual() && (function)(Value, con) && !FigRoutingManagerIsEndpointDissociated(Value))
    {
      CFArrayAppendValue(Mutable, Value);
    }
  }

  return Mutable;
}

- (__CFArray)_copyEndpoints:(__CFArray *)endpoints withPredicate:(id)predicate
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(__CFArray *)endpoints countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(endpoints);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ((*(predicate + 2))(predicate, v11))
        {
          CFArrayAppendValue(v6, v11);
        }
      }

      v8 = [(__CFArray *)endpoints countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_availableEndpointsDidChangeForEndpointManager:(OpaqueFigEndpointManager *)manager atDate:(id)date
{
  v90[16] = *MEMORY[0x1E69E9840];
  v73 = 0;
  allocator = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E69618B8], allocator, &v73);
  }

  if (dword_1EB75DE40)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled() && (v9 = *MEMORY[0x1E69618D0], FigCFEqual()))
  {
    v10 = FigEndpointManagerGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = @"AvailableEndpointsExtended";
  }

  else
  {
    v10 = FigEndpointManagerGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *MEMORY[0x1E69618A8];
  }

  v11(v10, v12, allocator, &cf);
LABEL_12:
  v13 = [(MXEndpointDescriptorCache *)self _copyEndpoints:cf withPredicate:&__block_literal_global_22_1, v56, v58];
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"Endpoint");
  theArray = MXCopyCFArrayDifferenceFromArray(v14, v13);
  v64 = v14;
  v65 = v13;
  v15 = MXCopyCFArrayDifferenceFromArray(v13, v14);
  v16 = v15;
  if (v15 && CFArrayGetCount(v15))
  {
    MXEndpointDescriptorLogRouteDelta(v73, self->_availableEndpointsInfo, v16, 1);
    if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
    {
      v17 = *MEMORY[0x1E69618D8];
      if (FigCFEqual() || (v18 = *MEMORY[0x1E69618E0], FigCFEqual()))
      {
        managerCopy = manager;
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        selfCopy = self;
        v21 = 0;
        v67 = v73;
        v60 = UpTimeNanoseconds;
        v61 = selfCopy;
        availableEndpointsInfo = selfCopy->_availableEndpointsInfo;
        v66 = v16;
        if (!availableEndpointsInfo)
        {
          goto LABEL_21;
        }

LABEL_20:
        for (i = CFArrayGetCount(availableEndpointsInfo); v21 < i; i = 0)
        {
          CFArrayGetValueAtIndex(availableEndpointsInfo, v21);
          FigCFDictionaryGetValue();
          if (FigCFArrayContainsValue())
          {
            FigCFDictionaryGetValue();
            Value = FigCFDictionaryGetValue();
            v25 = FigCFDictionaryGetValue();
            v26 = FigCFDictionaryGetValue();
            v27 = FigCFDictionaryGetValue();
            v28 = FigCFDictionaryGetValue();
            if (dword_1EB75DE40)
            {
              v29 = v28;
              *type = 0;
              v74 = OS_LOG_TYPE_DEFAULT;
              v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v31 = *type;
              if (os_log_type_enabled(v30, v74))
              {
                v32 = v31;
              }

              else
              {
                v32 = v31 & 0xFFFFFFFE;
              }

              if (v32)
              {
                v76 = 136316674;
                v77 = "MXEndpointDescriptorCleanupBannersIfNeeded";
                v78 = 2114;
                v79 = Value;
                v80 = 2114;
                v81 = v25;
                v82 = 2114;
                v83 = v26;
                v84 = 2114;
                v85 = v27;
                v86 = 2114;
                v87 = v29;
                v88 = 2114;
                v89 = v67;
                LODWORD(v59) = 72;
                v57 = &v76;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v16 = v66;
            }

            [+[MX_BannerManager cleanupBannersIfNeededForRoute:v57]endpointManagerType:"cleanupBannersIfNeededForRoute:routeName:endpointManagerType:", Value, v25, v67];
          }

          ++v21;
          if (availableEndpointsInfo)
          {
            goto LABEL_20;
          }

LABEL_21:
          ;
        }

        v33 = FigGetUpTimeNanoseconds();
        self = v61;
        manager = managerCopy;
        if (dword_1EB75DE40)
        {
          v34 = v33;
          *type = 0;
          v74 = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = *type;
          if (os_log_type_enabled(v35, v74))
          {
            v37 = v36;
          }

          else
          {
            v37 = v36 & 0xFFFFFFFE;
          }

          if (v37)
          {
            v76 = 136315394;
            v77 = "[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:]";
            v78 = 2048;
            v79 = (v34 - v60) / 0xF4240uLL;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v38 = self->_availableEndpointsInfo;
    if (v38)
    {
      Count = CFArrayGetCount(self->_availableEndpointsInfo);
      if (Count >= 1)
      {
        v40 = Count;
        v41 = 0;
        v42 = *MEMORY[0x1E6961968];
        do
        {
          CFArrayGetValueAtIndex(v38, v41);
          FigCFDictionaryGetValue();
          if (FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            +[MXEndpointDescriptorCache sharedInstance];
            CMNotificationCenterRemoveListener();
            CFArrayRemoveValueAtIndex(v38, v41--);
            v40 = CFArrayGetCount(v38);
          }

          ++v41;
        }

        while (v41 < v40);
      }
    }
  }

  v43 = theArray;
  if (theArray && CFArrayGetCount(theArray))
  {
    managerCopy2 = manager;
    v44 = self->_availableEndpointsInfo;
    if (CFArrayGetCount(theArray) >= 1)
    {
      v45 = 0;
      v68 = *MEMORY[0x1E6962280];
      v46 = MEMORY[0x1E695E9D8];
      v47 = MEMORY[0x1E695E9E8];
      do
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, v46, v47);
        FigCFDictionarySetValue();
        CFArrayGetValueAtIndex(v43, v45);
        FigCFDictionarySetValue();
        v90[0] = 0;
        CFArrayGetValueAtIndex(v43, v45);
        v49 = FigEndpointGetCMBaseObject();
        v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v50)
        {
          v50(v49, v68, allocator, v90);
        }

        FigCFDictionarySetValue();
        if (v90[0])
        {
          CFRelease(v90[0]);
          v90[0] = 0;
        }

        CFArrayAppendValue(v44, Mutable);
        v43 = theArray;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        ++v45;
      }

      while (v45 < CFArrayGetCount(theArray));
    }

    if (CFArrayGetCount(v43) >= 1)
    {
      v51 = 0;
      v52 = *MEMORY[0x1E69626C0];
      v53 = *MEMORY[0x1E6961968];
      do
      {
        CFArrayGetValueAtIndex(v43, v51);
        FigEndpointDescriptorUtility_IsEndpointOfType();
        CMNotificationCenterGetDefaultLocalCenter();
        +[MXEndpointDescriptorCache sharedInstance];
        CMNotificationCenterAddListener();
        [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache _endpointDescriptionDidChangeForEndpoint:"_endpointDescriptionDidChangeForEndpoint:", CFArrayGetValueAtIndex(v43, v51++)];
      }

      while (v51 < CFArrayGetCount(v43));
    }

    MXEndpointDescriptorLogRouteDelta(v73, self->_availableEndpointsInfo, v43, 0);
    manager = managerCopy2;
  }

  if (manager)
  {
    CFRetain(manager);
  }

  if (v65)
  {
    CFRetain(v65);
  }

  if (v43)
  {
    CFRetain(v43);
  }

  if (v16)
  {
    CFRetain(v16);
  }

  notificationQueue = self->_notificationQueue;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __83__MXEndpointDescriptorCache__availableEndpointsDidChangeForEndpointManager_atDate___block_invoke_24;
  v71[3] = &__block_descriptor_64_e5_v8__0l;
  v71[4] = manager;
  v71[5] = v65;
  v71[6] = v43;
  v71[7] = v16;
  MXDispatchAsync("[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:]", "MXEndpointDescriptorCache.m", 848, 0, 0, notificationQueue, v71);
  if (v73)
  {
    CFRelease(v73);
    v73 = 0;
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __83__MXEndpointDescriptorCache__availableEndpointsDidChangeForEndpointManager_atDate___block_invoke_24(const void **a1)
{
  FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager(a1[4], a1[5], a1[6], a1[7]);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __95__MXEndpointDescriptorCache__endpointDescriptionDidChangeForEndpoint_notificationName_payload___block_invoke(const void **a1)
{
  FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache(a1[4], a1[5], a1[6]);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)registerEndpointManagerForCaching:(OpaqueFigEndpointManager *)caching
{
  cf[20] = *MEMORY[0x1E69E9840];
  if (caching)
  {
    cacheMutex = self->_cacheMutex;
    FigSimpleMutexLock();
    registeredEndpointManagers = self->_registeredEndpointManagers;
    if (!FigCFArrayContainsValue())
    {
      cf[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], cf);
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = *MEMORY[0x1E69618F8];
      if (FigCFEqual())
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v11 = *MEMORY[0x1E6961888];
        OUTLINED_FUNCTION_0_30();
        CFArrayInsertValueAtIndex(self->_registeredEndpointManagers, 0, caching);
      }

      else
      {
        CFArrayAppendValue(self->_registeredEndpointManagers, caching);
        CMNotificationCenterGetDefaultLocalCenter();
        v12 = *MEMORY[0x1E6961888];
        OUTLINED_FUNCTION_0_30();
        -[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:](self, "_availableEndpointsDidChangeForEndpointManager:atDate:", caching, [MEMORY[0x1E695DF00] date]);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    v13 = self->_cacheMutex;
    FigSimpleMutexUnlock();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (__CFArray)copyAvailableEndpointsForManager:(OpaqueFigEndpointManager *)manager
{
  v18 = 0;
  if (manager)
  {
    cf = 0;
    v4 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 8) + 48);
    if (v7)
    {
      v8 = *(VTable + 8) + 48;
      v7(CMBaseObject, *MEMORY[0x1E69618B8], v4, &cf);
    }

    v9 = *MEMORY[0x1E69618F8];
    if (FigCFEqual())
    {
      v10 = FigEndpointManagerGetCMBaseObject();
      v11 = CMBaseObjectGetVTable();
      v12 = *(*(v11 + 8) + 48);
      if (v12)
      {
        v13 = *(v11 + 8) + 48;
        v12(v10, *MEMORY[0x1E69618A8], v4, &v18);
      }
    }

    else
    {
      cacheMutex = self->_cacheMutex;
      FigSimpleMutexLock();
      v18 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"Endpoint");
      v15 = self->_cacheMutex;
      FigSimpleMutexUnlock();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v18;
}

- (__CFArray)copyAvailableRouteDescriptorsForManager:(OpaqueFigEndpointManager *)manager
{
  if (!manager)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
  }

  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  v7 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"RouteDescriptor");
  v8 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (__CFDictionary)copyRouteDescriptorForEndpoint:(OpaqueFigEndpoint *)endpoint
{
  if (!endpoint)
  {
    return 0;
  }

  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  [MEMORY[0x1E695DEC8] arrayWithObject:endpoint];
  v6 = MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(self->_availableEndpointsInfo);
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) && (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0)) != 0)
    {
      v9 = CFRetain(ValueAtIndex);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  return v9;
}

- (OpaqueFigEndpoint)copyEndpointWithDeviceID:(__CFString *)d isStreamID:(BOOL)iD managerType:(__CFString *)type routingContextUUID:(__CFString *)uID
{
  iDCopy = iD;
  if (!d)
  {
    return 0;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(uID);
  cacheMutex = self->_cacheMutex;
  FigSimpleMutexLock();
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers && (v11 = CFArrayGetCount(registeredEndpointManagers), v11 >= 1))
  {
    v12 = v11;
    Mutable = 0;
    v14 = 0;
    v15 = *MEMORY[0x1E69618B8];
    v16 = *MEMORY[0x1E695E480];
    v42 = *MEMORY[0x1E69618F8];
    v39 = *MEMORY[0x1E69618D8];
    v41 = *MEMORY[0x1E69618B8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v14);
      cf = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, v15, v16, &cf);
      }

      if (FigCFEqual() && !FigRoutingManagerShouldSkipEndpointManager())
      {
        if (FigCFEqual())
        {
          theArray = 0;
          if (ContextType == 13)
          {
            v21 = *(*(CMBaseObjectGetVTable() + 24) + 24);
            if (v21)
            {
              v21(ValueAtIndex, 0x1F289BB30, v16, 0, 0, &theArray);
            }
          }

          else
          {
            v23 = FigEndpointManagerGetCMBaseObject();
            v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v24)
            {
              v24(v23, 0x1F289BB10, v16, &theArray);
            }
          }

          Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count >= 1)
            {
              v26 = Count;
              for (i = 0; i != v26; ++i)
              {
                v28 = CFArrayGetValueAtIndex(theArray, i);
                if (FigEndpointUtility_EndpointPredicate_ContainsID())
                {
                  CFArrayAppendValue(Mutable, v28);
                }
              }
            }
          }

          if (Mutable)
          {
            v15 = v41;
            if (!CFArrayGetCount(Mutable))
            {
              CFRelease(Mutable);
              Mutable = 0;
            }
          }

          else
          {
            v15 = v41;
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        else
        {
          if (iDCopy)
          {
            if (FigCFEqual())
            {
              v22 = MXEndpointDescriptorCacheDoesEndpointIDMatchDeviceID;
            }

            else
            {
              v22 = MEMORY[0x1E695FF20];
            }
          }

          else
          {
            v22 = MEMORY[0x1E695FF18];
          }

          Mutable = [(MXEndpointDescriptorCache *)self _copyMatchingEndpointsForManagerType:type predicateMatchFunction:v22 inEndpointPredicateRefCon:d];
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (++v14 == v12)
      {
        v29 = 1;
      }

      else
      {
        v29 = v20;
      }
    }

    while (v29 != 1);
  }

  else
  {
    Mutable = 0;
  }

  v30 = *MEMORY[0x1E69618D0];
  if (FigCFEqual())
  {
    if (Mutable)
    {
      v31 = CFArrayGetCount(Mutable);
    }

    else
    {
      v31 = 0;
    }

    if (ContextType == 7 || ContextType == 9)
    {
      if (v31 >= 1)
      {
        v35 = 0;
        do
        {
          v33 = CFArrayGetValueAtIndex(Mutable, v35);
          if ((FigEndpointGetSupportedFeatures() & 0x10) != 0)
          {
            goto LABEL_66;
          }
        }

        while (v31 != ++v35);
      }
    }

    else if (v31 >= 1)
    {
      v36 = 0;
      while (1)
      {
        v33 = CFArrayGetValueAtIndex(Mutable, v36);
        if ((FigEndpointGetSupportedFeatures() & 0x10) == 0)
        {
          break;
        }

        if (v31 == ++v36)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      if (v33)
      {
        v33 = CFRetain(v33);
      }

LABEL_68:
      if (!Mutable)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

LABEL_65:
    v33 = 0;
    goto LABEL_68;
  }

  if (!Mutable)
  {
    v33 = 0;
    goto LABEL_72;
  }

  if (CFArrayGetCount(Mutable) >= 1 && (v32 = CFArrayGetValueAtIndex(Mutable, 0)) != 0)
  {
    v33 = CFRetain(v32);
  }

  else
  {
    v33 = 0;
  }

LABEL_71:
  CFRelease(Mutable);
LABEL_72:
  v37 = self->_cacheMutex;
  FigSimpleMutexUnlock();
  return v33;
}

- (void)_endpointDescriptionDidChangeForEndpoint:(OpaqueFigEndpoint *)endpoint notificationName:(__CFString *)name payload:(__CFDictionary *)payload
{
  if (endpoint)
  {
    for (i = 0; ; ++i)
    {
      availableEndpointsInfo = self->_availableEndpointsInfo;
      if (availableEndpointsInfo)
      {
        availableEndpointsInfo = CFArrayGetCount(availableEndpointsInfo);
      }

      if (i >= availableEndpointsInfo)
      {
        break;
      }

      CFArrayGetValueAtIndex(self->_availableEndpointsInfo, i);
      FigCFDictionaryGetValue();
      if (FigCFEqual())
      {
        v11 = FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(endpoint);
        FigCFDictionarySetValue();
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    CFRetain(endpoint);
    if (name)
    {
      CFRetain(name);
    }

    if (payload)
    {
      CFRetain(payload);
    }

    notificationQueue = self->_notificationQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __95__MXEndpointDescriptorCache__endpointDescriptionDidChangeForEndpoint_notificationName_payload___block_invoke;
    v13[3] = &__block_descriptor_56_e5_v8__0l;
    v13[4] = endpoint;
    v13[5] = name;
    v13[6] = payload;
    MXDispatchAsync("[MXEndpointDescriptorCache _endpointDescriptionDidChangeForEndpoint:notificationName:payload:]", "MXEndpointDescriptorCache.m", 882, 0, 0, notificationQueue, v13);
  }
}

@end