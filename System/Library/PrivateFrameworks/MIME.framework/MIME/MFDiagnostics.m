@interface MFDiagnostics
+ (id)sharedController;
- (MFDiagnostics)init;
- (id)copyDiagnosticInformation;
- (void)addDiagnosticsGenerator:(id)a3;
- (void)removeDiagnosticsGenerator:(id)a3;
@end

@implementation MFDiagnostics

- (MFDiagnostics)init
{
  v7.receiver = self;
  v7.super_class = MFDiagnostics;
  v2 = [(MFDiagnostics *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MFWeakSet);
    diagnosticsGenerators = v2->_diagnosticsGenerators;
    v2->_diagnosticsGenerators = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[MFDiagnostics sharedController];
  }

  v3 = sharedController_controller;

  return v3;
}

uint64_t __33__MFDiagnostics_sharedController__block_invoke()
{
  sharedController_controller = objc_alloc_init(MFDiagnostics);

  return MEMORY[0x1EEE66BB8]();
}

- (void)addDiagnosticsGenerator:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_diagnosticLock lock];
  [(MFWeakSet *)self->_diagnosticsGenerators addObject:v4];
  [(NSLock *)self->_diagnosticLock unlock];
}

- (void)removeDiagnosticsGenerator:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_diagnosticLock lock];
  [(MFWeakSet *)self->_diagnosticsGenerators removeObject:v4];
  [(NSLock *)self->_diagnosticLock unlock];
}

- (id)copyDiagnosticInformation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(NSLock *)self->_diagnosticLock lock];
  v4 = [(MFWeakSet *)self->_diagnosticsGenerators allObjects];
  [(NSLock *)self->_diagnosticLock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 sortedArrayUsingComparator:{&__block_literal_global_4, 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) copyDiagnosticInformation];
        [v3 appendString:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

@end