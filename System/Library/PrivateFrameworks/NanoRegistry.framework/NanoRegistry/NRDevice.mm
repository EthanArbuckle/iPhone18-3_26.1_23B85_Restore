@interface NRDevice
- (BOOL)archived;
- (BOOL)canMigrate;
- (BOOL)migrationConfirmed;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)supportsCapability:(id)a3;
- (NRDevice)initWithCoder:(id)a3;
- (NRDevice)initWithQueue:(id)a3;
- (NRDevice)initWithRegistry:(id)a3 diff:(id)a4 pairingID:(id)a5 notify:(BOOL)a6;
- (id)description;
- (id)migrationError;
- (id)propertyNames;
- (id)valueForProperty:(id)a3;
- (uint64_t)_updateSelfRetain;
- (void)_fireChangeNotificationsForDiff:(void *)a3 secureProperties:(int)a4 notify:;
- (void)_queueFirePropertyObserversForProperty:(void *)a3 fromValue:;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)addPropertyObserver:(id)a3 forPropertyChanges:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)postNotification:(uint64_t)a1 withUserInfo:(void *)a2;
- (void)registerForPropertyChanges:(id)a3 withBlock:(id)a4;
- (void)removePropertyObserver:(id)a3 forPropertyChanges:(id)a4;
- (void)unregisterForPropertyChanges:(id)a3 withBlock:(id)a4;
@end

@implementation NRDevice

