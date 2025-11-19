@interface MSNScopedExceptionsServer
+ (id)proxiesForException:(id)a3;
+ (id)proxyForMachServiceName:(id)a3;
+ (id)sharedCamProxy;
+ (id)sharedMicProxy;
+ (id)sharedProxy;
+ (id)validEntitlements;
+ (id)validExceptions;
- (BOOL)isConnectionAllowedToAssertException:(id)a3;
- (BOOL)isExceptionInEffect:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MSNScopedExceptionsServer)initWithQueue:(id)a3;
- (void)beginException:(id)a3;
- (void)endException:(id)a3;
@end

@implementation MSNScopedExceptionsServer

- (MSNScopedExceptionsServer)initWithQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MSNScopedExceptionsServer;
  v6 = [(MSNScopedExceptionsServer *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    activeExceptions = v6->_activeExceptions;
    v6->_activeExceptions = v7;

    objc_storeStrong(&v6->_queue, a3);
    if (g_serverMode == 2)
    {
      v9 = [@"com.apple.mediasafetynet.exceptions" stringByAppendingString:@".cam"];
    }

    else
    {
      v9 = @"com.apple.mediasafetynet.exceptions";
    }

    v10 = MSNLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(MSNScopedExceptionsServer *)v9 initWithQueue:v10];
    }

    v11 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v9];
    listener = v6->_listener;
    v6->_listener = v11;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

+ (id)validEntitlements
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSNScopedExceptionsServer_validEntitlements__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (validEntitlements_onceToken != -1)
  {
    dispatch_once(&validEntitlements_onceToken, block);
  }

  v2 = validEntitlements_validEntitlements;

  return v2;
}

void __46__MSNScopedExceptionsServer_validEntitlements__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) validExceptions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [@"com.apple.private.mediasafetynet.exception." stringByAppendingString:*(*(&v12 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = validEntitlements_validEntitlements;
  validEntitlements_validEntitlements = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)validExceptions
{
  if (validExceptions_onceToken != -1)
  {
    +[MSNScopedExceptionsServer validExceptions];
  }

  v3 = validExceptions_validExceptions;

  return v3;
}

void __44__MSNScopedExceptionsServer_validExceptions__block_invoke()
{
  v5[14] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"announcemessage";
  v5[1] = @"notificationappex";
  v5[2] = @"xctest";
  v5[3] = @"emergency";
  v5[4] = @"audiotesting";
  v5[5] = @"mediacontrol";
  v5[6] = @"shazam";
  v5[7] = @"keyboardcamera";
  v5[8] = @"callsam";
  v5[9] = @"magnifierangel";
  v5[10] = @"findingui";
  v5[11] = @"nearbyprecisionfinding";
  v5[12] = @"callbanner";
  v5[13] = @"continuitycapture";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:14];
  v2 = [v0 setWithArray:v1];
  v3 = validExceptions_validExceptions;
  validExceptions_validExceptions = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = +[MSNScopedExceptionsServer validEntitlements];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 valueForEntitlement:*(*(&v25 + 1) + 8 * i)];
        v12 = [v11 BOOLValue];

        if (v12)
        {

          v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B5CE8];
          [v5 setExportedInterface:v14];

          [v5 setExportedObject:self];
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke;
          v22 = &unk_2798A3D18;
          v23 = self;
          v15 = v5;
          v24 = v15;
          v16 = MEMORY[0x259C893D0](&v19);
          [v15 setInterruptionHandler:{v16, v19, v20, v21, v22, v23}];
          [v15 setInvalidationHandler:v16];
          [v15 resume];

          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_80;
  v6[3] = &unk_2798A3D18;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

void __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_80(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138543618;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 connection];
        v11 = *(a1 + 40);

        if (v10 == v11)
        {
          v12 = MSNLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v9 exception];
            v14 = [*(a1 + 40) processIdentifier];
            *buf = v16;
            v22 = v13;
            v23 = 1024;
            v24 = v14;
            _os_log_impl(&dword_258731000, v12, OS_LOG_TYPE_INFO, "Expiring exception %{public}@ from pid %i due to invalidation.", buf, 0x12u);
          }

          [v2 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 16) removeObjectsInArray:v2];
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConnectionAllowedToAssertException:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x277CCAE80] currentConnection];
    v5 = [@"com.apple.private.mediasafetynet.exception." stringByAppendingString:v3];
    v6 = [v4 valueForEntitlement:v5];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)beginException:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(MSNScopedExceptionsServer *)self isConnectionAllowedToAssertException:v4])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__MSNScopedExceptionsServer_beginException___block_invoke;
    block[3] = &unk_2798A3DE0;
    v15 = v4;
    v16 = v5;
    v17 = self;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = MSNLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSNScopedExceptionsServer *)v4 beginException:v7, v8, v9, v10, v11, v12, v13];
    }

    [v5 invalidate];
  }
}

