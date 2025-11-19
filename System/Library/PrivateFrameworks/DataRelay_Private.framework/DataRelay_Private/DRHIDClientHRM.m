@interface DRHIDClientHRM
- (DRHIDClientHRM)init;
- (unsigned)getHeartRateFlags:(id)a3;
- (void)handleEvent:(id)a3 withService:(id)a4;
- (void)reset;
- (void)serviceAdded:(id)a3;
- (void)setReport:(id)a3;
@end

@implementation DRHIDClientHRM

- (DRHIDClientHRM)init
{
  v5.receiver = self;
  v5.super_class = DRHIDClientHRM;
  v2 = [(DRHIDClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DRHIDClientHRM *)v2 reset];
  }

  return v3;
}

- (unsigned)getHeartRateFlags:(id)a3
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
          if ([v9 type] == 1 && objc_msgSend(v9, "integerValueForField:", 0x10000) == 65290 && objc_msgSend(v9, "integerValueForField:", 65537) == 18)
          {
            if ([v9 integerValueForField:65539] == 4)
            {
              v6 = [v9 dataValueForField:65540];
            }

            else
            {
              if (gLogCategory_DRHIDClientHRM <= 90 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
              {
                [DRHIDClientHRM getHeartRateFlags:];
              }

              v6 = 0;
            }

            goto LABEL_20;
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

LABEL_20:
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)handleEvent:(id)a3 withService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 43)
  {
    v8 = [(DRHIDClient *)self getSensorTime:v6];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 integerValueForField:2818048];
      [v6 doubleValueForField:2818049];
      v12 = v11;
      v13 = [v6 integerValueForField:2818051];
      v14 = [v6 integerValueForField:2818050];
      v15 = [(DRHIDClientHRM *)self getHeartRateFlags:v6];
      if (v15)
      {
        v20[0] = 1;
        v20[1] = v10;
        v20[2] = llround(v12 * 255.0);
        v21 = v13;
        v22 = v14;
        v16 = *&v9->var0;
        var3 = v9->var3;
        v23 = v16;
        v25 = *v15;
        v17 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:30];
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v18 setObject:v17 forKey:@"data"];
        v19 = [(DRHIDClient *)self dataHandler];
        (v19)[2](v19, 2, [v7 serviceID], 2, v18);
      }

      else if (gLogCategory_DRHIDClientHRM <= 90 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
      {
        [DRHIDClientHRM handleEvent:withService:];
      }
    }
  }
}

- (void)serviceAdded:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogCategory_DRHIDClientHRM <= 50 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientHRM serviceAdded:v4];
  }

  v17 = self;
  v22.receiver = self;
  v22.super_class = DRHIDClientHRM;
  [(DRHIDClient *)&v22 serviceAdded:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&wxHRMDescriptor length:127];
  [v5 setObject:v6 forKey:@"ReportDescriptor"];

  [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0EF10]];
  [v5 setObject:&unk_285B1C9D8 forKey:@"ReportInterval"];
  [v5 setObject:@"Virtual" forKey:@"Transport"];
  [v5 setObject:&unk_285B1CA50 forKey:@"HIDServiceAccessEntitlement"];
  [v5 setObject:&unk_285B1CA68 forKey:@"HIDDeviceAccessEntitlement"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [&unk_285B1CA80 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(&unk_285B1CA80);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [v4 propertyForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }

        else if (gLogCategory_DRHIDClientHRM <= 90 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
        {
          [DRHIDClientHRM serviceAdded:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v13 = [&unk_285B1CA80 countByEnumeratingWithState:&v18 objects:v23 count:16];
      v8 = v13;
    }

    while (v13);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:v5 forKeyedSubscript:@"properties"];
  v15 = [(DRHIDClient *)v17 dataHandler];
  (v15)[2](v15, 2, [v4 serviceID], 0, v14);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setReport:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"serviceID"];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"type"];
  if (!v7)
  {
LABEL_16:

    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v4 objectForKeyedSubscript:@"reportID"];
  if (!v9)
  {

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"report"];

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"type"];
    v13 = [v12 integerValue];

    if (gLogCategory_DRHIDClientHRM <= 30 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClientHRM setReport:v4];
    }

    if (v13 == 2)
    {
      v14 = [v4 objectForKeyedSubscript:@"reportID"];
      v15 = [v14 integerValue];

      v16 = [v4 objectForKeyedSubscript:@"serviceID"];
      v17 = [v4 objectForKeyedSubscript:@"report"];
      v18 = v17;
      if (v15 == 1)
      {
        memset(v22, 0, 5);
        [v17 getBytes:v22 length:5];
        if (gLogCategory_DRHIDClientHRM <= 30 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
        {
          [DRHIDClientHRM setReport:v22];
        }

        v19 = [(DRHIDClient *)self HIDServices];
        v20 = [v19 objectForKey:v16];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v22 + 1)];
        [v20 setProperty:v21 forKey:@"ReportInterval"];
      }
    }

    goto LABEL_20;
  }

LABEL_17:
  if (gLogCategory_DRHIDClientHRM <= 30 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientHRM setReport:];
  }

LABEL_20:
}

- (void)reset
{
  if (gLogCategory_DRHIDClientHRM <= 50 && (gLogCategory_DRHIDClientHRM != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientHRM reset];
  }

  v4.receiver = self;
  v4.super_class = DRHIDClientHRM;
  [(DRHIDClient *)&v4 reset];
  v3 = [(DRHIDClient *)self HIDClient];
  [v3 setMatching:&unk_285B1CAE8];
}

- (void)serviceAdded:(void *)a1 .cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "serviceID")}];
  LogPrintF();
}

- (void)serviceAdded:(void *)a1 .cold.2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "serviceID")}];
  LogPrintF();
}

- (void)setReport:(void *)a1 .cold.1(void *a1)
{
  v3 = [a1 objectForKeyedSubscript:@"type"];
  [v3 integerValue];
  v2 = [a1 objectForKeyedSubscript:@"reportID"];
  [v2 integerValue];
  LogPrintF();
}

@end