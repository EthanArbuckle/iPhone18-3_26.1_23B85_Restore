@interface _GCKeyboardAndMouseManager
- (NSSet)devices;
- (_GCKeyboardAndMouseManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)keyboardHIDServices;
- (id)keyboards;
- (id)matchingHIDServiceAttributes;
- (id)mice;
- (uint64_t)handleHIDEvent:(uint64_t)event atTimestamp:(void *)timestamp forSubject:;
- (void)_onqueue_HIDServiceAdded:(uint64_t)added;
- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_addMouse:(uint64_t)mouse;
- (void)_onqueue_refreshKeyboards;
- (void)_onqueue_removeMouse:(uint64_t)mouse;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setKeyboardHIDServices:(void *)services;
@end

@implementation _GCKeyboardAndMouseManager

- (_GCKeyboardAndMouseManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  environmentCopy = environment;
  v21.receiver = self;
  v21.super_class = _GCKeyboardAndMouseManager;
  v10 = [(_GCKeyboardAndMouseManager *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionQueue, queue);
    *&v11->_monitorKeyboards = 257;
    v12 = objc_opt_new();
    hidServiceSubjects = v11->_hidServiceSubjects;
    v11->_hidServiceSubjects = v12;

    v14 = [MEMORY[0x277CBEB98] set];
    keyboardHIDServices = v11->_keyboardHIDServices;
    v11->_keyboardHIDServices = v14;

    v16 = objc_opt_new();
    mice = v11->_mice;
    v11->_mice = v16;

    v18 = GCLookupService();
    hidServiceProviding = v11->_hidServiceProviding;
    v11->_hidServiceProviding = v18;
  }

  return v11;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  hidEventSource = [session hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;

  MEMORY[0x2821F96F8]();
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___GCKeyboardAndMouseManager_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_277E1DD80;
  v8[4] = self;
  v6 = [MEMORY[0x277D0C900] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)added
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (added)
  {
    dispatch_assert_queue_V2(*(added + 8));
    v4 = *(added + 48);
    registryID = [v3 registryID];
    v6 = [v4 objectForKey:registryID];

    if (v6)
    {
      v7 = _gc_log_keyboard_and_mouse();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [_GCKeyboardAndMouseManager _onqueue_HIDServiceAdded:];
      }
    }

    else
    {
      [v3 service];
      v8 = isDeviceKeyboard();
      [v3 service];
      v9 = isDeviceMouse();
      v10 = v9;
      if ((v8 & 1) != 0 || v9)
      {
        registryID2 = [v3 registryID];
        v12 = objc_opt_new();
        v13 = *(added + 48);
        objc_sync_enter(v13);
        [*(added + 48) setObject:v12 forKey:registryID2];
        objc_sync_exit(v13);

        v14 = _gc_log_keyboard_and_mouse();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = 138412802;
          v17 = v3;
          v18 = 1024;
          v19 = v8;
          v20 = 1024;
          v21 = v10;
          _os_log_impl(&dword_20E408000, v14, OS_LOG_TYPE_INFO, "Now tracking %@. Is Keyboard(%{BOOL}d), Mouse(%{BOOL}d)", &v16, 0x18u);
        }
      }

      [(_GCKeyboardAndMouseManager *)v8 _onqueue_HIDServiceAdded:v10, v3, added];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___GCKeyboardAndMouseManager_invalidateWithSession_environment___block_invoke;
  v7[3] = &unk_277E1DD80;
  v7[4] = self;
  v5 = [MEMORY[0x277D0C900] futureOnQueue:sessionQueue withBlock:v7];

  return v5;
}

- (NSSet)devices
{
  mice = [(_GCKeyboardAndMouseManager *)self mice];
  v5 = objc_getProperty(self, a2, 56, 1);
  if (v5)
  {
    v6 = [mice setByAddingObject:v5];

    mice = v6;
  }

  return mice;
}

- (id)keyboards
{
  v2 = objc_getProperty(self, a2, 56, 1);
  if (v2)
  {
    [MEMORY[0x277CBEB98] setWithObject:v2];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (void)_onqueue_refreshKeyboards
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = objc_getProperty(self, v4, 72, 1);
  if (![v5 count])
  {
    goto LABEL_15;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277CCB0D0]);
        v14 = [v13 initWithSource:self->_hidEventSource service:{v12, v21}];
        [v6 addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  if ([v6 count] < 2)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [objc_alloc(MEMORY[0x277CCB0C8]) initWithSources:v6];
  }

  v16 = firstObject;

  if (!v16)
  {
LABEL_15:
    if (!self->_coalescedKeyboard)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v17 = [MEMORY[0x277CBEB98] setWithObject:?];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v17];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"keyboards" withSetMutation:2 usingObjects:v17];
    objc_setProperty_atomic(self, a2, 0, 56);
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"keyboards" withSetMutation:2 usingObjects:v17];
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v17];
    v16 = 0;
    goto LABEL_17;
  }

  if (!self->_coalescedKeyboard)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCB080]);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v17];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v18];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"keyboards" withSetMutation:1 usingObjects:v18];
    objc_setProperty_atomic(self, a2, v17, 56);
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"keyboards" withSetMutation:1 usingObjects:v18];
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v18];