void __44__MSNScopedExceptionsServer_beginException___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) processIdentifier];
    v8 = 138543618;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Beginning exception %{public}@ from pid %i.", &v8, 0x12u);
  }

  v5 = *(*(a1 + 48) + 16);
  v6 = [[MSNScopedException alloc] initWithConnection:*(a1 + 40) exception:*(a1 + 32)];
  [v5 addObject:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endException:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(MSNScopedExceptionsServer *)self isConnectionAllowedToAssertException:v4])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__MSNScopedExceptionsServer_endException___block_invoke;
    block[3] = &unk_2798A3DE0;
    block[4] = self;
    v9 = v5;
    v10 = v4;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = MSNLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSNScopedExceptionsServer *)v4 endException:v5];
    }

    [v5 invalidate];
  }
}

uint64_t __42__MSNScopedExceptionsServer_endException___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 16) count])
  {
    goto LABEL_9;
  }

  v2 = 0;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v4 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:v2];
    v5 = [v4 connection];
    v6 = v5;
    if (v5 == *(a1 + 40))
    {
      v7 = [v4 exception];
      v8 = [v7 isEqual:*(a1 + 48)];

      if (v8)
      {
        v3 = v2;
      }
    }

    else
    {
    }

    ++v2;
  }

  while (v2 < [*(*(a1 + 32) + 16) count]);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = MSNLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) processIdentifier];
      v15 = 138543618;
      v16 = v12;
      v17 = 1024;
      v18 = v13;
      _os_log_impl(&dword_258731000, v11, OS_LOG_TYPE_INFO, "Ending exception %{public}@ from pid %i.", &v15, 0x12u);
    }

    result = [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
  }

  else
  {
LABEL_9:
    v9 = MSNLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__MSNScopedExceptionsServer_endException___block_invoke_cold_1(a1);
    }

    result = [*(a1 + 40) invalidate];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isExceptionInEffect:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_activeExceptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) exception];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v13 = MSNLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v21 = v4;
            _os_log_impl(&dword_258731000, v13, OS_LOG_TYPE_INFO, "Found exception %{public}@", buf, 0xCu);
          }

          v12 = 1;
          goto LABEL_15;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = MSNLog();
  if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_DEBUG))
  {
    [(MSNScopedExceptionsServer *)v4 isExceptionInEffect:?];
  }

  v12 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)proxyForMachServiceName:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3 options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B5CE8];
  [v4 setRemoteObjectInterface:v5];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke;
  v15[3] = &unk_2798A3D68;
  v6 = v3;
  v16 = v6;
  [v4 setInterruptionHandler:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke_85;
  v13 = &unk_2798A3D68;
  v14 = v6;
  v7 = v6;
  [v4 setInvalidationHandler:&v10];
  [v4 resume];
  v8 = [v4 remoteObjectProxy];

  return v8;
}

void __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Interrupted (%@): If this happens at connection-time or when setting an exception, a required entitlement is likely missing.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke_85(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Invalidated (%@).", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)sharedProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSNScopedExceptionsServer_sharedProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProxy_onceToken != -1)
  {
    dispatch_once(&sharedProxy_onceToken, block);
  }

  v2 = sharedProxy_sharedProxy;

  return v2;
}

uint64_t __40__MSNScopedExceptionsServer_sharedProxy__block_invoke(uint64_t a1)
{
  sharedProxy_sharedProxy = [*(a1 + 32) proxyForMachServiceName:@"com.apple.mediasafetynet.exceptions"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedMicProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSNScopedExceptionsServer_sharedMicProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMicProxy_onceToken != -1)
  {
    dispatch_once(&sharedMicProxy_onceToken, block);
  }

  v2 = sharedMicProxy_sharedProxy;

  return v2;
}

