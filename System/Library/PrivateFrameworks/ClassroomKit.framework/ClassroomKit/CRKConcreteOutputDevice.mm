@interface CRKConcreteOutputDevice
+ (id)outputOptionsWithPassword:(id)a3 suppressPrompt:(BOOL)a4;
- (CRKConcreteOutputDevice)initWithOutputDevice:(id)a3 outputContext:(id)a4;
- (NSString)identifier;
- (void)displayToDeviceWithPassword:(id)a3 suppressPrompt:(BOOL)a4 completion:(id)a5;
@end

@implementation CRKConcreteOutputDevice

- (CRKConcreteOutputDevice)initWithOutputDevice:(id)a3 outputContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_outputDevice, a3);
    objc_storeStrong(&self->_outputContext, a4);
  }

  return self;
}

- (NSString)identifier
{
  v2 = [(CRKConcreteOutputDevice *)self outputDevice];
  v3 = [v2 deviceID];

  return v3;
}

- (void)displayToDeviceWithPassword:(id)a3 suppressPrompt:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [objc_opt_class() outputOptionsWithPassword:v8 suppressPrompt:v6];
  v11 = [(CRKConcreteOutputDevice *)self outputContext];
  v12 = [(CRKConcreteOutputDevice *)self outputDevice];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__CRKConcreteOutputDevice_displayToDeviceWithPassword_suppressPrompt_completion___block_invoke;
  v15[3] = &unk_278DC1E90;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v11 setOutputDevice:v12 options:v10 completionHandler:v15];
}

void __81__CRKConcreteOutputDevice_displayToDeviceWithPassword_suppressPrompt_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = extractErrorFromChange(a2, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

+ (id)outputOptionsWithPassword:(id)a3 suppressPrompt:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB8650]];

  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277CB8648]];
  v8 = [v6 copy];

  return v8;
}

@end