- (uint64_t)_updateSelfRetain
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 40) count];
    if (v2)
    {
      v2 = v1;
    }

    v3 = v1[1];
    v1[1] = v2;

    return MEMORY[0x1EEE66BB8](v2, v3);
  }

  return result;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_changeBlocks removeAllObjects];
  [(NSMutableArray *)self->_promiscuousChangeBlocks removeAllObjects];
  v3.receiver = self;
  v3.super_class = NRDevice;
  [(NRDevice *)&v3 dealloc];
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"NRDevice[%p]: ", self];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NRDevice *)self propertyNames];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(NRDevice *)self objectForKeyedSubscript:v9];
        [v3 appendFormat:@"%@=%@ ", v9, v11];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)propertyNames
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  registry = self->_registry;
  if (registry)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __25__NRDevice_propertyNames__block_invoke;
    v13[3] = &unk_1E86DC090;
    v13[4] = self;
    v13[5] = &v14;
    [(NRRegistry *)registry deasyncGrabRegistryWithReadBlock:v13];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __25__NRDevice_propertyNames__block_invoke_2;
    v10 = &unk_1E86DB8F0;
    v11 = self;
    v12 = &v14;
    v4 = v8;
    v5 = self;
    os_unfair_lock_lock_with_options();
    v9(v4);

    os_unfair_lock_unlock(&self->_lock);
  }

  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __25__NRDevice_propertyNames__block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 24)];
  v3 = [v7 allPropertyNames];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)canMigrate
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"119C9267-C24D-4FC3-8FE9-2D394943F2E6"];
  v4 = [(NRDevice *)self supportsCapability:v3];

  if (v4)
  {
    v5 = [(NRDevice *)self valueForProperty:@"migrationKeyRevision"];
    v6 = v5;
    if (v5 && [v5 integerValue])
    {
      v7 = [(NRDevice *)self valueForProperty:@"isPaired"];
      v8 = v7;
      if (v7 && [v7 BOOLValue])
      {
        v9 = [(NRDevice *)self valueForProperty:@"MDMManagementState"];
        v10 = [v9 unsignedIntegerValue];
        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = v11;
        if (v11)
        {
          v13 = &stru_1F5B7BE00;
        }

        else
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Managed by MDM (%lu)", v10];
        }
      }

      else
      {
        v12 = 0;
        v13 = @"Device not paired";
      }
    }

    else
    {
      v12 = 0;
      v13 = @"Does not have migration key revision";
    }
  }

  else
  {
    v12 = 0;
    v13 = @"Does not support migration capability";
  }

  v14 = nr_framework_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_framework_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NRDevice *)self valueForProperty:@"pairingID"];
      *buf = 136316162;
      v22 = "[NRDevice(migration) canMigrate]";
      v18 = " - ";
      v23 = 2112;
      v25 = 1024;
      v24 = v17;
      if (v12)
      {
        v18 = "";
      }

      v26 = v12;
      v27 = 2080;
      v28 = v18;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_1E0ADF000, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ %{BOOL}d%s%@", buf, 0x30u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)archived
{
  v2 = [(NRDevice *)self valueForProperty:@"isArchived"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)migrationError
{
  if ([(NRDevice *)self archived])
  {
    v3 = [(NRDevice *)self valueForProperty:@"lastPairingError"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)migrationConfirmed
{
  v2 = [(NRDevice *)self valueForProperty:@"migrationConsent"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NRDevice)initWithRegistry:(id)a3 diff:(id)a4 pairingID:(id)a5 notify:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v43.receiver = self;
  v43.super_class = NRDevice;
  v14 = [(NRDevice *)&v43 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_registry, a3);
    objc_storeStrong(&v15->_pairingID, a5);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v15->_observers;
    v15->_observers = v16;

    v18 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    promiscuousObservers = v15->_promiscuousObservers;
    v15->_promiscuousObservers = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    changeBlocks = v15->_changeBlocks;
    v15->_changeBlocks = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    promiscuousChangeBlocks = v15->_promiscuousChangeBlocks;
    v15->_promiscuousChangeBlocks = v22;

    v24 = [MEMORY[0x1E695DF90] dictionary];
    oldPropertiesForChangeNotifications = v15->_oldPropertiesForChangeNotifications;
    v15->_oldPropertiesForChangeNotifications = v24;

    objc_storeStrong(&v15->_me, v15);
    if (v11)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke;
      v38[3] = &unk_1E86DC7D0;
      v26 = v15;
      v39 = v26;
      v40 = v12;
      v27 = v11;
      v41 = v27;
      v42 = a6;
      [v27 grabRegistryWithReadBlock:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke_2;
      v36[3] = &unk_1E86DC7F8;
      v28 = v26;
      v37 = v28;
      v29 = [v27 addDiffObserverWithWriteBlock:v36];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke_3;
      v34[3] = &unk_1E86DC820;
      v35 = v28;
      v30 = [v27 addSecurePropertiesObserverWithReadBlock:v34];

      properties = v39;
    }

    else
    {
      v32 = [MEMORY[0x1E695DF90] dictionary];
      properties = v15->_properties;
      v15->_properties = v32;
    }
  }

  return v15;
}

uint64_t __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) secureProperties];
  [(NRDevice *)v2 _fireChangeNotificationsForDiff:v3 secureProperties:v4 notify:*(a1 + 56)];

  v5 = *(a1 + 32);

  return [(NRDevice *)v5 _updateSelfRetain];
}

