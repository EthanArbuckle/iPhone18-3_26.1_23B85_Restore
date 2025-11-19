@interface _HDAuthorizationRequestGroup
- (BOOL)promptIfNecessaryWithTimeout:(double)a3 completion:;
- (id)bundleIdentifier;
- (id)description;
- (void)_cancelTimeoutSource;
- (void)cancelRequestsWithIdentifiers:(void *)a3 error:;
@end

@implementation _HDAuthorizationRequestGroup

- (void)cancelRequestsWithIdentifiers:(void *)a3 error:
{
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 32) count];
    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v7];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
        }

        else
        {
          v10 = 0;
        }

        if ([v11 containsObject:v10])
        {
          [*(a1 + 32) removeObjectAtIndex:v7];
          [(_HDAuthorizationRequest *)v9 invokeCompletionHandlerWithSuccess:v5 error:?];
        }

        --v7;
      }

      while (v7 != -1);
    }
  }
}

- (id)bundleIdentifier
{
  if (a1)
  {
    a1 = [a1[7] bundleIdentifier];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)promptIfNecessaryWithTimeout:(double)a3 completion:
{
  v5 = a2;
  if (!v5)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:sel_promptIfNecessaryWithTimeout_completion_ object:a1 file:@"HDAuthorizationManager.m" lineNumber:2372 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
  }

  v6 = *(a1 + 72);
  if (v6 && !*(a1 + 64))
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
    v9 = *(a1 + 48);
    *(a1 + 48) = v8;

    v10 = *(a1 + 48);
    v11 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v12 = *(a1 + 48);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __72___HDAuthorizationRequestGroup_promptIfNecessaryWithTimeout_completion___block_invoke;
    handler[3] = &unk_278613658;
    v13 = v5;
    v26 = v13;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_resume(*(a1 + 48));
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = *(a1 + 64);
    *(a1 + 64) = v14;

    v16 = objc_alloc(MEMORY[0x277CCD058]);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = [v16 initWithSource:v17 session:v18 readTypes:v20 writeTypes:v19];

    v6[2](v6, v21, v13);
  }

  v22 = *(a1 + 64);

  return v22 != 0;
}

- (void)_cancelTimeoutSource
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKSource *)self->_source bundleIdentifier];
  v6 = [(NSMutableArray *)self->_requests count];
  v7 = [(NSUUID *)self->_promptSessionIdentifier UUIDString];
  v8 = v7;
  if (self->_inTransaction)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p source:%@ requests:%lu prompt:%@ transaction:%s>", v4, self, v5, v6, v7, v9, 0];

  return v10;
}

@end