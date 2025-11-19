@interface DTXService
+ (void)instantiateServiceWithChannel:(id)a3;
- (DTXService)initWithChannel:(id)a3;
@end

@implementation DTXService

+ (void)instantiateServiceWithChannel:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithChannel_(v5, v6, v4);
}

- (DTXService)initWithChannel:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DTXService;
  v6 = [(DTXService *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247F3E0E4;
    v12[3] = &unk_278EEE5C8;
    v8 = v6;
    v13 = v8;
    objc_msgSend_setMessageHandler_(v5, v9, v12);
    objc_msgSend_setDispatchTarget_(v5, v10, v8);
    objc_storeStrong(v8 + 1, a3);
  }

  return v7;
}

@end