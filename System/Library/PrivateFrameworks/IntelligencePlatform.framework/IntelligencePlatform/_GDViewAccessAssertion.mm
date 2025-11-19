@interface _GDViewAccessAssertion
- (_GDViewAccessAssertion)initWithViewName:(id)a3 extensionToken:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation _GDViewAccessAssertion

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_handle != -1)
  {
    v3 = sandbox_extension_release();
    v4 = GDViewLog();
    v5 = v4;
    if (v3 == -1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        viewName = self->_viewName;
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 138412546;
        v14 = viewName;
        v15 = 2080;
        v16 = v11;
        _os_log_fault_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_FAULT, "Error releasing sandbox extension token for %@: %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_viewName;
      viewArtifactURL = self->_viewArtifactURL;
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = viewArtifactURL;
      _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "Released sandbox extension for %@ at %@", buf, 0x16u);
    }
  }

  v12.receiver = self;
  v12.super_class = _GDViewAccessAssertion;
  [(_GDViewAccessAssertion *)&v12 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (_GDViewAccessAssertion)initWithViewName:(id)a3 extensionToken:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v38.receiver = self;
  v38.super_class = _GDViewAccessAssertion;
  v10 = [(_GDViewAccessAssertion *)&v38 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v10->_handle = -1;
  v12 = [v8 copy];
  viewName = v11->_viewName;
  v11->_viewName = v12;

  v14 = [v9 url];
  v15 = [v14 copy];
  viewArtifactURL = v11->_viewArtifactURL;
  v11->_viewArtifactURL = v15;

  v17 = [v9 tableName];
  v18 = [v17 copy];
  viewArtifactTableName = v11->_viewArtifactTableName;
  v11->_viewArtifactTableName = v18;

  v11->_alwaysAvailable = [v9 alwaysAvailable];
  v20 = [v9 token];
  v21 = [v20 length];

  if (!v21)
  {
LABEL_7:
    v28 = v11;
    goto LABEL_8;
  }

  v22 = [v9 token];
  [v22 bytes];
  v23 = sandbox_extension_consume();
  if (v23 != -1)
  {
    v24 = v23;
    v25 = GDViewLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v11->_viewName;
      v27 = v11->_viewArtifactURL;
      *buf = 138412546;
      v42 = v26;
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&dword_1ABA78000, v25, OS_LOG_TYPE_DEFAULT, "Consumed sandbox extension for %@ at %@", buf, 0x16u);
    }

    v11->_handle = v24;
    goto LABEL_7;
  }

  v31 = MEMORY[0x1E696AEC0];
  v32 = __error();
  v33 = [v31 stringWithCString:strerror(*v32) encoding:4];
  v34 = GDViewLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    v37 = v11->_viewName;
    *buf = 138412546;
    v42 = v37;
    v43 = 2112;
    v44 = v33;
    _os_log_fault_impl(&dword_1ABA78000, v34, OS_LOG_TYPE_FAULT, "Error consuming sandbox extension token for %@: %@", buf, 0x16u);
  }

  if (a5)
  {
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E696A578];
    v40 = v33;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a5 = [v35 initWithDomain:@"GDErrorDomain" code:11 userInfo:v36];
  }

  v28 = 0;
LABEL_8:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

@end