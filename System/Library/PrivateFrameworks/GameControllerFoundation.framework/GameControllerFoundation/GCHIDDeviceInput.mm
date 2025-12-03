@interface GCHIDDeviceInput
- (GCHIDDeviceInput)init;
- (GCHIDDeviceInput)initWithIOHIDDevice:(__IOHIDDevice *)device;
- (id)batchInputElementHandler;
- (void)activate;
- (void)dealloc;
- (void)setBatchInputElementHandler:(id)handler;
- (void)setCancelHandler:(id)handler;
- (void)setInputElementMatching:(id)matching;
- (void)setInputElements:(id)elements;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation GCHIDDeviceInput

- (GCHIDDeviceInput)initWithIOHIDDevice:(__IOHIDDevice *)device
{
  v13.receiver = self;
  v13.super_class = GCHIDDeviceInput;
  v4 = [(GCHIDDeviceInput *)&v13 init];
  v5 = CFRetain(device);
  Service = IOHIDDeviceGetService(v5);
  if (Service)
  {
    IORegistryEntryGetRegistryEntryID(Service, &v4->_cachedDeviceRegistryEntryID);
  }

  v7 = IOHIDQueueCreate(*MEMORY[0x1E695E480], v5, 20, 0);
  v4->_queue = v7;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
    changedElements = v4->_changedElements;
    v4->_changedElements = v8;

    IOHIDQueueRegisterValueAvailableCallback(v4->_queue, __IOHIDQueueInputElementValueCallback, v4);
    [(GCHIDDeviceInput *)v4 setInputElementMatching:0];
    v10 = v4;
  }

  else
  {
    v11 = _gc_log_hid_input();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(GCHIDDeviceInput *)v5 initWithIOHIDDevice:v11];
    }

    v10 = 0;
  }

  return v10;
}

- (GCHIDDeviceInput)init
{
  [(GCHIDDeviceInput *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    Device = IOHIDQueueGetDevice(queue);
    CFRelease(Device);
    CFRelease(self->_queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = GCHIDDeviceInput;
  [(GCHIDDeviceInput *)&v5 dealloc];
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_suspended != suspendedCopy)
  {
    obj->_suspended = suspendedCopy;
    if (obj->_activated)
    {
      queue = obj->_queue;
      if (suspendedCopy)
      {
        IOHIDQueueStop(queue);
      }

      else
      {
        IOHIDQueueStart(queue);
      }
    }
  }

  objc_sync_exit(obj);
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activated)
  {
    v3 = _os_activity_create(&dword_1D2C3B000, "[HID Input] Activate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    queue = selfCopy->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __28__GCHIDDeviceInput_activate__block_invoke;
    handler[3] = &unk_1E8413DA0;
    handler[4] = selfCopy;
    IOHIDQueueSetCancelHandler(queue, handler);
    suspended = selfCopy->_suspended;
    if (suspended)
    {
      [(GCHIDDeviceInput *)selfCopy willChangeValueForKey:@"suspended"];
    }

    *&selfCopy->_activated = 1;
    IOHIDQueueActivate(selfCopy->_queue);
    if (suspended)
    {
      [(GCHIDDeviceInput *)selfCopy didChangeValueForKey:@"suspended"];
    }

    os_activity_scope_leave(&state);
  }

  objc_sync_exit(selfCopy);
}

void __28__GCHIDDeviceInput_activate__block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1D2C3B000, "[HID Input] Cancelled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v2, &v6);
  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  os_activity_scope_leave(&v6);
}

- (void)setBatchInputElementHandler:(id)handler
{
  v5 = _Block_copy(handler);
  objc_setProperty(self, a2, 24, v5, 1, 1);
}

- (void)setCancelHandler:(id)handler
{
  v5 = _Block_copy(handler);
  objc_setProperty(self, a2, 16, v5, 1, 1);
}

- (void)setInputElements:(id)elements
{
  v75 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = _gc_log_hid_input();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(GCHIDDeviceInput *)self setInputElements:elementsCopy, v5];
  }

  Device = IOHIDQueueGetDevice(self->_queue);
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = elementsCopy;
  v8 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v8)
  {
    v9 = *v68;
    do
    {
      v10 = 0;
      do
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(obj);
        }

        element = *(*(&v67 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          element = [element element];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = CFGetTypeID(element);
            if (v12 != IOHIDElementGetTypeID())
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"GCHIDDeviceInput.m" lineNumber:213 description:{@"Invalid object: %@", element}];

              goto LABEL_14;
            }
          }
        }

        if (IOHIDElementGetDevice(element) == Device)
        {
          [v7 addObject:element];
        }

        else
        {
          [(GCHIDDeviceInput *)a2 setInputElements:element, Device];
        }

