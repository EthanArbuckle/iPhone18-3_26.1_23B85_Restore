@interface ICLaunchConfiguration
+ (ICLaunchConfiguration)currentConfiguration;
+ (ICLaunchConfiguration)userInterfaceTesting;
+ (id)nonDefaultValueForValue:(id)a3;
- (ICLaunchConfiguration)initWithDictionary:(id)a3;
- (ICLaunchConfiguration)initWithEnvironment:(unint64_t)a3 container:(id)a4 resetsContainer:(BOOL)a5 resetsCloud:(BOOL)a6 resetsState:(BOOL)a7 localAccountArchive:(id)a8 cloudAccountArchive:(id)a9;
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

- (ICLaunchConfiguration)initWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"Environment"];
  v5 = [v3 allKeys];
  v6 = [v5 containsObject:@"-PPTLaunchTest"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = ICLaunchConfigurationEnvironmentWithString(v4);
  }

  v8 = [v3 objectForKeyedSubscript:@"Container"];
  v9 = [ICLaunchConfiguration nonDefaultValueForValue:v8];

  v10 = [v3 objectForKeyedSubscript:@"ResetContainer"];
  v11 = [v10 BOOLValue];

  v12 = [v3 objectForKeyedSubscript:@"ResetCloud"];
  v13 = [v12 BOOLValue];

  v14 = [v3 objectForKeyedSubscript:@"ResetState"];
  v15 = [v14 BOOLValue];

  v16 = [v3 objectForKeyedSubscript:@"LocalAccountArchiveName"];
  v17 = [ICLaunchConfiguration nonDefaultValueForValue:v16];

  v18 = [v3 objectForKeyedSubscript:@"CloudAccountArchiveName"];
  v19 = [ICLaunchConfiguration nonDefaultValueForValue:v18];

  v20 = [(ICLaunchConfiguration *)self initWithEnvironment:v7 container:v9 resetsContainer:v11 resetsCloud:v13 resetsState:v15 localAccountArchive:v17 cloudAccountArchive:v19];
  return v20;
}

- (ICLaunchConfiguration)initWithEnvironment:(unint64_t)a3 container:(id)a4 resetsContainer:(BOOL)a5 resetsCloud:(BOOL)a6 resetsState:(BOOL)a7 localAccountArchive:(id)a8 cloudAccountArchive:(id)a9
{
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = ICLaunchConfiguration;
  v18 = [(ICLaunchConfiguration *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_environment = a3;
    objc_storeStrong(&v18->_container, a4);
    v19->_resetsContainer = a5;
    v19->_resetsCloud = a6;
    v19->_resetsState = a7;
    objc_storeStrong(&v19->_localAccountArchiveName, a8);
    objc_storeStrong(&v19->_cloudAccountArchiveName, a9);
  }

  return v19;
}

+ (id)nonDefaultValueForValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
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
  v3 = [(ICLaunchConfiguration *)self container];
  v27 = v3;
  v4 = @"Default";
  if (v3)
  {
    v4 = v3;
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
  v13 = [(ICLaunchConfiguration *)self localAccountArchiveName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"Default";
  }

  v31[11] = v15;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", @"CloudAccountArchiveName"];
  v31[12] = v16;
  v17 = [(ICLaunchConfiguration *)self cloudAccountArchiveName];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
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