- (void)_fireChangeNotificationsForDiff:(void *)a3 secureProperties:(int)a4 notify:
{
  v65 = *MEMORY[0x1E69E9840];
  v44 = a3;
  if (a1)
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 24)];
    v7 = v6;
    if (!v6)
    {
LABEL_51:

      goto LABEL_52;
    }

    v8 = [v6 diff];
    v9 = v8;
    if (a4 && v8)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke;
      v62[3] = &unk_1E86DC898;
      v62[4] = a1;
      [NRMutableDevice parseDiff:v8 forPropertyChange:@"isActive" withBlock:v62];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_2;
      v61[3] = &unk_1E86DC898;
      v61[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"bluetoothPaired" withBlock:v61];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_3;
      v60[3] = &unk_1E86DC898;
      v60[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"isActive" withBlock:v60];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_4;
      v59[3] = &unk_1E86DC898;
      v59[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"remoteUnpairingStarted" withBlock:v59];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_5;
      v58[3] = &unk_1E86DC898;
      v58[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"isPaired" withBlock:v58];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_6;
      v57[3] = &unk_1E86DC898;
      v57[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"isSetup" withBlock:v57];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_7;
      v56[3] = &unk_1E86DC898;
      v56[4] = a1;
      [NRMutableDevice parseDiff:v9 forPropertyChange:@"compatibilityState" withBlock:v56];
    }

    if ([v7 changeType] == 2)
    {
      v10 = v9;
      if (a4)
      {
        v11 = [*(a1 + 40) objectForKeyedSubscript:@"isActive"];
        v12 = [v11 isEqual:MEMORY[0x1E695E118]];

        if (v12)
        {
          [NRDevice postNotification:a1 withUserInfo:@"NRPairedDeviceRegistryDeviceDidBecomeInactive"];
          v13 = [*(a1 + 40) objectForKeyedSubscript:@"isPaired"];
          v14 = [v13 isEqual:MEMORY[0x1E695E118]];

          if (v14)
          {
            [NRDevice postNotification:a1 withUserInfo:@"NRPairedDeviceRegistryDeviceDidUnpairNotification"];
          }
        }
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v15 = *(a1 + 40);
      v16 = [v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            v21 = [*(a1 + 40) objectForKeyedSubscript:v20];
            if (a4)
            {
              [(NRDevice *)a1 _queueFirePropertyObserversForProperty:v20 fromValue:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
        }

        while (v17);
      }

      if (!a4)
      {
LABEL_49:
        [*(a1 + 40) removeAllObjects];
LABEL_50:

        goto LABEL_51;
      }

      v22 = [*(a1 + 40) objectForKeyedSubscript:@"isActive"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        [NRDevice postNotification:a1 withUserInfo:@"NRPairedDeviceRegistryDeviceDidBecomeInactive"];
      }

      v24 = [*(a1 + 40) objectForKeyedSubscript:@"isPaired"];
      if ([v24 BOOLValue])
      {
      }

      else
      {
        v37 = [*(a1 + 40) objectForKeyedSubscript:@"bluetoothPaired"];
        v38 = [v37 BOOLValue];

        if (!v38)
        {
          goto LABEL_47;
        }
      }

      [NRDevice postNotification:a1 withUserInfo:@"NRPairedDeviceRegistryDeviceDidUnpairNotification"];
LABEL_47:
      v39 = [*(a1 + 40) objectForKeyedSubscript:@"isArchived"];
      v40 = [v39 BOOLValue];

      if (v40)
      {
        [NRDevice postNotification:a1 withUserInfo:@"NRPairedDeviceRegistryUnmigratedDeviceDidUnpairNotification"];
      }

      goto LABEL_49;
    }

    v42 = v9;
    v43 = v7;
    v25 = [v7 diff];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (!v26)
    {
      goto LABEL_44;
    }

    v27 = v26;
    v28 = *v53;
    v46 = a1;
LABEL_27:
    v29 = 0;
    v45 = v27;
    while (1)
    {
      if (*v53 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v52 + 1) + 8 * v29);
      v31 = [v25 objectForKeyedSubscript:v30];
      if ([v31 changeType] == 2)
      {
        v32 = [*(a1 + 40) objectForKeyedSubscript:v30];
        if (v32)
        {
          [*(a1 + 40) removeObjectForKey:v30];
          if (a4)
          {
            [(NRDevice *)a1 _queueFirePropertyObserversForProperty:v30 fromValue:v32];
          }
        }

        goto LABEL_42;
      }

      v32 = [v31 diff];
      v33 = [v32 value];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v34 = [v44 objectForKeyedSubscript:v33];
      if (v34)
      {
        goto LABEL_38;
      }

LABEL_41:

      a1 = v46;
LABEL_42:

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (!v27)
        {
LABEL_44:

          v10 = v42;
          v7 = v43;
          goto LABEL_50;
        }

        goto LABEL_27;
      }
    }

    v34 = v33;
