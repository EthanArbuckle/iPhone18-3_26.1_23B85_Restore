@interface ISICRCompositor
- (ISICRCompositor)initWithIconStackBlock:(id)block;
- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale;
- (id)_finalizedIconForCompositingDescriptor:(id)descriptor;
- (id)_keyForCompositingDescriptor:(id)descriptor;
- (id)imageForCompositingDescriptor:(id)descriptor;
- (id)layerDataForCompositingDescriptor:(id)descriptor;
@end

@implementation ISICRCompositor

- (ISICRCompositor)initWithIconStackBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = ISICRCompositor;
  v5 = [(ISICRCompositor *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1AC55B6D0](blockCopy);
    iconStack = v5->_iconStack;
    v5->_iconStack = v6;

    v8 = objc_opt_new();
    finalizedIcons = v5->_finalizedIcons;
    v5->_finalizedIcons = v8;
  }

  return v5;
}

- (id)_keyForCompositingDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E696AEC0];
  descriptorCopy = descriptor;
  digest = [descriptorCopy digest];
  [descriptorCopy size];
  v7 = v6;
  [descriptorCopy size];
  v9 = v8;
  [descriptorCopy scale];
  v11 = v10;

  v12 = [v3 stringWithFormat:@"%@-%.1f-%.1f@%d", digest, v7, v9, v11];

  return v12;
}

- (id)_finalizedIconForCompositingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISICRCompositor *)self _keyForCompositingDescriptor:descriptorCopy];
  finalizedIcons = [(ISICRCompositor *)self finalizedIcons];
  v7 = [finalizedIcons objectForKey:v5];

  if (v7)
  {
    v8 = v7;
    goto LABEL_11;
  }

  iconStack = [(ISICRCompositor *)self iconStack];
  [descriptorCopy size];
  v11 = v10;
  v13 = v12;
  [descriptorCopy scale];
  v15 = iconStack[2](iconStack, v11, v13, v14);

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

  v16 = [v15 _IS_finalizedIconWithCompositingDescriptor:descriptorCopy];
  if (!v16)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v17 = v16;
  finalizedIcons2 = [(ISICRCompositor *)self finalizedIcons];
  [finalizedIcons2 setObject:v17 forKey:v5];

  v8 = v17;
LABEL_10:

LABEL_11:

  return v8;
}

- (id)imageForCompositingDescriptor:(id)descriptor
{
  v31 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = [(ISICRCompositor *)self _finalizedIconForCompositingDescriptor:descriptorCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _IS_imageWithCompositingDescriptor:descriptorCopy];
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
        iconStack = [(ISICRCompositor *)self iconStack];
        v18 = MEMORY[0x1AC55B6D0]();
        compositingDescriptor = [(ISICRCompositor *)self compositingDescriptor];
        v27 = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = compositingDescriptor;
        _os_log_impl(&dword_1A77B8000, v16, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for icon stack %@ with descriptor: %@", &v27, 0x16u);
      }

      [descriptorCopy size];
      v21 = v20;
      v23 = v22;
      [descriptorCopy scale];
      v9 = [(ISICRCompositor *)self _fallbackImageForSize:v21 scale:v23, v24];
    }

    v15 = v9;
  }

  else
  {
    [descriptorCopy size];
    v11 = v10;
    v13 = v12;
    [descriptorCopy scale];
    v15 = [(ISICRCompositor *)self _fallbackImageForSize:v11 scale:v13, v14];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)layerDataForCompositingDescriptor:(id)descriptor
{
  v4 = [(ISICRCompositor *)self _finalizedIconForCompositingDescriptor:descriptor];
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

- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale
{
  scale = [[ISImageDescriptor alloc] initWithSize:size.width scale:size.height, scale];
  v5 = MEMORY[0x1E69A8988];
  identifier = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:scale markAsPlaceholder:0 fallbackTypeID:identifier referenceIcon:0];

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