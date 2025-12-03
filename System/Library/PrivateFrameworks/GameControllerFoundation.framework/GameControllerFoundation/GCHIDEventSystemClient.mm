@interface GCHIDEventSystemClient
- (BOOL)conformsToProtocol:(id)protocol;
- (OS_dispatch_queue)eventQueue;
- (OS_dispatch_queue)servicesQueue;
- (id)registerEventHandler:(id)handler;
- (id)registerServicesChangedHandler:(id)handler notifyExisting:(BOOL)existing;
- (id)registerServicesChangedObserver:(id)observer notifyExisting:(BOOL)existing;
- (id)serviceForRegistryID:(unint64_t)d;
- (id)unregisterServicesChangedObserver:(id)observer notifyExisting:(BOOL)existing;
- (uint64_t)_observationListForType:(uint64_t)type;
- (void)_onqueue_services:(uint64_t)_onqueue_services added:removed:;
- (void)_servicesQueue;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)registerEventObserver:(id)observer;
- (void)setCancelHandler:(id)handler;
- (void)setEventCallBack:(void *)back target:(void *)target context:(void *)context;
- (void)setEventQueue:(id)queue;
- (void)setMatching:(id)matching;
- (void)setMatchingMultiple:(id)multiple;
- (void)setServicesChangedCallback:(void *)callback target:(void *)target context:(void *)context;
- (void)setServicesQueue:(id)queue;
- (void)setServicesUpdatedAsynchronously:(BOOL)asynchronously;
@end

@implementation GCHIDEventSystemClient

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = self->_services;
  v4 = [(NSSet *)services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(services);
        }

        functions = self->_functions;
        if (functions)
        {
          var2 = functions->var10->var2;
        }

        else
        {
          var2 = MEMORY[0x1E696CD30];
        }

        var2([*(*(&v14 + 1) + 8 * v7++) service], 0, 0, 0);
      }

      while (v5 != v7);
      v10 = [(NSSet *)services countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v10;
    }

    while (v10);
  }

  client = self->_client;
  if (client)
  {
    CFRelease(client);
    self->_client = 0;
  }

  self->_cancelHandler = 0;
  v13.receiver = self;
  v13.super_class = GCHIDEventSystemClient;
  [(GCHIDEventSystemClient *)&v13 dealloc];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_activated, &v4, 1u);
  if (!v4)
  {
    v15 = v2;
    v16 = v3;
    v7 = _os_activity_create(&dword_1D2C3B000, "[HID Event System Client] Activate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14.opaque[0] = 0;
    v14.opaque[1] = 0;
    os_activity_scope_enter(v7, &v14);
    client = self->_client;
    CFRetain(client);
    functions = self->_functions;
    if (functions)
    {
      var2 = functions->var2;
    }

    else
    {
      var2 = MEMORY[0x1E696CD08];
    }

    v11 = self->_client;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__GCHIDEventSystemClient_activate__block_invoke;
    v13[3] = &unk_1E8414388;
    v13[4] = self;
    v13[5] = a2;
    v13[6] = client;
    var2(v11, v13);
    v12 = self->_functions;
    if (v12)
    {
      (v12->var3)(self->_client);
    }

    else
    {
      MEMORY[0x1E696CCD8](self->_client);
    }

    os_activity_scope_leave(&v14);
  }
}

void __34__GCHIDEventSystemClient_activate__block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1D2C3B000, "[HID Event System Client] Cancelled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  atomic_store(1u, (*(a1 + 32) + 59));
  Property = objc_getProperty(*(a1 + 32), *(a1 + 40), 40, 1);
  if (Property)
  {
    Property[2]();
    objc_setProperty_atomic(*(a1 + 32), *(a1 + 40), 0, 40);
  }

  CFRelease(*(a1 + 48));
  os_activity_scope_leave(&v4);
}

- (void)invalidate
{
  functions = self->_functions;
  if (functions)
  {
    (functions->var4)(self->_client);
  }

  else
  {
    MEMORY[0x1E696CCE0](self->_client);
  }
}

- (void)setCancelHandler:(id)handler
{
  p_cancelled = &self->_cancelled;
  if ((atomic_load_explicit(&self->_cancelled, memory_order_acquire) & 1) == 0)
  {
    objc_setProperty_atomic(self, a2, handler, 40);
    if (atomic_load_explicit(p_cancelled, memory_order_acquire))
    {

      objc_setProperty_atomic(self, a2, 0, 40);
    }
  }
}

