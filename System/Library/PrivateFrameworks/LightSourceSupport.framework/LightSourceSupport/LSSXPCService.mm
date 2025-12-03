@interface LSSXPCService
- (id)initWithTargetQueue:(void *)queue subscriber:;
- (void)_onQueue_resendLastTo:(uint64_t)to;
- (void)_onQueue_updateLightDirection:(uint64_t)direction;
- (void)_start;
- (void)dealloc;
- (void)updateLightDirection:(uint64_t)direction;
@end

@implementation LSSXPCService

- (void)_start
{
  if (self)
  {
    if (qword_280D2F5E0 == -1)
    {
      v2 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:
        objc_initWeak(buf, self);
        v3 = self[1];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __23__LSSXPCService__start__block_invoke;
        handler[3] = &unk_279812A60;
        objc_copyWeak(&v5, buf);
        xpc_connection_set_event_handler(v3, handler);
        xpc_connection_activate(self[1]);
        objc_destroyWeak(&v5);
        objc_destroyWeak(buf);
        return;
      }
    }

    else
    {
      LSSLogXPCService_cold_1();
      v2 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }
    }

    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v2, OS_LOG_TYPE_DEFAULT, "START", buf, 2u);
    goto LABEL_5;
  }
}

void __23__LSSXPCService__start__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C502B0]();
  if (v4 == MEMORY[0x277D86450])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = v3;
      pid = xpc_connection_get_pid(v7);
      if (qword_280D2F5E0 != -1)
      {
        LSSLogXPCService_cold_1();
      }

      v9 = _MergedGlobals_12;
      if (os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = pid;
        _os_log_impl(&dword_255E8B000, v9, OS_LOG_TYPE_DEFAULT, "Adding connection from pid: %d", &buf, 8u);
      }

      xpc_connection_set_finalizer_f(v7, _connection_finalizer);
      xpc_connection_set_target_queue(v7, v6[16]);
      objc_initWeak(&buf, v7);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __23__LSSXPCService__start__block_invoke_1;
      v13[3] = &unk_279812A38;
      objc_copyWeak(&v16, &buf);
      v17 = pid;
      v10 = v6;
      v14 = v10;
      v11 = v7;
      v15 = v11;
      xpc_connection_set_event_handler(v11, v13);
      xpc_connection_activate(v11);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&buf);
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    if (qword_280D2F5E0 != -1)
    {
      LSSLogXPCService_cold_1();
    }

    if (os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
    {
      __23__LSSXPCService__start__block_invoke_cold_4();
    }
  }

  else
  {
    if (qword_280D2F5E0 != -1)
    {
      LSSLogXPCService_cold_1();
    }

    if (os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
    {
      __23__LSSXPCService__start__block_invoke_cold_2();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __23__LSSXPCService__start__block_invoke_1(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_44;
  }

  if (v3 == MEMORY[0x277D86420] || v3 == MEMORY[0x277D863F8])
  {
    if (qword_280D2F5E0 == -1)
    {
      v6 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v8 = xpc_connection_get_context(WeakRetained);
        [v8 invalidate];
        [*(*(a1 + 32) + 16) removeObject:WeakRetained];
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      LSSLogXPCService_cold_1();
      v6 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }
    }

    v7 = *(a1 + 56);
    v24[0] = 67109120;
    v24[1] = v7;
    _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "Removed connection from pid: %d", v24, 8u);
    goto LABEL_10;
  }

  if (MEMORY[0x259C502B0](v3) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v3, "assert");
    v8 = objc_loadWeakRetained((*(a1 + 32) + 136));
    if (int64)
    {
      if (qword_280D2F5E0 == -1)
      {
        v19 = _MergedGlobals_12;
        if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }
      }

      else
      {
        LSSLogXPCService_cold_1();
        v19 = _MergedGlobals_12;
        if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
        {
LABEL_17:
          v10 = *(a1 + 40);
          [@"com.apple.lightsourcesupport.outputAssertion" UTF8String];
          v11 = xpc_connection_copy_entitlement_value();
          v12 = v11;
          if (!v11 || MEMORY[0x259C502B0](v11) != MEMORY[0x277D86448])
          {
            if (qword_280D2F5E0 == -1)
            {
              if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_21;
              }

LABEL_38:
              __23__LSSXPCService__start__block_invoke_1_cold_3();
              string = xpc_dictionary_get_string(v3, "reason");
              if (string)
              {
                goto LABEL_22;
              }

              goto LABEL_39;
            }

            __23__LSSXPCService__start__block_invoke_1_cold_2();
            if (os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }
          }

LABEL_21:
          string = xpc_dictionary_get_string(v3, "reason");
          if (string)
          {
LABEL_22:
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
            v15 = [v8 addAssertion:(int64 - 1) reason:v14];
            v16 = v15;
            if (v15)
            {
              xpc_connection_set_context(*(a1 + 40), v15);
            }

            else
            {
              v17 = LSSLogXPCService();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __23__LSSXPCService__start__block_invoke_1_cold_4();
              }

              xpc_connection_cancel(*(a1 + 40));
            }

            goto LABEL_42;
          }

LABEL_39:
          if (qword_280D2F5E0 == -1)
          {
            if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
            {
LABEL_41:
              xpc_connection_cancel(*(a1 + 40));
              goto LABEL_42;
            }
          }

          else
          {
            __23__LSSXPCService__start__block_invoke_1_cold_2();
            if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_41;
            }
          }

          __23__LSSXPCService__start__block_invoke_1_cold_6();
          goto LABEL_41;
        }
      }

      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_255E8B000, v19, OS_LOG_TYPE_DEFAULT, "configure assertion", v24, 2u);
      goto LABEL_17;
    }

    if (qword_280D2F5E0 == -1)
    {
      v22 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:
        [(LSSXPCService *)*(a1 + 32) _onQueue_resendLastTo:?];
        [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
        v12 = xpc_connection_get_context(*(a1 + 40));
        v18 = [LSSInvalidatableSet addAssertionsForOptions:xpc_dictionary_get_int64(v3 reason:"options") to:@"xpc client", v8];
        xpc_connection_set_context(*(a1 + 40), v18);
        [v12 invalidate];
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      LSSLogXPCService_cold_1();
      v22 = _MergedGlobals_12;
      if (!os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    LOWORD(v24[0]) = 0;
    _os_log_impl(&dword_255E8B000, v22, OS_LOG_TYPE_DEFAULT, "configure subscription", v24, 2u);
    goto LABEL_32;
  }

LABEL_44:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    xpc_connection_cancel(service);
    v4 = self->_service;
    self->_service = 0;
  }

  v5.receiver = self;
  v5.super_class = LSSXPCService;
  [(LSSXPCService *)&v5 dealloc];
}

