@interface BRInterfaceLegacy
+ (id)interface;
- (BOOL)_disableState:(unint64_t)a3;
- (BOOL)_enableState:(unint64_t)a3;
- (BOOL)_servicesSetProperty:(void *)a3 forKey:(__CFString *)a4;
- (BOOL)_setConfig:(id)a3 forState:(unint64_t)a4 error:(id *)a5;
- (BOOL)_setDefaultServicePropertiesOnService:(__IOHIDServiceClient *)a3;
- (BOOL)disableStates:(id)a3 clearAsset:(BOOL)a4 error:(id *)a5;
- (BOOL)enableStates:(id)a3 error:(id *)a4;
- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6;
- (BRInterfaceLegacy)init;
- (id)description;
- (id)propertyList;
- (void)_findServices;
- (void)dealloc;
- (void)init;
- (void)propertyList;
- (void)scheduleReadyNotificationWithBlock:(id)a3;
- (void)serviceAddedHandler:(__IOHIDServiceClient *)a3;
- (void)serviceRemovedHandler:(__IOHIDServiceClient *)a3;
@end

@implementation BRInterfaceLegacy

- (BRInterfaceLegacy)init
{
  v6.receiver = self;
  v6.super_class = BRInterfaceLegacy;
  v2 = [(BRInterface *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxAssetSlots = -1;
    v2->_unusedAssetSlots = -1;
    v2->_isReady = 0;
    v2->_client = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_services = v4;
    if (v4)
    {
      v3->_block = 0;
      v3->_tapOnly = 0;
      v3->_doublePressTimeoutUs = 0;
      v3->_triplePressTimeoutUs = 0;
      v3->_doubleTapTimeoutUs = 0;
      v3->_tripleTapTimeoutUs = 0;
      v3->_longPressTimeoutUs = 0;
    }

    else
    {
      [(BRInterfaceLegacy *)v3 init];
      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  client = self->_client;
  if (client)
  {
    CFRelease(client);
  }

  v4.receiver = self;
  v4.super_class = BRInterfaceLegacy;
  [(BRInterface *)&v4 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRInterfaceLegacy;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRInterface description](&v5, sel_description)}];
  [v3 appendFormat:@"Services: %@;\n", self->_services];
  [v3 appendFormat:@"DoublePressTO: %lu;\n", self->_doublePressTimeoutUs];
  [v3 appendFormat:@"TriplePressTO: %lu;\n", self->_triplePressTimeoutUs];
  [v3 appendFormat:@"DoubleTapTO: %lu;\n", self->_doubleTapTimeoutUs];
  [v3 appendFormat:@"TripleTapTO: %lu;\n", self->_tripleTapTimeoutUs];
  [v3 appendFormat:@"LongPressTO: %lu;\n", self->_longPressTimeoutUs];
  return v3;
}

- (id)propertyList
{
  v7.receiver = self;
  v7.super_class = BRInterfaceLegacy;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[BRInterface propertyList](&v7, sel_propertyList)}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_doublePressTimeoutUs), @"DoublePressTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_triplePressTimeoutUs), @"TriplePressTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_doubleTapTimeoutUs), @"DoubleTapTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_tripleTapTimeoutUs), @"TripleTapTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_longPressTimeoutUs), @"LongPressTO"}];
  if (self->_tapOnly)
  {
    v4 = "Y";
  }

  else
  {
    v4 = "N";
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%s;", v4), @"TapOnly"}];
  v5 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceLegacy propertyList];
  }

  return v3;
}

+ (id)interface
{
  v2 = objc_alloc_init(BRInterfaceLegacy);

  return v2;
}

- (void)serviceAddedHandler:(__IOHIDServiceClient *)a3
{
  [(NSMutableArray *)self->_services addObject:?];
  IOHIDServiceClientRegisterRemovalCallback();
  [(BRInterfaceLegacy *)self _setDefaultServicePropertiesOnService:a3];
  if (!self->_isReady)
  {
    self->_isReady = 1;
    if (self->_block)
    {
      dispatch_async([(BRInterface *)self queue], self->_block);

      self->_block = 0;
    }

    else
    {
      [BRInterfaceLegacy serviceAddedHandler:];
    }
  }
}