LABEL_38:
    v35 = v28;
    v36 = [*(v46 + 40) objectForKeyedSubscript:v30];
    [*(v46 + 40) setObject:v34 forKeyedSubscript:v30];
    if (a4)
    {
      [(NRDevice *)v46 _queueFirePropertyObserversForProperty:v30 fromValue:v36];
    }

    v28 = v35;
    v27 = v45;
    goto LABEL_41;
  }

LABEL_52:

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  [(NRDevice *)*(a1 + 32) _fireChangeNotificationsForDiff:a2 secureProperties:a4 notify:1];
  v5 = *(a1 + 32);

  return [(NRDevice *)v5 _updateSelfRetain];
}

void __51__NRDevice_initWithRegistry_diff_pairingID_notify___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v16 = a3;
  if (v4)
  {
    v5 = [a2 objectForKeyedSubscript:*(v4 + 24)];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v11 value];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v16 objectForKeyedSubscript:v12];
            if (v13)
            {
              v14 = [*(v4 + 40) objectForKeyedSubscript:v10];

              if (!v14)
              {
                [*(v4 + 40) setObject:v13 forKeyedSubscript:v10];
                [(NRDevice *)v4 _queueFirePropertyObserversForProperty:v10 fromValue:0];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  v11 = a3;
  v6 = a4;
  properties = self->_properties;
  if (!properties)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_properties;
    self->_properties = v8;

    registry = self->_registry;
    self->_registry = 0;

    properties = self->_properties;
  }

  if (v11)
  {
    [(NSMutableDictionary *)properties setObject:v11 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:v6];
  }
}

- (void)_queueFirePropertyObserversForProperty:(void *)a3 fromValue:
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 56) objectForKey:v5];
  v8 = [v7 allObjects];
  v9 = [*(a1 + 64) allObjects];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = [*(a1 + 72) objectForKey:v5];
  v12 = [v11 arrayByAddingObjectsFromArray:*(a1 + 80)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NRDevice__queueFirePropertyObserversForProperty_fromValue___block_invoke;
  block[3] = &unk_1E86DC8C0;
  v18 = v10;
  v19 = a1;
  v13 = v5;
  v20 = v13;
  v14 = v6;
  v21 = v14;
  v22 = v12;
  v15 = v12;
  v16 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)invalidate
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__NRDevice_invalidate__block_invoke;
  v5[3] = &unk_1E86DAE98;
  v5[4] = self;
  v3 = self;
  os_unfair_lock_lock_with_options();
  __22__NRDevice_invalidate__block_invoke(v5);
  os_unfair_lock_unlock(&self->_lock);

  me = v3->_me;
  v3->_me = 0;
}

uint64_t __22__NRDevice_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  v2 = *(*(a1 + 32) + 80);

  return [v2 removeAllObjects];
}

- (void)addPropertyObserver:(id)a3 forPropertyChanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__NRDevice_addPropertyObserver_forPropertyChanges___block_invoke;
  v11[3] = &unk_1E86DAEE8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = self;
  v9 = v7;
  v10 = v6;
  os_unfair_lock_lock_with_options();
  __51__NRDevice_addPropertyObserver_forPropertyChanges___block_invoke(v11);
  os_unfair_lock_unlock(&self->_lock);
}