- (void)updateLightDirection:(uint64_t)direction
{
  v3[17] = *MEMORY[0x277D85DE8];
  if (direction)
  {
    if (*__src < 0.0)
    {
      [LSSXPCService updateLightDirection:];
    }

    [(LSSXPCService *)direction updateLightDirection:v3, __src];
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)initWithTargetQueue:(void *)queue subscriber:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  queueCopy = queue;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = LSSXPCService;
    self = objc_msgSendSuper2(&v22, sel_init);
    if (self)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = *(self + 2);
      *(self + 2) = v7;

      objc_storeWeak(self + 17, queueCopy);
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create_with_target_V2("com.apple.LightSourceService", v9, v5);
      v11 = *(self + 16);
      *(self + 16) = v10;

      empty = xpc_dictionary_create_empty();
      v13 = *(self + 3);
      *(self + 3) = empty;

      *(self + 4) = 0xBFF0000000000000;
      [@"com.apple.lightsourcesupport.listener" UTF8String];
      entitlement_exists = xpc_peer_requirement_create_entitlement_exists();
      if (entitlement_exists)
      {
        v15 = entitlement_exists;
        mach_service = xpc_connection_create_mach_service([@"com.apple.lightsourcesupport.lightstate" UTF8String], *(self + 16), 1uLL);
        v17 = *(self + 1);
        *(self + 1) = mach_service;

        v18 = *(self + 1);
        xpc_connection_set_peer_requirement();
        [(LSSXPCService *)self _start];
      }

      else
      {
        if (qword_280D2F5E0 != -1)
        {
          dispatch_once(&qword_280D2F5E0, &__block_literal_global_12);
        }

        v19 = _MergedGlobals_12;
        if (os_log_type_enabled(_MergedGlobals_12, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_255E8B000, v19, OS_LOG_TYPE_FAULT, "failed to create peer requirement", buf, 2u);
        }

        self = 0;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)_onQueue_resendLastTo:(uint64_t)to
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (to)
  {
    dispatch_assert_queue_V2(*(to + 128));
    if (*(to + 32) >= 0.0)
    {
      if (qword_280D2F5E0 != -1)
      {
        dispatch_once(&qword_280D2F5E0, &__block_literal_global_12);
      }

      v4 = _MergedGlobals_12;
      if (os_signpost_enabled(_MergedGlobals_12))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_255E8B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "new connection", &unk_255E9DB2B, v8, 2u);
      }

      v5 = *(to + 24);
      memcpy(v8, (to + 32), 0x60uLL);
      xpc_dictionary_set_data(v5, "s", v8, 0x60uLL);
      xpc_connection_send_message(v3, *(to + 24));
      if (qword_280D2F5E0 != -1)
      {
        dispatch_once(&qword_280D2F5E0, &__block_literal_global_12);
      }

      v6 = _MergedGlobals_12;
      if (os_signpost_enabled(_MergedGlobals_12))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_255E8B000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "new connection", &unk_255E9DB2B, v8, 2u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_updateLightDirection:(uint64_t)direction
{
  v29 = *MEMORY[0x277D85DE8];
  if (direction)
  {
    dispatch_assert_queue_V2(*(direction + 128));
    memcpy((direction + 32), a2, 0x60uLL);
    if ([*(direction + 16) count])
    {
      if (qword_280D2F5E0 != -1)
      {
        dispatch_once(&qword_280D2F5E0, &__block_literal_global_12);
      }

      v4 = _MergedGlobals_12;
      if (os_signpost_enabled(_MergedGlobals_12))
      {
        __dst[0] = 0;
        OUTLINED_FUNCTION_1_4();
        _os_signpost_emit_with_name_impl(v5, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, v7, v8, v9, 2u);
      }

      v10 = *(direction + 24);
      memcpy(__dst, a2, 0x60uLL);
      xpc_dictionary_set_data(v10, "s", __dst, 0x60uLL);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = *(direction + 16);
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            xpc_connection_send_message(*(*(&v23 + 1) + 8 * i), *(direction + 24));
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      if (qword_280D2F5E0 != -1)
      {
        dispatch_once(&qword_280D2F5E0, &__block_literal_global_12);
      }

      v16 = _MergedGlobals_12;
      if (os_signpost_enabled(_MergedGlobals_12))
      {
        __dst[0] = 0;
        OUTLINED_FUNCTION_1_4();
        _os_signpost_emit_with_name_impl(v17, v16, OS_SIGNPOST_INTERVAL_END, v18, v19, v20, v21, 2u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __38__LSSXPCService_updateLightDirection___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 128);
  memcpy(v3, (a1 + 32), 0x60uLL);
  [(LSSXPCService *)v1 _onQueue_updateLightDirection:v3];
  v2 = *MEMORY[0x277D85DE8];
}

void __23__LSSXPCService__start__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __23__LSSXPCService__start__block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLightDirection:(void *)__src .cold.2(uint64_t a1, void *a2, void *__src)
{
  v4 = *(a1 + 128);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __38__LSSXPCService_updateLightDirection___block_invoke;
  a2[3] = &unk_279812798;
  a2[16] = a1;
  memcpy(a2 + 4, __src, 0x60uLL);
  dispatch_async(v4, a2);
}

@end