LABEL_17:
  }

LABEL_19:
  keyboardInput = [(GCKeyboard *)self->_coalescedKeyboard keyboardInput];
  [keyboardInput setKeyboardEventSource:v16];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)mice
{
  v3 = objc_opt_new();
  v4 = self->_mice;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_mice allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_addMouse:(uint64_t)mouse
{
  v3 = a2;
  if (mouse)
  {
    dispatch_assert_queue_V2(*(mouse + 8));
    v4 = [*(mouse + 64) objectForKey:v3];

    if (v4)
    {
      registryID = _gc_log_keyboard_and_mouse();
      if (os_log_type_enabled(registryID, OS_LOG_TYPE_DEBUG))
      {
        [_GCKeyboardAndMouseManager _onqueue_addMouse:];
      }
    }

    else
    {
      registryID = [v3 registryID];
      v6 = *(mouse + 48);
      objc_sync_enter(v6);
      v7 = [*(mouse + 48) objectForKey:registryID];
      objc_sync_exit(v6);

      if (v7)
      {
        [v3 service];
        if ((serviceMatchesUsageAndUsagePage() & 1) != 0 || serviceMatchesUsageAndUsagePage())
        {
          v8 = _gc_log_keyboard_and_mouse();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            [_GCKeyboardAndMouseManager _onqueue_addMouse:];
          }

          v9 = 1;
        }

        else
        {
          v8 = _gc_log_keyboard_and_mouse();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            [_GCKeyboardAndMouseManager _onqueue_addMouse:];
          }

          v9 = 5;
        }

        v10 = [v3 stringPropertyForKey:@"Product"];
        v11 = [objc_alloc(MEMORY[0x277CCB088]) initWithName:v10 additionalButtons:v9];
        mouseInput = [v11 mouseInput];
        [mouseInput setButtonEventSource:v7];
        [mouseInput setScrollEventSource:v7];
        [mouseInput setDigitizerEventSource:v7];
        [mouseInput setPointerEventSource:v7];
        v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
        [mouse willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v13];
        [mouse willChangeValueForKey:@"mice" withSetMutation:1 usingObjects:v13];
        v14 = *(mouse + 64);
        objc_sync_enter(v14);
        [*(mouse + 64) setObject:v11 forKey:v3];
        objc_sync_exit(v14);

        [mouse didChangeValueForKey:@"mice" withSetMutation:1 usingObjects:v13];
        [mouse didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v13];
      }

      else
      {
        v10 = _gc_log_keyboard_and_mouse();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [_GCKeyboardAndMouseManager _onqueue_addMouse:];
        }
      }
    }
  }
}

- (void)_onqueue_removeMouse:(uint64_t)mouse
{
  v3 = a2;
  if (mouse)
  {
    v7 = v3;
    dispatch_assert_queue_V2(*(mouse + 8));
    v4 = [*(mouse + 64) objectForKey:v7];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [mouse willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
      [mouse willChangeValueForKey:@"mice" withSetMutation:2 usingObjects:v5];
      v6 = *(mouse + 64);
      objc_sync_enter(v6);
      [*(mouse + 64) removeObjectForKey:v7];
      [(_GCKeyboardAndMouseManager *)v6 _onqueue_removeMouse:mouse, v5];
    }

    v3 = v7;
  }
}