uint64_t __43__MSNScopedExceptionsServer_sharedMicProxy__block_invoke(uint64_t a1)
{
  sharedMicProxy_sharedProxy = [*(a1 + 32) proxyForMachServiceName:@"com.apple.mediasafetynet.exceptions"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedCamProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSNScopedExceptionsServer_sharedCamProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedCamProxy_onceToken != -1)
  {
    dispatch_once(&sharedCamProxy_onceToken, block);
  }

  v2 = sharedCamProxy_sharedProxy;

  return v2;
}

void __43__MSNScopedExceptionsServer_sharedCamProxy__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @".cam";
  if ((_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl())
  {
    v2 = &stru_2869B3BE8;
  }

  v5 = [@"com.apple.mediasafetynet.exceptions" stringByAppendingString:v2];
  v3 = [v1 proxyForMachServiceName:v5];
  v4 = sharedCamProxy_sharedProxy;
  sharedCamProxy_sharedProxy = v3;
}

+ (id)proxiesForException:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v49[0] = @"announcemessage";
    v49[1] = @"notificationappex";
    v50[0] = &unk_2869B4A10;
    v50[1] = &unk_2869B4A28;
    v49[2] = @"xctest";
    v49[3] = @"emergency";
    v50[2] = &unk_2869B4A40;
    v50[3] = &unk_2869B4A58;
    v49[4] = @"audiotesting";
    v49[5] = @"shazam";
    v50[4] = &unk_2869B4A70;
    v50[5] = &unk_2869B4A88;
    v49[6] = @"mediacontrol";
    v49[7] = @"keyboardcamera";
    v50[6] = &unk_2869B4AA0;
    v50[7] = &unk_2869B4AB8;
    v49[8] = @"magnifierangel";
    v49[9] = @"findingui";
    v50[8] = &unk_2869B4AD0;
    v50[9] = &unk_2869B4AE8;
    v49[10] = @"nearbyprecisionfinding";
    v49[11] = @"callbanner";
    v50[10] = &unk_2869B4B00;
    v50[11] = &unk_2869B4B18;
    v49[12] = @"continuitycapture";
    v50[12] = &unk_2869B4B30;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:13];
    v7 = v4;
    v8 = [v6 objectForKeyedSubscript:v4];

    v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v42;
      *&v10 = 138412546;
      v40 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v41 + 1) + 8 * v13);
          v15 = MSNLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v14 integerValue];
            if (v19 >= 3)
            {
              qword_27F958928 = "Unknown mode";
              v25 = MSNLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                ServerModeDescription_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
              }

LABEL_29:

              abort();
            }

            v20 = off_2798A4060[v19 & 3];
            *buf = v40;
            v46 = v7;
            v47 = 2080;
            v48 = v20;
            _os_log_debug_impl(&dword_258731000, v15, OS_LOG_TYPE_DEBUG, "Exception %@ with uses server %s", buf, 0x16u);
          }

          v16 = [v14 integerValue];
          if (v16 == 1)
          {
            v17 = [a1 sharedMicProxy];
          }

          else
          {
            if (v16 != 2)
            {
              qword_27F958928 = "Only Cam and Mic servers can be requested.";
              v25 = MSNLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [(MSNScopedExceptionsServer *)v25 proxiesForException:v33, v34, v35, v36, v37, v38, v39];
              }

              goto LABEL_29;
            }

            v17 = [a1 sharedCamProxy];
          }

          v18 = v17;
          [v5 addObject:{v17, v40}];

          ++v13;
        }

        while (v11 != v13);
        v21 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
        v11 = v21;
      }

      while (v21);
    }

    v22 = MSNLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v4 = v7;
      v46 = v7;
      v47 = 2112;
      v48 = v5;
      _os_log_impl(&dword_258731000, v22, OS_LOG_TYPE_INFO, "Asserting exception %@ with servers %@", buf, 0x16u);
    }

    else
    {
      v4 = v7;
    }
  }

  else
  {
    v22 = [a1 sharedProxy];
    v52[0] = v22;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)initWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258731000, a2, OS_LOG_TYPE_DEBUG, "MSN exceptions listening to Mach service name '%@'.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)beginException:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a2, a3, "Missing entitlement for exception %{public}@. Invalidating connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)endException:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a2 processIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_258731000, v2, v3, "Missing entitlement for exception %{public}@ from pid %i. Invalidating connection.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __42__MSNScopedExceptionsServer_endException___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  [*(a1 + 40) processIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_258731000, v2, v3, "Ending nonexistent exception %{public}@ from pid %i.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)isExceptionInEffect:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_258731000, a2, OS_LOG_TYPE_DEBUG, "No exception %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)proxiesForException:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end