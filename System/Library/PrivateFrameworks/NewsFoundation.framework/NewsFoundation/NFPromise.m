@interface NFPromise
+ (NFPromise)new;
+ (id)asDelay:(double)a3 onQueue:(id)a4 withError:(id)a5;
+ (id)asDelay:(double)a3 onQueue:(id)a4 withValue:(id)a5;
+ (id)asVoid;
+ (id)asVoid:(id)a3;
- (NFPromise)init;
- (NFPromise)initWithError:(id)a3;
- (NFPromise)initWithResolver:(id)a3;
- (NFPromise)initWithValue:(id)a3;
- (id)alwaysOn:(id)a3 always:(id)a4;
- (id)delay;
- (id)delayOn;
- (id)error;
- (id)errorOn;
- (id)errorOn:(id)a3 error:(id)a4;
- (id)pipe;
- (id)pipeOn;
- (id)resolve;
- (id)resolveOn;
- (id)then;
- (id)thenOn;
- (id)thenOn:(id)a3 then:(id)a4;
- (id)timeoutAfter:(double)a3;
- (id)timeoutAfter:(double)a3 on:(id)a4;
- (void)dealloc;
@end

@implementation NFPromise

+ (id)asVoid
{
  v2 = [NFPromise alloc];
  v3 = objc_opt_new();
  v4 = [(NFPromise *)v2 initWithValue:v3];

  return v4;
}

- (void)dealloc
{
  [(NFPromise *)self setSeal:0];
  v3.receiver = self;
  v3.super_class = NFPromise;
  [(NFPromise *)&v3 dealloc];
}

- (id)thenOn
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__NFPromise_thenOn__block_invoke;
  v4[3] = &unk_27997DBE8;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

- (NFPromise)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NFPromise init]";
    v10 = 2080;
    v11 = "NFPromise.m";
    v12 = 1024;
    v13 = 56;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BED3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NFPromise init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NFPromise)initWithResolver:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFPromise;
  v5 = [(NFPromise *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(NFPromiseSeal);
    seal = v5->_seal;
    v5->_seal = v6;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__NFPromise_initWithResolver___block_invoke;
    v11[3] = &unk_27997DAD8;
    v12 = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__NFPromise_initWithResolver___block_invoke_2;
    v9[3] = &unk_27997DB00;
    v10 = v12;
    (*(v4 + 2))(v4, v11, v9);
  }

  return v5;
}

void __30__NFPromise_initWithResolver___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seal];
  [v4 resolve:v3];
}

void __30__NFPromise_initWithResolver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seal];
  [v4 reject:v3];
}

- (NFPromise)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFPromise;
  v5 = [(NFPromise *)&v9 init];
  if (v5)
  {
    v6 = [[NFPromiseSeal alloc] initWithValue:v4];
    seal = v5->_seal;
    v5->_seal = v6;
  }

  return v5;
}

+ (NFPromise)new
{
  v2 = [a1 alloc];

  return [v2 initWithValue:0];
}

- (NFPromise)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFPromise;
  v5 = [(NFPromise *)&v9 init];
  if (v5)
  {
    v6 = [[NFPromiseSeal alloc] initWithError:v4];
    seal = v5->_seal;
    v5->_seal = v6;
  }

  return v5;
}

- (id)thenOn:(id)a3 then:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NFPromise alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __25__NFPromise_thenOn_then___block_invoke;
  v13[3] = &unk_27997DB78;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(NFPromise *)v8 initWithResolver:v13];

  return v11;
}

void __25__NFPromise_thenOn_then___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] seal];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __25__NFPromise_thenOn_then___block_invoke_2;
  v11[3] = &unk_27997DB50;
  v8 = a1[5];
  v13 = a1[6];
  v12 = a1[5];
  v14 = v6;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  [v7 resolveOn:v8 reject:v10 resolve:v11];
}

void __25__NFPromise_thenOn_then___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = v4) != 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__NFPromise_thenOn_then___block_invoke_3;
    v8[3] = &unk_27997DB28;
    v6 = v5;
    v9 = v6;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    __25__NFPromise_thenOn_then___block_invoke_3(v8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v7);
  }
}

