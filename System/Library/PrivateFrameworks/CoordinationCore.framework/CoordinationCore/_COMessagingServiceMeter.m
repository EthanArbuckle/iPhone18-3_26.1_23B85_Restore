@interface _COMessagingServiceMeter
- (BOOL)clientIdentifier:(id)a3 canReceiveLength:(unint64_t)a4;
- (BOOL)clientIdentifier:(id)a3 canSendLength:(unint64_t)a4;
- (BOOL)isEvaluatingIdentifier:(id)a3;
- (_COMessagingServiceMeter)init;
- (unint64_t)receiveLimitForIdentifier:(id)a3;
- (unint64_t)sendLimitForIdentifier:(id)a3;
- (void)_withLock:(id)a3;
- (void)dealloc;
@end

@implementation _COMessagingServiceMeter

- (_COMessagingServiceMeter)init
{
  v53 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = _COMessagingServiceMeter;
  val = [(_COMessagingServiceMeter *)&v50 init];
  if (val)
  {
    val->_lock._os_unfair_lock_opaque = 0;
    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v38 setObject:&unk_2857C88C8 forKey:@"com.apple.homepodsettingsd"];
    [v38 setObject:&unk_2857C88E0 forKey:@"com.apple.coordinated"];
    v2 = [MEMORY[0x277CCAC38] processInfo];
    v36 = [v2 arguments];

    v3 = [v36 indexOfObject:@"--limits"];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 + 1 < [v36 count])
    {
      v4 = [v36 objectAtIndex:?];
      v5 = [v4 componentsSeparatedByString:{@", "}];

      v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v8)
      {
        v9 = *v47;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v47 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = [*(*(&v46 + 1) + 8 * i) stringByTrimmingCharactersInSet:v6];
            if ([v11 length])
            {
              v12 = [v11 componentsSeparatedByString:@"="];
              if ([v12 count] == 2)
              {
                v13 = [v12 objectAtIndex:0];
                v14 = [v13 stringByTrimmingCharactersInSet:v6];

                v15 = [v12 objectAtIndex:1];
                v16 = [v15 stringByTrimmingCharactersInSet:v6];

                if ([v14 length])
                {
                  if ([v16 length])
                  {
                    v17 = [v16 integerValue];
                    if (v17 >= 1)
                    {
                      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
                      [v38 setObject:v18 forKey:v14];
                    }
                  }
                }
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v8);
      }
    }

    v19 = [v36 indexOfObject:@"--evaluating"];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL && v19 + 1 < [v36 count])
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      peaks = val->_peaks;
      val->_peaks = v20;

      v22 = [v36 objectAtIndex:v19 + 1];
      v23 = [v22 componentsSeparatedByString:{@", "}];

      v24 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v26)
      {
        v27 = *v43;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v43 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v42 + 1) + 8 * j);
            v30 = [v29 stringByTrimmingCharactersInSet:v24];
            if ([v30 length])
            {
              [(NSMutableDictionary *)val->_peaks setObject:&unk_2857C88F8 forKey:v29];
              [v38 setObject:&unk_2857C8910 forKey:v29];
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v26);
      }

      objc_initWeak(&location, val);
      v31 = dispatch_get_global_queue(21, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __32___COMessagingServiceMeter_init__block_invoke;
      handler[3] = &unk_278E18388;
      objc_copyWeak(&v40, &location);
      notify_register_dispatch("com.apple.CoordinationCore.COMessagingServiceMeter", &val->_registration, v31, handler);

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    v32 = [v38 copy];
    limits = val->_limits;
    val->_limits = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return val;
}

- (void)dealloc
{
  v3 = [(_COMessagingServiceMeter *)self registration];
  if (notify_is_valid_token(v3))
  {
    notify_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = _COMessagingServiceMeter;
  [(_COMessagingServiceMeter *)&v4 dealloc];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)clientIdentifier:(id)a3 canSendLength:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_COMessagingServiceMeter *)self sendLimitForIdentifier:v6];
  if ([(_COMessagingServiceMeter *)self isEvaluatingIdentifier:v6])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59___COMessagingServiceMeter_clientIdentifier_canSendLength___block_invoke;
    v9[3] = &unk_278E17FD8;
    v9[4] = self;
    v10 = v6;
    v11 = a4;
    [(_COMessagingServiceMeter *)self _withLock:v9];
  }

  return v7 > a4;
}

- (BOOL)clientIdentifier:(id)a3 canReceiveLength:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_COMessagingServiceMeter *)self receiveLimitForIdentifier:v6];
  if ([(_COMessagingServiceMeter *)self isEvaluatingIdentifier:v6])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62___COMessagingServiceMeter_clientIdentifier_canReceiveLength___block_invoke;
    v9[3] = &unk_278E17FD8;
    v9[4] = self;
    v10 = v6;
    v11 = a4;
    [(_COMessagingServiceMeter *)self _withLock:v9];
  }

  return v7 > a4;
}

- (BOOL)isEvaluatingIdentifier:(id)a3
{
  v4 = a3;
  if ([(_COMessagingServiceMeter *)self sendLimitForIdentifier:v4]== -1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51___COMessagingServiceMeter_isEvaluatingIdentifier___block_invoke;
    v7[3] = &unk_278E15A18;
    v9 = &v10;
    v7[4] = self;
    v8 = v4;
    [(_COMessagingServiceMeter *)self _withLock:v7];
    v5 = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (unint64_t)sendLimitForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_COMessagingServiceMeter *)self limits];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 10240;
  }

  return v7;
}

- (unint64_t)receiveLimitForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_COMessagingServiceMeter *)self limits];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 10240;
  }

  return v7;
}

@end