- (void)setServicesQueue:(id)queue
{
  v6 = atomic_load(&self->_activated);
  if (v6)
  {
    [GCHIDEventSystemClient setServicesQueue:];
  }

  objc_setProperty_atomic(self, a2, queue, 24);
}

- (void)setServicesUpdatedAsynchronously:(BOOL)asynchronously
{
  v5 = atomic_load(&self->_activated);
  if (v5)
  {
    [GCHIDEventSystemClient setServicesUpdatedAsynchronously:];
  }

  self->_servicesUpdatedAsynchronously = asynchronously;
}

GCHIDServiceInfo *__46__GCHIDEventSystemClient_setMatchingMultiple___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [GCHIDServiceInfo alloc];
  v5 = *(*(a1 + 32) + 8);
  if (v5)
  {
    v6 = *(v5 + 80);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(GCHIDServiceInfo *)v4 initWithService:a2 queue:*(*(a1 + 32) + 16) functions:v6];

  return v7;
}

- (void)setMatching:(id)matching
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (matching)
  {
    v5[0] = matching;
    matching = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  [(GCHIDEventSystemClient *)self setMatchingMultiple:matching];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)serviceForRegistryID:(unint64_t)d
{
  functions = self->_functions;
  if (functions)
  {
    result = (functions->var7)(self->_client, d);
  }

  else
  {
    result = MEMORY[0x1E696CCE8](self->_client, d);
  }

  if (result)
  {
    v6 = result;
    v7 = [GCHIDServiceInfo alloc];
    v8 = self->_functions;
    if (v8)
    {
      var10 = v8->var10;
    }

    else
    {
      var10 = 0;
    }

    v10 = [(GCHIDServiceInfo *)v7 initWithService:v6 queue:self->_queue functions:var10];
    CFRelease(v6);

    return v10;
  }

  return result;
}

- (void)setServicesChangedCallback:(void *)callback target:(void *)target context:(void *)context
{
  v9 = atomic_load(&self->_activated);
  if (v9)
  {
    [GCHIDEventSystemClient setServicesChangedCallback:target:context:];
  }

  self->_serviceObservations.var0.callback = callback;
  self->_serviceObservations.var0.target = target;
  self->_serviceObservations.var0.context = context;
}

void __72__GCHIDEventSystemClient_registerServicesChangedHandler_notifyExisting___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = atomic_load((*(a1 + 32) + 9));
  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 40) services];
    if ([v4 count])
    {
      __72__GCHIDEventSystemClient_registerServicesChangedHandler_notifyExisting___block_invoke_cold_1(v1, v4);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    HIDObservationListAdd(v5, v6);
  }
}

uint64_t __73__GCHIDEventSystemClient_registerServicesChangedObserver_notifyExisting___block_invoke(uint64_t a1, void *a2)
{
  v3 = atomic_load((*(a1 + 32) + 59));
  if (v3)
  {

    return [a2 cancel];
  }

  else
  {
    v6 = [*(a1 + 32) services];
    if ([v6 count])
    {
      __73__GCHIDEventSystemClient_registerServicesChangedObserver_notifyExisting___block_invoke_cold_1(a1, v6);
    }

    v7 = *(a1 + 40);
    HIDObservationListAdd(*(a1 + 32), *(a1 + 40));
    v8 = [MEMORY[0x1E695DFB0] null];

    return [a2 succeedWithResult:v8];
  }
}

- (id)unregisterServicesChangedObserver:(id)observer notifyExisting:(BOOL)existing
{
  if (existing)
  {
    [(GCHIDEventSystemClient *)self unregisterServicesChangedObserver:v6 notifyExisting:observer, &v7];
    return v7;
  }

  else
  {

    null = [MEMORY[0x1E695DFB0] null];

    return [GCFuture futureWithResult:null];
  }
}

uint64_t __75__GCHIDEventSystemClient_unregisterServicesChangedObserver_notifyExisting___block_invoke(uint64_t a1, void *a2)
{
  v4 = HIDEventObservationListRemoveObserver(*(a1 + 32), 1, *(a1 + 40));
  if ([objc_msgSend(*(a1 + 32) "services")])
  {
    __75__GCHIDEventSystemClient_unregisterServicesChangedObserver_notifyExisting___block_invoke_cold_1();
  }

  v5 = [MEMORY[0x1E695DFB0] null];

  return [a2 succeedWithResult:v5];
}

