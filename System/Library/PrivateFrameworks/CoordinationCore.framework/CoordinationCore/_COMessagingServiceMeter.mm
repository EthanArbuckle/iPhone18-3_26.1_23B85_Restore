@interface _COMessagingServiceMeter
- (BOOL)clientIdentifier:(id)identifier canReceiveLength:(unint64_t)length;
- (BOOL)clientIdentifier:(id)identifier canSendLength:(unint64_t)length;
- (BOOL)isEvaluatingIdentifier:(id)identifier;
- (_COMessagingServiceMeter)init;
- (unint64_t)receiveLimitForIdentifier:(id)identifier;
- (unint64_t)sendLimitForIdentifier:(id)identifier;
- (void)_withLock:(id)lock;
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
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    arguments = [processInfo arguments];

    v3 = [arguments indexOfObject:@"--limits"];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 + 1 < [arguments count])
    {
      v4 = [arguments objectAtIndex:?];
      v5 = [v4 componentsSeparatedByString:{@", "}];

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
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

            v11 = [*(*(&v46 + 1) + 8 * i) stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
            if ([v11 length])
            {
              v12 = [v11 componentsSeparatedByString:@"="];
              if ([v12 count] == 2)
              {
                v13 = [v12 objectAtIndex:0];
                v14 = [v13 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

                v15 = [v12 objectAtIndex:1];
                v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

                if ([v14 length])
                {
                  if ([v16 length])
                  {
                    integerValue = [v16 integerValue];
                    if (integerValue >= 1)
                    {
                      v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
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

    v19 = [arguments indexOfObject:@"--evaluating"];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL && v19 + 1 < [arguments count])
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      peaks = val->_peaks;
      val->_peaks = v20;

      v22 = [arguments objectAtIndex:v19 + 1];
      v23 = [v22 componentsSeparatedByString:{@", "}];

      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
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
            v30 = [v29 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
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
  registration = [(_COMessagingServiceMeter *)self registration];
  if (notify_is_valid_token(registration))
  {
    notify_cancel(registration);
  }

  v4.receiver = self;
  v4.super_class = _COMessagingServiceMeter;
  [(_COMessagingServiceMeter *)&v4 dealloc];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)clientIdentifier:(id)identifier canSendLength:(unint64_t)length
{
  identifierCopy = identifier;
  v7 = [(_COMessagingServiceMeter *)self sendLimitForIdentifier:identifierCopy];
  if ([(_COMessagingServiceMeter *)self isEvaluatingIdentifier:identifierCopy])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59___COMessagingServiceMeter_clientIdentifier_canSendLength___block_invoke;
    v9[3] = &unk_278E17FD8;
    v9[4] = self;
    v10 = identifierCopy;
    lengthCopy = length;
    [(_COMessagingServiceMeter *)self _withLock:v9];
  }

  return v7 > length;
}

- (BOOL)clientIdentifier:(id)identifier canReceiveLength:(unint64_t)length
{
  identifierCopy = identifier;
  v7 = [(_COMessagingServiceMeter *)self receiveLimitForIdentifier:identifierCopy];
  if ([(_COMessagingServiceMeter *)self isEvaluatingIdentifier:identifierCopy])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62___COMessagingServiceMeter_clientIdentifier_canReceiveLength___block_invoke;
    v9[3] = &unk_278E17FD8;
    v9[4] = self;
    v10 = identifierCopy;
    lengthCopy = length;
    [(_COMessagingServiceMeter *)self _withLock:v9];
  }

  return v7 > length;
}

- (BOOL)isEvaluatingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(_COMessagingServiceMeter *)self sendLimitForIdentifier:identifierCopy]== -1)
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
    v8 = identifierCopy;
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

- (unint64_t)sendLimitForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  limits = [(_COMessagingServiceMeter *)self limits];
  v6 = [limits objectForKey:identifierCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 10240;
  }

  return unsignedIntegerValue;
}

- (unint64_t)receiveLimitForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  limits = [(_COMessagingServiceMeter *)self limits];
  v6 = [limits objectForKey:identifierCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 10240;
  }

  return unsignedIntegerValue;
}

@end