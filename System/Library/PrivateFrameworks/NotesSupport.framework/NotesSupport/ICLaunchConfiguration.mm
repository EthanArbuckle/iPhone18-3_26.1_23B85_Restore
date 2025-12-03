@interface ICLaunchConfiguration
+ (ICLaunchConfiguration)currentConfiguration;
+ (ICLaunchConfiguration)userInterfaceTesting;
+ (id)nonDefaultValueForValue:(id)value;
- (ICLaunchConfiguration)initWithDictionary:(id)dictionary;
- (ICLaunchConfiguration)initWithEnvironment:(unint64_t)environment container:(id)container resetsContainer:(BOOL)resetsContainer resetsCloud:(BOOL)cloud resetsState:(BOOL)state localAccountArchive:(id)archive cloudAccountArchive:(id)accountArchive;
- (NSArray)launchArguments;
@end

@implementation ICLaunchConfiguration

+ (ICLaunchConfiguration)currentConfiguration
{
  if (currentConfiguration_onceToken != -1)
  {
    +[ICLaunchConfiguration currentConfiguration];
  }

  v3 = currentConfiguration_s_currentConfiguration;

  return v3;
}

void __45__ICLaunchConfiguration_currentConfiguration__block_invoke()
{
  v0 = [ICLaunchConfiguration alloc];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v4 dictionaryRepresentation];
  v2 = [(ICLaunchConfiguration *)v0 initWithDictionary:v1];
  v3 = currentConfiguration_s_currentConfiguration;
  currentConfiguration_s_currentConfiguration = v2;
}

- (ICLaunchConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"Environment"];
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys containsObject:@"-PPTLaunchTest"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = ICLaunchConfigurationEnvironmentWithString(v4);
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"Container"];
  v9 = [ICLaunchConfiguration nonDefaultValueForValue:v8];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"ResetContainer"];
  bOOLValue = [v10 BOOLValue];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"ResetCloud"];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"ResetState"];
  bOOLValue3 = [v14 BOOLValue];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"LocalAccountArchiveName"];
  v17 = [ICLaunchConfiguration nonDefaultValueForValue:v16];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"CloudAccountArchiveName"];
  v19 = [ICLaunchConfiguration nonDefaultValueForValue:v18];

  v20 = [(ICLaunchConfiguration *)self initWithEnvironment:v7 container:v9 resetsContainer:bOOLValue resetsCloud:bOOLValue2 resetsState:bOOLValue3 localAccountArchive:v17 cloudAccountArchive:v19];
  return v20;
}

- (ICLaunchConfiguration)initWithEnvironment:(unint64_t)environment container:(id)container resetsContainer:(BOOL)resetsContainer resetsCloud:(BOOL)cloud resetsState:(BOOL)state localAccountArchive:(id)archive cloudAccountArchive:(id)accountArchive
{
  containerCopy = container;
  archiveCopy = archive;
  accountArchiveCopy = accountArchive;
  v22.receiver = self;
  v22.super_class = ICLaunchConfiguration;
  v18 = [(ICLaunchConfiguration *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_environment = environment;
    objc_storeStrong(&v18->_container, container);
    v19->_resetsContainer = resetsContainer;
    v19->_resetsCloud = cloud;
    v19->_resetsState = state;
    objc_storeStrong(&v19->_localAccountArchiveName, archive);
    objc_storeStrong(&v19->_cloudAccountArchiveName, accountArchive);
  }

  return v19;
}

+ (id)nonDefaultValueForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else
  {
    v4 = valueCopy;
  }

  v5 = v4;

  return v4;
}

+ (ICLaunchConfiguration)userInterfaceTesting
{
  if (userInterfaceTesting_onceToken != -1)
  {
    +[ICLaunchConfiguration userInterfaceTesting];
  }

  v3 = userInterfaceTesting_s_userInterfaceTesting;

  return v3;
}

uint64_t __45__ICLaunchConfiguration_userInterfaceTesting__block_invoke()
{
  userInterfaceTesting_s_userInterfaceTesting = [[ICLaunchConfiguration alloc] initWithEnvironment:2 container:@"User Interface Testing" resetsContainer:1 resetsCloud:0 resetsState:1 localAccountArchive:@"User Interface Testing" cloudAccountArchive:0];

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)launchArguments
{
  v31[14] = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"Environment"];
  v31[0] = v30;
  v29 = NSStringFromICLaunchConfigurationEnvironment([(ICLaunchConfiguration *)self environment]);
  v31[1] = v29;
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"Container"];
  v31[2] = v28;
  container = [(ICLaunchConfiguration *)self container];
  v27 = container;
  v4 = @"Default";
  if (container)
  {
    v4 = container;
  }

  v31[3] = v4;
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"ResetContainer"];
  v31[4] = v26;
  v5 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICLaunchConfiguration resetsContainer](self, "resetsContainer")}];
  v24 = [v5 stringWithFormat:@"%@", v25];
  v31[5] = v24;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"ResetCloud"];
  v31[6] = v23;
  v6 = MEMORY[0x1E696AEC0];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICLaunchConfiguration resetsCloud](self, "resetsCloud")}];
  v7 = [v6 stringWithFormat:@"%@", v22];
  v31[7] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"ResetState"];
  v31[8] = v8;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICLaunchConfiguration resetsState](self, "resetsState")}];
  v11 = [v9 stringWithFormat:@"%@", v10];
  v31[9] = v11;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"LocalAccountArchiveName"];
  v31[10] = v12;
  localAccountArchiveName = [(ICLaunchConfiguration *)self localAccountArchiveName];
  v14 = localAccountArchiveName;
  if (localAccountArchiveName)
  {
    v15 = localAccountArchiveName;
  }

  else
  {
    v15 = @"Default";
  }

  v31[11] = v15;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"CloudAccountArchiveName"];
  v31[12] = v16;
  cloudAccountArchiveName = [(ICLaunchConfiguration *)self cloudAccountArchiveName];
  v18 = cloudAccountArchiveName;
  if (cloudAccountArchiveName)
  {
    v19 = cloudAccountArchiveName;
  }

  else
  {
    v19 = @"Default";
  }

  v31[13] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:14];

  return v20;
}

@end