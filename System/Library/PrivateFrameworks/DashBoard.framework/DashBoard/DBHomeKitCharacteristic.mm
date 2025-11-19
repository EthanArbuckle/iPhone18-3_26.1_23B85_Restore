@interface DBHomeKitCharacteristic
+ (id)chacteristicWithService:(id)a3 characteristic:(id)a4;
+ (id)characteristicFormats;
+ (id)registeredCharacteristicClasses;
+ (void)load;
+ (void)registerCharacteristicClass:(Class)a3;
- (BOOL)_lock_setError:(id)a3;
- (BOOL)hasError;
- (BOOL)hidden;
- (BOOL)notifies;
- (BOOL)readable;
- (BOOL)usable;
- (BOOL)writable;
- (DBHome)home;
- (DBHomeKitCharacteristic)initWithService:(id)a3 characteristic:(id)a4;
- (DBHomeKitService)service;
- (NSError)error;
- (NSString)description;
- (NSString)format;
- (NSString)name;
- (NSString)stateDescription;
- (NSUUID)uniqueIdentifier;
- (double)distance;
- (id)value;
- (unint64_t)_locked_State;
- (void)_didUpdate;
- (void)_readValueCompletionTransactionID:(unint64_t)a3 error:(id)a4;
- (void)setError:(id)a3;
- (void)setValue:(id)a3;
- (void)updateValueRequiringRead:(BOOL)a3;
@end

@implementation DBHomeKitCharacteristic

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [DBHomeKitCharacteristic registerCharacteristicClass:v3];
  }
}

+ (void)registerCharacteristicClass:(Class)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (registerCharacteristicClass__onceToken != -1)
  {
    +[DBHomeKitCharacteristic registerCharacteristicClass:];
  }

  v4 = _registeredCharacteristicClasses;
  objc_sync_enter(v4);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(objc_class *)a3 characteristicFormats];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [_registeredCharacteristicClasses setObject:a3 forKeyedSubscript:*(*(&v9 + 1) + 8 * i)];
      }

      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
}

uint64_t __55__DBHomeKitCharacteristic_registerCharacteristicClass___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registeredCharacteristicClasses;
  _registeredCharacteristicClasses = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)registeredCharacteristicClasses
{
  v2 = _registeredCharacteristicClasses;
  objc_sync_enter(v2);
  v3 = [_registeredCharacteristicClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (id)chacteristicWithService:(id)a3 characteristic:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[DBHomeKitCharacteristicTypes characteristicNameByType];
  v8 = [v5 characteristicType];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = [v5 characteristicType];
  }

  v10 = +[DBHomeKitCharacteristic registeredCharacteristicClasses];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = +[DBHomeKitCharacteristic registeredCharacteristicClasses];
    v13 = [v5 metadata];
    v14 = [v13 format];
    v11 = [v12 objectForKeyedSubscript:v14];

    if (!v11)
    {
      v11 = objc_opt_class();
    }
  }

  v15 = [[v11 alloc] initWithService:v6 characteristic:v5];

  return v15;
}

- (DBHomeKitCharacteristic)initWithService:(id)a3 characteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DBHomeKitCharacteristic;
  v8 = [(DBHomeKitCharacteristic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, v6);
    objc_storeStrong(&v9->_characteristic, a4);
    v9->_state = 5;
    [(DBHomeKitCharacteristic *)v9 updateValueRequiringRead:1];
  }

  return v9;
}

- (id)value
{
  os_unfair_lock_lock(&self->_valueLock);
  if ([(DBHomeKitCharacteristic *)self state]> 2)
  {
    [(DBHomeKitCharacteristic *)self pendingValue];
  }

  else
  {
    [(DBHomeKitCharacteristic *)self cachedValue];
  }
  v3 = ;
  os_unfair_lock_unlock(&self->_valueLock);

  return v3;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  if ([(DBHomeKitCharacteristic *)self writable])
  {
    v5 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBHomeKitCharacteristic setValue:];
    }

    os_unfair_lock_lock(&self->_valueLock);
    [(DBHomeKitCharacteristic *)self setState:4];
    [(DBHomeKitCharacteristic *)self setPendingValue:v4];
    [(DBHomeKitCharacteristic *)self setTransactionId:[(DBHomeKitCharacteristic *)self transactionId]+ 1];
    os_unfair_lock_unlock(&self->_valueLock);
    [(DBHomeKitCharacteristic *)self _didUpdate];
    objc_initWeak(&location, self);
    v6 = [(DBHomeKitCharacteristic *)self home];
    v7 = [(DBHomeKitCharacteristic *)self characteristic];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__DBHomeKitCharacteristic_setValue___block_invoke;
    v8[3] = &unk_278F02E90;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 _setValue:v9 forCharacteristic:v7 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __36__DBHomeKitCharacteristic_setValue___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setError:v3];
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_debug_impl(&dword_248146000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ setValue completion: %{public}@ error=<%{public}@>", &v7, 0x20u);
  }

  [WeakRetained updateValueRequiringRead:0];
}