- (OS_dispatch_queue)eventQueue
{
  result = self->_eventQueue;
  if (!result)
  {
    return self->_queue;
  }

  return result;
}

- (void)setEventQueue:(id)queue
{
  v5 = atomic_load(&self->_activated);
  if (v5)
  {
    [GCHIDEventSystemClient setEventQueue:];
  }

  self->_eventQueue = queue;
}

- (void)setEventCallBack:(void *)back target:(void *)target context:(void *)context
{
  if (!self->_isEventMonitor)
  {
    [GCHIDEventSystemClient setEventCallBack:target:context:];
  }

  v9 = atomic_load(&self->_activated);
  if (v9)
  {
    [GCHIDEventSystemClient setEventCallBack:target:context:];
  }

  self->_eventObservations.var0.callback = back;
  self->_eventObservations.var0.target = target;
  self->_eventObservations.var0.context = context;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  if (&unk_1F4E38D78 == protocol && !self->_isEventMonitor)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = GCHIDEventSystemClient;
  return [(GCHIDEventSystemClient *)&v6 conformsToProtocol:?];
}

- (uint64_t)_observationListForType:(uint64_t)type
{
  v2 = type + 120;
  if (a2 == 1)
  {
    v2 = type + 72;
  }

  if (type)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)_servicesQueue
{
  if (result)
  {
    v1 = result;
    result = OUTLINED_FUNCTION_6(result, sel__servicesQueue);
    if (!result)
    {
      return v1[2];
    }
  }

  return result;
}

- (OS_dispatch_queue)servicesQueue
{
  if (self)
  {
    selfCopy = self;
    self = OUTLINED_FUNCTION_6(self, sel__servicesQueue);
    if (!self)
    {
      return *(selfCopy + 2);
    }
  }

  return self;
}

