@interface GDHomeManager
- (GDHomeManager)init;
- (NSArray)homes;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation GDHomeManager

- (NSArray)homes
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = GDConstructionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C43F8000, v3, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homes called", buf, 2u);
  }

  if (dispatch_semaphore_wait(self->_homeUpdateSem, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5, v6);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v16, "void _PASWaitForeverForSemaphore(dispatch_semaphore_t  _Nonnull __strong)", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v15, v19, v18, @"_PASDispatchInline.h", 39, @"Unexpected failure on unlimited dispatch_semaphore_wait()");
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_1C4EF624C;
  v25 = sub_1C4EF625C;
  v26 = 0;
  guardedData = self->_guardedData;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1C4EF6264;
  v20[3] = &unk_1E81EFA48;
  v20[4] = buf;
  objc_msgSend_runWithLockAcquired_(guardedData, v4, v20, v6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_count(*(v22 + 5), v8, v9, v10);
    *v27 = 134217984;
    v28 = v11;
    _os_log_impl(&dword_1C43F8000, v3, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homes returning %tu homes", v27, 0xCu);
  }

  v12 = *(v22 + 5);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GDConstructionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1C43F8000, v5, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homeManagerDidUpdateHomes called with %@", buf, 0xCu);
  }

  guardedData = self->_guardedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C4EF6438;
  v11[3] = &unk_1E81EFA00;
  v12 = v4;
  v7 = v4;
  objc_msgSend_runWithLockAcquired_(guardedData, v8, v11, v9);
  dispatch_semaphore_signal(self->_homeUpdateSem);

  v10 = *MEMORY[0x1E69E9840];
}

- (GDHomeManager)init
{
  v21.receiver = self;
  v21.super_class = GDHomeManager;
  v2 = [(GDHomeManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    homeUpdateSem = v2->_homeUpdateSem;
    v2->_homeUpdateSem = v3;

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v8 = qword_1EC151B10;
    v26 = qword_1EC151B10;
    if (!qword_1EC151B10)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1C4EF66A4;
      v22[3] = &unk_1E81EFA70;
      v22[4] = &v23;
      sub_1C4EF66A4(v22, v5, v6, v7);
      v8 = v24[3];
    }

    v9 = v8;
    _Block_object_dispose(&v23, 8);
    v10 = objc_opt_new();
    manager = v2->_manager;
    v2->_manager = v10;

    objc_msgSend_setDelegate_(v2->_manager, v12, v2, v13);
    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v18 = objc_msgSend_initWithGuardedData_(v14, v16, v15, v17);
    guardedData = v2->_guardedData;
    v2->_guardedData = v18;
  }

  return v2;
}

@end