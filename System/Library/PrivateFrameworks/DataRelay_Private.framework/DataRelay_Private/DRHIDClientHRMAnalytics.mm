@interface DRHIDClientHRMAnalytics
- (DRHIDClientHRMAnalytics)init;
- (void)handleEvent:(id)a3 withService:(id)a4;
- (void)reset;
@end

@implementation DRHIDClientHRMAnalytics

- (DRHIDClientHRMAnalytics)init
{
  v5.receiver = self;
  v5.super_class = DRHIDClientHRMAnalytics;
  v2 = [(DRHIDClient *)&v5 initWithClientType:1];
  v3 = v2;
  if (v2)
  {
    [(DRHIDClientHRMAnalytics *)v2 reset];
  }

  return v3;
}

- (void)handleEvent:(id)a3 withService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1 && objc_msgSend(v6, "integerValueForField:", 0x10000) == 65290 && objc_msgSend(v6, "integerValueForField:", 65537) == 19)
  {
    v8 = [v6 integerValueForField:65539];
    v9 = [MEMORY[0x277CBEB28] dataWithCapacity:v8 + 1];
    v12 = 2;
    [v9 appendBytes:&v12 length:1];
    [v9 appendBytes:objc_msgSend(v6 length:{"dataValueForField:", 65540), v8}];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:v9 forKey:@"data"];
    v11 = [(DRHIDClient *)self dataHandler];
    (v11)[2](v11, 2, [v7 serviceID], 2, v10);
  }
}

- (void)reset
{
  if (gLogCategory_DRHIDClientHRMAnalytics <= 50 && (gLogCategory_DRHIDClientHRMAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClientHRMAnalytics reset];
  }

  v4.receiver = self;
  v4.super_class = DRHIDClientHRMAnalytics;
  [(DRHIDClient *)&v4 reset];
  v3 = [(DRHIDClient *)self HIDClient];
  [v3 setMatching:&unk_285B1CAC0];
}

@end