- (void)_didUpdate
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DBHomeKitCharacteristic__didUpdate__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__DBHomeKitCharacteristic__didUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  [v2 _characteristicDidUpdate:*(a1 + 32)];
}

- (DBHome)home
{
  v2 = [(DBHomeKitCharacteristic *)self service];
  v3 = [v2 home];

  return v3;
}

- (unint64_t)_locked_State
{
  os_unfair_lock_lock(&self->_valueLock);
  v3 = [(DBHomeKitCharacteristic *)self state];
  os_unfair_lock_unlock(&self->_valueLock);
  return v3;
}

- (BOOL)hasError
{
  v2 = [(DBHomeKitCharacteristic *)self error];
  v3 = v2 != 0;

  return v3;
}

- (NSError)error
{
  os_unfair_lock_lock(&self->_valueLock);
  v3 = [(NSError *)self->_error copy];
  os_unfair_lock_unlock(&self->_valueLock);

  return v3;
}

- (void)setError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_valueLock);
  [(DBHomeKitCharacteristic *)self _lock_setError:v4];

  os_unfair_lock_unlock(&self->_valueLock);
}

- (BOOL)_lock_setError:(id)a3
{
  v5 = a3;
  p_error = &self->_error;
  v7 = BSEqualObjects();
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_error, a3);
  }

  return v7 ^ 1;
}

- (void)updateValueRequiringRead:(BOOL)a3
{
  os_unfair_lock_lock(&self->_valueLock);
  if (!a3 && !self->_error)
  {
    v11 = [(DBHomeKitCharacteristic *)self characteristic];
    v12 = [v11 value];

    if (v12)
    {
      v13 = [(DBHomeKitCharacteristic *)self characteristic];
      v14 = [v13 value];
      [(DBHomeKitCharacteristic *)self setCachedValue:v14];

      [(DBHomeKitCharacteristic *)self setPendingValue:0];
      [(DBHomeKitCharacteristic *)self setState:2];
      os_unfair_lock_unlock(&self->_valueLock);
      [(DBHomeKitCharacteristic *)self _didUpdate];
      goto LABEL_14;
    }
  }

  if ([(DBHomeKitCharacteristic *)self state]== 3)
  {
    os_unfair_lock_unlock(&self->_valueLock);
LABEL_14:
    v15 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DBHomeKitCharacteristic updateValueRequiringRead:];
    }

    return;
  }

  v5 = [(DBHomeKitCharacteristic *)self state];
  if (v5 <= 2)
  {
    v6 = [(DBHomeKitCharacteristic *)self characteristic];
    v7 = [v6 value];
    [(DBHomeKitCharacteristic *)self setPendingValue:v7];

    [(DBHomeKitCharacteristic *)self setState:3];
  }

  v8 = ([(DBHomeKitCharacteristic *)self transactionId]+ 1);
  [(DBHomeKitCharacteristic *)self setTransactionId:v8];
  os_unfair_lock_unlock(&self->_valueLock);
  if (v5 < 3)
  {
    [(DBHomeKitCharacteristic *)self _didUpdate];
  }

  v9 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeKitCharacteristic updateValueRequiringRead:];
  }

  objc_initWeak(&location, self);
  v10 = [(DBHomeKitCharacteristic *)self characteristic];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__DBHomeKitCharacteristic_updateValueRequiringRead___block_invoke;
  v16[3] = &unk_278F02EB8;
  objc_copyWeak(v17, &location);
  v17[1] = v8;
  [v10 readValueWithCompletionHandler:v16];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __52__DBHomeKitCharacteristic_updateValueRequiringRead___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readValueCompletionTransactionID:*(a1 + 40) error:v3];
}

