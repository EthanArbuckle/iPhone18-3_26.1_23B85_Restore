@interface _FBSSnapshot
- (BOOL)capture;
- (BOOL)hasProtectedContent;
- (CGImage)CGImage;
- (CGSize)_scaledSnapshotSize;
- (IOSurface)IOSurface;
- (IOSurface)fallbackIOSurface;
- (_FBSSnapshot)initWithSnapshotContext:(id)a3;
- (void)_doInvalidate;
- (void)_synchronizedCaptureWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _FBSSnapshot

- (_FBSSnapshot)initWithSnapshotContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _FBSSnapshot;
  v5 = [(_FBSSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(_FBSSnapshot *)self _doInvalidate];
  v3.receiver = self;
  v3.super_class = _FBSSnapshot;
  [(_FBSSnapshot *)&v3 dealloc];
}

- (BOOL)hasProtectedContent
{
  v2 = [(_FBSSnapshot *)self fallbackIOSurface];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)capture
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23___FBSSnapshot_capture__block_invoke;
  v4[3] = &unk_1E76BF3F8;
  v4[4] = &v5;
  [(_FBSSnapshot *)self _synchronizedCaptureWithCompletion:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (IOSurface)IOSurface
{
  [(_FBSSnapshot *)self _synchronizedCaptureWithCompletion:0];
  protectedSurfaceRef = self->_protectedSurfaceRef;
  if (!protectedSurfaceRef)
  {
    protectedSurfaceRef = self->_nonProtectedSurfaceRef;
  }

  v4 = protectedSurfaceRef;

  return v4;
}

- (IOSurface)fallbackIOSurface
{
  [(_FBSSnapshot *)self _synchronizedCaptureWithCompletion:0];
  if (self->_protectedSurfaceRef)
  {
    v3 = self->_nonProtectedSurfaceRef;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGImage)CGImage
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23___FBSSnapshot_CGImage__block_invoke;
  v4[3] = &unk_1E76BF420;
  v4[4] = self;
  [(_FBSSnapshot *)self _synchronizedCaptureWithCompletion:v4];
  return self->_imageRef;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(_FBSSnapshot *)obj _doInvalidate];
  objc_sync_exit(obj);
}

- (void)_doInvalidate
{
  nonProtectedSurfaceRef = self->_nonProtectedSurfaceRef;
  self->_nonProtectedSurfaceRef = 0;

  protectedSurfaceRef = self->_protectedSurfaceRef;
  self->_protectedSurfaceRef = 0;

  imageRef = self->_imageRef;
  if (imageRef)
  {
    CGImageRelease(imageRef);
    self->_imageRef = 0;
  }
}

- (void)_synchronizedCaptureWithCompletion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v4 = self;
  objc_sync_enter(v4);
  obj = v4;
  v18 = [(_FBSSnapshotContext *)v4->_context layers];
  v17 = [(_FBSSnapshotContext *)v4->_context displayConfiguration];
  if (*&v4->_imageRef == 0 && !v4->_protectedSurfaceRef)
  {
    if (v17 && [v18 count])
    {
      v6 = [v18 count];
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = v18;
      v7 = [v21 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v7)
      {
        v8 = *v24;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v21);
            }

            v10 = *(*(&v23 + 1) + 8 * i);
            v11 = getkCASnapshotContextId();
            v28[0] = v11;
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v10, "contextID")}];
            v29[0] = v12;
            v13 = getkCASnapshotTransform();
            v28[1] = v13;
            v14 = MEMORY[0x1E696B098];
            if (v10)
            {
              [v10 baseTransform];
            }

            else
            {
              memset(buf, 0, sizeof(buf));
            }

            v15 = [v14 valueWithCATransform3D:buf];
            v29[1] = v15;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

            [v22 addObject:v16];
          }

          v7 = [v21 countByEnumeratingWithState:&v23 objects:v30 count:16];
        }

        while (v7);
      }

      [(_FBSSnapshot *)obj _scaledSnapshotSize];
      BSFloatGreaterThanFloat();
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  if (v20)
  {
    v20[2](v20, v5);
  }

  objc_sync_exit(v4);
}

- (CGSize)_scaledSnapshotSize
{
  [(_FBSSnapshotContext *)self->_context snapshotSize];
  v4 = v3;
  v6 = v5;
  [(_FBSSnapshot *)self _scale];
  v8 = v6 * v7;
  v9 = v4 * v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)_synchronizedCaptureWithCompletion:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error: Snapshot frame is empty.", buf, 0xCu);
}

@end