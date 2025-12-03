@interface MIPersonaAttributes
- (MIPersonaAttributes)initWithPersonaString:(id)string personaType:(unint64_t)type associatedBundleIDs:(id)ds volumeDaemonContainer:(id)container volumeDaemonContainerSandboxExtension:(int64_t)extension;
- (void)dealloc;
@end

@implementation MIPersonaAttributes

- (MIPersonaAttributes)initWithPersonaString:(id)string personaType:(unint64_t)type associatedBundleIDs:(id)ds volumeDaemonContainer:(id)container volumeDaemonContainerSandboxExtension:(int64_t)extension
{
  stringCopy = string;
  dsCopy = ds;
  containerCopy = container;
  v19.receiver = self;
  v19.super_class = MIPersonaAttributes;
  v16 = [(MIPersonaAttributes *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_personaUniqueString, string);
    v17->_personaType = type;
    objc_storeStrong(&v17->_bundleIDs, ds);
    objc_storeStrong(&v17->_volumeDaemonContainer, container);
    v17->_extensionHandle = extension;
  }

  return v17;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *self;
  path = [*(a2 + 32) path];
  v6 = 136315906;
  v7 = "[MIPersonaAttributes dealloc]";
  v8 = 2048;
  v9 = v4;
  v10 = 2112;
  v11 = path;
  v12 = 2080;
  v13 = strerror(a3);
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Failed to release sandbox token %lld for %@ : %s", &v6, 0x2Au);
}

@end