void __25__NFPromise_thenOn_then___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) seal];
  [v2 resolveOn:*(a1 + 40) reject:*(a1 + 48) resolve:*(a1 + 56)];
}

- (id)errorOn:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NFPromise *)self seal];
  [v8 resolveOn:v7 reject:v6 resolve:&__block_literal_global_24];

  return self;
}

- (id)alwaysOn:(id)a3 always:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NFPromise *)self seal];
  [v8 alwaysOn:v7 always:v6];

  return self;
}

- (id)then
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __17__NFPromise_then__block_invoke;
  v4[3] = &unk_27997DBC0;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

- (id)pipe
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __17__NFPromise_pipe__block_invoke;
  v4[3] = &unk_27997DC38;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __17__NFPromise_pipe__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __17__NFPromise_pipe__block_invoke_2;
  v8[3] = &unk_27997DC10;
  v9 = v3;
  v5 = v3;
  v6 = [v4 then:v8];

  return v6;
}

- (id)pipeOn
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__NFPromise_pipeOn__block_invoke;
  v4[3] = &unk_27997DC60;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __19__NFPromise_pipeOn__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __19__NFPromise_pipeOn__block_invoke_2;
  v10[3] = &unk_27997DC10;
  v11 = v5;
  v7 = v5;
  v8 = [v6 thenOn:a2 then:v10];

  return v8;
}

- (id)error
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__NFPromise_error__block_invoke;
  v4[3] = &unk_27997DC88;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __18__NFPromise_error__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = zalgoIfMain();
  v5 = [v2 errorOn:v4 error:v3];

  return v5;
}

- (id)errorOn
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__NFPromise_errorOn__block_invoke;
  v4[3] = &unk_27997DCB0;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

- (id)resolve
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__NFPromise_resolve__block_invoke;
  v4[3] = &unk_27997DD28;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __20__NFPromise_resolve__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __20__NFPromise_resolve__block_invoke_2;
  v8[3] = &unk_27997DD00;
  v9 = v3;
  v5 = v3;
  v6 = [v4 then:v8];

  return v6;
}

NFPromise *__20__NFPromise_resolve__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NFPromise alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__NFPromise_resolve__block_invoke_3;
  v9[3] = &unk_27997DCD8;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [(NFPromise *)v4 initWithResolver:v9];

  return v7;
}

- (id)resolveOn
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__NFPromise_resolveOn__block_invoke;
  v4[3] = &unk_27997DD50;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __22__NFPromise_resolveOn__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__NFPromise_resolveOn__block_invoke_2;
  v10[3] = &unk_27997DD00;
  v11 = v5;
  v7 = v5;
  v8 = [v6 thenOn:a2 then:v10];

  return v8;
}

NFPromise *__22__NFPromise_resolveOn__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NFPromise alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __22__NFPromise_resolveOn__block_invoke_3;
  v9[3] = &unk_27997DCD8;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [(NFPromise *)v4 initWithResolver:v9];

  return v7;
}

- (id)delay
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__NFPromise_delay__block_invoke;
  v4[3] = &unk_27997DD98;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __18__NFPromise_delay__block_invoke(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__NFPromise_delay__block_invoke_2;
  v5[3] = &__block_descriptor_40_e8__16__0_8l;
  *&v5[4] = a2;
  v3 = [v2 then:v5];

  return v3;
}

- (id)delayOn
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__NFPromise_delayOn__block_invoke;
  v4[3] = &unk_27997DDE8;
  v4[4] = self;
  v2 = MEMORY[0x25F880B10](v4, a2);

  return v2;
}

id __20__NFPromise_delayOn__block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __20__NFPromise_delayOn__block_invoke_2;
  v10[3] = &unk_27997DDC0;
  v12 = a3;
  v11 = v5;
  v7 = v5;
  v8 = [v6 thenOn:v7 then:v10];

  return v8;
}

+ (id)asVoid:(id)a3
{
  v3 = a3;
  v4 = [[NFPromise alloc] initWithError:v3];

  return v4;
}