void __51__NRDevice_addPropertyObserver_forPropertyChanges___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v4;
  if (v1)
  {
    if (v4)
    {
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v29;
        obj = v5;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            v11 = [*(v1 + 56) objectForKey:v10];
            if (v11)
            {
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v12 = v11;
              v13 = [v12 countByEnumeratingWithState:&v24 objects:&v32 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v25;
                while (2)
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v25 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (*(*(&v24 + 1) + 8 * j) == v3)
                    {

                      goto LABEL_21;
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v24 objects:&v32 count:16];
                  if (v14)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else
            {
              v12 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
            }

            [v12 addPointer:v3];
            [*(v1 + 56) setObject:v12 forKey:v10];
LABEL_21:
          }

          v5 = obj;
          v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v17 = *(v1 + 64);
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        while (2)
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (*(*(&v32 + 1) + 8 * k) == v3)
            {

              goto LABEL_34;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      [*(v1 + 64) addPointer:v3];
    }
  }

LABEL_34:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)removePropertyObserver:(id)a3 forPropertyChanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__NRDevice_removePropertyObserver_forPropertyChanges___block_invoke;
  v11[3] = &unk_1E86DAEE8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = self;
  v9 = v7;
  v10 = v6;
  os_unfair_lock_lock_with_options();
  __54__NRDevice_removePropertyObserver_forPropertyChanges___block_invoke(v11);
  os_unfair_lock_unlock(&self->_lock);
}

void __54__NRDevice_removePropertyObserver_forPropertyChanges___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v4;
  v40 = v1;
  if (v1)
  {
    if (v4)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v54;
        obj = v5;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v54 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = [*(v40 + 56) objectForKey:*(*(&v53 + 1) + 8 * i)];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = 0;
              v15 = *v50;
              while (2)
              {
                v16 = 0;
                v17 = v14;
                v14 += v13;
                do
                {
                  if (*v50 != v15)
                  {
                    objc_enumerationMutation(v11);
                  }

                  if (*(*(&v49 + 1) + 8 * v16) == v3)
                  {

                    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v11 removePointerAtIndex:v17];
                    }

                    goto LABEL_19;
                  }

                  ++v17;
                  ++v16;
                }

                while (v13 != v16);
                v13 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }

          v5 = obj;
          v7 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v38 = [*(v1 + 56) allKeys];
      v18 = [v38 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v50;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v50 != v20)
            {
              objc_enumerationMutation(v38);
            }

            v22 = [*(v40 + 56) objectForKey:*(*(&v49 + 1) + 8 * j)];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = 0;
              v27 = *v46;
              while (2)
              {
                v28 = 0;
                v29 = v26;
                v26 += v25;
                do
                {
                  if (*v46 != v27)
                  {
                    objc_enumerationMutation(v23);
                  }

                  if (*(*(&v45 + 1) + 8 * v28) == v3)
                  {

                    if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v23 removePointerAtIndex:v29];
                    }

                    goto LABEL_38;
                  }

                  ++v29;
                  ++v28;
                }

                while (v25 != v28);
                v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

LABEL_38:
          }

          v19 = [v38 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v19);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v30 = *(v40 + 64);
      v31 = [v30 countByEnumeratingWithState:&v41 objects:&v53 count:16];
      v5 = 0;
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v42;
        while (2)
        {
          v35 = 0;
          v36 = v33;
          v33 += v32;
          do
          {
            if (*v42 != v34)
            {
              objc_enumerationMutation(v30);
            }

            if (*(*(&v41 + 1) + 8 * v35) == v3)
            {

              if (v36 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [*(v40 + 64) removePointerAtIndex:v36];
              }

              goto LABEL_51;
            }

            ++v36;
            ++v35;
          }

          while (v32 != v35);
          v32 = [v30 countByEnumeratingWithState:&v41 objects:&v53 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_51:

  v37 = *MEMORY[0x1E69E9840];
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  v5 = v4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  registry = self->_registry;
  if (registry)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29__NRDevice_valueForProperty___block_invoke;
    v17[3] = &unk_1E86DC848;
    v17[4] = self;
    v18[0] = v4;
    v18[1] = &v19;
    [(NRRegistry *)registry deasyncGrabRegistryWithReadBlock:v17];
    v7 = v18;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __29__NRDevice_valueForProperty___block_invoke_2;
    v14 = &unk_1E86DC870;
    v16[1] = &v19;
    v15 = self;
    v16[0] = v4;
    v8 = v12;
    v9 = self;
    os_unfair_lock_lock_with_options();
    v13(v8);
    v7 = v16;

    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __29__NRDevice_valueForProperty___block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1[4] + 24)];
  v6 = [v5 objectForKeyedSubscript:a1[5]];
  v7 = [v6 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v13 objectForKeyedSubscript:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = *(a1[6] + 8);
    v12 = v7;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }
}

