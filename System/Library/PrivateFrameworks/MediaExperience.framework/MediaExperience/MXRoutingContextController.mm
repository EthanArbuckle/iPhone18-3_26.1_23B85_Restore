@interface MXRoutingContextController
- (BOOL)isContextPrewarmed;
- (MXRoutingContextController)initWithRoutingContextUUID:(id)d;
- (NSArray)currentRoutes;
- (id)discoverRouteDescriptorsWithRouteUUIDS:(id)s forDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (id)routeDescriptorsWithRouteIDs:(id)ds discoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (void)dealloc;
- (void)prewarmRoutesWithUUIDs:(id)ds completionHandler:(id)handler;
- (void)selectRouteDescriptors:(id)descriptors;
- (void)setContextPrewarmed:(BOOL)prewarmed;
@end

@implementation MXRoutingContextController

- (MXRoutingContextController)initWithRoutingContextUUID:(id)d
{
  v12.receiver = self;
  v12.super_class = MXRoutingContextController;
  v4 = [(MXRoutingContextController *)&v12 init];
  v4->_routingContextUUID = d;
  FigRoutingManagerCopyContextWithUUID(d, &v4->mRoutingContext);
  cf = 0;
  mRoutingContext = v4->mRoutingContext;
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 48);
  if (v7)
  {
    v8 = *(VTable + 8) + 48;
    v7(mRoutingContext, @"contextType", *MEMORY[0x1E695E480], &cf);
  }

  if (FigCFNumberGetUInt32() == 9)
  {
    v9 = 5;
  }

  else
  {
    v9 = 3;
  }

  v4->mDiscovererType = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

- (void)dealloc
{
  mRoutingContext = self->mRoutingContext;
  if (mRoutingContext)
  {
    CFRelease(mRoutingContext);
    self->mRoutingContext = 0;
  }

  v4.receiver = self;
  v4.super_class = MXRoutingContextController;
  [(MXRoutingContextController *)&v4 dealloc];
}

- (id)routeDescriptorsWithRouteIDs:(id)ds discoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 48);
  if (v8)
  {
    v9 = *(VTable + 8) + 48;
    v8(discoverer, @"availableRouteDescriptors", *MEMORY[0x1E695E480], &v22);
    v10 = v22;
  }

  else
  {
    v10 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([ds containsObject:{objc_msgSend(v15, "objectForKey:", @"RouteUID"}])
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return array;
}

- (id)discoverRouteDescriptorsWithRouteUUIDS:(id)s forDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AB30]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__MXRoutingContextController_discoverRouteDescriptorsWithRouteUUIDS_forDiscoverer___block_invoke;
  v17[3] = &unk_1E7AEB318;
  objc_copyWeak(v18, &location);
  v17[4] = s;
  v17[5] = v7;
  v18[1] = discoverer;
  v17[6] = &v20;
  v9 = [defaultCenter addObserverForName:@"Discoverer_AvailableRoutesChanged" object:discoverer queue:0 usingBlock:v17];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10)
  {
    v10(discoverer, @"DiscoveryMode", @"DiscoveryMode_Detailed");
  }

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3.0];
  [v7 lock];
  LOBYTE(v11) = [v7 waitUntilDate:v11];
  [v7 unlock];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (v11)
  {
    v12 = [v21[5] count];
    if (v12 != [s count] && dword_1EB75DE40)
    {
      goto LABEL_8;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = v21[5];
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __83__MXRoutingContextController_discoverRouteDescriptorsWithRouteUUIDS_forDiscoverer___block_invoke(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 56)) routeDescriptorsWithRouteIDs:*(a1 + 32) discoverer:*(a1 + 64)];
  v3 = [v2 count];
  result = [*(a1 + 32) count];
  if (v3 == result)
  {
    [*(a1 + 40) lock];
    *(*(*(a1 + 48) + 8) + 40) = v2;
    [*(a1 + 40) signal];
    v5 = *(a1 + 40);

    return [v5 unlock];
  }

  return result;
}

- (void)selectRouteDescriptors:(id)descriptors
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  mRoutingContext = self->mRoutingContext;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v7(mRoutingContext, descriptors, MEMORY[0x1E695E0F8]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)prewarmRoutesWithUUIDs:(id)ds completionHandler:(id)handler
{
  v25[20] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  v8 = *MEMORY[0x1E695E480];
  v24 = @"discovererType";
  v25[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->mDiscovererType, v19, v20}];
  FigRouteDiscovererCreate(v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1], &cf);
  v9 = [(MXRoutingContextController *)self discoverRouteDescriptorsWithRouteUUIDS:ds forDiscoverer:cf];
  v10 = [v9 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_28)}];
  v11 = [v10 count];
  if (v11 == [ds count])
  {
    [(MXRoutingContextController *)self setContextPrewarmed:1];
    v12 = [handler copy];
    v22[0] = @"PreviousRouteDescriptors";
    v23[0] = [(MXRoutingContextController *)self currentRoutes];
    v23[1] = v12;
    v22[1] = @"CompletionHandler";
    v22[2] = @"MXRoutingContextController";
    v23[2] = self;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v14 = v13;
    mRoutingContext = self->mRoutingContext;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 224);
    if (v16)
    {
      v16(mRoutingContext, v10, MEMORY[0x1E695E0F8], MXRoutingContextControllerModificationCallback, v13);
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(handler + 2))(handler, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)isContextPrewarmed
{
  cf = 0;
  mRoutingContext = self->mRoutingContext;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    v4(mRoutingContext, 0x1F289AA50, *MEMORY[0x1E695E480], &cf);
  }

  v6 = *MEMORY[0x1E695E4D0];
  v7 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v7 != 0;
}

- (void)setContextPrewarmed:(BOOL)prewarmed
{
  if (prewarmed)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  mRoutingContext = self->mRoutingContext;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = *v3;

    v5(mRoutingContext, 0x1F289AA50, v6);
  }
}

- (NSArray)currentRoutes
{
  v8 = 0;
  mRoutingContext = self->mRoutingContext;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 64);
  if (v4)
  {
    v5 = *(VTable + 16) + 64;
    v4(mRoutingContext, &v8);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end