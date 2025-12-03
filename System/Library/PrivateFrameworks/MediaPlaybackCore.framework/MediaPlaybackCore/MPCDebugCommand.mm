@interface MPCDebugCommand
- (MPCDebugCommand)initWithMediaRemoteCommandType:(unsigned int)type;
- (id)_mediaRemoteCommandInfoOptions;
- (void)setSubsystemRevisions:(id)revisions;
- (void)setSupportedSubsystems:(id)subsystems;
@end

@implementation MPCDebugCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_subsystemRevisions, "count")}];
  subsystemRevisions = self->_subsystemRevisions;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __49__MPCDebugCommand__mediaRemoteCommandInfoOptions__block_invoke;
  v14 = &unk_1E82372B0;
  v15 = v3;
  v5 = v3;
  [(NSDictionary *)subsystemRevisions enumerateKeysAndObjectsUsingBlock:&v11];
  supportedSubsystems = self->_supportedSubsystems;
  if (!supportedSubsystems)
  {
    supportedSubsystems = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E69B0D48];
  v16[0] = *MEMORY[0x1E69B0D50];
  v16[1] = v7;
  v8 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v8 = v5;
  }

  v17[0] = supportedSubsystems;
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:{2, v11, v12, v13, v14}];

  return v9;
}

void __49__MPCDebugCommand__mediaRemoteCommandInfoOptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69B0CB8];
  v10[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

- (void)setSubsystemRevisions:(id)revisions
{
  revisionsCopy = revisions;
  subsystemRevisions = self->_subsystemRevisions;
  if (subsystemRevisions != revisionsCopy)
  {
    v8 = revisionsCopy;
    subsystemRevisions = [subsystemRevisions isEqual:revisionsCopy];
    revisionsCopy = v8;
    if ((subsystemRevisions & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_subsystemRevisions;
      self->_subsystemRevisions = v6;

      subsystemRevisions = [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
      revisionsCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](subsystemRevisions, revisionsCopy);
}

- (void)setSupportedSubsystems:(id)subsystems
{
  subsystemsCopy = subsystems;
  supportedSubsystems = self->_supportedSubsystems;
  if (supportedSubsystems != subsystemsCopy)
  {
    v8 = subsystemsCopy;
    supportedSubsystems = [supportedSubsystems isEqual:subsystemsCopy];
    subsystemsCopy = v8;
    if ((supportedSubsystems & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_supportedSubsystems;
      self->_supportedSubsystems = v6;

      supportedSubsystems = [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
      subsystemsCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](supportedSubsystems, subsystemsCopy);
}

- (MPCDebugCommand)initWithMediaRemoteCommandType:(unsigned int)type
{
  v8.receiver = self;
  v8.super_class = MPCDebugCommand;
  v3 = [(MPRemoteCommand *)&v8 initWithMediaRemoteCommandType:*&type];
  v4 = v3;
  if (v3)
  {
    supportedSubsystems = v3->_supportedSubsystems;
    v3->_supportedSubsystems = MEMORY[0x1E695E0F0];

    subsystemRevisions = v4->_subsystemRevisions;
    v4->_subsystemRevisions = MEMORY[0x1E695E0F8];
  }

  return v4;
}

@end