- (id)matchingHIDServiceAttributes
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = @"DeviceUsagePage";
  v18[1] = @"DeviceUsage";
  v19[0] = &unk_282544768;
  v19[1] = &unk_282544780;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16[0] = @"DeviceUsagePage";
  v16[1] = @"DeviceUsage";
  v17[0] = &unk_282544768;
  v17[1] = &unk_282544798;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v5 = v4;
  monitorMice = self->_monitorMice;
  if (self->_monitorKeyboards)
  {
    if (self->_monitorMice)
    {
      v15[0] = v3;
      v15[1] = v4;
      v7 = MEMORY[0x277CBEA60];
      v8 = v15;
      v9 = 2;
LABEL_8:
      v10 = [v7 arrayWithObjects:v8 count:v9];
      goto LABEL_10;
    }

    v14 = v3;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v14;
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  if (self->_monitorMice)
  {
    v13 = v4;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v13;
    goto LABEL_7;
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed
{
  v3 = a2;
  if (removed)
  {
    dispatch_assert_queue_V2(*(removed + 8));
    v4 = *(removed + 48);
    registryID = [v3 registryID];
    v6 = [v4 objectForKey:registryID];

    if (v6)
    {
      registryID2 = [v3 registryID];
      v8 = *(removed + 48);
      objc_sync_enter(v8);
      [*(removed + 48) removeObjectForKey:registryID2];
      [(_GCKeyboardAndMouseManager *)v8 _onqueue_HIDServiceRemoved:registryID2, v3];
    }

    [(_GCKeyboardAndMouseManager *)removed _onqueue_HIDServiceRemoved:v3];
  }
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v29 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCKeyboardAndMouseManager *)self _onqueue_HIDServiceRemoved:?];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = servicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCKeyboardAndMouseManager *)self _onqueue_HIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  SenderID = IOHIDEventGetSenderID();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (Type == 11 && _DescendantPointerEvent(event))
  {
    SenderID = IOHIDEventGetSenderID();
  }

  v8 = self->_hidServiceSubjects;
  objc_sync_enter(v8);
  hidServiceSubjects = self->_hidServiceSubjects;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
  v11 = [(NSMutableDictionary *)hidServiceSubjects objectForKey:v10];

  objc_sync_exit(v8);
  if (v11 && IOHIDEventGetType() == 11)
  {
    [(_GCKeyboardAndMouseManager *)self handleHIDEvent:event atTimestamp:TimeStamp forSubject:v11];
  }

  MEMORY[0x2821F96F8]();
}

- (id)keyboardHIDServices
{
  if (result)
  {
    return objc_getProperty(result, a2, 72, 1);
  }

  return result;
}

- (void)setKeyboardHIDServices:(void *)services
{
  if (services)
  {
    objc_setProperty_atomic_copy(services, newValue, newValue, 72);
  }
}

