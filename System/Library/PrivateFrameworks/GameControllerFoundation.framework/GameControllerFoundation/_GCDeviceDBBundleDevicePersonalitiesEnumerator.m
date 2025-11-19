@interface _GCDeviceDBBundleDevicePersonalitiesEnumerator
- (_GCDeviceDBBundleDevicePersonalitiesEnumerator)initWithBundle:(id)a3 personalityPaths:(id)a4;
- (id)nextObject;
- (void)nextObject;
@end

@implementation _GCDeviceDBBundleDevicePersonalitiesEnumerator

- (_GCDeviceDBBundleDevicePersonalitiesEnumerator)initWithBundle:(id)a3 personalityPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _GCDeviceDBBundleDevicePersonalitiesEnumerator;
  v8 = [(_GCDeviceDBBundleDevicePersonalitiesEnumerator *)&v13 init];
  bundle = v8->_bundle;
  v8->_bundle = v6;
  v10 = v6;

  personalitiesPaths = v8->_personalitiesPaths;
  v8->_personalitiesPaths = v7;

  return v8;
}

- (id)nextObject
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  v3 = [(NSEnumerator *)self->_personalitiesPaths nextObject];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = [(NSBundle *)self->_bundle URLForResource:v4 withExtension:0];
      if (v5)
      {
        v6 = v5;
        v7 = [_GCDeviceDBPersonality alloc];
        v19 = 0;
        v8 = [(_GCDeviceDBPersonality *)v7 initWithURL:v6 error:&v19];
        v9 = v19;
        v10 = v9;
        if (v8)
        {

          goto LABEL_16;
        }

        v11 = [v9 code];
        v12 = _gc_log_devicedb();
        if (v11 == 5)
        {
          v13 = v12;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v6 path];
            v17 = [v10 localizedFailureReason];
            *buf = 138412546;
            v21 = v18;
            v22 = 2114;
            v23 = v17;
            _os_log_debug_impl(&dword_1D2C3B000, v13, OS_LOG_TYPE_DEBUG, "📦 Skipping loading device personality at '%@': %{public}@.", buf, 0x16u);
          }
        }

        else
        {
          v13 = v12;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v21 = v10;
            _os_log_fault_impl(&dword_1D2C3B000, v13, OS_LOG_TYPE_FAULT, "📦 Error loading device personality: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        [(_GCDeviceDBBundleDevicePersonalitiesEnumerator *)v24 nextObject];
      }

      v14 = [(NSEnumerator *)self->_personalitiesPaths nextObject];

      v8 = 0;
      v4 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = 0;
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)nextObject
{
  v6 = _gc_log_devicedb();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a3 = a2;
    _os_log_fault_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_FAULT, "📦 Device personality file does not exist: %@.", a1, 0xCu);
  }
}

@end