uint64_t __29__NRDevice_valueForProperty___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 BOOLValue] & 1) == 0)
  {
    [NRDevice postNotification:@"NRPairedDeviceRegistryDeviceDidBecomeInactive" withUserInfo:?];
  }
}

- (void)postNotification:(uint64_t)a1 withUserInfo:(void *)a2
{
  v3 = a2;
  if (a1)
  {
    v4 = [0 mutableCopy];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v4 setObject:a1 forKeyedSubscript:@"device"];
    [v4 setObject:*(a1 + 24) forKeyedSubscript:@"pairingID"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__NRDevice_postNotification_withUserInfo___block_invoke;
    block[3] = &unk_1E86DAEE8;
    v7 = v3;
    v8 = a1;
    v9 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v4 = [v7 BOOLValue];
    v5 = NRPairedDeviceRegistryDeviceDidBeginPairingNotification;
    v6 = *(a1 + 32);
    if (!v4)
    {
      v5 = NRPairedDeviceRegistryDeviceDidReceiveBTPairingRequestNotification;
    }

    [NRDevice postNotification:*v5 withUserInfo:?];
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [NRDevice postNotification:@"NRPairedDeviceRegistryDeviceDidBecomeActive" withUserInfo:?];
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [NRDevice postNotification:@"NRPairedDeviceRegistryRemoteUnpairingDidBeginNotification" withUserInfo:?];
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 BOOLValue];
    v6 = *(a1 + 32);
    if (v5)
    {
      [NRDevice postNotification:v6 withUserInfo:@"NRPairedDeviceRegistryDeviceDidPairNotification"];
    }

    else
    {
      v7 = [*(v6 + 40) objectForKeyedSubscript:@"lastPairingError"];
      if (!v7)
      {
        [NRDevice postNotification:@"NRPairedDeviceRegistryDeviceDidUnpairNotification" withUserInfo:?];
      }
    }
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [NRDevice postNotification:@"NRPairedDeviceRegistryDeviceIsSetupNotification" withUserInfo:?];
  }
}

void __68__NRDevice__fireChangeNotificationsForDiff_secureProperties_notify___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    if ([v6 integerValue] == 3)
    {
      v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"isPaired"];
      v5 = [v4 BOOLValue];

      if ((v5 & 1) == 0)
      {
        [NRDevice postNotification:@"NRPairedDeviceRegistryDeviceDidBeginActivation" withUserInfo:?];
      }
    }
  }
}

void __42__NRDevice_postNotification_withUserInfo___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:a1[4] object:*(a1[5] + 32) userInfo:a1[6]];
}

void __61__NRDevice__queueFirePropertyObserversForProperty_fromValue___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v19 + 1) + 8 * v6++) device:*(a1 + 40) propertyDidChange:*(a1 + 48) fromValue:*(a1 + 56)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 64);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        (*(*(*(&v15 + 1) + 8 * v11) + 16))(*(*(&v15 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NRDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NRDevice;
  v5 = [(NRDevice *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = NRClassesForPropertiesWithArray(0);
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"properties"];
    v10 = [v9 mutableCopy];
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    promiscuousObservers = v5->_promiscuousObservers;
    v5->_promiscuousObservers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    changeBlocks = v5->_changeBlocks;
    v5->_changeBlocks = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    promiscuousChangeBlocks = v5->_promiscuousChangeBlocks;
    v5->_promiscuousChangeBlocks = v16;
  }

  return v5;
}

void __25__NRDevice_propertyNames__block_invoke_2(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 48) allKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)registerForPropertyChanges:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__NRDevice_registerForPropertyChanges_withBlock___block_invoke;
  v11[3] = &unk_1E86DB4B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = self;
  v9 = v7;
  v10 = v6;
  os_unfair_lock_lock_with_options();
  __49__NRDevice_registerForPropertyChanges_withBlock___block_invoke(v11);
  os_unfair_lock_unlock(&self->_lock);
}

