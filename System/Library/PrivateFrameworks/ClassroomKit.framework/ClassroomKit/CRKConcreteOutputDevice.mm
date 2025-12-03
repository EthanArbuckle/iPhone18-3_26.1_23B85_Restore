@interface CRKConcreteOutputDevice
+ (id)outputOptionsWithPassword:(id)password suppressPrompt:(BOOL)prompt;
- (CRKConcreteOutputDevice)initWithOutputDevice:(id)device outputContext:(id)context;
- (NSString)identifier;
- (void)displayToDeviceWithPassword:(id)password suppressPrompt:(BOOL)prompt completion:(id)completion;
@end

@implementation CRKConcreteOutputDevice

- (CRKConcreteOutputDevice)initWithOutputDevice:(id)device outputContext:(id)context
{
  deviceCopy = device;
  contextCopy = context;
  if (self)
  {
    objc_storeStrong(&self->_outputDevice, device);
    objc_storeStrong(&self->_outputContext, context);
  }

  return self;
}

- (NSString)identifier
{
  outputDevice = [(CRKConcreteOutputDevice *)self outputDevice];
  deviceID = [outputDevice deviceID];

  return deviceID;
}

- (void)displayToDeviceWithPassword:(id)password suppressPrompt:(BOOL)prompt completion:(id)completion
{
  promptCopy = prompt;
  passwordCopy = password;
  completionCopy = completion;
  v10 = [objc_opt_class() outputOptionsWithPassword:passwordCopy suppressPrompt:promptCopy];
  outputContext = [(CRKConcreteOutputDevice *)self outputContext];
  outputDevice = [(CRKConcreteOutputDevice *)self outputDevice];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__CRKConcreteOutputDevice_displayToDeviceWithPassword_suppressPrompt_completion___block_invoke;
  v15[3] = &unk_278DC1E90;
  v16 = passwordCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = passwordCopy;
  [outputContext setOutputDevice:outputDevice options:v10 completionHandler:v15];
}

void __81__CRKConcreteOutputDevice_displayToDeviceWithPassword_suppressPrompt_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = extractErrorFromChange(a2, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

+ (id)outputOptionsWithPassword:(id)password suppressPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  passwordCopy = password;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithBool:promptCopy];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB8650]];

  [v6 setObject:passwordCopy forKeyedSubscript:*MEMORY[0x277CB8648]];
  v8 = [v6 copy];

  return v8;
}

@end