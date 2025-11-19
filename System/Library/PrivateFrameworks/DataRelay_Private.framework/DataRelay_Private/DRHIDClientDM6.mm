@interface DRHIDClientDM6
- (DRHIDClientDM6)init;
- (void)handleEvent:(id)a3 withService:(id)a4;
- (void)reset;
- (void)serviceAdded:(id)a3;
- (void)setReport:(id)a3;
@end

@implementation DRHIDClientDM6

- (DRHIDClientDM6)init
{
  v5.receiver = self;
  v5.super_class = DRHIDClientDM6;
  v2 = [(DRHIDClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DRHIDClientDM6 *)v2 reset];
  }

  return v3;
}

- (void)handleEvent:(id)a3 withService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1)
  {
    v8 = [v6 integerValueForField:65537];
    v9 = [v6 integerValueForField:0x10000];
    v10 = [v6 integerValueForField:65539];
    v11 = [v6 dataValueForField:65540];
    v12 = [MEMORY[0x277CBEB28] dataWithCapacity:v10 + 21];
    v13 = v12;
    if (v8 == 13 && v9 == 65292)
    {
      v20 = 1;
      [v12 appendBytes:&v20 length:1];
      v14 = [(DRHIDClient *)self getSensorTime:v6];
      if (!v14)
      {
        if (gLogCategory_DRHIDClientDM6 <= 90 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
        {
          [DRHIDClientDM6 handleEvent:withService:];
        }

        goto LABEL_10;
      }

      v15 = v14;
      v12 = v13;
      v16 = 20;
    }

    else
    {
      if (v8 != 14 || v9 != 65292)
      {
        goto LABEL_10;
      }

      v19 = 2;
      v15 = &v19;
      v16 = 1;
    }

    [v12 appendBytes:v15 length:v16];
    [v13 appendBytes:v11 length:v10];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 setObject:v13 forKey:@"data"];
    v18 = [(DRHIDClient *)self dataHandler];
    (v18)[2](v18, 1, [v7 serviceID], 2, v17);

LABEL_10:
  }
}

- (void)serviceAdded:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogCategory_DRHIDClientDM6 <= 50 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientDM6 serviceAdded:v4];
  }

  v17 = self;
  v22.receiver = self;
  v22.super_class = DRHIDClientDM6;
  [(DRHIDClient *)&v22 serviceAdded:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&wxDM6Descriptor length:99];
  [v5 setObject:v6 forKey:@"ReportDescriptor"];

  [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0EF10]];
  [v5 setObject:&unk_285B1C948 forKey:@"ReportInterval"];
  [v5 setObject:@"Virtual" forKey:@"Transport"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [&unk_285B1CA38 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(&unk_285B1CA38);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [v4 propertyForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }

        else if (gLogCategory_DRHIDClientDM6 <= 90 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
        {
          [DRHIDClientDM6 serviceAdded:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v13 = [&unk_285B1CA38 countByEnumeratingWithState:&v18 objects:v23 count:16];
      v8 = v13;
    }

    while (v13);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:v5 forKeyedSubscript:@"properties"];
  v15 = [(DRHIDClient *)v17 dataHandler];
  (v15)[2](v15, 1, [v4 serviceID], 0, v14);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setReport:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"serviceID"];
  if (!v5)
  {
LABEL_18:
    if (gLogCategory_DRHIDClientDM6 <= 30 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClientDM6 setReport:];
    }

    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"type"];
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v4 objectForKeyedSubscript:@"reportID"];
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"report"];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [v4 objectForKeyedSubscript:@"type"];
  v13 = [v12 integerValue];

  if (gLogCategory_DRHIDClientDM6 <= 30 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientDM6 setReport:v4];
  }

  if (v13 == 2)
  {
    v14 = [v4 objectForKeyedSubscript:@"reportID"];
    v15 = [v14 integerValue];

    v16 = [v4 objectForKeyedSubscript:@"serviceID"];
    v17 = [v4 objectForKeyedSubscript:@"report"];
    v18 = v17;
    switch(v15)
    {
      case 4:
        v23 = 0;
        [v17 getBytes:&v23 length:4];
        v19 = [(DRHIDClient *)self HIDServices];
        v20 = [v19 objectForKey:v16];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
        v22 = @"MaxFIFOEvents";
        break;
      case 2:
        v24 = 0;
        [v17 getBytes:&v24 length:4];
        v19 = [(DRHIDClient *)self HIDServices];
        v20 = [v19 objectForKey:v16];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
        v22 = @"BatchInterval";
        break;
      case 1:
        v25 = 0;
        [v17 getBytes:&v25 range:{1, 4}];
        if (gLogCategory_DRHIDClientDM6 <= 30 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
        {
          [DRHIDClientDM6 setReport:?];
        }

        v19 = [(DRHIDClient *)self HIDServices];
        v20 = [v19 objectForKey:v16];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v25];
        v22 = @"ReportInterval";
        break;
      default:
LABEL_26:

        goto LABEL_21;
    }

    [v20 setProperty:v21 forKey:v22];

    goto LABEL_26;
  }

LABEL_21:
}

- (void)reset
{
  if (gLogCategory_DRHIDClientDM6 <= 50 && (gLogCategory_DRHIDClientDM6 != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientDM6 reset];
  }

  v4.receiver = self;
  v4.super_class = DRHIDClientDM6;
  [(DRHIDClient *)&v4 reset];
  v3 = [(DRHIDClient *)self HIDClient];
  [v3 setMatching:&unk_285B1CA98];
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