+ (id)asDelay:(double)a3 onQueue:(id)a4 withValue:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [NFPromise alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NFPromise_Delay__asDelay_onQueue_withValue___block_invoke;
  v14[3] = &unk_27997DE38;
  v17 = a3;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [(NFPromise *)v9 initWithResolver:v14];

  return v12;
}

void __46__NFPromise_Delay__asDelay_onQueue_withValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__NFPromise_Delay__asDelay_onQueue_withValue___block_invoke_2;
  v7[3] = &unk_27997DE10;
  v9 = v3;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = v3;
  dispatch_after(v4, v5, v7);
}

+ (id)asDelay:(double)a3 onQueue:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [NFPromise alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NFPromise_Delay__asDelay_onQueue_withError___block_invoke;
  v14[3] = &unk_27997DE38;
  v17 = a3;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [(NFPromise *)v9 initWithResolver:v14];

  return v12;
}

void __46__NFPromise_Delay__asDelay_onQueue_withError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NFPromise_Delay__asDelay_onQueue_withError___block_invoke_2;
  v8[3] = &unk_27997DE10;
  v10 = v4;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = v4;
  dispatch_after(v5, v6, v8);
}

- (id)timeoutAfter:(double)a3
{
  v5 = zalgo();
  v6 = [(NFPromise *)self timeoutAfter:v5 on:a3];

  return v6;
}

- (id)timeoutAfter:(double)a3 on:(id)a4
{
  v6 = a4;
  v7 = [NFPromise alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke;
  v11[3] = &unk_27997DE38;
  v11[4] = self;
  v12 = v6;
  v13 = a3;
  v8 = v6;
  v9 = [(NFPromise *)v7 initWithResolver:v11];

  return v9;
}

void __38__NFPromise_Timeout__timeoutAfter_on___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v7 = [[NFUnfairLock alloc] initWithOptions:1];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_2;
  v40[3] = &unk_27997DF30;
  v8 = v7;
  v41 = v8;
  v42 = v43;
  v9 = MEMORY[0x25F880B10](v40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_4;
  v37[3] = &unk_27997DF58;
  v12 = v9;
  v38 = v12;
  v13 = v5;
  v39 = v13;
  v14 = [v10 thenOn:v11 then:v37];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_6;
  v34[3] = &unk_27997DF80;
  v17 = v12;
  v35 = v17;
  v18 = v6;
  v36 = v18;
  v19 = [v15 errorOn:v16 error:v34];
  v20 = *(a1 + 40);
  v21 = *(a1 + 40);
  v22 = zalgo();
  v23 = v22;
  if (v21 == v22)
  {

LABEL_5:
    v26 = qos_class_self();
    v27 = dispatch_get_global_queue(v26, 0);

    v20 = v27;
    goto LABEL_6;
  }

  v24 = *(a1 + 40);
  v25 = zalgoIfMain();

  if (v24 == v25)
  {
    goto LABEL_5;
  }

LABEL_6:
  v28 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_8;
  v31[3] = &unk_27997DFA8;
  v32 = v17;
  v33 = v18;
  v29 = v18;
  v30 = v17;
  dispatch_after(v28, v20, v31);

  _Block_object_dispose(v43, 8);
}

void __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_3;
  v7[3] = &unk_27997DF08;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performWithLockSync:v7];
}

uint64_t __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_3(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

id __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_5;
  v9[3] = &unk_27997DE10;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = v3;
  v10 = v5;
  (*(v4 + 16))(v4, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_7;
  v8[3] = &unk_27997DE10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(v4 + 16);
  v7 = v3;
  v6(v4, v8);
}

void __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_8(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_9;
  v2[3] = &unk_27997DE88;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

void __38__NFPromise_Timeout__timeoutAfter_on___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v3 = [v2 initWithDomain:kNFPromiseErrorDomain code:kNFPromiseTimeoutErrorCode userInfo:MEMORY[0x277CBEC10]];
  (*(v1 + 16))(v1, v3);
}

@end