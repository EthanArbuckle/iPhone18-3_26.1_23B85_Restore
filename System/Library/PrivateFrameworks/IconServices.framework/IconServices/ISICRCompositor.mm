@interface ISICRCompositor
- (ISICRCompositor)initWithIconStackBlock:(id)a3;
- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4;
- (id)_finalizedIconForCompositingDescriptor:(id)a3;
- (id)_keyForCompositingDescriptor:(id)a3;
- (id)imageForCompositingDescriptor:(id)a3;
- (id)layerDataForCompositingDescriptor:(id)a3;
@end

@implementation ISICRCompositor

- (ISICRCompositor)initWithIconStackBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ISICRCompositor;
  v5 = [(ISICRCompositor *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1AC55B6D0](v4);
    iconStack = v5->_iconStack;
    v5->_iconStack = v6;

    v8 = objc_opt_new();
    finalizedIcons = v5->_finalizedIcons;
    v5->_finalizedIcons = v8;
  }

  return v5;
}

- (id)_keyForCompositingDescriptor:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 digest];
  [v4 size];
  v7 = v6;
  [v4 size];
  v9 = v8;
  [v4 scale];
  v11 = v10;

  v12 = [v3 stringWithFormat:@"%@-%.1f-%.1f@%d", v5, v7, v9, v11];

  return v12;
}

- (id)_finalizedIconForCompositingDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(ISICRCompositor *)self _keyForCompositingDescriptor:v4];
  v6 = [(ISICRCompositor *)self finalizedIcons];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
    goto LABEL_11;
  }

  v9 = [(ISICRCompositor *)self iconStack];
  [v4 size];
  v11 = v10;
  v13 = v12;
  [v4 scale];
  v15 = v9[2](v9, v11, v13, v14);

  if (!v15)
  {
    v19 = _ISDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A77B8000, v19, OS_LOG_TYPE_DEFAULT, "Failed to find icon stack", v21, 2u);
    }

    goto LABEL_9;
  }

  v16 = [v15 _IS_finalizedIconWithCompositingDescriptor:v4];
  if (!v16)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [(ISICRCompositor *)self finalizedIcons];
  [v18 setObject:v17 forKey:v5];

  v8 = v17;
LABEL_10:

LABEL_11:

  return v8;
}

- (id)imageForCompositingDescriptor:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISICRCompositor *)self _finalizedIconForCompositingDescriptor:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _IS_imageWithCompositingDescriptor:v4];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v16 = _ISDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(ISICRCompositor *)self iconStack];
        v18 = MEMORY[0x1AC55B6D0]();
        v19 = [(ISICRCompositor *)self compositingDescriptor];
        v27 = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_1A77B8000, v16, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for icon stack %@ with descriptor: %@", &v27, 0x16u);
      }

      [v4 size];
      v21 = v20;
      v23 = v22;
      [v4 scale];
      v9 = [(ISICRCompositor *)self _fallbackImageForSize:v21 scale:v23, v24];
    }

    v15 = v9;
  }

  else
  {
    [v4 size];
    v11 = v10;
    v13 = v12;
    [v4 scale];
    v15 = [(ISICRCompositor *)self _fallbackImageForSize:v11 scale:v13, v14];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)layerDataForCompositingDescriptor:(id)a3
{
  v4 = [(ISICRCompositor *)self _finalizedIconForCompositingDescriptor:a3];
  v5 = v4;
  if (v4)
  {
    v10 = 0;
    v6 = [v4 serializedDataWithError:&v10];
    v7 = v10;
    if (!v6 || ![v6 length])
    {
      v8 = _ISDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ISICRCompositor *)self layerDataForCompositingDescriptor:v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [[ISImageDescriptor alloc] initWithSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69A8988];
  v6 = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:0 fallbackTypeID:v6 referenceIcon:0];

  return v7;
}

- (void)layerDataForCompositingDescriptor:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 iconStack];
  v5 = MEMORY[0x1AC55B6D0]();
  v6 = [a1 compositingDescriptor];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize finalized icon for icon stack %@ with descriptor: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end