@interface PluginDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error;
- (PluginDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (PluginDiskImageGraphNode)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (id)URL;
- (id)toDictionary;
@end

@implementation PluginDiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PluginDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, sel_validateWithDictionary_error_, v6, error) && [v6 validateAndPopObjectForKey:@"PluginName" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(v6, "validateAndPopObjectForKey:className:isOptional:error:", @"PluginParams", objc_opt_class(), 0, error))
  {
    if ([v6 count])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed, input contains unexpected data."];
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
    v20 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:paramsCopy copyItems:1];
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

- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  if (DIForwardLogs())
  {
    v5 = getDIOSLog();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v11 = 72;
    v12 = 2080;
    v13 = "[PluginDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = getDIOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 72;
      v12 = 2080;
      v13 = "[PluginDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
      _os_log_impl(&dword_248DE0000, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Appending to plugin node, skipping validation.", buf, 0x12u);
    }
  }

  *__error() = v4;
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

@end