void __49__NRDevice_registerForPropertyChanges_withBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (v3)
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v30;
        obj = v3;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v30 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v29 + 1) + 8 * i);
            v10 = [*(v1 + 72) objectForKey:v9];
            if (v10)
            {
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v11 = v10;
              v12 = [v11 countByEnumeratingWithState:&v25 objects:&v33 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v26;
                while (2)
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v26 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    if (*(*(&v25 + 1) + 8 * j) == v4)
                    {

                      goto LABEL_21;
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v25 objects:&v33 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else
            {
              v11 = objc_opt_new();
            }

            v16 = MEMORY[0x1E12E7560](v4);
            [v11 addObject:v16];

            [*(v1 + 72) setObject:v11 forKey:v9];
LABEL_21:
          }

          v3 = obj;
          v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v17 = *(v1 + 80);
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
LABEL_26:
        v21 = 0;
        while (1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (*(*(&v33 + 1) + 8 * v21) == v4)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v19)
            {
              goto LABEL_26;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
LABEL_32:

        v22 = *(v1 + 80);
        v17 = MEMORY[0x1E12E7560](v4);
        [v22 addObject:v17];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)unregisterForPropertyChanges:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__NRDevice_unregisterForPropertyChanges_withBlock___block_invoke;
  v11[3] = &unk_1E86DB4B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = self;
  v9 = v7;
  v10 = v6;
  os_unfair_lock_lock_with_options();
  __51__NRDevice_unregisterForPropertyChanges_withBlock___block_invoke(v11);
  os_unfair_lock_unlock(&self->_lock);
}

void __51__NRDevice_unregisterForPropertyChanges_withBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (v3)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v26;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v26 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v25 + 1) + 8 * i);
            v10 = *(v1 + 72);
            if (v4)
            {
              v11 = [v10 objectForKey:*(*(&v25 + 1) + 8 * i)];
              v12 = MEMORY[0x1E12E7560](v4);
              [v11 removeObject:v12];

              if (![v11 count])
              {
                [*(v1 + 72) removeObjectForKey:v9];
              }
            }

            else
            {
              [v10 removeObjectForKey:*(*(&v25 + 1) + 8 * i)];
            }
          }

          v6 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v13 = *(v1 + 72);
      if (v4)
      {
        v14 = [v13 allKeys];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v25 + 1) + 8 * j);
              v20 = [*(v1 + 72) objectForKey:v19];
              v21 = MEMORY[0x1E12E7560](v4);
              [v20 removeObject:v21];

              if (![v20 count])
              {
                [*(v1 + 72) removeObjectForKey:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v16);
        }

        v22 = *(v1 + 80);
        v23 = MEMORY[0x1E12E7560](v4);
        [v22 removeObject:v23];
      }

      else
      {
        [v13 removeAllObjects];
        [*(v1 + 80) removeAllObjects];
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (NRDevice)initWithQueue:(id)a3
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(NRDevice *)self initWithRegistry:v4 diff:0 pairingID:v5 notify:0];

  return v6;
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__NRDevice_setValue_forProperty___block_invoke;
  v12[3] = &unk_1E86DAEE8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = self;
  v9 = v7;
  v10 = v6;
  os_unfair_lock_lock_with_options();
  __33__NRDevice_setValue_forProperty___block_invoke(v12);
  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (BOOL)supportsCapability:(id)a3
{
  v4 = a3;
  v5 = [(NRDevice *)self valueForProperty:@"capabilities"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 hasUUID:v4];
  }

  else
  {
    v6 = [v5 containsObject:v4];
  }

  v7 = v6;

  return v7;
}

@end