- (void)_readValueCompletionTransactionID:(unint64_t)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_valueLock);
  v7 = [(DBHomeKitCharacteristic *)self transactionId];
  if (v7 == a3)
  {
    v8 = [(DBHomeKitCharacteristic *)self characteristic];
    v9 = [v8 value];
    [(DBHomeKitCharacteristic *)self setCachedValue:v9];

    [(DBHomeKitCharacteristic *)self setPendingValue:0];
    [(DBHomeKitCharacteristic *)self setState:2];
    os_unfair_lock_unlock(&self->_valueLock);
    v10 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DBHomeKitCharacteristic _readValueCompletionTransactionID:error:];
    }

    [(DBHomeKitCharacteristic *)self _didUpdate];
  }

  else
  {
    v11 = v7;
    os_unfair_lock_unlock(&self->_valueLock);
    v12 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543874;
      v14 = self;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = v11;
      _os_log_debug_impl(&dword_248146000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ readValue completion: transactionID %lu != %lu", &v13, 0x20u);
    }
  }
}

- (NSString)format
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() characteristicFormat];
  v5 = [(DBHomeKitCharacteristic *)self characteristic];
  v6 = [v5 metadata];
  v7 = [v6 format];
  v8 = [v3 stringWithFormat:@"%@-%@", v4, v7];

  return v8;
}

- (BOOL)notifies
{
  v2 = [(DBHomeKitCharacteristic *)self characteristic];
  v3 = [v2 properties];
  v4 = [v3 containsObject:*MEMORY[0x277CCF738]];

  return v4;
}

- (BOOL)readable
{
  v2 = [(DBHomeKitCharacteristic *)self characteristic];
  v3 = [v2 properties];
  v4 = [v3 containsObject:*MEMORY[0x277CCF728]];

  return v4;
}

- (BOOL)writable
{
  v2 = [(DBHomeKitCharacteristic *)self characteristic];
  v3 = [v2 properties];
  v4 = [v3 containsObject:*MEMORY[0x277CCF740]];

  return v4;
}

- (BOOL)hidden
{
  v2 = [(DBHomeKitCharacteristic *)self characteristic];
  v3 = [v2 properties];
  v4 = [v3 containsObject:*MEMORY[0x277CCF720]];

  return v4;
}

- (NSString)description
{
  v66[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_valueLock);
  v50 = [(DBHomeKitCharacteristic *)self state];
  v48 = [(DBHomeKitCharacteristic *)self transactionId];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(DBHomeKitCharacteristic *)self characteristic];
  v6 = [v5 value];
  v7 = [v4 stringWithFormat:@"V:%@", v6];
  v66[0] = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = [(DBHomeKitCharacteristic *)self cachedValue];
  v10 = [v8 stringWithFormat:@"C:%@", v9];
  v66[1] = v10;
  v11 = MEMORY[0x277CCACA8];
  v12 = [(DBHomeKitCharacteristic *)self pendingValue];
  v13 = [v11 stringWithFormat:@"P:%@", v12];
  v66[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
  v57 = v3;
  [v3 addObjectsFromArray:v14];

  v64 = [(NSError *)self->_error copy];
  os_unfair_lock_unlock(&self->_valueLock);
  v63 = [(DBHomeKitCharacteristic *)self name];
  v65[0] = v63;
  v15 = MEMORY[0x277CCACA8];
  v62 = [(DBHomeKitCharacteristic *)self uniqueIdentifier];
  v61 = [v15 stringWithFormat:@"uniqueIdentifier=%@", v62];
  v65[1] = v61;
  v16 = MEMORY[0x277CCACA8];
  v59 = [(DBHomeKitCharacteristic *)self service];
  v60 = [(DBHomeKitCharacteristic *)self service];
  v58 = [v60 uniqueIdentifier];
  v56 = [v16 stringWithFormat:@"service=(%p)%@", v59, v58];
  v65[2] = v56;
  v17 = MEMORY[0x277CCACA8];
  v54 = [(DBHomeKitCharacteristic *)self home];
  v55 = [(DBHomeKitCharacteristic *)self home];
  v53 = [v55 uniqueIdentifier];
  v52 = [v17 stringWithFormat:@"home=(%p)%@", v54, v53];
  v65[3] = v52;
  v18 = MEMORY[0x277CCACA8];
  v51 = NSStringFromCharacteristicState(v50);
  v49 = [v18 stringWithFormat:@"state=%@(%lu)", v51, v48];
  v65[4] = v49;
  v19 = MEMORY[0x277CCACA8];
  v47 = [(DBHomeKitCharacteristic *)self formatedValue];
  v46 = [v19 stringWithFormat:@"formatedValue=%@", v47];
  v65[5] = v46;
  v20 = MEMORY[0x277CCACA8];
  v45 = [v3 componentsJoinedByString:@" "];
  v44 = [v20 stringWithFormat:@"value=[%@]", v45];
  v65[6] = v44;
  v21 = MEMORY[0x277CCACA8];
  v22 = [(DBHomeKitCharacteristic *)self format];
  v23 = [v21 stringWithFormat:@"format=%@", v22];
  v65[7] = v23;
  v24 = MEMORY[0x277CCACA8];
  if ([(DBHomeKitCharacteristic *)self notifies])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v26 = [v24 stringWithFormat:@"notifies=%@", v25];
  v65[8] = v26;
  v27 = MEMORY[0x277CCACA8];
  if ([(DBHomeKitCharacteristic *)self readable])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v29 = [v27 stringWithFormat:@"readable=%@", v28];
  v65[9] = v29;
  v30 = MEMORY[0x277CCACA8];
  if ([(DBHomeKitCharacteristic *)self writable])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v32 = [v30 stringWithFormat:@"writable=%@", v31];
  v65[10] = v32;
  v33 = MEMORY[0x277CCACA8];
  if ([(DBHomeKitCharacteristic *)self hidden])
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v35 = [v33 stringWithFormat:@"hidden=%@", v34];
  v65[11] = v35;
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"error=%@", v64];
  v65[12] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:13];

  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = [(DBHomeKitCharacteristic *)self characteristic];
  v41 = [v37 componentsJoinedByString:@" "];
  v42 = [v38 stringWithFormat:@"<%@: %p(%p) %@>", v39, self, v40, v41];

  return v42;
}

