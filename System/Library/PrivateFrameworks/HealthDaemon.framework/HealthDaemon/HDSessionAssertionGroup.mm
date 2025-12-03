@interface HDSessionAssertionGroup
- (HDSessionAssertionGroup)init;
- (void)_transitionToNewAssertions:(uint64_t)assertions;
- (void)invalidate;
- (void)setupState:(int64_t)state withAssertions:(id)assertions;
- (void)transitionToState:(int64_t)state;
@end

@implementation HDSessionAssertionGroup

- (HDSessionAssertionGroup)init
{
  v8.receiver = self;
  v8.super_class = HDSessionAssertionGroup;
  v2 = [(HDSessionAssertionGroup *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allAssertions = v2->_allAssertions;
    v2->_allAssertions = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsForState = v2->_assertionsForState;
    v2->_assertionsForState = v5;
  }

  return v2;
}

- (void)setupState:(int64_t)state withAssertions:(id)assertions
{
  v16 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  assertionsForState = self->_assertionsForState;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(NSMutableDictionary *)assertionsForState setObject:assertionsCopy forKeyedSubscript:v8];

  [(NSMutableSet *)self->_allAssertions addObjectsFromArray:assertionsCopy];
  if (self->_state == state)
  {
    _HKInitializeLogging();
    v9 = HKLogAssertions();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = HKLogAssertions();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Assertion group: Updating assertions for current state %@", &v14, 0xCu);
      }
    }

    [(HDSessionAssertionGroup *)self _transitionToNewAssertions:assertionsCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToNewAssertions:(uint64_t)assertions
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (assertions)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(assertions + 8);
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v5)
    {
      goto LABEL_21;
    }

    v7 = v5;
    v8 = *v21;
    *&v6 = 138412290;
    v19 = v6;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (![v3 containsObject:{v10, v19, v20}])
        {
          if (!v10)
          {
            goto LABEL_17;
          }

          [*(v10 + 8) invalidate];
          v14 = *(v10 + 8);
          *(v10 + 8) = 0;
          goto LABEL_16;
        }

        taken = [v10 taken];
        if (v10 && (taken & 1) == 0)
        {
          if ([v10 taken])
          {
            _HKInitializeLogging();
            v12 = HKLogAssertions();
            v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

            if (!v13)
            {
              goto LABEL_17;
            }

            v14 = HKLogAssertions();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              assertionIdentifier = [*(v10 + 8) assertionIdentifier];
              *buf = v19;
              v26 = assertionIdentifier;
              _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Attempting to take assertion already taken: %@", buf, 0xCu);
            }
          }

          else
          {
            [*(v10 + 8) invalidate];
            v16 = (*(*(v10 + 16) + 16))();
            v14 = *(v10 + 8);
            *(v10 + 8) = v16;
          }

LABEL_16:
        }

LABEL_17:
        ++v9;
      }

      while (v7 != v9);
      v17 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v17;
      if (!v17)
      {
LABEL_21:

        break;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transitionToState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    _HKInitializeLogging();
    v9 = HKLogAssertions();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = HKLogAssertions();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Assertion group: Transitioning to state %@", &v20, 0xCu);
      }
    }

    assertionsForState = self->_assertionsForState;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v6 = [(NSMutableDictionary *)assertionsForState objectForKeyedSubscript:v14];

    if (v6)
    {
      [(HDSessionAssertionGroup *)self _transitionToNewAssertions:v6];
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogAssertions();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

      if (v16)
      {
        v17 = HKLogAssertions();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:state];
          v20 = 138412290;
          v21 = v18;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Assertion group: No assertions for state %@", &v20, 0xCu);
        }
      }

      v6 = 0;
    }

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v4 = HKLogAssertions();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogAssertions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Assertion group: Already in state %@", &v20, 0xCu);
    }

LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_allAssertions;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        taken = [v7 taken];
        if (v7)
        {
          v9 = taken == 0;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          [v7[1] invalidate];
          v10 = v7[1];
          v7[1] = 0;
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end