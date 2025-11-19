@interface DRHIDClient
- ($ED4A0B18993299B00AEB513B70343C82)getSensorTime:(id)a3;
- (DRHIDClient)initWithClientType:(int64_t)a3;
- (void)activate;
- (void)dealloc;
- (void)handleEvent:(id)a3 withService:(id)a4;
- (void)invalidate;
- (void)reset;
- (void)routedWxDeviceChanged:(id)a3;
- (void)serviceAdded:(id)a3;
- (void)serviceRemoved:(id)a3 resetReportInterval:(BOOL)a4;
@end

@implementation DRHIDClient

- (DRHIDClient)initWithClientType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = DRHIDClient;
  v4 = [(DRHIDClient *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] data];
    wxRoute = v4->_wxRoute;
    v4->_wxRoute = v5;

    v4->_clientType = a3;
  }

  return v4;
}

- (void)activate
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "serviceID")}];
  LogPrintF();
}

void __23__DRHIDClient_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained serviceRemoved:v2 resetReportInterval:0];
}

void __23__DRHIDClient_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained HIDServices];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "serviceID")}];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    if (gLogCategory_DRHIDClient <= 90 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      __23__DRHIDClient_activate__block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    objc_initWeak(&location, v3);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __23__DRHIDClient_activate__block_invoke_3;
    v17[3] = &unk_278F4EAD0;
    objc_copyWeak(&v18, (a1 + 32));
    objc_copyWeak(&v19, &location);
    [v3 setRemovalHandler:v17];
    v8 = [v3 propertyForKey:@"BT_ADDR"];
    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 wxRoute];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v3 propertyForKey:@"BT_ADDR"];
        v13 = objc_loadWeakRetained((a1 + 32));
        v14 = [v13 wxRoute];
        v15 = [v12 isEqual:v14];

        if (v15)
        {
          v16 = objc_loadWeakRetained((a1 + 32));
          [v16 serviceAdded:v3];
        }
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __23__DRHIDClient_activate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained serviceRemoved:v2 resetReportInterval:0];
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isActivated)
  {
    if (gLogCategory_DRHIDClient <= 50 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClient invalidate];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(HIDEventSystemClient *)self->_HIDClient services];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(DRHIDClient *)self serviceRemoved:*(*(&v10 + 1) + 8 * i) resetReportInterval:1];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    HIDClient = self->_HIDClient;
    if (HIDClient)
    {
      [(HIDEventSystemClient *)HIDClient cancel];
    }

    [(DRHIDClient *)self reset];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self->_isActivated)
  {
    HIDClient = self->_HIDClient;
    if (HIDClient)
    {
      [(HIDEventSystemClient *)HIDClient cancel];
    }
  }

  v4.receiver = self;
  v4.super_class = DRHIDClient;
  [(DRHIDClient *)&v4 dealloc];
}

- (void)handleEvent:(id)a3 withService:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"subclasses must override the implementation of this" userInfo:0];
  objc_exception_throw(v7);
}

- ($ED4A0B18993299B00AEB513B70343C82)getSensorTime:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 children];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 type] == 1 && objc_msgSend(v9, "integerValueForField:", 0x10000) == 65301 && objc_msgSend(v9, "integerValueForField:", 65537) == 290)
          {
            if ([v9 integerValueForField:65539] == 20)
            {
              v6 = [v9 dataValueForField:65540];
            }

            else
            {
              v6 = 0;
            }

            goto LABEL_17;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)serviceAdded:(id)a3
{
  v9 = a3;
  v4 = [(DRHIDClient *)self HIDServices];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "serviceID")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (gLogCategory_DRHIDClient <= 90 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClient serviceAdded:];
    }
  }

  else
  {
    v7 = [(DRHIDClient *)self HIDServices];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "serviceID")}];
    [v7 setObject:v9 forKey:v8];
  }
}

- (void)serviceRemoved:(id)a3 resetReportInterval:(BOOL)a4
{
  v5 = a3;
  v9 = [(DRHIDClient *)self HIDServices];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v5 serviceID];

  v8 = [v6 numberWithUnsignedLongLong:v7];
  [v9 removeObjectForKey:v8];
}

- (void)reset
{
  v3 = [objc_alloc(MEMORY[0x277D0EEF0]) initWithType:self->_clientType];
  HIDClient = self->_HIDClient;
  self->_HIDClient = v3;

  objc_initWeak(&location, self);
  v5 = self->_HIDClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __20__DRHIDClient_reset__block_invoke;
  v11[3] = &unk_278F4EB20;
  objc_copyWeak(&v12, &location);
  [(HIDEventSystemClient *)v5 setEventHandler:v11];
  v6 = self->_HIDClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__DRHIDClient_reset__block_invoke_2;
  v9[3] = &unk_278F4E780;
  objc_copyWeak(&v10, &location);
  [(HIDEventSystemClient *)v6 setCancelHandler:v9];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  HIDServices = self->_HIDServices;
  self->_HIDServices = v7;

  self->_isActivated = 0;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __20__DRHIDClient_reset__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEvent:v5 withService:v6];
}

void __20__DRHIDClient_reset__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHIDClient:0];
}

- (void)routedWxDeviceChanged:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogCategory_DRHIDClient <= 50 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClient routedWxDeviceChanged:];
  }

  objc_storeStrong(&self->_wxRoute, a3);
  HIDServices = self->_HIDServices;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __37__DRHIDClient_routedWxDeviceChanged___block_invoke;
  v21[3] = &unk_278F4E958;
  v21[4] = self;
  [(NSMutableDictionary *)HIDServices enumerateKeysAndObjectsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(HIDEventSystemClient *)self->_HIDClient services];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (![(NSData *)self->_wxRoute length])
      {
        break;
      }

      v13 = [v12 propertyForKey:@"BT_ADDR"];

      if (v13)
      {
        v14 = [v12 propertyForKey:@"BT_ADDR"];
        v15 = [v14 isEqual:self->_wxRoute];

        if (v15)
        {
          [(DRHIDClient *)self serviceAdded:v12];
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __37__DRHIDClient_routedWxDeviceChanged___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 propertyForKey:@"BT_ADDR"];

  v5 = *(a1 + 32);
  if (!v4)
  {
    v10 = v12;
    goto LABEL_6;
  }

  v6 = [v5[5] length];
  v7 = v12;
  if (!v6 || ([v12 propertyForKey:@"BT_ADDR"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *(*(a1 + 32) + 40)), v8, v7 = v12, (v9 & 1) == 0))
  {
    v5 = *(a1 + 32);
    v10 = v7;
LABEL_6:
    [v5 serviceRemoved:v10 resetReportInterval:1];
  }

  return MEMORY[0x2821F96F8]();
}

void __23__DRHIDClient_activate__block_invoke_2_cold_1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "serviceID")}];
  LogPrintF();
}

@end