+ (id)characteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 characteristicFormat];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(DBHomeKitCharacteristic *)self characteristic];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (NSString)name
{
  v3 = +[DBHomeKitCharacteristicTypes characteristicNameByType];
  v4 = [(DBHomeKitCharacteristic *)self characteristic];
  v5 = [v4 characteristicType];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(DBHomeKitCharacteristic *)self characteristic];
    v7 = [v8 characteristicType];
  }

  return v7;
}

- (BOOL)usable
{
  if ([(DBHomeKitCharacteristic *)self hidden])
  {
    return 0;
  }

  v4 = +[DBHomeKitCharacteristicTypes characteristicNameByType];
  v5 = [(DBHomeKitCharacteristic *)self characteristic];
  v6 = [v5 characteristicType];
  v7 = [v4 objectForKeyedSubscript:v6];
  v3 = v7 != 0;

  return v3;
}

- (NSString)stateDescription
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_valueLock);
  v23 = [(DBHomeKitCharacteristic *)self state];
  v24 = [(DBHomeKitCharacteristic *)self transactionId];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(DBHomeKitCharacteristic *)self characteristic];
  v6 = [v5 value];
  v7 = [v4 stringWithFormat:@"V:%@", v6];
  v25[0] = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = [(DBHomeKitCharacteristic *)self cachedValue];
  v10 = [v8 stringWithFormat:@"C:%@", v9];
  v25[1] = v10;
  v11 = MEMORY[0x277CCACA8];
  v12 = [(DBHomeKitCharacteristic *)self pendingValue];
  v13 = [v11 stringWithFormat:@"P:%@", v12];
  v25[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v3 addObjectsFromArray:v14];

  v15 = [(NSError *)self->_error copy];
  os_unfair_lock_unlock(&self->_valueLock);
  v16 = MEMORY[0x277CCACA8];
  v17 = [(DBHomeKitCharacteristic *)self name];
  v18 = [(DBHomeKitCharacteristic *)self formatedValue];
  v19 = NSStringFromCharacteristicState(v23);
  v20 = [v3 componentsJoinedByString:@" "];
  v21 = [v16 stringWithFormat:@"%@=%@ (%@ transactionID=%lu error=%@ values=[%@])", v17, v18, v19, v24, v15, v20];

  return v21;
}

- (double)distance
{
  v2 = [(DBHomeKitCharacteristic *)self home];
  [v2 distance];
  v4 = v3;

  return v4;
}

- (DBHomeKitService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)setValue:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateValueRequiringRead:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateValueRequiringRead:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_readValueCompletionTransactionID:error:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end