- (void)serviceRemovedHandler:(__IOHIDServiceClient *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = self->_services;
  v6 = [(NSMutableArray *)services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(services);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if (CFEqual(v10, a3))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)services countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = _BRLog_log_1;
    if (!_BRLog_log_1)
    {
      v11 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_1 = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BRInterfaceLegacy *)v10 serviceRemovedHandler:v11];
    }

    [(NSMutableArray *)self->_services removeObject:v10];
  }

  else
  {
LABEL_16:
    v12 = _BRLog_log_1;
    if (!_BRLog_log_1)
    {
      v12 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_1 = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BRInterfaceLegacy *)a3 serviceRemovedHandler:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_servicesSetProperty:(void *)a3 forKey:(__CFString *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceLegacy _servicesSetProperty:forKey:];
  }

  v8 = [(BRInterface *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__BRInterfaceLegacy__servicesSetProperty_forKey___block_invoke;
  v11[3] = &unk_278D3F388;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = a4;
  v11[7] = a3;
  dispatch_sync(v8, v11);
  v9 = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __49__BRInterfaceLegacy__servicesSetProperty_forKey___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v7, *(a1 + 48), *(a1 + 56));
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          __49__BRInterfaceLegacy__servicesSetProperty_forKey___block_invoke_cold_1(v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setDefaultServicePropertiesOnService:(__IOHIDServiceClient *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_285468520 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_285468520);
        }

        if (!IOHIDServiceClientSetProperty(a3, *(*(&v10 + 1) + 8 * v7), &unk_285468060))
        {
          [(BRInterfaceLegacy *)a3 _setDefaultServicePropertiesOnService:?];
          result = v14;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_285468520 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6
{
  v16 = 0;
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  if ([a5 count])
  {
    v11 = 0;
    while (1)
    {
      if (a3)
      {
        v12 = [a3 objectAtIndexedSubscript:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = [objc_msgSend(a5 objectAtIndexedSubscript:{v11), "unsignedIntegerValue"}];
      if (v12 == [MEMORY[0x277CBEB68] null])
      {
        v12 = 0;
      }

      if (![(BRInterfaceLegacy *)self tapOnly]|| [BRInterfaceLegacy _isTapState:v13])
      {
        [(BRInterfaceLegacy *)self _setConfig:v12 forState:v13 error:&v16];
        v14 = v16;
        if (v16)
        {
          break;
        }
      }

      if (++v11 >= [a5 count])
      {
        v14 = v16;
        break;
      }
    }

    if (a6 && v14)
    {
      *a6 = v14;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return v16 == 0;
}

- (BOOL)enableStates:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v17 = a4;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ((!-[BRInterfaceLegacy tapOnly](self, "tapOnly") || +[BRInterfaceLegacy _isTapState:](BRInterfaceLegacy, "_isTapState:", [v12 unsignedIntegerValue])) && !-[BRInterfaceLegacy _enableState:](self, "_enableState:", objc_msgSend(v12, "unsignedIntegerValue")))
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870212 userInfo:0];
          v13 = v16 != 0;
          if (v17 && v16)
          {
            *v17 = v16;
            v13 = 1;
          }

          goto LABEL_12;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  v14 = *MEMORY[0x277D85DE8];
  return !v13;
}

- (BOOL)disableStates:(id)a3 clearAsset:(BOOL)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v18 = a5;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ((!-[BRInterfaceLegacy tapOnly](self, "tapOnly") || +[BRInterfaceLegacy _isTapState:](BRInterfaceLegacy, "_isTapState:", [v13 unsignedIntegerValue])) && !-[BRInterfaceLegacy _disableState:](self, "_disableState:", objc_msgSend(v13, "unsignedIntegerValue")))
        {
          v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870212 userInfo:0];
          v14 = v17 != 0;
          if (v18 && v17)
          {
            *v18 = v17;
            v14 = 1;
          }

          goto LABEL_12;
        }
      }

      v10 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  v15 = *MEMORY[0x277D85DE8];
  return !v14;
}

- (void)scheduleReadyNotificationWithBlock:(id)a3
{
  v5 = [(BRInterface *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__BRInterfaceLegacy_scheduleReadyNotificationWithBlock___block_invoke;
  v6[3] = &unk_278D3F360;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
  [(BRInterfaceLegacy *)self _findServices];
}

uint64_t __56__BRInterfaceLegacy_scheduleReadyNotificationWithBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 72) = result;
  return result;
}

- (BOOL)_setConfig:(id)a3 forState:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 objectForKeyedSubscript:@"MaxTime"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = 0;
  if ((isKindOfClass & 1) == 0)
  {
    v8 = 0;
  }

  if (a4 <= 5)
  {
    if (!a4)
    {
      v13 = *MEMORY[0x277CBED28];
      v14 = @"PressCountTrackingEnabled";
LABEL_23:
      if ([(BRInterfaceLegacy *)self _servicesSetProperty:v13 forKey:v14])
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }

    if (a4 != 2)
    {
      if (a4 != 4)
      {
        return !v10;
      }

      if (v8)
      {
        if ([(BRInterfaceLegacy *)self _servicesSetProperty:v8 forKey:@"PressCountTriplePressTimeout"])
        {
          v11 = [v8 unsignedIntegerValue];
          v10 = 0;
          v12 = 88;
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    if ([(BRInterfaceLegacy *)self _servicesSetProperty:v8 forKey:@"PressCountDoublePressTimeout"])
    {
      v11 = [v8 unsignedIntegerValue];
      v10 = 0;
      v12 = 80;
      goto LABEL_31;
    }
  }

  else
  {
    if (a4 <= 9)
    {
      if (a4 != 6)
      {
        if (a4 != 8)
        {
          return !v10;
        }

        if (v8)
        {
          if ([(BRInterfaceLegacy *)self _servicesSetProperty:v8 forKey:@"DoubleTapTimeout"])
          {
            v11 = [v8 unsignedIntegerValue];
            v10 = 0;
            v12 = 96;
LABEL_31:
            *(&self->super.super.isa + v12) = v11;
            return !v10;
          }

          goto LABEL_33;
        }

LABEL_24:
        v10 = 0;
        return !v10;
      }

      v13 = *MEMORY[0x277CBED28];
      v14 = @"TapTrackingEnabled";
      goto LABEL_23;
    }

    if (a4 == 10)
    {
      if (!v8)
      {
        goto LABEL_24;
      }

      if ([(BRInterfaceLegacy *)self _servicesSetProperty:v8 forKey:@"TripleTapTimeout"])
      {
        v11 = [v8 unsignedIntegerValue];
        v10 = 0;
        v12 = 104;
        goto LABEL_31;
      }
    }

    else
    {
      if (a4 != 14)
      {
        return !v10;
      }

      if (!v8)
      {
        goto LABEL_24;
      }

      if ([(BRInterfaceLegacy *)self _servicesSetProperty:v8 forKey:@"LongPressTimeout"])
      {
        v11 = [v8 unsignedIntegerValue];
        v10 = 0;
        v12 = 112;
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870199 userInfo:0];
  v10 = v16 != 0;
  if (a5 && v16)
  {
    *a5 = v16;
    v10 = 1;
  }

  return !v10;
}

- (BOOL)_enableState:(unint64_t)a3
{
  if (a3 <= 5)
  {
    if (!a3)
    {
      v4 = *MEMORY[0x277CBED28];
      v5 = @"PressCountTrackingEnabled";
      goto LABEL_22;
    }

    if (a3 == 2)
    {
      if (self->_doublePressTimeoutUs)
      {
        v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v5 = @"PressCountDoublePressTimeout";
        goto LABEL_22;
      }
    }

    else if (a3 == 4 && self->_triplePressTimeoutUs)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v5 = @"PressCountTriplePressTimeout";
      goto LABEL_22;
    }

    return 1;
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      if (self->_tripleTapTimeoutUs)
      {
        v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v5 = @"TripleTapTimeout";
        goto LABEL_22;
      }
    }

    else if (a3 == 14 && self->_longPressTimeoutUs)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v5 = @"LongPressTimeout";
      goto LABEL_22;
    }

    return 1;
  }

  if (a3 == 6)
  {
    v4 = *MEMORY[0x277CBED28];
    v5 = @"TapTrackingEnabled";
    goto LABEL_22;
  }

  if (a3 != 8 || !self->_doubleTapTimeoutUs)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v5 = @"DoubleTapTimeout";
LABEL_22:

  return [(BRInterfaceLegacy *)self _servicesSetProperty:v4 forKey:v5];
}

- (BOOL)_disableState:(unint64_t)a3
{
  if (a3 <= 5)
  {
    switch(a3)
    {
      case 0uLL:
        v3 = *MEMORY[0x277CBED10];
        v4 = @"PressCountTrackingEnabled";
        return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
      case 2uLL:
        v3 = &unk_285468078;
        v4 = @"PressCountDoublePressTimeout";
        return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
      case 4uLL:
        v3 = &unk_285468078;
        v4 = @"PressCountTriplePressTimeout";
        return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
    }
  }

  else if (a3 > 9)
  {
    if (a3 == 10)
    {
      v3 = &unk_285468078;
      v4 = @"TripleTapTimeout";
      return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
    }

    if (a3 == 14)
    {
      v3 = &unk_285468078;
      v4 = @"LongPressTimeout";
      return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
    }
  }

  else
  {
    if (a3 == 6)
    {
      v3 = *MEMORY[0x277CBED10];
      v4 = @"TapTrackingEnabled";
      return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
    }

    if (a3 == 8)
    {
      v3 = &unk_285468078;
      v4 = @"DoubleTapTimeout";
      return [(BRInterfaceLegacy *)self _servicesSetProperty:v3 forKey:v4];
    }
  }

  return 1;
}

- (void)_findServices
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = IOHIDEventSystemClientCreate();
  self->_client = v4;
  if (v4)
  {
    IOHIDEventSystemClientSetMatchingMultiple();
    v5 = [(BRInterface *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__BRInterfaceLegacy__findServices__block_invoke;
    block[3] = &unk_278D3F310;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __34__BRInterfaceLegacy__findServices__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[7];
  [v2 queue];
  IOHIDEventSystemClientScheduleWithDispatchQueue();
  v4 = *(*(a1 + 32) + 56);
  IOHIDEventSystemClientRegisterDeviceMatchingCallback();
  v5 = IOHIDEventSystemClientCopyServices(*(*(a1 + 32) + 56));
  v13 = v5;
  if (v5)
  {
    v14 = OUTLINED_FUNCTION_3_0(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v34, v36);
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v14 = serviceAddedCallback(v14, *(a1 + 32), *(v27 + 8 * v17++));
        }

        while (v15 != v17);
        v14 = OUTLINED_FUNCTION_3_0(v14, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v35, v37);
        v15 = v14;
      }

      while (v14);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[BRInterfaceLegacy init]";
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s failed!", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)propertyList
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_242149000, v0, v1, "%s %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceAddedHandler:.cold.1()
{
  v0 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v0 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_242149000, v0, OS_LOG_TYPE_ERROR, "Unexpected error: block is nil!", v1, 2u);
  }
}

- (void)serviceRemovedHandler:(__IOHIDServiceClient *)a1 .cold.1(__IOHIDServiceClient *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  RegistryID = IOHIDServiceClientGetRegistryID(a1);
  _os_log_debug_impl(&dword_242149000, a2, OS_LOG_TYPE_DEBUG, "service removed: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)serviceRemovedHandler:(__IOHIDServiceClient *)a1 .cold.2(__IOHIDServiceClient *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  RegistryID = IOHIDServiceClientGetRegistryID(a1);
  _os_log_error_impl(&dword_242149000, a2, OS_LOG_TYPE_ERROR, "No service removed for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_servicesSetProperty:forKey:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_debug_impl(&dword_242149000, v3, OS_LOG_TYPE_DEBUG, "%s property: %@ key: %@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __49__BRInterfaceLegacy__servicesSetProperty_forKey___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_0_1();
    v5 = a1;
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s error setting property on service %@", v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setDefaultServicePropertiesOnService:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v4 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_0_1();
    v7 = a1;
    _os_log_error_impl(&dword_242149000, v4, OS_LOG_TYPE_ERROR, "%s error setting default property on service %@", v6, 0x16u);
  }

  *a2 = 0;
  v5 = *MEMORY[0x277D85DE8];
}

@end