- (void)setMatchingMultiple:(id)multiple
{
  selfCopy = self;
  v173 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = OUTLINED_FUNCTION_6(self, sel__servicesQueue);
    if (!self)
    {
      self = selfCopy->_queue;
    }
  }

  dispatch_assert_queue_V2(&self->super);
  selfCopy->_isModifyingMatchCriteria = 1;
  functions = selfCopy->_functions;
  if (functions)
  {
    (functions->var6)(selfCopy->_client, multiple);
  }

  else
  {
    MEMORY[0x1E696CD18](selfCopy->_client, multiple);
  }

  selfCopy->_isModifyingMatchCriteria = 0;
  v6 = selfCopy->_functions;
  if (v6)
  {
    v7 = (v6->var8)(selfCopy->_client);
  }

  else
  {
    v7 = MEMORY[0x1E696CCF0](selfCopy->_client);
  }

  v8 = v7;
  v151 = MEMORY[0x1E69E9820];
  v152 = 3221225472;
  v153 = __46__GCHIDEventSystemClient_setMatchingMultiple___block_invoke;
  v154 = &unk_1E84143B0;
  v155 = selfCopy;
  v9 = [v7 gc_arrayByTransformingElementsUsingBlock:&v151];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v10];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  services = selfCopy->_services;
  v22 = OUTLINED_FUNCTION_8(v13, v15, v16, v17, v18, v19, v20, v21, v84, v88, v92, v96, v100, v104, v108, v112);
  if (v22)
  {
    v30 = v22;
    v31 = MEMORY[0];
    do
    {
      v32 = 0;
      do
      {
        if (MEMORY[0] != v31)
        {
          objc_enumerationMutation(services);
        }

        v33 = *(8 * v32);
        if ([v11 containsObject:v33])
        {
          [v11 removeObject:v33];
          v34 = [v11 addObject:v33];
        }

        else
        {
          [v13 addObject:v33];
          OUTLINED_FUNCTION_2_2();
          if (v42)
          {
            v44 = *(*(v42 + 80) + 16);
          }

          else
          {
            v44 = v43;
          }

          v34 = v44([v33 service], 0, 0, 0);
        }

        ++v32;
      }

      while (v30 != v32);
      v22 = OUTLINED_FUNCTION_8(v34, v35, v36, v37, v38, v39, v40, v41, v85, v89, v93, v97, v101, v105, v109, v113);
      v30 = v22;
    }

    while (v22);
  }

  v45 = OUTLINED_FUNCTION_7(v22, v23, v24, v25, v26, v27, v28, v29, v85, v89, v93, v97, v101, v105, v109, v113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v148, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
  if (v45)
  {
    v53 = v45;
    v54 = *v120;
    do
    {
      v55 = 0;
      do
      {
        if (*v120 != v54)
        {
          objc_enumerationMutation(v11);
        }

        v56 = *(v118 + 8 * v55);
        v57 = [(NSSet *)selfCopy->_services containsObject:v56];
        if ((v57 & 1) == 0)
        {
          v57 = [v12 addObject:v56];
        }

        ++v55;
      }

      while (v53 != v55);
      v45 = OUTLINED_FUNCTION_7(v57, v58, v59, v60, v61, v62, v63, v64, v86, v90, v94, v98, v102, v106, v110, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v149, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
      v53 = v45;
    }

    while (v45);
  }

  v65 = OUTLINED_FUNCTION_9(v45, v46, v47, v48, v49, v50, v51, v52, 0, 0, 0, 0, 0, 0, 0, 0, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v149, v151, v152, v153, v154, v155, v156);
  if (v65)
  {
    v66 = v65;
    v67 = *v95;
    do
    {
      v68 = 0;
      do
      {
        if (*v95 != v67)
        {
          objc_enumerationMutation(v11);
        }

        v69 = *(v91 + 8 * v68);
        OUTLINED_FUNCTION_2_2();
        if (v71)
        {
          v73 = *(*(v71 + 80) + 16);
        }

        else
        {
          v73 = v72;
        }

        [v70 service];
        OUTLINED_FUNCTION_1_2();
        v74 = v73();
        ++v68;
      }

      while (v66 != v68);
      v82 = OUTLINED_FUNCTION_9(v74, v75, v76, v77, v78, v79, v80, v81, v87, v91, v95, v99, v103, v107, v111, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v150, v151, v152, v153, v154, v155, v156);
      v66 = v82;
    }

    while (v82);
  }

  [GCHIDEventSystemClient _onqueue_services:selfCopy added:? removed:?];

  v83 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_services:(uint64_t)_onqueue_services added:removed:
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (_onqueue_services)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = v2;
    [(os_unfair_lock_s *)v2 willChangeValueForKey:@"services"];
    objc_setProperty_atomic_copy(v3, sel_services, v1, 64);
    [(os_unfair_lock_s *)v3 didChangeValueForKey:@"services"];
    if (*&v3[24]._os_unfair_lock_opaque)
    {
      v4 = *&v3[26]._os_unfair_lock_opaque;
      v5 = *&v3[28]._os_unfair_lock_opaque;
      OUTLINED_FUNCTION_2();
      v6();
    }

    os_unfair_lock_lock(v3 + 18);
    os_unfair_lock_opaque = v3[19]._os_unfair_lock_opaque;
    v8 = (v15 - ((8 * os_unfair_lock_opaque + 15) & 0xFFFFFFFF0));
    v9 = *&v3[20]._os_unfair_lock_opaque;
    if (v9)
    {
      v10 = (v15 - ((8 * os_unfair_lock_opaque + 15) & 0xFFFFFFFF0));
      do
      {
        *v10++ = v9;
        v9 = v9[4];
      }

      while (v9);
    }

    os_unfair_lock_unlock(v3 + 18);
    if (os_unfair_lock_opaque)
    {
      do
      {
        v11 = *v8++;
        OUTLINED_FUNCTION_2();
        [__GCHIDSystemObservation NOTIFY_OBSERVER_SERVICES_CHANGED:v12 ADDED_SERVICES:? REMOVED_SERVICES:?];

        --os_unfair_lock_opaque;
      }

      while (os_unfair_lock_opaque);
    }

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (id)registerServicesChangedHandler:(id)handler notifyExisting:(BOOL)existing
{
  existingCopy = existing;
  v7 = [__GCHIDSystemObservation alloc];
  if (v7)
  {
    v13.receiver = v7;
    v13.super_class = __GCHIDSystemObservation;
    v8 = [(GCHIDEventSystemClient *)&v13 init];
    LOBYTE(v8->_functions) = 1;
    v8->_queue = [handler copy];
    BYTE2(v8->_functions) = 1;
    if (existingCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    HIDObservationListAdd(self, v8);
    return v8;
  }

  v8 = 0;
  if (!existingCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (self && !OUTLINED_FUNCTION_6(self, sel__servicesQueue))
  {
    queue = self->_queue;
  }

  OUTLINED_FUNCTION_0_4();
  v12[1] = 3221225472;
  v12[2] = __72__GCHIDEventSystemClient_registerServicesChangedHandler_notifyExisting___block_invoke;
  v12[3] = &unk_1E84143D8;
  v12[4] = v8;
  v12[5] = self;
  dispatch_async(v10, v12);
  return v8;
}

- (id)registerServicesChangedObserver:(id)observer notifyExisting:(BOOL)existing
{
  existingCopy = existing;
  v6 = [[__GCHIDSystemObservation alloc] initWithServiceObserver:observer];
  v7 = v6;
  if (existingCopy)
  {
    if (self && !OUTLINED_FUNCTION_6(self, sel__servicesQueue))
    {
      queue = self->_queue;
    }

    OUTLINED_FUNCTION_0_4();
    v13 = 3221225472;
    v14 = __73__GCHIDEventSystemClient_registerServicesChangedObserver_notifyExisting___block_invoke;
    v15 = &unk_1E8414400;
    selfCopy = self;
    v17 = v7;
    v9 = [GCFuture futureOnQueue:"futureOnQueue:withBlock:" withBlock:?];
  }

  else
  {
    v12 = v6;
    HIDObservationListAdd(self, v7);
    v9 = +[GCFuture futureWithResult:](GCFuture, "futureWithResult:", [MEMORY[0x1E695DFB0] null]);
  }

  v10 = v9;

  return v10;
}

- (id)registerEventHandler:(id)handler
{
  if (!self->_isEventMonitor)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [__GCHIDSystemObservation alloc];
  if (v5)
  {
    v8.receiver = v5;
    v8.super_class = __GCHIDSystemObservation;
    v6 = [(GCHIDEventSystemClient *)&v8 init];
    LOBYTE(v6->_functions) = 2;
    v6->_queue = [handler copy];
    BYTE2(v6->_functions) = 1;
  }

  else
  {
    v6 = 0;
  }

  HIDObservationListAdd(self, v6);
  return v6;
}

- (void)registerEventObserver:(id)observer
{
  if (!self->_isEventMonitor)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [[__GCHIDSystemObservation alloc] initWithEventObserver:observer];
  HIDObservationListAdd(self, v5);
}

- (uint64_t)setServicesQueue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setServicesUpdatedAsynchronously:.cold.1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setServicesChangedCallback:target:context:.cold.1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__GCHIDEventSystemClient_registerServicesChangedHandler_notifyExisting___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = *a1;
  [a2 allObjects];

  [__GCHIDSystemObservation NOTIFY_OBSERVER_SERVICES_CHANGED:v2 ADDED_SERVICES:? REMOVED_SERVICES:?];
}

void __73__GCHIDEventSystemClient_registerServicesChangedObserver_notifyExisting___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  [a2 allObjects];

  [__GCHIDSystemObservation NOTIFY_OBSERVER_SERVICES_CHANGED:v2 ADDED_SERVICES:? REMOVED_SERVICES:?];
}

- (id)unregisterServicesChangedObserver:(uint64_t)a3 notifyExisting:(void *)a4 .cold.1(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_6(a1, sel__servicesQueue);
    if (!v8)
    {
      v8 = a1[2];
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __75__GCHIDEventSystemClient_unregisterServicesChangedObserver_notifyExisting___block_invoke;
  a2[3] = &unk_1E8414400;
  a2[4] = a1;
  a2[5] = a3;
  result = [GCFuture futureOnQueue:v8 withBlock:a2];
  *a4 = result;
  return result;
}

void __75__GCHIDEventSystemClient_unregisterServicesChangedObserver_notifyExisting___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E695DFD8] set];
  [v1 allObjects];

  [__GCHIDSystemObservation NOTIFY_OBSERVER_SERVICES_CHANGED:v0 ADDED_SERVICES:? REMOVED_SERVICES:?];
}

- (uint64_t)setEventQueue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setEventCallBack:target:context:.cold.1()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setEventCallBack:target:context:.cold.2()
{
  OUTLINED_FUNCTION_3();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end