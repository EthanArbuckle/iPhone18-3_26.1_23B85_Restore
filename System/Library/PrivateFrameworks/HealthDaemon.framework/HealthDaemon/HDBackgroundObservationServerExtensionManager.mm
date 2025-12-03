@interface HDBackgroundObservationServerExtensionManager
- (HDBackgroundObservationServerExtensionManager)init;
- (id)extensionForBundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation HDBackgroundObservationServerExtensionManager

- (HDBackgroundObservationServerExtensionManager)init
{
  v7.receiver = self;
  v7.super_class = HDBackgroundObservationServerExtensionManager;
  v2 = [(HDBackgroundObservationServerExtensionManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    availableExtensions = v3->_availableExtensions;
    v3->_availableExtensions = v4;
  }

  return v3;
}

- (id)extensionForBundleIdentifier:(id)identifier error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v7 = identifierCopy;
  v8 = v7;
  if (!self)
  {

    availableExtensions = MEMORY[0x10];
LABEL_17:
    [(NSMutableDictionary *)availableExtensions removeObjectForKey:v8, v21];
    v11 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v26 = *MEMORY[0x277CCA0F8];
  v27[0] = @"com.apple.healthkit.background-observation";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [MEMORY[0x277CCA9C8] extensionsWithMatchingAttributes:v9 error:error];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        hd_extensionContainerBundleIdentifier = [v14 hd_extensionContainerBundleIdentifier];
        if ([hd_extensionContainerBundleIdentifier isEqualToString:v8])
        {
          v11 = v14;

          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  availableExtensions = self->_availableExtensions;
  if (!v11)
  {
    goto LABEL_17;
  }

  v17 = [(NSMutableDictionary *)availableExtensions objectForKeyedSubscript:v8];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = [[HDBackgroundObservationServerExtension alloc] _initWithExtension:v11];
    [(NSMutableDictionary *)self->_availableExtensions setObject:v18 forKeyedSubscript:v8];
  }

LABEL_18:
  os_unfair_lock_unlock(&self->_lock);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end