@interface MIPersonaAttributes
- (MIPersonaAttributes)initWithPersonaString:(id)a3 personaType:(unint64_t)a4 associatedBundleIDs:(id)a5 volumeDaemonContainer:(id)a6 volumeDaemonContainerSandboxExtension:(int64_t)a7;
- (void)dealloc;
@end

@implementation MIPersonaAttributes

- (MIPersonaAttributes)initWithPersonaString:(id)a3 personaType:(unint64_t)a4 associatedBundleIDs:(id)a5 volumeDaemonContainer:(id)a6 volumeDaemonContainerSandboxExtension:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MIPersonaAttributes;
  v16 = [(MIPersonaAttributes *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_personaUniqueString, a3);
    v17->_personaType = a4;
    objc_storeStrong(&v17->_bundleIDs, a5);
    objc_storeStrong(&v17->_volumeDaemonContainer, a6);
    v17->_extensionHandle = a7;
  }

  return v17;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [*(a2 + 32) path];
  v6 = 136315906;
  v7 = "[MIPersonaAttributes dealloc]";
  v8 = 2048;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2080;
  v13 = strerror(a3);
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Failed to release sandbox token %lld for %@ : %s", &v6, 0x2Au);
}

@end