- (uint64_t)handleHIDEvent:(uint64_t)event atTimestamp:(void *)timestamp forSubject:
{
  v90 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  if (self)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v9 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v4 = Count;
        v11 = 0;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          v11 |= [(_GCKeyboardAndMouseManager *)self handleHIDEvent:event atTimestamp:timestampCopy forSubject:?];
        }

        if (v11)
        {
          goto LABEL_64;
        }
      }
    }

    Type = IOHIDEventGetType();
    switch(Type)
    {
      case 17:
        v63 = _gc_log_keyboard_and_mouse();
        v64 = os_signpost_id_generate(v63);

        if (os_variant_has_internal_diagnostics())
        {
          v65 = _gc_log_keyboard_and_mouse();
          v66 = _gc_log_signpost();
          v67 = OUTLINED_FUNCTION_5_0(v66);

          if (v67)
          {
            v68 = _gc_log_keyboard_and_mouse();
            OUTLINED_FUNCTION_3_0();
            if (!(!v22 & v21) && os_signpost_enabled(v68))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v69, v70, v71, "HIDEvent.Pointer", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v72, v73, v81, v82, v83, v84, v85, v86, v87, eventCopy, buf[0]);
            }
          }
        }

        v28 = objc_opt_new();
        [v28 setTimestamp:event];
        v74 = BKSHIDEventGetPointerAttributes();
        v32 = v74;
        if (v74)
        {
          [v74 unacceleratedRelativePositionX];
          [OUTLINED_FUNCTION_6() setX:?];
          [v32 unacceleratedRelativePositionY];
          [OUTLINED_FUNCTION_6() setY:?];
        }

        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishPointerEvent:v28];
        if (os_variant_has_internal_diagnostics())
        {
          v75 = _gc_log_keyboard_and_mouse();
          v76 = _gc_log_signpost();
          v77 = OUTLINED_FUNCTION_5_0(v76);

          if (v77)
          {
            v78 = _gc_log_keyboard_and_mouse();
            OUTLINED_FUNCTION_3_0();
            if (!(!v22 & v21) && os_signpost_enabled(v78))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_20E408000, v78, OS_SIGNPOST_INTERVAL_END, v64, "HIDEvent.Pointer", "{}", buf, 2u);
            }
          }
        }

        goto LABEL_62;
      case 6:
        v35 = _gc_log_keyboard_and_mouse();
        v36 = os_signpost_id_generate(v35);

        if (os_variant_has_internal_diagnostics())
        {
          v37 = _gc_log_keyboard_and_mouse();
          v38 = _gc_log_signpost();
          v39 = OUTLINED_FUNCTION_5_0(v38);

          if (v39)
          {
            v40 = _gc_log_keyboard_and_mouse();
            v41 = v40;
            if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              _os_signpost_emit_with_name_impl(&dword_20E408000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v36, "HIDEvent.Scroll", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", buf, 0x1Cu);
            }
          }
        }

        IOHIDEventGetFloatValue();
        v43 = v42;
        IOHIDEventGetFloatValue();
        v81 = MEMORY[0x277D85DD0];
        v82 = 3221225472;
        v83 = __68___GCKeyboardAndMouseManager_handleHIDEvent_atTimestamp_forSubject___block_invoke;
        v84 = &unk_277E1DDD0;
        v86 = v43;
        v87 = v44;
        eventCopy = event;
        v85 = timestampCopy;
        dispatch_async(MEMORY[0x277D85CD0], &v81);
        if (os_variant_has_internal_diagnostics())
        {
          v45 = _gc_log_keyboard_and_mouse();
          v46 = _gc_log_signpost();
          v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);

          if (v47)
          {
            v48 = _gc_log_keyboard_and_mouse();
            v49 = v48;
            if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_20E408000, v49, OS_SIGNPOST_INTERVAL_END, v36, "HIDEvent.Scroll", "{}", buf, 2u);
            }
          }
        }

        v28 = v85;
        goto LABEL_63;
      case 11:
        v50 = _gc_log_keyboard_and_mouse();
        v16 = os_signpost_id_generate(v50);

        if (os_variant_has_internal_diagnostics())
        {
          v51 = _gc_log_keyboard_and_mouse();
          v52 = _gc_log_signpost();
          v53 = OUTLINED_FUNCTION_5_0(v52);

          if (v53)
          {
            v54 = _gc_log_keyboard_and_mouse();
            OUTLINED_FUNCTION_3_0();
            if (!(!v22 & v21) && os_signpost_enabled(v54))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v55, v56, v57, "HIDEvent.Digitizer", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v58, v59, v81, v82, v83, v84, v85, v86, v87, eventCopy, buf[0]);
            }
          }
        }

        v28 = objc_opt_new();
        [v28 setTimestamp:event];
        IOHIDEventGetFloatValue();
        [OUTLINED_FUNCTION_6() setX:?];
        IOHIDEventGetFloatValue();
        [OUTLINED_FUNCTION_6() setY:?];
        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishDigitizerEvent:v28];
        if (!os_variant_has_internal_diagnostics())
        {
          goto LABEL_63;
        }

        v60 = _gc_log_keyboard_and_mouse();
        v61 = _gc_log_signpost();
        v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);

        if (!v62)
        {
          goto LABEL_63;
        }

        v32 = _gc_log_keyboard_and_mouse();
        OUTLINED_FUNCTION_3_0();
        if (!v22 & v21 || !os_signpost_enabled(v32))
        {
          goto LABEL_62;
        }

        *buf = 0;
        v33 = "HIDEvent.Digitizer";
        goto LABEL_47;
      case 2:
        v15 = _gc_log_keyboard_and_mouse();
        v16 = os_signpost_id_generate(v15);

        if (os_variant_has_internal_diagnostics())
        {
          v17 = _gc_log_keyboard_and_mouse();
          v18 = _gc_log_signpost();
          v19 = OUTLINED_FUNCTION_5_0(v18);

          if (v19)
          {
            v20 = _gc_log_keyboard_and_mouse();
            OUTLINED_FUNCTION_3_0();
            if (!(!v22 & v21) && os_signpost_enabled(v20))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v23, v24, v25, "HIDEvent.Button", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v26, v27, v81, v82, v83, v84, v85, v86, v87, eventCopy, buf[0]);
            }
          }
        }

        v28 = objc_opt_new();
        [v28 setTimestamp:event];
        [v28 setMask:IOHIDEventGetIntegerValue()];
        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishButtonEvent:v28];
        if (!os_variant_has_internal_diagnostics())
        {
          goto LABEL_63;
        }

        v29 = _gc_log_keyboard_and_mouse();
        v30 = _gc_log_signpost();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);

        if (!v31)
        {
          goto LABEL_63;
        }

        v32 = _gc_log_keyboard_and_mouse();
        OUTLINED_FUNCTION_3_0();
        if (!v22 & v21 || !os_signpost_enabled(v32))
        {
LABEL_62:

LABEL_63:
LABEL_64:
          v34 = 1;
          goto LABEL_65;
        }

        *buf = 0;
        v33 = "HIDEvent.Button";
