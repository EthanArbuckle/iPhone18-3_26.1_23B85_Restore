@interface PluginDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (PluginDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (PluginDiskImageGraphNode)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (id)URL;
- (id)toDictionary;
@end

@implementation PluginDiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PluginDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, "validateWithDictionary:error:", v6, error) && [v6 validateAndPopObjectForKey:@"PluginName" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(v6, "validateAndPopObjectForKey:className:isOptional:error:", @"PluginParams", objc_opt_class(), 0, error))
  {
    if ([v6 count])
    {
      v7 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:error];
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

- (PluginDiskImageGraphNode)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache
{
  nameCopy = name;
  paramsCopy = params;
  v23.receiver = self;
  v23.super_class = PluginDiskImageGraphNode;
  v18 = [(DiskImageGraphNode *)&v23 initWithTag:tag UUID:d parentNode:node metadata:metadata isCache:cache];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pluginName, name);
    v20 = [[NSDictionary alloc] initWithDictionary:paramsCopy copyItems:1];
    pluginParams = v19->_pluginParams;
    v19->_pluginParams = v20;
  }

  return v19;
}

- (PluginDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  dirCopy = dir;
  if ([PluginDiskImageGraphNode validateWithDictionary:dictionaryCopy error:error])
  {
    v17.receiver = self;
    v17.super_class = PluginDiskImageGraphNode;
    v10 = [(DiskImageGraphNode *)&v17 initWithDictionary:dictionaryCopy workDir:dirCopy error:error];
    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"PluginName"];
      pluginName = v10->_pluginName;
      v10->_pluginName = v11;

      v13 = [dictionaryCopy objectForKeyedSubscript:@"PluginParams"];
      pluginParams = v10->_pluginParams;
      v10->_pluginParams = v13;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = PluginDiskImageGraphNode;
  toDictionary = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [toDictionary mutableCopy];

  pluginName = [(PluginDiskImageGraphNode *)self pluginName];
  [v4 setObject:pluginName forKeyedSubscript:@"PluginName"];

  pluginParams = [(PluginDiskImageGraphNode *)self pluginParams];
  [v4 setObject:pluginParams forKeyedSubscript:@"PluginParams"];

  return v4;
}

- (id)URL
{
  pluginName = [(PluginDiskImageGraphNode *)self pluginName];
  pluginParams = [(PluginDiskImageGraphNode *)self pluginParams];
  v5 = [DIURL newDIURLWithPluginName:pluginName params:pluginParams];

  return v5;
}

@end