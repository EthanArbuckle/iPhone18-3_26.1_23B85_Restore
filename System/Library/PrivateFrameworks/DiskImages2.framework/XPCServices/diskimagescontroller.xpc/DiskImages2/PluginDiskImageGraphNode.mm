@interface PluginDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
- (PluginDiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (PluginDiskImageGraphNode)initWithPluginName:(id)a3 pluginParams:(id)a4 tag:(id)a5 UUID:(id)a6 parentNode:(id)a7 metadata:(id)a8 isCache:(BOOL)a9;
- (id)URL;
- (id)toDictionary;
@end

@implementation PluginDiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:a3];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PluginDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, "validateWithDictionary:error:", v6, a4) && [v6 validateAndPopObjectForKey:@"PluginName" className:objc_opt_class() isOptional:0 error:a4] && objc_msgSend(v6, "validateAndPopObjectForKey:className:isOptional:error:", @"PluginParams", objc_opt_class(), 0, a4))
  {
    if ([v6 count])
    {
      v7 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:a4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PluginDiskImageGraphNode)initWithPluginName:(id)a3 pluginParams:(id)a4 tag:(id)a5 UUID:(id)a6 parentNode:(id)a7 metadata:(id)a8 isCache:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v23.receiver = self;
  v23.super_class = PluginDiskImageGraphNode;
  v18 = [(DiskImageGraphNode *)&v23 initWithTag:a5 UUID:a6 parentNode:a7 metadata:a8 isCache:a9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pluginName, a3);
    v20 = [[NSDictionary alloc] initWithDictionary:v17 copyItems:1];
    pluginParams = v19->_pluginParams;
    v19->_pluginParams = v20;
  }

  return v19;
}

- (PluginDiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([PluginDiskImageGraphNode validateWithDictionary:v8 error:a5])
  {
    v17.receiver = self;
    v17.super_class = PluginDiskImageGraphNode;
    v10 = [(DiskImageGraphNode *)&v17 initWithDictionary:v8 workDir:v9 error:a5];
    if (v10)
    {
      v11 = [v8 objectForKeyedSubscript:@"PluginName"];
      pluginName = v10->_pluginName;
      v10->_pluginName = v11;

      v13 = [v8 objectForKeyedSubscript:@"PluginParams"];
      pluginParams = v10->_pluginParams;
      v10->_pluginParams = v13;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = PluginDiskImageGraphNode;
  v3 = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(PluginDiskImageGraphNode *)self pluginName];
  [v4 setObject:v5 forKeyedSubscript:@"PluginName"];

  v6 = [(PluginDiskImageGraphNode *)self pluginParams];
  [v4 setObject:v6 forKeyedSubscript:@"PluginParams"];

  return v4;
}

- (id)URL
{
  v3 = [(PluginDiskImageGraphNode *)self pluginName];
  v4 = [(PluginDiskImageGraphNode *)self pluginParams];
  v5 = [DIURL newDIURLWithPluginName:v3 params:v4];

  return v5;
}

@end