LABEL_47:
        _os_signpost_emit_with_name_impl(&dword_20E408000, v32, OS_SIGNPOST_INTERVAL_END, v16, v33, "{}", buf, 2u);
        goto LABEL_62;
    }
  }

  v34 = 0;
LABEL_65:

  v79 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_onqueue_HIDServiceAdded:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0(&dword_20E408000, v0, v1, "#NOTE Already tracking HID service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_HIDServiceAdded:(void *)a3 .cold.2(char a1, const char *a2, void *a3, id self)
{
  v6 = a2;
  if (a1)
  {
    v7 = objc_getProperty(self, a2, 72, 1);
    if (([v7 containsObject:a3] & 1) == 0)
    {
      v8 = [v7 setByAddingObject:a3];
      objc_setProperty_atomic_copy(self, v9, v8, 72);

      [self _onqueue_refreshKeyboards];
    }
  }

  if (v6)
  {
    [(_GCKeyboardAndMouseManager *)self _onqueue_addMouse:a3];
  }
}

- (void)_onqueue_addMouse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0(&dword_20E408000, v0, v1, "#NOTE Added HID service %@ is already tracked as a mouse.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_addMouse:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0(&dword_20E408000, v0, v1, "%@ is normal mouse device!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_addMouse:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0(&dword_20E408000, v0, v1, "%@ is Magic mouse or Magic trackpad!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_addMouse:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0(&dword_20E408000, v0, v1, "#NOTE Not currently tracking added mouse HID service %@.  It may have already disconnected.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_removeMouse:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  objc_sync_exit(a1);

  [a2 didChangeValueForKey:@"mice" withSetMutation:2 usingObjects:a3];
  [a2 didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:a3];
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_sync_exit(a1);

  v6 = _gc_log_keyboard_and_mouse();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_20E408000, v6, OS_LOG_TYPE_INFO, "No longer tracking %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_HIDServiceRemoved:(void *)a1 .cold.2(void *a1, char *a2)
{
  v4 = objc_getProperty(a1, a2, 72, 1);
  if ([v4 containsObject:a2])
  {
    v5 = [v4 gc_setByRemovingObject:a2];
    objc_setProperty_atomic_copy(a1, v6, v5, 72);

    [a1 _onqueue_refreshKeyboards];
  }

  [(_GCKeyboardAndMouseManager *)a1 _onqueue_removeMouse:a2];
}

@end