LABEL_14:
        ++v10;
      }

      while (v8 != v10);
      v14 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v51 = IOHIDDeviceCopyMatchingElements(Device, &unk_1F4E36A88, 0);
  if (!v51)
  {
    [GCHIDDeviceInput setInputElements:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  IOHIDQueueStop(self->_queue);
  while (1)
  {
    Value = IOHIDQueueCopyNextValue(self->_queue);
    if (!Value)
    {
      break;
    }

    CFRelease(Value);
  }

  elements = [(GCHIDDeviceInput *)selfCopy elements];
  v17 = [elements mutableCopy];
  v18 = v17;
  if (v17)
  {
    Mutable = v17;
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  }

  v20 = Mutable;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  queue = self->_queue;
  v22 = _IOHIDQueueCopyElements();
  v23 = [v22 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v23)
  {
    v24 = *v64;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v64 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v63 + 1) + 8 * i);
        v27 = [v7 member:v26];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = [(__CFSet *)v20 member:v26];
          if (!v29 && IOHIDElementGetType(v26) != kIOHIDElementTypeInput_NULL)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:v26 lineNumber:? description:?];
          }

          [(__CFSet *)v20 removeObject:v26];
          IOHIDQueueRemoveElement(self->_queue, v26);
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v23);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v30 = v7;
  v31 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v31)
  {
    v32 = *v60;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v59 + 1) + 8 * j);
        v35 = [(__CFSet *)v20 member:v34];
        v36 = v35 == 0;

        if (v36)
        {
          v37 = [[GCHIDInputElement alloc] initWithElement:v34];
          [(__CFSet *)v20 addObject:v37];
          IOHIDQueueAddElement(self->_queue, v34);
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v31);
  }

  v38 = self->_queue;
  v39 = _IOHIDQueueCopyElements();
  v40 = [v39 count];
  v41 = v40 == [(__CFSet *)v20 count];

  if (!v41)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = self->_queue;
    v49 = _IOHIDQueueCopyElements();
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:objc_msgSend(v49 lineNumber:"count") description:{-[__CFSet count](v20, "count")}];
  }

  [(GCHIDDeviceInput *)selfCopy willChangeValueForKey:@"elements"];
  objc_setProperty(selfCopy, a2, 56, v20, 1, 1);
  [(GCHIDDeviceInput *)selfCopy didChangeValueForKey:@"elements"];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v42 = v51;
  v43 = [(__CFArray *)v42 countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (v43)
  {
    v44 = *v56;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(v42);
        }

        IOHIDQueueAddElement(self->_queue, *(*(&v55 + 1) + 8 * k));
      }

      v43 = [(__CFArray *)v42 countByEnumeratingWithState:&v55 objects:v71 count:16];
    }

    while (v43);
  }

  if (selfCopy->_activated && !selfCopy->_suspended)
  {
    IOHIDQueueStart(self->_queue);
  }

  objc_sync_exit(selfCopy);
  v46 = *MEMORY[0x1E69E9840];
}

- (void)setInputElementMatching:(id)matching
{
  v29[1] = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (matchingCopy)
    {
      if ((isKindOfClass & 1) == 0)
      {
        [GCHIDDeviceInput setInputElementMatching:];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([matchingCopy count])
    {
      v29[0] = matchingCopy;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([matchingCopy count])
    {
      v7 = matchingCopy;
LABEL_11:
      v8 = v7;
      currentHandler = objc_opt_new();
      if (v8)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            v14 = 0;
            do
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * v14);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                Device = IOHIDQueueGetDevice(self->_queue);
                v17 = IOHIDDeviceCopyMatchingElements(Device, v15, 0);
                if (v17)
                {
                  v18 = v17;
                  [currentHandler addObjectsFromArray:v17];
                  CFRelease(v18);
                }
              }

              else
              {
                [GCHIDDeviceInput setInputElementMatching:];
              }

              ++v14;
            }

            while (v12 != v14);
            v19 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
            v12 = v19;
          }

          while (v19);
        }

LABEL_30:
        [(GCHIDDeviceInput *)self setInputElements:currentHandler];
        goto LABEL_31;
      }

LABEL_28:
      v20 = IOHIDQueueGetDevice(self->_queue);
      v21 = IOHIDDeviceCopyMatchingElements(v20, 0, 0);
      if (v21)
      {
        v22 = v21;
        [currentHandler addObjectsFromArray:v21];
        CFRelease(v22);
      }

      goto LABEL_30;
    }

LABEL_27:
    currentHandler = objc_opt_new();
    goto LABEL_28;
  }

  if (!matchingCopy)
  {
    goto LABEL_27;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"GCHIDDeviceInput.m" lineNumber:300 description:{@"Invalid matching criteria: %@", matchingCopy}];
LABEL_31:

  v23 = *MEMORY[0x1E69E9840];
}

- (id)batchInputElementHandler
{
  if (self)
  {
    self = objc_getProperty(self, sel_batchInputElementHandler, 24, 1);
    v1 = vars8;
  }

  return self;
}

- (void)initWithIOHIDDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "Failed to create IOHIDQueue for %@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setInputElements:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_1D2C3B000, a3, OS_LOG_TYPE_DEBUG, "%@: Track %zd elements.", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setInputElements:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"GCHIDDeviceInput.m" lineNumber:217 description:{@"<HIDElement %@> is not an element of %@", a3, a4}];
}

- (void)setInputElements:.cold.3()
{
  OUTLINED_FUNCTION_0_11();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"GCHIDDeviceInput.m" lineNumber:228 description:{@"Could not obtain the NULL elements from %@.", v0}];
}

- (void)setInputElementMatching:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"GCHIDDeviceInput.m" lineNumber:287 description:{@"Unknown matching criteria: %@", v0}];
}

- (void)setInputElementMatching:.cold.2()
{
  OUTLINED_FUNCTION_0_11();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"GCHIDDeviceInput.m" lineNumber:308 description:{@"Invalid matching rule: %@", v0}];
}

@end