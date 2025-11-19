void sub_1D2C3E170(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    return a2;
  }

  return result;
}

void sub_1D2C3F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_1D2C414C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __CFString *a16, uint64_t a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(exception_object);
      if (v17)
      {
        v21 = MEMORY[0x1E696ABC0];
        a12 = *MEMORY[0x1E696A578];
        v22 = [*(v19 + 3776) stringWithFormat:@"Invalid '%@' definition."];
        v23 = *MEMORY[0x1E696A588];
        a15 = v22;
        a16 = @"Model build failed.  This is a #BUG.";
        v24 = *MEMORY[0x1E696AA08];
        a13 = v23;
        a14 = v24;
        v25 = [v20 gc_error];
        a17 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a15 forKeys:&a12 count:3];
        *v17 = [(NSError *)v21 gc_modelError:v26 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C412E8);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2C41E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t IOGCFastPathClientInterfacePrepareObjCVtbl(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  if (a2 != a2)
  {
    IOGCFastPathClientInterfacePrepareObjCVtbl_cold_2();
  }

  v4 = v3;
  v5 = objc_getAssociatedObject(v3, (&unk_1F4E41E68 | (a2 << 48)));
  if (!v5)
  {
    os_unfair_lock_lock(&IOGCFastPathClientInterfacePrepareObjCVtbl_Lock);
    v5 = objc_getAssociatedObject(v4, (&unk_1F4E41E68 | (a2 << 48)));
    if (!v5)
    {
      memset(v8, 0, sizeof(v8));
      if (a2)
      {
        IOGCFastPathClientInterfacePrepareObjCVtbl_cold_1(a2, v8);
      }

      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:96];
      objc_setAssociatedObject(v4, (&unk_1F4E41E68 | (a2 << 48)), v5, 0x301);
    }

    os_unfair_lock_unlock(&IOGCFastPathClientInterfacePrepareObjCVtbl_Lock);
  }

  v6 = [v5 bytes];

  return v6;
}

CFTypeRef __IOGCFastPathClientInterfaceObjCThunk_CopyDescription(void **a1)
{
  v1 = a1 - **a1;
  v2 = [v1 description];
  v3 = CFRetain(v2);

  return v3;
}

uint64_t IOGCFastPathControlQueueInterfacePrepareObjCVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    IOGCFastPathControlQueueInterfacePrepareObjCVtbl_cold_2();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E41EC8 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&IOGCFastPathControlQueueInterfacePrepareObjCVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E41EC8 | (a2 << 48)));
    if (!v6)
    {
      memset(v9, 0, sizeof(v9));
      if (a2)
      {
        IOGCFastPathControlQueueInterfacePrepareObjCVtbl_cold_1(a2, v9);
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:96];
      objc_setAssociatedObject(v5, (&unk_1F4E41EC8 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&IOGCFastPathControlQueueInterfacePrepareObjCVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

CFTypeRef __IOGCFastPathControlQueueInterfaceObjCThunk_CopyDescription(void **a1)
{
  v1 = a1 - **a1;
  v2 = [v1 description];
  v3 = CFRetain(v2);

  return v3;
}

uint64_t IOGCFastPathInputQueueInterfacePrepareObjCVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __IOGCFastPathInputQueueInterfacePrepareObjCVtbl_block_invoke;
  aBlock[3] = &unk_1E8413B58;
  v5 = v3;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  if (a2 != a2)
  {
    IOGCFastPathInputQueueInterfacePrepareObjCVtbl_cold_1();
  }

  v7 = v6;
  v8 = objc_getAssociatedObject(v4, (&unk_1F4E41F28 | (a2 << 48)));
  if (!v8)
  {
    os_unfair_lock_lock(&IOGCFastPathInputQueueInterfacePrepareObjCVtbl_Lock);
    v8 = objc_getAssociatedObject(v4, (&unk_1F4E41F28 | (a2 << 48)));
    if (!v8)
    {
      memset(v11, 0, sizeof(v11));
      (v7)[2](v7, v11, a2);
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 length:96];
      objc_setAssociatedObject(v4, (&unk_1F4E41F28 | (a2 << 48)), v8, 0x301);
    }

    os_unfair_lock_unlock(&IOGCFastPathInputQueueInterfacePrepareObjCVtbl_Lock);
  }

  v9 = [v8 bytes];

  return v9;
}

uint64_t __IOGCFastPathInputQueueInterfacePrepareObjCVtbl_block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    return __IOGCFastPathInputQueueInterfacePrepareObjCVtbl_block_invoke_cold_1(a3, a2, result);
  }

  return result;
}

CFTypeRef __IOGCFastPathInputQueueInterfaceObjCThunk_CopyDescription(void **a1)
{
  v1 = a1 - **a1;
  v2 = [v1 description];
  v3 = CFRetain(v2);

  return v3;
}

uint64_t IOGCFastPathReaderInterfacePrepareObjCVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    IOGCFastPathReaderInterfacePrepareObjCVtbl_cold_2();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E41F88 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&IOGCFastPathReaderInterfacePrepareObjCVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E41F88 | (a2 << 48)));
    if (!v6)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      if (a2)
      {
        IOGCFastPathReaderInterfacePrepareObjCVtbl_cold_1(a2, v9);
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:88];
      objc_setAssociatedObject(v5, (&unk_1F4E41F88 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&IOGCFastPathReaderInterfacePrepareObjCVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

CFTypeRef __IOGCFastPathReaderInterfaceObjCThunk_CopyDescription(void **a1)
{
  v1 = a1 - **a1;
  v2 = [v1 description];
  v3 = CFRetain(v2);

  return v3;
}

uint64_t IOGCFastPathSampleContainerInterfacePrepareObjCVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    IOGCFastPathSampleContainerInterfacePrepareObjCVtbl_cold_2();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E41FE8 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&IOGCFastPathSampleContainerInterfacePrepareObjCVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E41FE8 | (a2 << 48)));
    if (!v6)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      if (a2)
      {
        IOGCFastPathSampleContainerInterfacePrepareObjCVtbl_cold_1(a2, v9);
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:232];
      objc_setAssociatedObject(v5, (&unk_1F4E41FE8 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&IOGCFastPathSampleContainerInterfacePrepareObjCVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

CFTypeRef __IOGCFastPathSampleContainerInterfaceObjCThunk_CopyDescription(void **a1)
{
  v1 = a1 - **a1;
  v2 = [v1 description];
  v3 = CFRetain(v2);

  return v3;
}

void sub_1D2C440B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __CFString *a16, uint64_t a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(exception_object);
      if (v17)
      {
        v21 = MEMORY[0x1E696ABC0];
        a12 = *MEMORY[0x1E696A578];
        v22 = *(v19 + 3776);
        [objc_opt_class() modelClass];
        v23 = [v22 stringWithFormat:@"Invalid '%@' definition."];
        v24 = *MEMORY[0x1E696A588];
        a15 = v23;
        a16 = @"Model build failed.  This is a #BUG.";
        v25 = *MEMORY[0x1E696AA08];
        a13 = v24;
        a14 = v25;
        v26 = [v20 gc_error];
        a17 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a15 forKeys:&a12 count:3];
        *v17 = [(NSError *)v21 gc_modelError:v27 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C43F98);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id _gc_log_devicedb()
{
  if (_gc_log_devicedb_onceToken != -1)
  {
    _gc_log_devicedb_cold_1();
  }

  v1 = _gc_log_devicedb_Log;

  return v1;
}

uint64_t ___gc_log_devicedb_block_invoke()
{
  _gc_log_devicedb_Log = os_log_create("com.apple.gamecontroller.HIDGameControllerMappingsDB", "Common");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D2C45684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Unwind_Resume(a1);
}

GCDisposable *PushValueChangedHandler(void *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v7 + 5;
  if (v7[5])
  {
    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00406268BE83uLL);
  }

  v10 = [v8 copy];
  v11 = *v9;
  *v9 = v10;

  v12 = 0;
  v9[1] = a3;
  v9[2] = 0;
  v13 = v7[4];
  v9[3] = v13;
  *v13 = v9;
  v7[4] = v9 + 2;
  if (a4)
  {
    v14 = [GCDisposable alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __PushValueChangedHandler_block_invoke;
    v16[3] = &unk_1E8413C30;
    v18 = v9;
    v17 = v7;
    v12 = [(GCDisposable *)v14 initWithCleanupHandler:v16];
  }

  return v12;
}

void __PushValueChangedHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v4)
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (*(a1 + 32) + 32);
  }

  *v5 = v3;
  **(*(a1 + 40) + 24) = *(*(a1 + 40) + 16);
  v6 = *(a1 + 40);
  v7 = *v6;
  *v6 = 0;

  v8 = *(a1 + 40);
  v8[1] = 0x8000000000000000;
  if (v8 != (*(a1 + 32) + 40))
  {

    free(v8);
  }
}

void sub_1D2C473D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __CFString *a39, uint64_t a40)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v40 = objc_begin_catch(exception_object);
      if (a17)
      {
        v41 = MEMORY[0x1E696ABC0];
        a35 = *MEMORY[0x1E696A578];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v43 = *MEMORY[0x1E696A588];
        a38 = v42;
        a39 = @"Model build failed.  This is a #BUG.";
        v44 = *MEMORY[0x1E696AA08];
        a36 = v43;
        a37 = v44;
        v45 = [v40 gc_error];
        a40 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a38 forKeys:&a35 count:3];
        *a17 = [(NSError *)v41 gc_modelError:v46 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C4712CLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1D2C4A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C4ABBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2C4B558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2C4B77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HIDDevicesMatched(void *a1, io_iterator_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v41 = a1;
  v2 = *MEMORY[0x1E695E480];
  while (1)
  {
    while (1)
    {
      v3 = IOIteratorNext(a2);
      if (!v3)
      {
        break;
      }

      v4 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Matched Kernel Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      entryID = 0;
      memset(v74, 0, sizeof(v74));
      IORegistryEntryGetRegistryEntryID(v3, &entryID);
      MEMORY[0x1D38AAC10](v3, v74);
      v5 = _gc_log_generic_device();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v61 = v74;
        v62 = 2048;
        v63 = entryID;
        _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "Matched kernel service <%s %#llx>.", buf, 0x16u);
      }

      CFProperty = IORegistryEntryCreateCFProperty(v3, @"Transport", v2, 0);
      v7 = CFProperty;
      if (!CFProperty || ![CFProperty isEqualToString:@"Rapport"])
      {
        v9 = IORegistryEntryCreateCFProperty(v3, @"GCSyntheticDevice", v2, 0);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
        {
          v10 = _gc_log_generic_device();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v61 = v74;
            v62 = 2048;
            v63 = entryID;
            _os_log_debug_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEBUG, "Skipping <%s %#llx>.  Synthetic device.", buf, 0x16u);
          }

          IOObjectRelease(v3);
          goto LABEL_56;
        }

        v11 = IORegistryEntryCreateCFProperty(v3, @"HIDVirtualDevice", v2, 0);
        v55 = IORegistryEntryCreateCFProperty(v3, @"VendorID", v2, 0);
        v54 = IORegistryEntryCreateCFProperty(v3, @"ProductID", v2, 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 BOOLValue])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v55 unsignedShortValue] == 1118)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v54 unsignedShortValue] == 654)
              {
                v12 = _gc_log_generic_device();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v61 = v74;
                  v62 = 2048;
                  v63 = entryID;
                  _os_log_debug_impl(&dword_1D2C3B000, v12, OS_LOG_TYPE_DEBUG, "Skipping <%s %#llx>.  3rd party synthetic device.", buf, 0x16u);
                }

                IOObjectRelease(v3);
                goto LABEL_55;
              }
            }
          }
        }

        v13 = IORegistryEntryCreateCFProperty(v3, @"GameControllerSupportedHIDDevice", v2, 0);
        if (v13)
        {
          v14 = _gc_log_generic_device();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v32 = entryID;
            v33 = [v13 BOOLValue];
            *buf = 136315650;
            v61 = v74;
            v62 = 2048;
            v63 = v32;
            v64 = 1024;
            LODWORD(v65) = v33;
            _os_log_debug_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEBUG, "Skipping <%s %#llx>.  Already determined game controller support: %{BOOL}d.", buf, 0x1Cu);
          }

          goto LABEL_29;
        }

        connect = 0;
        v15 = IOServiceOpen(v3, *MEMORY[0x1E69E9A60], 0x484944u, &connect);
        if (v15)
        {
          v14 = _gc_log_generic_device();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v61 = v74;
            v62 = 2048;
            v63 = entryID;
            v64 = 1024;
            LODWORD(v65) = v15;
            _os_log_error_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to open connection: %{mach.errno}d", buf, 0x1Cu);
          }

LABEL_29:

          IOObjectRelease(v3);
LABEL_54:

LABEL_55:
LABEL_56:

          goto LABEL_57;
        }

        v52 = GCLookupService(0, &unk_1F4E3BA08, 0, 0);
        if (v52)
        {
          v51 = GCLookupService(0, &unk_1F4E420D0, 0, 0);
          v53 = [[GCHIDDeviceSnapshot alloc] initWithService:v3];
          v16 = _gc_log_generic_device();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v44 = entryID;
            log = v16;
            v49 = [(GCHIDDeviceSnapshot *)v53 vendorID];
            v43 = [v49 unsignedIntegerValue];
            v48 = [(GCHIDDeviceSnapshot *)v53 productID];
            v42 = [v48 unsignedIntegerValue];
            v47 = [(GCHIDDeviceSnapshot *)v53 versionNumber];
            v17 = [v47 unsignedIntegerValue];
            v46 = [(GCHIDDeviceSnapshot *)v53 manufacturer];
            v18 = [(GCHIDDeviceSnapshot *)v53 product];
            v19 = [(GCHIDDeviceSnapshot *)v53 transport];
            *buf = 134219522;
            v61 = v44;
            v62 = 2048;
            v63 = v43;
            v64 = 2048;
            v65 = v42;
            v66 = 2048;
            v67 = v17;
            v68 = 2114;
            v69 = v46;
            v70 = 2114;
            v71 = v18;
            v72 = 2114;
            v73 = v19;
            v16 = log;
            _os_log_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_DEFAULT, "Check <IOHIDDevice %#llx> is a supported game controller {\n\t vendorID = %zu,\n\t productID = %zu,\n\t version = %zu,\n\t manufacturer = '%{public}@',\n\t product = '%{public}@',\n\t transport = '%{public}@',\n}", buf, 0x48u);
          }

          v20 = [v52 hasModelForDevice:v53];
          v21 = [v20 waitUntilFinished];
          if (v21 < 2)
          {
            v22 = _gc_log_generic_device();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v34 = v20;
              v35 = entryID;
              v50 = v34;
              v36 = [v34 error];
              *buf = 134218242;
              v61 = v35;
              v62 = 2112;
              v63 = v36;
              _os_log_error_impl(&dword_1D2C3B000, v22, OS_LOG_TYPE_ERROR, "<IOHIDDevice %#llx> Error checking game controller support: %@", buf, 0x16u);

              v20 = v50;
            }

            goto LABEL_40;
          }

          if (v21 == 2)
          {
            v23 = [v20 result];
            v24 = [v23 BOOLValue];

            if (v24)
            {
              v25 = _gc_log_generic_device();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v61 = entryID;
                _os_log_impl(&dword_1D2C3B000, v25, OS_LOG_TYPE_DEFAULT, "<IOHIDDevice %#llx> is a supported game controller.  Initiating rematching...", buf, 0xCu);
              }

              v26 = IOConnectSetCFProperty(connect, @"GameControllerSupportedHIDDevice", MEMORY[0x1E695E118]);
              if (v26)
              {
                v27 = _gc_log_generic_device();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218498;
                  v61 = entryID;
                  v62 = 2080;
                  v63 = "GameControllerSupportedHIDDevice";
                  v64 = 1024;
                  LODWORD(v65) = v26;
                  _os_log_error_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_ERROR, "<IOHIDDevice %#llx> Error applying '%s' attribute: %{mach.errno}d", buf, 0x1Cu);
                }
              }

              v28 = IOConnectSetCFProperty(connect, @"IOHIDDeviceForceInterfaceRematch", MEMORY[0x1E695E118]);
              if (v28)
              {
                v22 = _gc_log_generic_device();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v61 = entryID;
                  v62 = 1024;
                  LODWORD(v63) = v28;
                  _os_log_error_impl(&dword_1D2C3B000, v22, OS_LOG_TYPE_ERROR, "<IOHIDDevice %#llx> Error initiating rematching: %{mach.errno}d", buf, 0x12u);
                }

                goto LABEL_40;
              }
            }

            else
            {
              v22 = _gc_log_generic_device();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                v61 = entryID;
                _os_log_debug_impl(&dword_1D2C3B000, v22, OS_LOG_TYPE_DEBUG, "<IOHIDDevice %#llx> is NOT a supported game controller.", buf, 0xCu);
              }

LABEL_40:
            }
          }

          v29 = v53;
          v30 = [v20 result];
          GCAnalyticsSendCheckCompatibleHIDDeviceEvent(v51, v29, [v30 BOOLValue]);

          IOServiceClose(connect);
          IOObjectRelease(v3);

          v31 = v52;
        }

        else
        {
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __HIDDevicesMatched(_GCGenericDeviceManager *__strong, io_iterator_t)"}];
          [v37 handleFailureInFunction:v38 file:@"_GCGenericDeviceManager.m" lineNumber:448 description:{@"In %s, but missing dbService.", "__HIDDevicesMatched"}];

          v39 = _gc_log_generic_device();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v61 = entryID;
            _os_log_error_impl(&dword_1D2C3B000, v39, OS_LOG_TYPE_ERROR, "<IOHIDDevice %llx> Error checking game controller support: Internal error.", buf, 0xCu);
          }

          IOServiceClose(connect);
          v31 = 0;
          IOObjectRelease(v3);
        }

        goto LABEL_54;
      }

      v8 = _gc_log_generic_device();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v61 = v74;
        v62 = 2048;
        v63 = entryID;
        _os_log_debug_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEBUG, "Skipping <%s %#llx>.  Rapport device.", buf, 0x16u);
      }

      IOObjectRelease(v3);
LABEL_57:

      os_activity_scope_leave(&state);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    MEMORY[0x1D38AAB40](a2);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id gcfLocalizedStringCache()
{
  if (gcfLocalizedStringCache_onceToken != -1)
  {
    gcfLocalizedStringCache_cold_1();
  }

  v1 = _gcfLocalizedStringCache;

  return v1;
}

void __gcfLocalizedStringCache_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _gcfLocalizedStringCache;
  _gcfLocalizedStringCache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:*MEMORY[0x1E695D8F0] object:0 queue:0 usingBlock:&__block_literal_global_4];
}

void __gcfLocalizedStringCache_block_invoke_2()
{
  os_unfair_lock_lock(&gcfLocalizedStringCacheLock);
  v0 = gcfLocalizedStringCache();
  [v0 removeAllObjects];

  os_unfair_lock_unlock(&gcfLocalizedStringCacheLock);
}

id _GCFConvertStringToLocalizedString(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 description];
  }

  else
  {
    os_unfair_lock_lock(&gcfLocalizedStringCacheLock);
    v4 = gcfLocalizedStringCache();
    v3 = [v4 objectForKey:v2];
    if (!v3)
    {
      v5 = [MEMORY[0x1E696AAE8] GameControllerFoundationBundle];
      v3 = [v5 localizedStringForKey:v2 value:&stru_1F4E1BE30 table:@"Localizable"];

      [v4 setObject:v3 forKey:v2];
    }

    os_unfair_lock_unlock(&gcfLocalizedStringCacheLock);
  }

  return v3;
}

void __ServiceMatchedCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    v5 = _os_activity_create(&dword_1D2C3B000, "[HID Event System Client] Notify HID Service Matched", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);

    dispatch_assert_queue_V2(*(a1 + 16));
    v6 = CFRetain(a3);
    Property = objc_getProperty(a1, sel__servicesQueue, 24, 1);
    if (!Property)
    {
      Property = *(a1 + 16);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ____ServiceMatchedCallback_block_invoke;
    v9[3] = &unk_1E8414428;
    v9[4] = a1;
    v9[5] = v6;
    if (*(a1 + 57) == 1)
    {
      v8 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS, v9);
      dispatch_async(Property, v8);
      _Block_release(v8);
    }

    else if (Property == *(a1 + 16))
    {
      ____ServiceMatchedCallback_block_invoke(v9);
    }

    else
    {
      dispatch_async_and_wait(Property, v9);
    }

    os_activity_scope_leave(&state);
  }
}

void __EventCallback(uint64_t a1, int a2, CFTypeRef cf, const void *a4)
{
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  v8 = CFRetain(a4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____EventCallback_block_invoke;
  v10[3] = &unk_1E8414478;
  v10[4] = a1;
  v10[5] = cf;
  v10[6] = v7;
  v10[7] = v8;
  v9 = *(a1 + 32);
  if (!v9 || v9 == *(a1 + 16))
  {
    ____EventCallback_block_invoke(v10);
  }

  else
  {
    dispatch_sync(v9, v10);
  }
}

void __ServiceRemovedCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = _os_activity_create(&dword_1D2C3B000, "[HID Event System Client] Notify HID Service Removed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);

  dispatch_assert_queue_V2(*(a1 + 16));
  v6 = CFRetain(a3);
  Property = objc_getProperty(a1, sel__servicesQueue, 24, 1);
  if (!Property)
  {
    Property = *(a1 + 16);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ____ServiceRemovedCallback_block_invoke;
  v9[3] = &unk_1E8414428;
  v9[4] = a1;
  v9[5] = v6;
  if (*(a1 + 57) == 1)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS, v9);
    dispatch_async(Property, v8);
    _Block_release(v8);
  }

  else if (Property == *(a1 + 16))
  {
    ____ServiceRemovedCallback_block_invoke(v9);
  }

  else
  {
    dispatch_async_and_wait(Property, v9);
  }

  os_activity_scope_leave(&state);
}

id OUTLINED_FUNCTION_6(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 24, 1);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return [v55 countByEnumeratingWithState:&a17 objects:&a55 count:16];
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:va objects:v17 - 224 count:16];
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return [v39 countByEnumeratingWithState:&a9 objects:&a39 count:16];
}

void sub_1D2C4F9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void IOGCFastPathRoyaReplayClientSetProperty(uint64_t a1, void *a2, void *a3)
{
  do
  {
    os_unfair_lock_lock_with_options();
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 64));
    v8 = [v6 mutableCopy];

    [v8 setValue:a3 forKey:a2];
    v9 = [v8 copy];

    if (a2)
    {
      if ([a2 isEqualToString:@"ProviderID"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [a3 unsignedLongLongValue];
        }
      }
    }

    os_unfair_lock_lock_with_options();
    if (*(a1 + 72) == v6)
    {
      *(a1 + 72) = v9;
      *(a1 + 80) = v7;
      v6 = v9;
    }

    os_unfair_lock_unlock((a1 + 64));
  }

  while (v6 != v9);
}

__IOGCFastPathRoyaReplayClient *IOGCFastPathRoyaReplayClientCreate(__CFAllocator *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = *MEMORY[0x1E695E480];
  }

  v2 = [__IOGCFastPathRoyaReplayClient alloc];
  v2->super.allocator = v1;
  v2->super.pluginInterface = &v2->_IOCFPlugInVTBL;
  v2->super.clientInterface = &v2->_IOGCFastPathClientVTBL;
  v2->_IOCFPlugInVTBL = &RoyaReplayCFPlugInVtable;
  v2->_IOGCFastPathClientVTBL = &RoyaReplayClientVtable;
  v2->_lock._os_unfair_lock_opaque = 0;
  v2->_propertyTable = objc_opt_new();
  return v2;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSetProperty(unsigned int ***a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 - ***a1;
  os_unfair_lock_lock_with_options();
  v6 = *(v5 + 16);
  if (!v6)
  {
    v6 = objc_opt_new();
    *(v5 + 16) = v6;
  }

  [v6 setValue:a3 forKey:a2];
  os_unfair_lock_unlock(v5 + 28);
  return 1;
}

uint64_t IOGCFastPathRoyaReplayInputQueueResetEnqueuePosition(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_lock_with_options();
  atomic_fetch_add((a1 + 144), 1u);
  atomic_store(a2, (a1 + 152));
  os_unfair_lock_unlock((a1 + 140));
  return 0;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetTraceData(unsigned int ***a1, uint64_t a2, void *a3, void *a4, _DWORD *a5, void *a6)
{
  v6 = a1 - ***a1;
  *a3 = *(*(v6 + 2) + 40);
  *a4 = v6;
  *a5 = *(v6 + 34);
  *a6 = *(a2 + 8);
  return 1;
}

uint64_t addRef(unsigned int ***a1)
{
  v1 = a1 - ***a1;
  v2 = CFGetRetainCount(v1);
  CFRetain(v1);
  return (v2 + 1);
}

uint64_t release(unsigned int ***a1)
{
  v1 = a1 - ***a1;
  v2 = CFGetRetainCount(v1);
  CFRelease(v1);
  return (v2 - 1);
}

id clientGetProperty(unsigned int ***a1, uint64_t a2)
{
  v3 = a1 - ***a1;
  os_unfair_lock_lock_with_options();
  v4 = *(v3 + 9);
  os_unfair_lock_unlock(v3 + 16);
  v5 = [v4 objectForKey:a2];

  return v5;
}

id __IOGCFastPathRoyaReplayInputQueueGetProperty(unsigned int ***a1, uint64_t a2)
{
  v3 = a1 - ***a1;
  v4 = [*(v3 + 15) objectForKey:a2];
  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(v3 + 16) objectForKey:a2];
    os_unfair_lock_unlock(v3 + 28);
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_4_0@<X0>(unsigned int ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 32) = ____IOGCFastPathRoyaReplayInputQueueSampleModifyField_block_invoke;
  *(v5 - 24) = v4;
  *(v5 - 16) = a3;
  *(v5 - 8) = v3;

  return __IOGCFastPathRoyaReplayInputQueueSampleModify(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(unsigned int ***a1@<X0>, unsigned int ****a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 32) = ____IOGCFastPathRoyaReplayInputQueueSampleReadField_block_invoke;
  *(v5 - 24) = v4;
  *(v5 - 16) = a3;
  *(v5 - 8) = v3;

  return __IOGCFastPathRoyaReplayInputQueueSampleRead(a1, a2, v5 - 48);
}

id GCConfigXPCServiceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E3C458];
  v1 = GCConfigurationAssetManagementServiceXPCInterface();
  [v0 setInterface:v1 forSelector:sel_connectToAssetManagementServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  v2 = _GCGenericDeviceDBServiceXPCInterface();
  [v0 setInterface:v2 forSelector:sel_connectToGenericDeviceDBServiceWithClient_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2C54CA8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Block_object_dispose(&STACK[0x4D0], 8);
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Unwind_Resume(a1);
}

uint64_t _gc_log_localizedstring()
{
  if (qword_1EC72E4E8 != -1)
  {
    _gc_log_localizedstring_cold_1();
  }

  return _MergedGlobals;
}

os_log_t ___gc_log_localizedstring_block_invoke()
{
  result = os_log_create("com.apple.gamecontroller", "LocalizedString");
  _MergedGlobals = result;
  return result;
}

void sub_1D2C57C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __IOServiceMatchingCallback(const void *a1)
{
  v1 = _Block_copy(a1);
  v1[2]();
}

void __IOServiceNotificationCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _Block_copy(a1);
  v6[2](v6, a3, a4);
}

void sub_1D2C595C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __CFString *a16, uint64_t a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(exception_object);
      if (v17)
      {
        v21 = MEMORY[0x1E696ABC0];
        a12 = *MEMORY[0x1E696A578];
        v22 = [*(v19 + 3776) stringWithFormat:@"Invalid '%@' definition."];
        v23 = *MEMORY[0x1E696A588];
        a15 = v22;
        a16 = @"Model build failed.  This is a #BUG.";
        v24 = *MEMORY[0x1E696AA08];
        a13 = v23;
        a14 = v24;
        v25 = [v20 gc_error];
        a17 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a15 forKeys:&a12 count:3];
        *v17 = [(NSError *)v21 gc_modelError:v26 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C593FCLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2C5C574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __CFString *a25, uint64_t a26)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v28 = objc_begin_catch(exception_object);
      if (a14)
      {
        v29 = MEMORY[0x1E696ABC0];
        a21 = *MEMORY[0x1E696A578];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v31 = *MEMORY[0x1E696A588];
        a24 = v30;
        a25 = @"Model build failed.  This is a #BUG.";
        v32 = *MEMORY[0x1E696AA08];
        a22 = v31;
        a23 = v32;
        v33 = [v28 gc_error];
        a26 = v33;
        v34 = [*(v27 + 3872) dictionaryWithObjects:&a24 forKeys:&a21 count:3];
        *a14 = [(NSError *)v29 gc_modelError:v34 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C5C568);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2C5D314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      if (a15)
      {
        v28 = MEMORY[0x1E696ABC0];
        a19 = *MEMORY[0x1E696A578];
        v29 = [*(v25 + 3776) stringWithFormat:@"Invalid '%@' definition."];
        v30 = *MEMORY[0x1E696A588];
        a22 = v29;
        a23 = @"Model build failed.  This is a #BUG.";
        v31 = *MEMORY[0x1E696AA08];
        a20 = v30;
        a21 = v31;
        v32 = [v27 gc_error];
        a24 = v32;
        v33 = [*(v26 + 3872) dictionaryWithObjects:&a22 forKeys:&a19 count:3];
        *a15 = [(NSError *)v28 gc_modelError:v33 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C5D308);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _IOObjectCFRetain(int a1, uint64_t object)
{
  if (IOObjectRetain(object))
  {
    return 0;
  }

  else
  {
    return object;
  }
}

id _gc_log_iokit()
{
  if (_gc_log_iokit_onceToken != -1)
  {
    _gc_log_iokit_cold_1();
  }

  v1 = _gc_log_iokit_Log;

  return v1;
}

uint64_t ___gc_log_iokit_block_invoke()
{
  _gc_log_iokit_Log = os_log_create("com.apple.gamecontroller", "IOKit");

  return MEMORY[0x1EEE66BB8]();
}

__IOGCDeviceManager *IOGCDeviceManagerCreate(__CFAllocator *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = *MEMORY[0x1E695E480];
  }

  result = [__IOGCDeviceManager alloc];
  result->_allocator = v1;
  return result;
}

void IOGCDeviceManagerSetDispatchQueue(uint64_t a1, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  if (atomic_load((a1 + 16)))
  {
    IOGCDeviceManagerSetDispatchQueue_cold_1();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  label = dispatch_queue_get_label(queue);
  v6 = "";
  if (label)
  {
    v6 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOGCDeviceManager", v6);
  v7 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IOGCDeviceManagerSetCancelHandler(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 48);
  *(a1 + 48) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t IOGCDeviceManagerActivate(uint64_t result)
{
  if ((atomic_fetch_or((result + 16), 1u) & 1) == 0)
  {
    v1 = result;
    if (!*(result + 40))
    {
      IOGCDeviceManagerActivate_cold_1();
    }

    *(result + 56) = objc_alloc_init(GCIONotificationPort);
    __IOGCDeviceManagerStartMatching(v1);
    [*(v1 + 56) setQueue:*(v1 + 40)];
    v2 = *(v1 + 56);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __IOGCDeviceManagerActivate_block_invoke;
    v3[3] = &unk_1E8414908;
    v3[4] = v1;
    return [v2 addCancellationHandler:v3 onQueue:*(v1 + 40)];
  }

  return result;
}

void __IOGCDeviceManagerStartMatching(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      if (*(a1 + 64))
      {
        IOObjectRelease(*(a1 + 64));
        *(a1 + 64) = 0;
        v2 = *(a1 + 56);
      }

      notification = 0;
      v4 = [v2 port];
      v5 = CFRetain(v3);
      v6 = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v5, __IOGCDeviceManagerDevicesAdded, a1, &notification);
      if (v6)
      {
        v7 = v6;
        v8 = _gc_log_iokit();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __IOGCDeviceManagerStartMatching_cold_1(a1, v7, v8);
        }
      }

      v9 = notification;
      *(a1 + 64) = notification;
      __IOGCDeviceManagerHandleDevices(a1, v9, 1, 1);
    }
  }
}

void __IOGCDeviceManagerActivate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v2)
  {
    v2[2](v2);

    _Block_release(v2);
  }
}

void IOGCDeviceManagerCancel(uint64_t a1)
{
  if ((atomic_fetch_or((a1 + 16), 3u) & 2) == 0)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      IOObjectRelease(v2);
      *(a1 + 64) = 0;
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      CFDictionaryRemoveAllValues(v3);
    }

    *(a1 + 56) = 0;
  }
}

void IOGCDeviceManagerSetDeviceMatching(uint64_t a1, uint64_t a2)
{
  v4 = IOServiceMatching("IOHIDGCDevice");
  v5 = v4;
  if (a2)
  {
    [(__CFDictionary *)v4 addEntriesFromDictionary:a2];
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 24) = v5;

  __IOGCDeviceManagerStartMatching(a1);
}

void __IOGCDeviceManagerHandleDevices(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695E9F8];
  Mutable = CFSetCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9F8]);
  v10 = CFSetCreateMutable(*(a1 + 8), 0, v8);
  v12 = *(a1 + 32);
  if (v12)
  {
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    Count = CFSetGetCount(Mutable);
    *(a1 + 32) = CFSetCreateMutable(v19, Count, MEMORY[0x1E695E9F8]);
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  *&v11 = 138413058;
  v31 = v11;
  while (1)
  {
    while (1)
    {
      v13 = IOIteratorNext(a2);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = [[__IOGCDevice alloc] initWithPort:v13 error:0];
      IOObjectRelease(v14);
      if (v15)
      {
        CFSetAddValue(Mutable, v15);
      }

      else
      {
        entryID = 0;
        memset(v48, 0, sizeof(v48));
        IORegistryEntryGetRegistryEntryID(v14, &entryID);
        MEMORY[0x1D38AAC10](v14, v48);
        v16 = _gc_log_iokit();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = entryID;
          v18 = [0 code];
          *buf = v31;
          v41 = a1;
          v42 = 2080;
          v43 = v48;
          v44 = 2048;
          v45 = v17;
          v46 = 1024;
          v47 = v18;
          _os_log_error_impl(&dword_1D2C3B000, v16, OS_LOG_TYPE_ERROR, "%@ #ERROR Failed to create IOGCDevice for service <%s %#llx>: %{mach.errno}d.", buf, 0x26u);
        }
      }
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    MEMORY[0x1D38AAB40](a2);
  }

LABEL_12:
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ____IOGCDeviceManagerHandleDevices_block_invoke;
  v37[3] = &unk_1E8414930;
  v37[4] = a1;
  v37[5] = a1;
  v37[6] = v10;
  -[__CFSet filterUsingPredicate:](Mutable, "filterUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithBlock:{v37, v31}]);
  if (a3)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = *(a1 + 32);
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * i);
          if (!CFSetContainsValue(Mutable, v26))
          {
            v27 = *(a1 + 72);
            if (v27)
            {
              CFDictionaryRemoveValue(v27, v26);
            }
          }

          CFSetAddValue(v10, v26);
        }

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v23);
    }
  }

  [*(a1 + 32) minusSet:v10];
  [*(a1 + 32) unionSet:Mutable];
  if (a4)
  {
    v28 = *(a1 + 80);
    if (v28)
    {
      v29 = *(a1 + 88);
      CFRetain(Mutable);
      CFRetain(v10);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ____IOGCDeviceManagerHandleDevices_block_invoke_36;
      block[3] = &__block_descriptor_64_e5_v8__0l;
      block[4] = v10;
      block[5] = v28;
      block[6] = v29;
      block[7] = Mutable;
      if (v12)
      {
        ____IOGCDeviceManagerHandleDevices_block_invoke_36(block);
      }

      else
      {
        dispatch_async(*(a1 + 40), block);
      }
    }
  }

  CFRelease(v10);
  CFRelease(Mutable);
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t IOGCDeviceManagerSetDeviceMatchingCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (atomic_load((result + 16)))
  {
    IOGCDeviceManagerSetDispatchQueue_cold_1();
  }

  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

void __IOGCDeviceManagerStopObservingDevice(uint64_t a1, CFTypeRef cf, int a3)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    CFDictionaryRemoveValue(v6, cf);
  }

  if (a3)
  {
    CFRetain(cf);
    CFSetRemoveValue(*(a1 + 32), cf);
    v7 = *(a1 + 80);
    if (v7)
    {
      v7(*(a1 + 88), cf, 0);
    }

    CFRelease(cf);
  }
}

__IOGCFastPathSimpleReader *IOGCFastPathSimpleReaderCreate(__CFAllocator *a1, void *a2)
{
  v4 = [__IOGCFastPathSimpleReader alloc];
  v4->super.allocator = a1;
  v4->super.queue = a2;
  v4->super.readerInterface = &v4->_IOGCFastPathReaderVTBL;
  v4->_IOGCFastPathReaderVTBL = &__IOGCFastPathSimpleReaderVtable;
  return v4;
}

uint64_t __IOGCFastPathSimpleReader_QueryInterface(unsigned int ***a1, CFUUIDBytes a2, void *a3)
{
  v5 = ***a1;
  v6 = CFUUIDCreateFromUUIDBytes(0, a2);
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x6Bu, 0x29u, 0x76u, 0xBCu, 0xFu, 0xD5u, 0x4Bu, 0x35u, 0xAAu, 0x8Cu, 7u, 0x9Du, 0x84u, 0xBEu, 0xAu, 0x4Bu), CFEqual(v6, v8)))
  {
    *a3 = a1 - v5 + 32;
    CFRetain(a1 - v5);
    v9 = 0;
  }

  else
  {
    v9 = 2147483652;
  }

  CFRelease(v6);
  return v9;
}

uint64_t __IOGCFastPathSimpleReader_AddRef(unsigned int ***a1)
{
  v1 = a1 - ***a1;
  v2 = CFGetRetainCount(v1);
  CFRetain(v1);
  return (v2 + 1);
}

uint64_t __IOGCFastPathSimpleReader_Release(unsigned int ***a1)
{
  v1 = a1 - ***a1;
  v2 = CFGetRetainCount(v1);
  CFRelease(v1);
  return (v2 - 1);
}

uint64_t __IOGCFastPathSimpleReader_ReadNextSample(unsigned int ***a1, _OWORD *a2)
{
  v3 = a1 - ***a1;
  memset(v8, 0, sizeof(v8));
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v8;
  }

  Sample = IOGCFastPathInputQueueGetSample(*(v3 + 2), *(v3 + 5) + 1, v4);
  v6 = Sample;
  if (Sample == -536870169)
  {
LABEL_8:
    ++*(v3 + 5);
    return v6;
  }

  if (!Sample)
  {
    if (!a2)
    {
      IOGCFastPathSampleDestory(v8);
    }

    goto LABEL_8;
  }

  return v6;
}

uint64_t __IOGCFastPathSimpleReader_ReadPreviousSample(unsigned int ***a1, _OWORD *a2)
{
  v2 = a1 - ***a1;
  v3 = *(v2 + 5);
  if (!v3)
  {
    return 3758097127;
  }

  memset(v9, 0, sizeof(v9));
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v9;
  }

  Sample = IOGCFastPathInputQueueGetSample(*(v2 + 2), v3 - 1, v5);
  v7 = Sample;
  if (Sample == -536870169)
  {
    goto LABEL_9;
  }

  if (!Sample)
  {
    if (!a2)
    {
      IOGCFastPathSampleDestory(v9);
    }

LABEL_9:
    --*(v2 + 5);
  }

  return v7;
}

uint64_t GCPrepareIOCFPlugInVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    GCPrepareIOCFPlugInVtbl_cold_2();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E42190 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&GCPrepareIOCFPlugInVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E42190 | (a2 << 48)));
    if (!v6)
    {
      memset(v9, 0, sizeof(v9));
      if (a2)
      {
        GCPrepareIOCFPlugInVtbl_cold_1(a2, v9);
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:64];
      objc_setAssociatedObject(v5, (&unk_1F4E42190 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&GCPrepareIOCFPlugInVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

uint64_t IOGCCircularControlQueueMemoryInit(unint64_t *a1, uint64_t a2, unsigned int a3, int a4, unint64_t a5)
{
  bzero(a1, a3);
  *a2 = a5;
  *a1 = a5;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a1 + 2) = a3;
  *(a1 + 3) = a4;
  atomic_store(0, a1 + 2);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 3);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 4);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 5);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 6);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 7);
  v10 = ((2 * a4 + 14) & 0xFFFFFFF0) + 64;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 8);
  if (v10 <= a3 - 72)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (a1 + v11 + 72);
      *v13 = a5;
      v13[2] = 0;
      v13[3] = -1;
      v13[4] = -1;
      v13[5] = 0;
      ++v12;
      v11 += v10;
      v13[6] = -1;
      v13[7] = -1;
    }

    while (v12 < (a3 - 72) / v10);
  }

  return 0;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a10;
  if (a10 == -1)
  {
    return 3758097112;
  }

  if (a10 < a8)
  {
LABEL_10:
    v20 = 3758097136;
    if (*(a1 + 40) == 1)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_3;
      v23[3] = &unk_1E8414A90;
      v23[4] = *(a1 + 32);
      v23[5] = v12;
      v23[6] = a7;
      v19 = (*(a12 + 16))(a12, a6, v23);
      if (v19 == -536870166)
      {
        return 3758097136;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9820];
    while (1)
    {
      v24[0] = v16;
      v24[1] = 0x40000000;
      v24[2] = __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_2;
      v24[3] = &unk_1E8414A68;
      v24[4] = *(a1 + 32);
      v24[5] = v12;
      v24[6] = a7;
      v24[7] = a9;
      v17 = (*(a12 + 16))(a12, v12, v24);
      if (v17 != -536870166 && v17 != -536870184)
      {
        return v17;
      }

      if (--v12 < a8)
      {
        goto LABEL_10;
      }
    }
  }

  return v20;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  v4 = *(a1 + 40);
  **(a1 + 48) = v4;
  atomic_store(v4 + 1, *(a1 + 56));
  return result;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  **(a1 + 48) = *(a1 + 40);
  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  result = 3758097112;
  if (a8 != -1 && a10 != -1)
  {
    v14 = a8;
    v16 = MEMORY[0x1E69E9820];
    while (1)
    {
      v20[0] = v16;
      v20[1] = 0x40000000;
      v20[2] = __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_2;
      v20[3] = &unk_1E8414AE0;
      v20[4] = *(a1 + 32);
      v20[5] = v14;
      v20[6] = a7;
      v20[7] = a9;
      result = (*(a12 + 16))(a12, v14, v20);
      if (result != -536870166 && result != -536870184)
      {
        break;
      }

      if (++v14 >= a10)
      {
        result = 3758097136;
        if (*(a1 + 40) == 1)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 0x40000000;
          v19[2] = __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_3;
          v19[3] = &unk_1E8414B08;
          v19[4] = *(a1 + 32);
          v19[5] = v14;
          LODWORD(result) = (*(a12 + 16))(a12, a6, v19);
          if (result == -536870166)
          {
            return 3758097136;
          }

          else
          {
            return result;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  v4 = *(a1 + 40);
  **(a1 + 48) = v4;
  atomic_store(v4 + 1, *(a1 + 56));
  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), 1, a2, a3))
  {
    return 0;
  }

  else
  {
    return 3758097130;
  }
}

void OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 24 * (atomic_load_explicit((a2 + 16), memory_order_acquire) & 1));
  atomic_load_explicit(v2 + 3, memory_order_acquire);
  atomic_load_explicit(v2 + 4, memory_order_acquire);
  atomic_load_explicit(v2 + 5, memory_order_acquire);
  atomic_load_explicit((a2 + 16), memory_order_acquire);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t **a1)
{
  result = 3758097105;
  v3 = a1[1];
  v4 = **a1;
  return result;
}

uint64_t addRef_0(void **a1)
{
  v1 = a1 - **a1;
  v2 = CFGetRetainCount(v1);
  CFRetain(v1);

  return (v2 + 1);
}

uint64_t release_0(void **a1)
{
  v1 = a1 - **a1;
  v2 = CFGetRetainCount(v1);
  CFRelease(v1);

  return (v2 - 1);
}

uint64_t GCPrepareIUnknownVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    GCPrepareIUnknownVtbl_cold_1();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E391D0 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&GCPrepareIUnknownVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E391D0 | (a2 << 48)));
    if (!v6)
    {
      v9 = 0u;
      v10 = 0u;
      if (a2)
      {
        *&v9 = a2;
        *(&v9 + 1) = queryInterface_0;
        *&v10 = addRef_0;
        *(&v10 + 1) = release_0;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v9 length:32];
      objc_setAssociatedObject(v5, (&unk_1F4E391D0 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&GCPrepareIUnknownVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

id GCConfigurationAssetManagementServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E3AEB8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_assetsWithReply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_currentAsset_withReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1D2C621C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_debug_impl(a1, v15, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_7_2()
{
  v2 = *(v0 + 8);

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
}

void sub_1D2C64BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void *__Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __ProcessHIDElements_block_invoke(uint64_t a1, IOHIDElementRef element)
{
  v23 = *MEMORY[0x1E69E9840];
  UsagePage = IOHIDElementGetUsagePage(element);
  Usage = IOHIDElementGetUsage(element);
  Type = IOHIDElementGetType(element);
  if (Type - 1 >= 3)
  {
    if (Type != kIOHIDElementTypeCollection)
    {
      goto LABEL_35;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = IOHIDElementGetChildren(element);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          (*(*(*(*(a1 + 64) + 8) + 40) + 16))(*(*(*(a1 + 64) + 8) + 40));
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (UsagePage > 8)
  {
    if (UsagePage == 9 || UsagePage == 12)
    {
LABEL_27:
      if ([*(a1 + 32) containsObject:element])
      {
        goto LABEL_35;
      }

      v13 = 56;
      goto LABEL_29;
    }
  }

  else
  {
    if (UsagePage != 1)
    {
      if (UsagePage != 2 || (Usage - 186) > 0xB || ((1 << (Usage + 70)) & 0xC03) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (Usage <= 56)
    {
      if ((Usage - 48) >= 9)
      {
        goto LABEL_35;
      }

LABEL_22:
      if ([*(a1 + 32) containsObject:element])
      {
        goto LABEL_35;
      }

      v13 = 40;
      goto LABEL_29;
    }

    if ((Usage - 133) <= 0xE && ((1 << (Usage + 123)) & 0x7801) != 0 || (Usage - 61) < 2)
    {
      goto LABEL_27;
    }

    if (Usage == 57 && ([*(a1 + 32) containsObject:element] & 1) == 0)
    {
      v13 = 48;
LABEL_29:
      v7 = *(a1 + v13);
      [*(a1 + 32) addObject:element];
      if (!v7)
      {
        goto LABEL_35;
      }

      for (j = 0; j < [v7 count]; ++j)
      {
        v15 = [v7 objectAtIndexedSubscript:j];
        v16 = IOHIDElementGetUsage(v15);

        if (Usage < v16)
        {
          break;
        }
      }

      [v7 insertObject:element atIndex:j];
      goto LABEL_34;
    }
  }

LABEL_35:
  v17 = *MEMORY[0x1E69E9840];
}

void __ProcessHIDElements_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  element = a2;
  IOHIDElementSetProperty(element, @"UsageType", &unk_1F4E36958);
  IOHIDElementSetProperty(element, @"UsageTypeIndex", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3]);
}

void __ProcessHIDElements_block_invoke_76(uint64_t a1, void *a2, uint64_t a3)
{
  element = a2;
  IOHIDElementSetProperty(element, @"UsageType", &unk_1F4E36970);
  IOHIDElementSetProperty(element, @"UsageTypeIndex", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3]);
}

void __ProcessHIDElements_block_invoke_81(uint64_t a1, void *a2, uint64_t a3)
{
  element = a2;
  IOHIDElementSetProperty(element, @"UsageType", &unk_1F4E36988);
  IOHIDElementSetProperty(element, @"UsageTypeIndex", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3]);
}

id GCHIDDeviceAttributesPredicateFromMatchingDictionary(void *a1, void *a2)
{
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    GCHIDDeviceAttributesPredicateFromMatchingDictionary_cold_1();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v4 = objc_opt_new();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke;
  v12 = &unk_1E8414E40;
  v14 = &v15;
  v5 = v4;
  v13 = v5;
  [v3 gc_enumerateKeysAndObjectsUsingBlock:&v9];
  v6 = [v5 count];
  if (v6 == [v3 count])
  {
    v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];
  }

  else
  {
    v7 = 0;
    if (a2)
    {
      *a2 = v16[5];
    }
  }

  _Block_object_dispose(&v15, 8);

  return v7;
}

void sub_1D2C68970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke(uint64_t a1, void (**a2)(void, void, void), void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v30 = 0;
  v10 = (a2)[2](v8, v9, &v30);

  v11 = v30;
  if (!v10)
  {
    __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1();
    goto LABEL_18;
  }

  if (![v10 isEqualToString:@"Transport"])
  {
    if ([v10 isEqualToString:@"VendorID"])
    {
      v17 = objc_opt_class();
      v28 = v11;
      v13 = v7[2](v7, v17, &v28);
      v14 = v28;

      if (!v13)
      {
        __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1();
        goto LABEL_15;
      }

      v15 = MEMORY[0x1E696ABC8];
      v16 = @"vendorID";
      goto LABEL_14;
    }

    if ([v10 isEqualToString:@"ProductID"])
    {
      v18 = objc_opt_class();
      v27 = v11;
      v13 = v7[2](v7, v18, &v27);
      v14 = v27;

      if (!v13)
      {
        __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1();
        goto LABEL_15;
      }

      v15 = MEMORY[0x1E696ABC8];
      v16 = @"productID";
      goto LABEL_14;
    }

    if ([v10 isEqualToString:@"VersionNumber"])
    {
      v19 = objc_opt_class();
      v26 = v11;
      v13 = v7[2](v7, v19, &v26);
      v14 = v26;

      if (!v13)
      {
        __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1();
        goto LABEL_15;
      }

      v15 = MEMORY[0x1E696ABC8];
      v16 = @"versionNumber";
      goto LABEL_14;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected key '%@'.", v10];
    v24 = *(*(a1 + 40) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    *a4 = 1;
LABEL_18:
    v14 = v11;
    goto LABEL_16;
  }

  v12 = objc_opt_class();
  v29 = v11;
  v13 = v7[2](v7, v12, &v29);
  v14 = v29;

  if (!v13)
  {
    __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1();
    goto LABEL_15;
  }

  v15 = MEMORY[0x1E696ABC8];
  v16 = @"transport";
LABEL_14:
  v20 = [v15 expressionForKeyPath:v16];
  v21 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v13];
  v22 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v20 rightExpression:v21 modifier:0 type:4 options:0];
  [*(a1 + 32) addObject:v22];

LABEL_15:
LABEL_16:
}

id GCHIDDeviceAttributeKeys()
{
  v0 = GCHIDDeviceAttributeKeys_AllowedKeys;
  if (!GCHIDDeviceAttributeKeys_AllowedKeys)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F4E36AF0];
    v2 = GCHIDDeviceAttributeKeys_AllowedKeys;
    GCHIDDeviceAttributeKeys_AllowedKeys = v1;

    v0 = GCHIDDeviceAttributeKeys_AllowedKeys;
  }

  return v0;
}

id GCHIDElementAttributeKeys()
{
  v0 = GCHIDElementAttributeKeys_AllowedKeys;
  if (!GCHIDElementAttributeKeys_AllowedKeys)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F4E36B08];
    v2 = GCHIDElementAttributeKeys_AllowedKeys;
    GCHIDElementAttributeKeys_AllowedKeys = v1;

    v0 = GCHIDElementAttributeKeys_AllowedKeys;
  }

  return v0;
}

void OUTLINED_FUNCTION_0_9(uint64_t a1)
{
  v3 = *(*(v1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

os_log_t gc_log_create_configuration(char *category)
{
  v1 = os_log_create("com.apple.gamecontroller.Configuration", category);

  return v1;
}

id _gc_log_configuration()
{
  if (_gc_log_configuration_onceToken != -1)
  {
    _gc_log_configuration_cold_1();
  }

  v1 = _gc_log_configuration_Log;

  return v1;
}

uint64_t ___gc_log_configuration_block_invoke()
{
  _gc_log_configuration_Log = os_log_create("com.apple.gamecontroller.Configuration", "Common");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D2C6CA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __CFString *a31, uint64_t a32)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v34 = objc_begin_catch(exception_object);
      if (a14)
      {
        v35 = MEMORY[0x1E696ABC0];
        a27 = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v37 = *MEMORY[0x1E696A588];
        a30 = v36;
        a31 = @"Model build failed.  This is a #BUG.";
        v38 = *MEMORY[0x1E696AA08];
        a28 = v37;
        a29 = v38;
        v39 = [v34 gc_error];
        a32 = v39;
        v40 = [*(v33 + 3872) dictionaryWithObjects:&a30 forKeys:&a27 count:3];
        *a14 = [(NSError *)v35 gc_modelError:v40 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C6CA8CLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2C6D97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _gc_log_runtime_issue()
{
  if (_gc_log_runtime_issue_onceToken != -1)
  {
    _gc_log_runtime_issue_cold_1();
  }

  v1 = _gc_log_runtime_issue_Log;

  return v1;
}

uint64_t ___gc_log_runtime_issue_block_invoke()
{
  _gc_log_runtime_issue_Log = os_log_create("com.apple.gamecontroller", "RuntimeIssues");

  return MEMORY[0x1EEE66BB8]();
}

id _gc_log_signpost()
{
  if (_gc_log_signpost_onceToken != -1)
  {
    _gc_log_signpost_cold_1();
  }

  v1 = _gc_log_signpost_Log;

  return v1;
}

uint64_t ___gc_log_signpost_block_invoke()
{
  _gc_log_signpost_Log = os_log_create("com.apple.gamecontroller", "Signpost");

  return MEMORY[0x1EEE66BB8]();
}

os_log_t gc_log_create_ipc(char *category)
{
  v1 = os_log_create("com.apple.gamecontroller.ipc", category);

  return v1;
}

id _gc_log_ipc()
{
  if (_gc_log_ipc_onceToken != -1)
  {
    _gc_log_ipc_cold_1();
  }

  v1 = _gc_log_ipc_Log;

  return v1;
}

uint64_t ___gc_log_ipc_block_invoke()
{
  _gc_log_ipc_Log = os_log_create("com.apple.gamecontroller.hid", "Common");

  return MEMORY[0x1EEE66BB8]();
}

os_log_t gc_log_create_hid(char *category)
{
  v1 = os_log_create("com.apple.gamecontroller.hid", category);

  return v1;
}

id _gc_log_hid()
{
  if (_gc_log_hid_onceToken != -1)
  {
    _gc_log_hid_cold_1();
  }

  v1 = _gc_log_hid_Log;

  return v1;
}

uint64_t ___gc_log_hid_block_invoke()
{
  _gc_log_hid_Log = os_log_create("com.apple.gamecontroller.hid", "Common");

  return MEMORY[0x1EEE66BB8]();
}

id _gc_log_hid_input()
{
  if (_gc_log_hid_input_onceToken != -1)
  {
    _gc_log_hid_input_cold_1();
  }

  v1 = _gc_log_hid_input_Log;

  return v1;
}

uint64_t ___gc_log_hid_input_block_invoke()
{
  _gc_log_hid_input_Log = os_log_create("com.apple.gamecontroller.hid", "Input");

  return MEMORY[0x1EEE66BB8]();
}

os_log_t gc_log_create_device(char *category)
{
  v1 = os_log_create("com.apple.gamecontroller.device", category);

  return v1;
}

id _gc_log_device()
{
  if (_gc_log_device_onceToken != -1)
  {
    _gc_log_device_cold_1();
  }

  v1 = _gc_log_device_Log;

  return v1;
}

uint64_t ___gc_log_device_block_invoke()
{
  _gc_log_device_Log = os_log_create("com.apple.gamecontroller.device", "Common");

  return MEMORY[0x1EEE66BB8]();
}

id _gc_log_device_configuration()
{
  if (_gc_log_device_configuration_onceToken != -1)
  {
    _gc_log_device_configuration_cold_1();
  }

  v1 = _gc_log_device_configuration_Log;

  return v1;
}

uint64_t ___gc_log_device_configuration_block_invoke()
{
  _gc_log_device_configuration_Log = os_log_create("com.apple.gamecontroller.device", "Configuration");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D2C6E9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void __USBDevicesMatched(void *a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a1;
  alloc = *MEMORY[0x1E695E4A8];
  while (2)
  {
    while (1)
    {
      v4 = IOIteratorNext(a2);
      if (!v4)
      {
        break;
      }

      v5 = _os_activity_create(&dword_1D2C3B000, "[Logitech Racing Wheel Manager] Matched Kernel Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v5, &state);
      entryID = 0;
      memset(v84, 0, 128);
      IORegistryEntryGetRegistryEntryID(v4, &entryID);
      MEMORY[0x1D38AAC10](v4, v84);
      v6 = v3[1];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        _os_log_debug_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_DEBUG, "Matched kernel service <%s %#llx>.", buf, 0x16u);
      }

      CFProperty = IORegistryEntryCreateCFProperty(v4, @"idVendor", 0, 0);
      v8 = IORegistryEntryCreateCFProperty(v4, @"idProduct", 0, 0);
      if (![CFProperty isEqual:&unk_1F4E369B8] || (objc_msgSend(v8, "isEqual:", &unk_1F4E36A00) & 1) == 0 && (objc_msgSend(v8, "isEqual:", &unk_1F4E369D0) & 1) == 0)
      {
        v18 = v3[1];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          _os_log_error_impl(&dword_1D2C3B000, v18, OS_LOG_TYPE_ERROR, "<%s %#llx> Unknown device.", buf, 0x16u);
        }

        goto LABEL_21;
      }

      theInterface = 0;
      theScore = 0;
      v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v11 = IOCreatePlugInInterfaceForService(v4, v9, v10, &theInterface, &theScore);
      if (v11 || (v12 = theInterface) == 0)
      {
        v19 = v3[1];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v11;
          _os_log_error_impl(&dword_1D2C3B000, v19, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to load IOUSBDeviceUserClient plugin: %{mach.errno}d.", buf, 0x1Cu);
        }

LABEL_21:
        IOObjectRelease(v4);
        goto LABEL_22;
      }

      v73 = 0;
      QueryInterface = (*theInterface)->QueryInterface;
      v14 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Cu, 0x81u, 0x87u, 0xD0u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0x8Bu, 0x45u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v15 = CFUUIDGetUUIDBytes(v14);
      v16 = (QueryInterface)(v12, *&v15.byte0, *&v15.byte8, &v73);
      if (v16)
      {
        v17 = v3[1];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v16;
          _os_log_error_impl(&dword_1D2C3B000, v17, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to obtain IOUSBDeviceInterface from IOUSBDeviceUserClient plugin: %i.", buf, 0x1Cu);
        }

        ((*theInterface)->Release)(theInterface);
        IOObjectRelease(v4);
        goto LABEL_22;
      }

      IOObjectRelease(v4);
      ((*theInterface)->Release)(theInterface);
      theInterface = 0;
      v20 = (*(*v73 + 64))(v73);
      if (v20)
      {
        v21 = v3[1];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v20;
          _os_log_error_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_ERROR, "<%s %#llx> Device USBDeviceOpen failed: %{mach.errno}d.", buf, 0x1Cu);
        }

        (*(*v73 + 24))(v73);
        goto LABEL_22;
      }

      v72 = 0;
      v22 = (*(*v73 + 152))(v73, &v72);
      if (v22)
      {
        v23 = v3[1];
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 136315650;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        v82 = 1024;
        v83 = v22;
        v30 = v23;
        v31 = "<%s %#llx> Device GetNumberOfConfigurations failed: %{mach.errno}d.";
        v32 = 28;
LABEL_46:
        _os_log_error_impl(&dword_1D2C3B000, v30, OS_LOG_TYPE_ERROR, v31, buf, v32);
        goto LABEL_69;
      }

      if (!v72)
      {
        v29 = v3[1];
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 136315394;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        v30 = v29;
        v31 = "<%s %#llx> Device returned 0 configurations.";
        v32 = 22;
        goto LABEL_46;
      }

      v71 = 0;
      v24 = (*(*v73 + 168))(v73, 0, &v71);
      if (v24 || !v71)
      {
        v33 = v3[1];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 136315650;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        v82 = 1024;
        v83 = v24;
        v27 = v33;
        v28 = "<%s %#llx> Device GetConfigurationDescriptorPtr failed: %{mach.errno}d.";
        goto LABEL_60;
      }

      v25 = (*(*v73 + 184))(v73, *(v71 + 5));
      if (v25)
      {
        v26 = v3[1];
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 136315650;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        v82 = 1024;
        v83 = v25;
        v27 = v26;
        v28 = "<%s %#llx> Device SetConfiguration failed: %{mach.errno}d.";
LABEL_60:
        _os_log_error_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x1Cu);
LABEL_69:
        (*(*v73 + 72))(v73);
        (*(*v73 + 24))(v73);
        goto LABEL_22;
      }

      v70 = -1;
      iterator = 0;
      v34 = (*(*v73 + 224))(v73, &v70, &iterator);
      if (v34 || !iterator)
      {
        v36 = v3[1];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v34;
          _os_log_error_impl(&dword_1D2C3B000, v36, OS_LOG_TYPE_ERROR, "<%s %#llx> Device CreateInterfaceIterator failed: %{mach.errno}d.", buf, 0x1Cu);
        }

        goto LABEL_69;
      }

      while (1)
      {
        v35 = IOIteratorNext(iterator);
        if (v35 || IOIteratorIsValid(a2))
        {
          break;
        }

        MEMORY[0x1D38AAB40](a2);
      }

      IOObjectRelease(iterator);
      if (!v35)
      {
        v46 = v3[1];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          _os_log_error_impl(&dword_1D2C3B000, v46, OS_LOG_TYPE_ERROR, "<%s %#llx> No device interfaces found.", buf, 0x16u);
        }

        goto LABEL_69;
      }

      v37 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v38 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v39 = IOCreatePlugInInterfaceForService(v35, v37, v38, &theInterface, &theScore);
      if (v39 || (v40 = theInterface) == 0)
      {
        v47 = v3[1];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v39;
          _os_log_error_impl(&dword_1D2C3B000, v47, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to load IOUSBInterfaceUserClient plugin: %{mach.errno}d.", buf, 0x1Cu);
        }

        IOObjectRelease(v35);
        goto LABEL_69;
      }

      v68 = 0;
      v41 = (*theInterface)->QueryInterface;
      v42 = CFUUIDGetConstantUUIDWithBytes(alloc, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au);
      v43 = CFUUIDGetUUIDBytes(v42);
      v44 = (v41)(v40, *&v43.byte0, *&v43.byte8, &v68);
      if (v44)
      {
        v45 = v3[1];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v44;
          _os_log_error_impl(&dword_1D2C3B000, v45, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to obtain IOUSBInterfaceInterface from IOUSBDeviceUserClient plugin: %i.", buf, 0x1Cu);
        }

        ((*theInterface)->Release)(theInterface);
        IOObjectRelease(v35);
        goto LABEL_69;
      }

      IOObjectRelease(v35);
      ((*theInterface)->Release)(theInterface);
      theInterface = 0;
      v48 = (*(*v68 + 352))(v68);
      if (v48)
      {
        v49 = v3[1];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v48;
          _os_log_error_impl(&dword_1D2C3B000, v49, OS_LOG_TYPE_ERROR, "<%s %#llx> Interface USBInterfaceOpenSeize failed: %{mach.errno}d.", buf, 0x1Cu);
        }

        (*(*v68 + 24))(v68);
        goto LABEL_69;
      }

      v67 = 0;
      v50 = (*(*v68 + 152))(v68, &v67);
      if (v50)
      {
        v51 = v3[1];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v50;
          _os_log_error_impl(&dword_1D2C3B000, v51, OS_LOG_TYPE_ERROR, "<%s %#llx> Interface GetNumEndpoints failed: %{mach.errno}d.", buf, 0x1Cu);
        }

        goto LABEL_86;
      }

      if (!v67)
      {
        v57 = v3[1];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          _os_log_error_impl(&dword_1D2C3B000, v57, OS_LOG_TYPE_ERROR, "<%s %#llx> Interface returned 0 endpoints.", buf, 0x16u);
        }

        goto LABEL_86;
      }

      v52 = 0;
      while (1)
      {
        v66 = 0;
        v65 = 0;
        v64 = 0;
        LOWORD(v62) = 0;
        v53 = (*(*v68 + 208))(v68, v52, &v66, &v65 + 1, &v65, &v62, &v64);
        if (v53)
        {
          v54 = v3[1];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v79 = v84;
            v80 = 2048;
            v81 = entryID;
            v82 = 1024;
            v83 = v53;
            _os_log_error_impl(&dword_1D2C3B000, v54, OS_LOG_TYPE_ERROR, "<%s %#llx> Interface GetPipeProperties failed: %{mach.errno}d.", buf, 0x1Cu);
          }

          goto LABEL_83;
        }

        if (v65 == 3 || v66 == 0)
        {
          break;
        }

LABEL_83:
        if (v67 <= ++v52)
        {
          goto LABEL_84;
        }
      }

      if (HIBYTE(v65) == 255)
      {
LABEL_84:
        v56 = v3[1];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          _os_log_error_impl(&dword_1D2C3B000, v56, OS_LOG_TYPE_ERROR, "<%s %#llx> Interrupt pipe not found.", buf, 0x16u);
        }

        goto LABEL_86;
      }

      v63 = 66;
      v62 = 16842767;
      v58 = (*(*v68 + 256))(v68);
      v59 = v3[1];
      if (v58)
      {
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v79 = v84;
          v80 = 2048;
          v81 = entryID;
          v82 = 1024;
          v83 = v58;
          _os_log_error_impl(&dword_1D2C3B000, v59, OS_LOG_TYPE_ERROR, "<%s %#llx> Error issuing mode switch command: %{mach.errno}d", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v79 = v84;
        v80 = 2048;
        v81 = entryID;
        _os_log_impl(&dword_1D2C3B000, v59, OS_LOG_TYPE_DEFAULT, "<%s %#llx> Issued mode switch command (G92x -> G92x/HID++).", buf, 0x16u);
      }

LABEL_86:
      (*(*v68 + 72))(v68);
      (*(*v68 + 24))(v68);
      (*(*v73 + 72))(v73);
      (*(*v73 + 24))(v73);
LABEL_22:

      os_activity_scope_leave(&state);
    }

    if (!IOIteratorIsValid(a2))
    {
      MEMORY[0x1D38AAB40](a2);
      continue;
    }

    break;
  }

  v60 = *MEMORY[0x1E69E9840];
}

void __HIDDevicesMatched_0(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  *&v5 = 136315650;
  v30 = v5;
  while (1)
  {
    while (1)
    {
      v6 = IOIteratorNext(a2);
      if (!v6)
      {
        break;
      }

      v7 = _os_activity_create(&dword_1D2C3B000, "[Logitech Racing Wheel Manager] Matched Kernel Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v7, &state);
      entryID = 0;
      memset(v41, 0, sizeof(v41));
      IORegistryEntryGetRegistryEntryID(v6, &entryID);
      MEMORY[0x1D38AAC10](v6, v41);
      v8 = v3[1];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = v41;
        v37 = 2048;
        v38 = entryID;
        _os_log_debug_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEBUG, "Matched kernel service <%s %#llx>.", buf, 0x16u);
      }

      v9 = IOHIDDeviceCreate(v4, v6);
      if (v9)
      {
        IOObjectRelease(v6);
        v10 = IOHIDDeviceOpen(v9, 0);
        if (v10)
        {
          v11 = v3[1];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v36 = v41;
            v37 = 2048;
            v38 = entryID;
            v39 = 1024;
            v40 = v10;
            _os_log_error_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to open device: %{mach.errno}d", buf, 0x1Cu);
          }

          CFRelease(v9);
          goto LABEL_43;
        }

        v13 = IOHIDDeviceGetProperty(v9, @"VendorID");
        v14 = IOHIDDeviceGetProperty(v9, @"ProductID");
        if ([v13 isEqual:&unk_1F4E369B8] && objc_msgSend(v14, "isEqual:", &unk_1F4E369E8))
        {
          *report = 0x1010709F830;
          v15 = IOHIDDeviceSetReport(v9, kIOHIDReportTypeOutput, 48, report, 8);
          if (v15)
          {
            v16 = v3[1];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v36 = v41;
              v37 = 2048;
              v38 = entryID;
              v39 = 1024;
              v40 = v15;
              _os_log_error_impl(&dword_1D2C3B000, v16, OS_LOG_TYPE_ERROR, "<%s %#llx> Error issuing mode switch command: %{mach.errno}d", buf, 0x1Cu);
            }
          }

          v17 = v3[1];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v36 = v41;
            v37 = 2048;
            v38 = entryID;
            v18 = v17;
            v19 = "<%s %#llx> Issued mode switch command (G923/PS -> G923/Classic).";
            goto LABEL_39;
          }

          goto LABEL_42;
        }

        if ([v13 isEqual:{&unk_1F4E369B8, v30}] && objc_msgSend(v14, "isEqual:", &unk_1F4E36A18))
        {
          report[4] = 1;
          *report = 84539440;
          v20 = IOHIDDeviceSetReport(v9, kIOHIDReportTypeOutput, 48, report, 5);
          if (v20)
          {
            v21 = v3[1];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v36 = v41;
              v37 = 2048;
              v38 = entryID;
              v39 = 1024;
              v40 = v20;
              _os_log_error_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_ERROR, "<%s %#llx> Error issuing mode switch command: %{mach.errno}d", buf, 0x1Cu);
            }
          }

          v22 = v3[1];
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_42;
          }

          *buf = 136315394;
          v36 = v41;
          v37 = 2048;
          v38 = entryID;
          v18 = v22;
          v19 = "<%s %#llx> Issued mode switch command (G29/PS4 -> G29/Classic).";
        }

        else
        {
          if (![v13 isEqual:&unk_1F4E369B8] || !objc_msgSend(v14, "isEqual:", &unk_1F4E36A30))
          {
            v28 = v3[1];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v36 = v41;
              v37 = 2048;
              v38 = entryID;
              _os_log_error_impl(&dword_1D2C3B000, v28, OS_LOG_TYPE_ERROR, "<%s %#llx> Unknown device.", buf, 0x16u);
            }

            goto LABEL_42;
          }

          *report = 0x10000002000921;
          *v31 = 17107448;
          v23 = IOHIDDeviceSetReport(v9, kIOHIDReportTypeOutput, 33, report, 8);
          if (v23)
          {
            v24 = v3[1];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v36 = v41;
              v37 = 2048;
              v38 = entryID;
              v39 = 1024;
              v40 = v23;
              _os_log_error_impl(&dword_1D2C3B000, v24, OS_LOG_TYPE_ERROR, "<%s %#llx> Error issuing mode switch command: %{mach.errno}d", buf, 0x1Cu);
            }
          }

          v25 = IOHIDDeviceSetReport(v9, kIOHIDReportTypeOutput, v31[0], v31, 4);
          if (v25)
          {
            v26 = v3[1];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v36 = v41;
              v37 = 2048;
              v38 = entryID;
              v39 = 1024;
              v40 = v25;
              _os_log_error_impl(&dword_1D2C3B000, v26, OS_LOG_TYPE_ERROR, "<%s %#llx> Error issuing mode switch command: %{mach.errno}d", buf, 0x1Cu);
            }
          }

          v27 = v3[1];
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
LABEL_42:
            IOHIDDeviceClose(v9, 0);
            CFRelease(v9);

            goto LABEL_43;
          }

          *buf = 136315394;
          v36 = v41;
          v37 = 2048;
          v38 = entryID;
          v18 = v27;
          v19 = "<%s %#llx> Issued mode switch command (G29/PS3 -> G29/Classic).";
        }

LABEL_39:
        _os_log_debug_impl(&dword_1D2C3B000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0x16u);
        goto LABEL_42;
      }

      v12 = v3[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = v41;
        v37 = 2048;
        v38 = entryID;
        _os_log_error_impl(&dword_1D2C3B000, v12, OS_LOG_TYPE_ERROR, "<%s %#llx> Failed to create IOHIDDevice.", buf, 0x16u);
      }

      IOObjectRelease(v6);
LABEL_43:
      os_activity_scope_leave(&state);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    MEMORY[0x1D38AAB40](a2);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

uint64_t IOGCDeviceInterfacePrepareObjCVtbl(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (a2 != a2)
  {
    IOGCDeviceInterfacePrepareObjCVtbl_cold_2();
  }

  v5 = v4;
  v6 = objc_getAssociatedObject(v4, (&unk_1F4E422B0 | (a2 << 48)));
  if (!v6)
  {
    os_unfair_lock_lock(&IOGCDeviceInterfacePrepareObjCVtbl_Lock);
    v6 = objc_getAssociatedObject(v5, (&unk_1F4E422B0 | (a2 << 48)));
    if (!v6)
    {
      memset(v9, 0, sizeof(v9));
      if (a2)
      {
        IOGCDeviceInterfacePrepareObjCVtbl_cold_1(a2, v9);
      }

      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:64];
      objc_setAssociatedObject(v5, (&unk_1F4E422B0 | (a2 << 48)), v6, 0x301);
    }

    os_unfair_lock_unlock(&IOGCDeviceInterfacePrepareObjCVtbl_Lock);
  }

  v7 = [v6 bytes];

  return v7;
}

CFTypeRef IOGCFastPathClientGetProperty(uint64_t a1, const void *a2)
{
  result = (*(**(a1 + 32) + 64))(*(a1 + 32));
  if (a2 && !result)
  {
    if (CFEqual(a2, @"ProviderID"))
    {
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(*(a1 + 16), &entryID);
    }

    else
    {
      if (!CFEqual(a2, @"ClientID"))
      {
        return 0;
      }

      entryID = a1;
    }

    v5 = CFNumberCreate(*(a1 + 8), kCFNumberSInt64Type, &entryID);
    return CFAutorelease(v5);
  }

  return result;
}

CFTypeRef IOGCFastPathInputQueueGetProperty(uint64_t a1, const void *a2)
{
  result = (*(**(a1 + 24) + 48))(*(a1 + 24));
  if (a2 && !result)
  {
    if (CFEqual(a2, @"QueueID"))
    {
      valuePtr = a1;
      v5 = CFNumberCreate(*(a1 + 8), kCFNumberSInt64Type, &valuePtr);
      return CFAutorelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOGCFastPathInputQueueRegisterDataAvailableCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 80) == 1)
  {
    IOGCFastPathInputQueueRegisterDataAvailableCallback_cold_1();
  }

  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

void IOGCFastPathInputQueueSetDispatchQueue(uint64_t a1, dispatch_object_t object)
{
  if (*(a1 + 80) == 1)
  {
    IOGCFastPathInputQueueRegisterDataAvailableCallback_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 40) = object;
  if (object)
  {

    dispatch_retain(object);
  }
}

void *IOGCFastPathInputQueueSetCancelHandler(uint64_t a1, void *aBlock)
{
  if (*(a1 + 80) == 1)
  {
    IOGCFastPathInputQueueRegisterDataAvailableCallback_cold_1();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 48) = result;
  return result;
}

void __IOGCFastPathInputQueueActivate_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    dispatch_release(*(*(a1 + 32) + 72));
    *(*(a1 + 32) + 72) = 0;
    v9 = *(*(a1 + 32) + 48);
    if (v9)
    {
      (*(v9 + 16))();
      _Block_release(*(*(a1 + 32) + 48));
      *(*(a1 + 32) + 48) = 0;
    }

    v10 = *(a1 + 40);

    CFRelease(v10);
  }

  else if (a2 == 2)
  {
    dispatch_mach_msg_get_msg();
    v3 = *(a1 + 32);
    v4 = *(*(v3 + 16) + 40);
    v5 = *(v3 + 32);
    kdebug_trace();
    (*(*(a1 + 32) + 56))(*(*(a1 + 32) + 64));
    v6 = *(a1 + 32);
    v7 = *(*(v6 + 16) + 40);
    v8 = *(v6 + 32);
    kdebug_trace();
  }
}

uint64_t IOGCFastPathInputQueueCancel(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    IOGCFastPathInputQueueCancel_cold_1();
  }

  return IOGCFastPathInputQueueCancel_cold_2(a1);
}

uint64_t IOGCFastPathInputQueueGetSampleWithOptions(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = *(a1[2] + 40);
  v10 = a1[4];
  kdebug_trace();
  v11 = (*(*v8 + 80))(v8, a2, a3, a4);
  v12 = *(a1[2] + 40);
  v13 = a1[4];
  kdebug_trace();
  return v11;
}

uint64_t IOGCFastPathReaderReset(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (kdebug_is_enabled())
  {
    IOGCFastPathReaderReset_cold_1(v2, a1, &v5);
    return v5;
  }

  else
  {
    v3 = *(*v2 + 48);

    return v3(v2);
  }
}

uint64_t IOGCFastPathReaderReadCurrentSample(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (kdebug_is_enabled())
  {
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v7 = *(a1 + 16);
    v8 = *(*(v7 + 16) + 40);
    v9 = *(v7 + 32);
    kdebug_trace();
    v10 = (*(*v4 + 64))(v4, a2);
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v11 = *(a1 + 16);
    v12 = *(*(v11 + 16) + 40);
    v13 = *(v11 + 32);
    kdebug_trace();
    return v10;
  }

  else
  {
    v5 = *(*v4 + 64);

    return v5(v4, a2);
  }
}

uint64_t IOGCFastPathReaderReadNextSample(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (kdebug_is_enabled())
  {
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v7 = *(a1 + 16);
    v8 = *(*(v7 + 16) + 40);
    v9 = *(v7 + 32);
    kdebug_trace();
    v10 = (*(*v4 + 72))(v4, a2);
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v11 = *(a1 + 16);
    v12 = *(*(v11 + 16) + 40);
    v13 = *(v11 + 32);
    kdebug_trace();
    return v10;
  }

  else
  {
    v5 = *(*v4 + 72);

    return v5(v4, a2);
  }
}

uint64_t IOGCFastPathReaderReadPreviousSample(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (kdebug_is_enabled())
  {
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v7 = *(a1 + 16);
    v8 = *(*(v7 + 16) + 40);
    v9 = *(v7 + 32);
    kdebug_trace();
    v10 = (*(*v4 + 80))(v4, a2);
    v14 = -1;
    (*(*v4 + 56))(v4, &v14);
    v11 = *(a1 + 16);
    v12 = *(*(v11 + 16) + 40);
    v13 = *(v11 + 32);
    kdebug_trace();
    return v10;
  }

  else
  {
    v5 = *(*v4 + 80);

    return v5(v4, a2);
  }
}

uint64_t IOGCFastPathReaderFinalizeSampleBuffer(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t IOGCFastPathSampleDestory(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    return (*(*v2 + 48))(v2, a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOGCFastPathSampleGetSequenceID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  if (kdebug_is_enabled())
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v11 = -1;
    (*(*v6 + 224))(v6, a1, &v14, &v13, &v12, &v11);
    kdebug_trace();
    v9 = (*(*v6 + 80))(v6, a1, a2, a3);
    v10 = *a2;
    kdebug_trace();
    return v9;
  }

  else
  {
    v7 = *(*v6 + 80);

    return v7(v6, a1, a2, a3);
  }
}

uint64_t IOGCFastPathSampleGetSubsampleCount(uint64_t *a1, unsigned int *a2)
{
  v4 = *a1;
  if (kdebug_is_enabled())
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v9 = -1;
    (*(*v4 + 224))(v4, a1, &v12, &v11, &v10, &v9);
    kdebug_trace();
    v7 = (*(*v4 + 88))(v4, a1, a2);
    v8 = *a2;
    kdebug_trace();
    return v7;
  }

  else
  {
    v5 = *(*v4 + 88);

    return v5(v4, a1, a2);
  }
}

uint64_t IOGCFastPathSampleGetFlags(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a1;
  if (kdebug_is_enabled())
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v11 = -1;
    (*(*v6 + 224))(v6, a1, &v14, &v13, &v12, &v11);
    kdebug_trace();
    v9 = (*(*v6 + 96))(v6, a1, a2, a3);
    v10 = *a3;
    kdebug_trace();
    return v9;
  }

  else
  {
    v7 = *(*v6 + 96);

    return v7(v6, a1, a2, a3);
  }
}

uint64_t IOGCFastPathSampleSetFlags(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (kdebug_is_enabled())
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v10 = -1;
    (*(*v6 + 224))(v6, a1, &v13, &v12, &v11, &v10);
    kdebug_trace();
    v9 = (*(*v6 + 104))(v6, a1, a2, a3);
    kdebug_trace();
    return v9;
  }

  else
  {
    v7 = *(*v6 + 104);

    return v7(v6, a1, a2, a3);
  }
}

uint64_t IOGCFastPathSampleGetTimestamp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v16 = *a1;
  if (!kdebug_is_enabled())
  {
    return (*(*v16 + 112))(v16, a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = -1;
  (*(*v16 + 224))(v16, a1, &v23, &v22, &v21, &v20);
  kdebug_trace();
  v18 = (*(*v16 + 112))(v16, a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = *a6;
  kdebug_trace();
  return v18;
}

uint64_t IOGCFastPathSampleSetTimestamp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if (!kdebug_is_enabled())
  {
    return (*(*v14 + 120))(v14, a1, a2, a3, a4, a5, a6, a7, 0);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = -1;
  (*(*v14 + 224))(v14, a1, &v20, &v19, &v18, &v17);
  kdebug_trace();
  v16 = (*(*v14 + 120))(v14, a1, a2, a3, a4, a5, a6, a7, 0);
  kdebug_trace();
  return v16;
}

uint64_t IOGCFastPathSampleGetInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a1;
  if (kdebug_is_enabled())
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = -1;
    (*(*v10 + 224))(v10, a1, &v18, &v17, &v16, &v15);
    kdebug_trace();
    v13 = (*(*v10 + 128))(v10, a1, a2, a3, a4, a5);
    v14 = *a5;
    kdebug_trace();
    return v13;
  }

  else
  {
    v11 = *(*v10 + 128);

    return v11(v10, a1, a2, a3, a4, a5);
  }
}

uint64_t IOGCFastPathSampleGetDouble(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a1;
  if (kdebug_is_enabled())
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = -1;
    (*(*v10 + 224))(v10, a1, &v18, &v17, &v16, &v15);
    kdebug_trace();
    v13 = (*(*v10 + 136))(v10, a1, a2, a3, a4, a5);
    v14 = *a5;
    kdebug_trace();
    return v13;
  }

  else
  {
    v11 = *(*v10 + 136);

    return v11(v10, a1, a2, a3, a4, a5);
  }
}

uint64_t IOGCFastPathSampleSetInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (kdebug_is_enabled())
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = -1;
    (*(*v10 + 224))(v10, a1, &v17, &v16, &v15, &v14);
    kdebug_trace();
    v13 = (*(*v10 + 144))(v10, a1, a2, a3, a4, a5);
    kdebug_trace();
    return v13;
  }

  else
  {
    v11 = *(*v10 + 144);

    return v11(v10, a1, a2, a3, a4, a5);
  }
}

uint64_t IOGCFastPathSampleSetDouble(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *a1;
  if (kdebug_is_enabled())
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = -1;
    (*(*v10 + 224))(v10, a1, &v18, &v17, &v16, &v15);
    kdebug_trace();
    v14 = (*(*v10 + 152))(v10, a1, a2, a3, a4, a5);
    kdebug_trace();
    return v14;
  }

  else
  {
    v12 = *(*v10 + 152);
    v11.n128_f64[0] = a5;

    return v12(v10, a1, a2, a3, a4, v11);
  }
}

uint64_t IOGCFastPathSampleGet2Integer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a1;
  if (kdebug_is_enabled())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v17 = -1;
    (*(*v12 + 224))(v12, a1, &v20, &v19, &v18, &v17);
    kdebug_trace();
    v15 = (*(*v12 + 160))(v12, a1, a2, a3, a4, a5, a6);
    v16 = *a5;
    kdebug_trace();
    return v15;
  }

  else
  {
    v13 = *(*v12 + 160);

    return v13(v12, a1, a2, a3, a4, a5, a6);
  }
}

uint64_t IOGCFastPathSampleGet2Double(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a1;
  if (kdebug_is_enabled())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v17 = -1;
    (*(*v12 + 224))(v12, a1, &v20, &v19, &v18, &v17);
    kdebug_trace();
    v15 = (*(*v12 + 168))(v12, a1, a2, a3, a4, a5, a6);
    v16 = *a5;
    kdebug_trace();
    return v15;
  }

  else
  {
    v13 = *(*v12 + 168);

    return v13(v12, a1, a2, a3, a4, a5, a6);
  }
}

uint64_t IOGCFastPathSampleSetInteger2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  if (kdebug_is_enabled())
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v16 = -1;
    (*(*v12 + 224))(v12, a1, &v19, &v18, &v17, &v16);
    kdebug_trace();
    v15 = (*(*v12 + 176))(v12, a1, a2, a3, a4, a5, a6);
    kdebug_trace();
    return v15;
  }

  else
  {
    v13 = *(*v12 + 176);

    return v13(v12, a1, a2, a3, a4, a5, a6);
  }
}

uint64_t IOGCFastPathSampleSetDouble2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = *a1;
  if (kdebug_is_enabled())
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v18 = -1;
    (*(*v12 + 224))(v12, a1, &v21, &v20, &v19, &v18);
    kdebug_trace();
    v17 = (*(*v12 + 184))(v12, a1, a2, a3, a4, a5, a6);
    kdebug_trace();
    return v17;
  }

  else
  {
    v15 = *(*v12 + 184);
    v13.n128_f64[0] = a5;
    v14.n128_f64[0] = a6;

    return v15(v12, a1, a2, a3, a4, v13, v14);
  }
}

uint64_t IOGCFastPathSampleGet3Integer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if (kdebug_is_enabled())
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v19 = -1;
    (*(*v14 + 224))(v14, a1, &v22, &v21, &v20, &v19);
    kdebug_trace();
    v17 = (*(*v14 + 192))(v14, a1, a2, a3, a4, a5, a6, a7);
    v18 = *a5;
    kdebug_trace();
    return v17;
  }

  else
  {
    v15 = *(*v14 + 192);

    return v15(v14, a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t IOGCFastPathSampleGet3Double(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if (kdebug_is_enabled())
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v19 = -1;
    (*(*v14 + 224))(v14, a1, &v22, &v21, &v20, &v19);
    kdebug_trace();
    v17 = (*(*v14 + 200))(v14, a1, a2, a3, a4, a5, a6, a7);
    v18 = *a5;
    kdebug_trace();
    return v17;
  }

  else
  {
    v15 = *(*v14 + 200);

    return v15(v14, a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t IOGCFastPathSampleSetInteger3(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if (kdebug_is_enabled())
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v18 = -1;
    (*(*v14 + 224))(v14, a1, &v21, &v20, &v19, &v18);
    kdebug_trace();
    v17 = (*(*v14 + 208))(v14, a1, a2, a3, a4, a5, a6, a7);
    kdebug_trace();
    return v17;
  }

  else
  {
    v15 = *(*v14 + 208);

    return v15(v14, a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t IOGCFastPathSampleSetDouble3(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v14 = *a1;
  if (kdebug_is_enabled())
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v21 = -1;
    (*(*v14 + 224))(v14, a1, &v24, &v23, &v22, &v21);
    kdebug_trace();
    v20 = (*(*v14 + 216))(v14, a1, a2, a3, a4, a5, a6, a7);
    kdebug_trace();
    return v20;
  }

  else
  {
    v18 = *(*v14 + 216);
    v15.n128_f64[0] = a5;
    v16.n128_f64[0] = a6;
    v17.n128_f64[0] = a7;

    return v18(v14, a1, a2, a3, a4, v15, v16, v17);
  }
}

uint64_t IOGCFastPathSampleCommit(uint64_t *a1)
{
  v2 = *a1;
  if (kdebug_is_enabled())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v6 = -1;
    (*(*v2 + 224))(v2, a1, &v9, &v8, &v7, &v6);
    kdebug_trace();
    v5 = (*(*v2 + 64))(v2, a1);
    kdebug_trace();
    return v5;
  }

  else
  {
    v3 = *(*v2 + 64);

    return v3(v2, a1);
  }
}

uint64_t IOGCFastPathSampleRefresh(uint64_t *a1)
{
  v2 = *a1;
  if (kdebug_is_enabled())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v6 = -1;
    (*(*v2 + 224))(v2, a1, &v9, &v8, &v7, &v6);
    kdebug_trace();
    v5 = (*(*v2 + 56))(v2, a1);
    kdebug_trace();
    return v5;
  }

  else
  {
    v3 = *(*v2 + 56);

    return v3(v2, a1);
  }
}

CFUUIDRef OUTLINED_FUNCTION_2_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, __int16 byte15, char a12, UInt8 a13)
{
  v15 = *(*v13 + 8);

  return CFUUIDGetConstantUUIDWithBytes(0, 0xD2u, 0x4Au, 0x24u, 0x86u, 0x3Bu, 0xCDu, 0x4Eu, 0x96u, 0xB6u, 6u, 0x34u, 0xE1u, 0x5Fu, 0xD6u, 0x66u, 0x5Cu);
}

CFUUIDRef OUTLINED_FUNCTION_3_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, __int16 byte15, char a12, UInt8 a13)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v2 = *(*(v0 + 16) + 40);
  v3 = *(v0 + 32);

  return kdebug_trace();
}

void OUTLINED_FUNCTION_11_0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v1 + 16) + 40);
  v3 = *(v1 + 32);
}

BOOL OUTLINED_FUNCTION_12_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_13_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_1D2C75268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ConnectToDriverService(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (&unk_1F4E3AFD8 == v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __ConnectToDriverService_block_invoke;
    v15[3] = &unk_1E8414F48;
    v12 = &v16;
    v16 = v10;
    [v8 connectToAssetManagementServiceWithClient:v9 reply:v15];
  }

  else
  {
    if (&unk_1F4E3BA08 != v7)
    {
      ConnectToDriverService_cold_1(v7);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __ConnectToDriverService_block_invoke_2;
    v13[3] = &unk_1E8414F70;
    v12 = &v14;
    v14 = v10;
    [v8 connectToGenericDeviceDBServiceWithClient:v9 reply:v13];
  }
}

id GCLookupService(void *a1, objc_class *a2, uint64_t a3, int a4)
{
  v7 = [a1 serviceFor:a2 client:a3];
  if (!v7)
  {
    v8 = FallbackProvider;
    v7 = [FallbackProvider serviceFor:a2 client:a3];
    if (!v7 && a4 != 0)
    {
      GCLookupService_cold_1(a2, v8);
    }
  }

  return v7;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C77B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __CFString *a37, uint64_t a38)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v38 = objc_begin_catch(exception_object);
      if (a17)
      {
        v39 = MEMORY[0x1E696ABC0];
        a33 = *MEMORY[0x1E696A578];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v41 = *MEMORY[0x1E696A588];
        a36 = v40;
        a37 = @"Model build failed.  This is a #BUG.";
        v42 = *MEMORY[0x1E696AA08];
        a34 = v41;
        a35 = v42;
        v43 = [v38 gc_error];
        a38 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a36 forKeys:&a33 count:3];
        *a17 = [(NSError *)v39 gc_modelError:v44 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C77954);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromGCHIDElementUsageType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8415038[a1];
  }
}

void Observer::runAndFree(Observer *this, GCFuture *a2)
{
  v3 = a2;
  tqe_prev = this->pointers.tqe_prev;
  this->_handler = v3;
  BYTE1(this->var0) |= 1u;
  v6 = v3;
  if (tqe_prev)
  {
    CFRetain(v3);
    BYTE1(this->var0) |= 2u;
    dispatch_async(this->pointers.tqe_prev, this->pointers.tqe_next);
  }

  else
  {
    (this->pointers.tqe_next->pointers.tqe_next)();
    Observer::_CleanupInvocationAndFree(this, v5);
  }
}

void Observer::_CleanupInvocationAndFree(Observer *this, Observer *a2)
{
  v3 = BYTE1(this->var0);
  if ((v3 & 2) != 0)
  {
    CFRelease(this->_handler);
    v3 = BYTE1(this->var0) & 0xFD;
  }

  BYTE1(this->var0) = v3 & 0xFE;
  this->_handler = 0;
  tqe_next = this->pointers.tqe_next;
  this->pointers.tqe_next = 0;
}

id __immutablePlaceholderFuture(void)
{
  if (__immutablePlaceholderFuture(void)::onceToken != -1)
  {
    __immutablePlaceholderFuture();
  }

  v1 = __immutablePlaceholderFuture(void)::placeholder;

  return v1;
}

void sub_1D2C7A228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = GCFuture;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D2C7C3F0(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

BOOL ContinuationList::addOrInvokeContinuation_takesLock(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v7 = *(a1 + 8);
  v8 = v6[2](v6);
  v9 = v8;
  if (v7)
  {
    v8->_handler = 0;
    **(a1 + 8) = v8;
    *(a1 + 8) = v8;
    os_unfair_lock_unlock(&v5->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&v5->_lock);
    Observer::runAndFree(v9, v5);
  }

  return v7 != 0;
}

void *Observer::Create(void *a1, void *a2, char a3, dispatch_qos_class_t a4, int a5)
{
  v9 = a1;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = a2;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3321888768;
  v20[2] = ___ZN8Observer6CreateEU13block_pointerFv13GCFutureStateP11objc_objectP7NSErrorEPU28objcproto17OS_dispatch_queue8NSObjectj11qos_class_ti_block_invoke;
  v20[3] = &unk_1F4E1B470;
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = v29;
  v21 = v9;
  v10 = v9;
  v11 = [v20 copy];
  v12 = v11;
  if ((a3 & 2) != 0)
  {
    v15 = DISPATCH_BLOCK_DETACHED;
    if (a4 == QOS_CLASS_UNSPECIFIED)
    {
LABEL_7:
      v16 = dispatch_block_create(v15, v12);
LABEL_10:
      v14 = v16;

      goto LABEL_11;
    }

LABEL_9:
    v16 = dispatch_block_create_with_qos_class(v15, a4, a5, v12);
    goto LABEL_10;
  }

  v13 = a3 & 4;
  v14 = v11;
  if (v13 | a4)
  {
    if (v13)
    {
      v15 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT;
    }

    else
    {
      v15 = 0;
    }

    if (a4 == QOS_CLASS_UNSPECIFIED)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_11:
  v17 = _Block_copy(v14);
  v18 = v12[7];
  v12[7] = v17;

  Continuation::~Continuation(&v22);
  Continuation::~Continuation(&v26);
  return v12 + 5;
}

void sub_1D2C7DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, Observer *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  Observer::~Observer((v20 + 40));
  Observer::~Observer(&a19);
  _Unwind_Resume(a1);
}

void ContinuationList::drainContinuations_takesLock(ContinuationList *this, GCFuture *a2)
{
  v3 = a2;
  os_unfair_lock_lock_with_options();
  v8[0] = 0;
  v8[1] = v8;
  tqh_first = this->_continuations.tqh_first;
  if (this->_continuations.tqh_first)
  {
    *v8 = *this;
    this->_continuations.tqh_first = 0;
    tqh_first = &this->_continuations.tqh_first;
  }

  this->_continuations.tqh_last = tqh_first;
  os_unfair_lock_unlock(&v3->_lock);
  for (i = v8[0]; v8[0]; i = v8[0])
  {
    while (i)
    {
      handler = i->_handler;
      Observer::runAndFree(i, v3);
      i = handler;
    }

    v8[0] = 0;
    v8[1] = v8;
    os_unfair_lock_lock_with_options();
    p_tqh_first = this->_continuations.tqh_first;
    if (this->_continuations.tqh_first)
    {
      *v8 = *this;
      this->_continuations.tqh_first = 0;
      p_tqh_first = &this->_continuations.tqh_first;
    }

    this->_continuations.tqh_last = p_tqh_first;
    os_unfair_lock_unlock(&v3->_lock);
  }
}

void sub_1D2C7EE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C7F354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D2C80094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = GCPromise;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t ___ZL28__immutablePlaceholderFuturev_block_invoke()
{
  __immutablePlaceholderFuture(void)::placeholder = [_GCPlaceholderFuture alloc];

  return MEMORY[0x1EEE66BB8]();
}

void ___ZN8Observer6CreateEU13block_pointerFv13GCFutureStateP11objc_objectP7NSErrorEPU28objcproto17OS_dispatch_queue8NSObjectj11qos_class_ti_block_invoke(uint64_t a1)
{
  if ((*(a1 + 49) & 1) == 0)
  {
    ___ZN8Observer6CreateEU13block_pointerFv13GCFutureStateP11objc_objectP7NSErrorEPU28objcproto17OS_dispatch_queue8NSObjectj11qos_class_ti_block_invoke_cold_1();
  }

  v2 = Continuation::future((a1 + 40));
  v3 = v2;
  if (*(v2 + 12) == 2)
  {
    v4 = v2[2];
  }

  else
  {
    v4 = 0;
  }

  if (*(v3 + 12) == 1)
  {
    v5 = v3[2];
  }

  else
  {
    v5 = 0;
  }

  __GCFUTURE_IS_CALLING_OUT_TO_AN_OBSERVER__(*(a1 + 32));
  if (*(a1 + 64))
  {

    Observer::_CleanupInvocationAndFree((a1 + 40), v6);
  }
}

id Continuation::future(Continuation *this)
{
  if (*(this + 9))
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

id __copy_helper_block_ea8_40c13_ZTS8Observer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 49))
  {
    _os_assert_log();
    v4 = _os_crash();
    __copy_helper_block_ea8_40c13_ZTS8Observer_cold_1(v4);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) &= 0xFCu;
  *(a1 + 56) = 0;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_ea8_40c13_ZTS8Observer(uint64_t a1)
{

  Continuation::~Continuation((a1 + 40));
}

void Observer::~Observer(Observer *this)
{

  Continuation::~Continuation(this);
}

void Continuation::~Continuation(Continuation *this)
{
  if (*(this + 9))
  {
    _os_assert_log();
    v1 = _os_crash();
    __copy_helper_block_ea8_40c13_ZTS8Observer_cold_1(v1);
  }

  *this = 0;
}

void sub_1D2C825CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __CFString *a47, uint64_t a48)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v49 = objc_begin_catch(exception_object);
      if (a17)
      {
        v50 = MEMORY[0x1E696ABC0];
        a43 = *MEMORY[0x1E696A578];
        v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v52 = *MEMORY[0x1E696A588];
        a46 = v51;
        a47 = @"Model build failed.  This is a #BUG.";
        v53 = *MEMORY[0x1E696AA08];
        a44 = v52;
        a45 = v53;
        v54 = [v49 gc_error];
        a48 = v54;
        v55 = [*(v48 + 3872) dictionaryWithObjects:&a46 forKeys:&a43 count:3];
        *a17 = [(NSError *)v50 gc_modelError:v55 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C81A9CLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C85188(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x418], 8);
  _Unwind_Resume(a1);
}

void CopyBundleIdentifierAndTeamFromApplicationIdentifier(void *a1, void *a2, void *a3)
{
  cf = a1;
  if ([cf length] < 0xB || objc_msgSend(cf, "characterAtIndex:", 10) != 46)
  {
    goto LABEL_20;
  }

  v5 = [cf substringWithRange:{0, 10}];
  v6 = 0;
  do
  {
    v7 = [cf characterAtIndex:v6];
    v9 = (v7 - 65) < 0x1A || (v7 - 48) < 0xA;
  }

  while (v9 && v6++ < 9);
  if (!v9)
  {

LABEL_20:
    v5 = 0;
LABEL_21:
    v11 = CFRetain(cf);
    if (a2)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v11 = [cf substringWithRange:{11, objc_msgSend(cf, "length") - 11}];
  if (!v11)
  {
    goto LABEL_21;
  }

  if (a2)
  {
LABEL_18:
    *a2 = v11;
    goto LABEL_24;
  }

LABEL_22:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_24:
  if (a3)
  {
    *a3 = v5;
  }

  else
  {
    v12 = cf;
    if (!v5)
    {
      goto LABEL_29;
    }

    CFRelease(v5);
  }

  v12 = cf;
LABEL_29:
}

id _gc_log_generic_device()
{
  if (_gc_log_generic_device_onceToken != -1)
  {
    _gc_log_generic_device_cold_1();
  }

  v1 = _gc_log_generic_device_Log;

  return v1;
}

uint64_t ___gc_log_generic_device_block_invoke()
{
  _gc_log_generic_device_Log = gc_log_create_device("Generic");

  return MEMORY[0x1EEE66BB8]();
}

void GCAnalyticsSendCheckCompatibleHIDDeviceEvent(void *a1, void *a2, char a3)
{
  v5 = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3254779904;
  v7[2] = __GCAnalyticsSendCheckCompatibleHIDDeviceEvent_block_invoke;
  v7[3] = &__block_descriptor_48_e8_32n11_8_8_s0_t8w1_e30___NSObject_OS_xpc_object__8__0l;
  v8 = a2;
  v9 = a3;
  v6 = a2;
  [v5 sendEvent:@"com.apple.GameController.ConfiguredDevice.CheckCompatibleHIDDevice" withXPCPayloadBuilder:v7];
}

xpc_object_t __GCAnalyticsSendCheckCompatibleHIDDeviceEvent_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) vendorID];
  v4 = [v3 unsignedShortValue];

  v5 = [*v2 productID];
  v6 = [v5 unsignedShortValue];

  v7 = [*v2 versionNumber];
  v8 = [v7 unsignedShortValue];

  *keys = xmmword_1E8415358;
  v34 = *off_1E8415368;
  v9 = [*v2 vendorID];
  values[0] = xpc_uint64_create([v9 unsignedIntegerValue]);
  v10 = [*v2 productID];
  values[1] = xpc_uint64_create([v10 unsignedIntegerValue]);
  v11 = [*(a1 + 32) versionNumber];
  values[2] = xpc_uint64_create([v11 unsignedIntegerValue]);
  values[3] = xpc_BOOL_create(*(a1 + 40));

  v12 = xpc_dictionary_create(keys, values, 4uLL);
  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v%05hu_p%05hu", v4, v6];
    v14 = v13;
    v15 = [v13 UTF8String];
    if (v15)
    {
      xpc_dictionary_set_string(v12, "VendorProductID", v15);
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v%05hu_p%05hu_r%05hu", v4, v6, v8];
    v17 = v16;
    v18 = [v16 UTF8String];
    if (v18)
    {
      xpc_dictionary_set_string(v12, "VendorProductVersionID", v18);
    }

    v19 = [*(a1 + 32) transport];
    if (![v19 length] || !objc_msgSend(v19, "caseInsensitiveCompare:", @"null"))
    {

      v19 = 0;
    }

    v20 = v19;
    v21 = [v19 UTF8String];
    if (v21)
    {
      xpc_dictionary_set_string(v12, "Transport", v21);
    }

    v22 = [*(a1 + 32) manufacturer];
    if (![v22 length] || !objc_msgSend(v22, "caseInsensitiveCompare:", @"null") || !objc_msgSend(v22, "caseInsensitiveCompare:", @"unknown"))
    {

      v22 = 0;
    }

    v23 = v22;
    v24 = [v22 UTF8String];
    if (v24)
    {
      xpc_dictionary_set_string(v12, "Manufacturer", v24);
    }

    v25 = [*(a1 + 32) product];
    if (![v25 length] || !objc_msgSend(v25, "caseInsensitiveCompare:", @"null") || !objc_msgSend(v25, "caseInsensitiveCompare:", @"unknown"))
    {

      v25 = 0;
    }

    v26 = v25;
    v27 = [v25 UTF8String];
    if (v27)
    {
      xpc_dictionary_set_string(v12, "Product", v27);
    }

    v28 = v12;
  }

  for (i = 3; i != -1; --i)
  {
  }

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1D2C85E04(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32n11_8_8_s0_t8w1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void sub_1D2C86554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __CFString *a16, uint64_t a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(exception_object);
      if (v18)
      {
        v21 = MEMORY[0x1E696ABC0];
        a12 = *MEMORY[0x1E696A578];
        v22 = [*(v19 + 3776) stringWithFormat:@"Invalid '%@' definition."];
        v23 = *MEMORY[0x1E696A588];
        a15 = v22;
        a16 = @"Model build failed.  This is a #BUG.";
        v24 = *MEMORY[0x1E696AA08];
        a13 = v23;
        a14 = v24;
        v25 = [v20 gc_error];
        a17 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a15 forKeys:&a12 count:3];
        *v18 = [(NSError *)v21 gc_modelError:v26 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C86548);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2C87178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __CFString *a37, uint64_t a38)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v38 = objc_begin_catch(exception_object);
      if (a16)
      {
        v39 = MEMORY[0x1E696ABC0];
        a33 = *MEMORY[0x1E696A578];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v41 = *MEMORY[0x1E696A588];
        a36 = v40;
        a37 = @"Model build failed.  This is a #BUG.";
        v42 = *MEMORY[0x1E696AA08];
        a34 = v41;
        a35 = v42;
        v43 = [v38 gc_error];
        a38 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a36 forKeys:&a33 count:3];
        *a16 = [(NSError *)v39 gc_modelError:v44 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C8703CLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C899F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1D2C8B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __CFString *a37, uint64_t a38)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v38 = objc_begin_catch(exception_object);
      if (a16)
      {
        v39 = MEMORY[0x1E696ABC0];
        a33 = *MEMORY[0x1E696A578];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v41 = *MEMORY[0x1E696A588];
        a36 = v40;
        a37 = @"Model build failed.  This is a #BUG.";
        v42 = *MEMORY[0x1E696AA08];
        a34 = v41;
        a35 = v42;
        v43 = [v38 gc_error];
        a38 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a36 forKeys:&a33 count:3];
        *a16 = [(NSError *)v39 gc_modelError:v44 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C8B240);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2C8D3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __CFString *a53, uint64_t a54)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v54 = objc_begin_catch(exception_object);
      if (a16)
      {
        v55 = MEMORY[0x1E696ABC0];
        a49 = *MEMORY[0x1E696A578];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v57 = *MEMORY[0x1E696A588];
        a52 = v56;
        a53 = @"Model build failed.  This is a #BUG.";
        v58 = *MEMORY[0x1E696AA08];
        a50 = v57;
        a51 = v58;
        v59 = [v54 gc_error];
        a54 = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a52 forKeys:&a49 count:3];
        *a16 = [(NSError *)v55 gc_modelError:v60 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C8D05CLL);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _IOGCDeviceGetPlugInInterface(uint64_t a1)
{
  theScore = 0;
  v2 = [(GCIOObject *)a1 port];
  if (!*(a1 + 32))
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x21u, 0x7Du, 0x5Bu, 0xADu, 0xABu, 0x5Eu, 0x43u, 0x23u, 0x9Cu, 0, 0x2Au, 0xE4u, 0x88u, 0xD5u, 0xDAu, 0x87u);
    v4 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (IOCreatePlugInInterfaceForService(v2, v3, v4, (a1 + 32), &theScore))
    {
      _IOGCDeviceGetPlugInInterface_cold_1(v2);
      return 0;
    }
  }

  result = *(a1 + 40);
  if (!result)
  {
    v6 = *(a1 + 32);
    v7 = *(*v6 + 8);
    v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x3Au, 0xE7u, 0x17u, 0x8Eu, 0xEAu, 0x88u, 0x44u, 0x2Cu, 0x8Cu, 0xE9u, 0x8Fu, 0x85u, 0xBBu, 0xD5u, 0x67u, 0xDAu);
    v9 = CFUUIDGetUUIDBytes(v8);
    if ((v7(v6, *&v9.byte0, *&v9.byte8, a1 + 40) & 0x80000000) != 0 || (result = *(a1 + 40)) == 0)
    {
      _IOGCDeviceGetPlugInInterface_cold_2(v2);
      return 0;
    }
  }

  return result;
}

uint64_t __IOHIDDeviceRemovedNotification(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v4 = result;
    IOObjectRelease(*(result + 88));
    *(v4 + 88) = 0;
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);

    return __IOGCDEVICE_IS_CALLING_OUT_TO_CLIENT_REMOVAL_HANDLER__(v5, v6);
  }

  return result;
}

void IOGCDeviceSetDispatchQueue(uint64_t a1, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  if (atomic_load((a1 + 92)))
  {
    IOGCDeviceSetDispatchQueue_cold_1();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  label = dispatch_queue_get_label(queue);
  v6 = "";
  if (label)
  {
    v6 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOGCDevice", v6);
  v7 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;

  v9 = *MEMORY[0x1E69E9840];
}

void *IOGCDeviceSetCancelHandler(uint64_t a1, const void *a2)
{
  result = _Block_copy(a2);
  *(a1 + 56) = result;
  return result;
}

uint64_t IOGCDeviceActivate(uint64_t result)
{
  if ((atomic_fetch_or((result + 92), 1u) & 1) == 0)
  {
    v1 = result;
    if (!*(result + 48))
    {
      IOGCDeviceActivate_cold_1();
    }

    v2 = objc_alloc_init(GCIONotificationPort);
    *(v1 + 64) = v2;
    [(GCIONotificationPort *)v2 setQueue:*(v1 + 48)];
    v3 = *(v1 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __IOGCDeviceActivate_block_invoke;
    v6[3] = &unk_1E8414908;
    v6[4] = v1;
    result = [v3 addCancellationHandler:v6 onQueue:*(v1 + 48)];
    if (*(v1 + 72))
    {
      v4 = [*(v1 + 64) port];
      v5 = [(GCIOObject *)v1 port];
      return IOServiceAddInterestNotification(v4, v5, "IOGeneralInterest", __IOHIDDeviceRemovedNotification, v1, (v1 + 88));
    }
  }

  return result;
}

uint64_t __IOGCDeviceActivate_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void IOGCDeviceCancel(uint64_t a1)
{
  if ((atomic_fetch_or((a1 + 92), 3u) & 2) == 0)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      IOObjectRelease(v2);
      *(a1 + 88) = 0;
    }

    v3 = *(a1 + 64);
    *(a1 + 64) = 0;
  }
}

uint64_t IOGCDeviceSetRemovalCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (atomic_load((result + 92)))
  {
    IOGCDeviceSetDispatchQueue_cold_1();
  }

  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

void OUTLINED_FUNCTION_1_11(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x1Cu);
}

uint64_t IOCircularDataQueueMemorySize(unsigned int a1, unsigned int a2)
{
  v2 = (a1 + 63) & 0x1FFFFFFF8;
  if ((v2 * a2 + 64) >> 32)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 >= a1;
  }

  if (!v3 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return v2 * a2 + 64;
  }
}

void OUTLINED_FUNCTION_5_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint8_t buf)
{

  _os_log_debug_impl(a1, v19, OS_LOG_TYPE_DEBUG, a4, &buf, 0x16u);
}

void sub_1D2C92A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      if (v25)
      {
        v28 = MEMORY[0x1E696ABC0];
        a19 = *MEMORY[0x1E696A578];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition."];
        v30 = *MEMORY[0x1E696A588];
        a22 = v29;
        a23 = @"Model build failed.  This is a #BUG.";
        v31 = *MEMORY[0x1E696AA08];
        a20 = v30;
        a21 = v31;
        v32 = [v27 gc_error];
        a24 = v32;
        v33 = [*(v26 + 3872) dictionaryWithObjects:&a22 forKeys:&a19 count:3];
        *v25 = [(NSError *)v28 gc_modelError:v33 userInfo:?];
      }

      objc_end_catch();
      JUMPOUT(0x1D2C92A14);
    }

    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_1D2C93FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_1D2C98620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2C98DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t IOGCFastPathClientInterfacePrepareObjCVtbl_cold_1(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 8) = queryInterface_0;
  *(a2 + 16) = addRef_0;
  *(a2 + 24) = release_0;
  *(a2 + 32) = 1;
  *(a2 + 36) = 0;
  *(a2 + 40) = __IOGCFastPathClientInterfaceObjCThunk_CopyDescription;
  *(a2 + 48) = __IOGCFastPathClientInterfaceObjCThunk_Open;
  *(a2 + 56) = __IOGCFastPathClientInterfaceObjCThunk_Close;
  *(a2 + 64) = __IOGCFastPathClientInterfaceObjCThunk_GetClientProperty;
  *(a2 + 72) = __IOGCFastPathClientInterfaceObjCThunk_SetClientProperty;
  *(a2 + 80) = __IOGCFastPathClientInterfaceObjCThunk_CreateControlQueue;
  *(a2 + 88) = __IOGCFastPathClientInterfaceObjCThunk_CreateInputQueue;
  return result;
}

uint64_t IOGCFastPathControlQueueInterfacePrepareObjCVtbl_cold_1(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 8) = queryInterface_0;
  *(a2 + 16) = addRef_0;
  *(a2 + 24) = release_0;
  *(a2 + 32) = 1;
  *(a2 + 36) = 0;
  *(a2 + 40) = __IOGCFastPathControlQueueInterfaceObjCThunk_CopyDescription;
  *(a2 + 48) = __IOGCFastPathControlQueueInterfaceObjCThunk_GetProperty;
  *(a2 + 56) = __IOGCFastPathControlQueueInterfaceObjCThunk_SetProperty;
  *(a2 + 64) = __IOGCFastPathControlQueueInterfaceObjCThunk_GetActivePosition;
  *(a2 + 72) = __IOGCFastPathControlQueueInterfaceObjCThunk_GetReadPosition;
  *(a2 + 80) = __IOGCFastPathControlQueueInterfaceObjCThunk_ResetPosition;
  *(a2 + 88) = __IOGCFastPathControlQueueInterfaceObjCThunk_GetSampleWithOptions;
  return result;
}

uint64_t __IOGCFastPathInputQueueInterfacePrepareObjCVtbl_block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = a1;
  a2[1] = queryInterface_0;
  a2[2] = addRef_0;
  a2[3] = release_0;
  a2[4] = 1;
  a2[5] = __IOGCFastPathInputQueueInterfaceObjCThunk_CopyDescription;
  a2[6] = __IOGCFastPathInputQueueInterfaceObjCThunk_InputQueueGetProperty;
  a2[7] = __IOGCFastPathInputQueueInterfaceObjCThunk_InputQueueSetProperty;
  a2[8] = __IOGCFastPathInputQueueInterfaceObjCThunk_GetDataAvailableNotification;
  a2[9] = __IOGCFastPathInputQueueInterfaceObjCThunk_GetLatestSamplePosition;
  a2[10] = __IOGCFastPathInputQueueInterfaceObjCThunk_GetSampleWithOptions;
  a2[11] = 0;
  v4 = *(a3 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    a2[11] = __IOGCFastPathInputQueueInterfaceObjCThunk_CreateReader;
  }

  return result;
}

uint64_t IOGCFastPathReaderInterfacePrepareObjCVtbl_cold_1(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 8) = queryInterface_0;
  *(a2 + 16) = addRef_0;
  *(a2 + 24) = release_0;
  *(a2 + 32) = 1;
  *(a2 + 36) = 0;
  *(a2 + 40) = __IOGCFastPathReaderInterfaceObjCThunk_CopyDescription;
  *(a2 + 48) = __IOGCFastPathReaderInterfaceObjCThunk_Reset;
  *(a2 + 56) = __IOGCFastPathReaderInterfaceObjCThunk_GetReadPosition;
  *(a2 + 64) = __IOGCFastPathReaderInterfaceObjCThunk_ReadCurrentSample;
  *(a2 + 72) = __IOGCFastPathReaderInterfaceObjCThunk_ReadNextSample;
  *(a2 + 80) = __IOGCFastPathReaderInterfaceObjCThunk_ReadPreviousSample;
  return result;
}

uint64_t IOGCFastPathSampleContainerInterfacePrepareObjCVtbl_cold_1(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 8) = queryInterface_0;
  *(a2 + 16) = addRef_0;
  *(a2 + 24) = release_0;
  *(a2 + 32) = 1;
  *(a2 + 36) = 0;
  *(a2 + 40) = __IOGCFastPathSampleContainerInterfaceObjCThunk_CopyDescription;
  *(a2 + 48) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleDestroy;
  *(a2 + 56) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleRefresh;
  *(a2 + 64) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleCommit;
  *(a2 + 72) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetPosition;
  *(a2 + 80) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetSequenceID;
  *(a2 + 88) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetSubsampleCount;
  *(a2 + 96) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetFlags;
  *(a2 + 104) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSetFlags;
  *(a2 + 112) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetTimestamp;
  *(a2 + 120) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSetTimestamp;
  *(a2 + 128) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetInteger;
  *(a2 + 136) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetDouble;
  *(a2 + 144) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSetInteger;
  *(a2 + 152) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSetDouble;
  *(a2 + 160) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGet2Integer;
  *(a2 + 168) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGet2Double;
  *(a2 + 176) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSet2Integer;
  *(a2 + 184) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSet2Double;
  *(a2 + 192) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGet3Integer;
  *(a2 + 200) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGet3Double;
  *(a2 + 208) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSet3Integer;
  *(a2 + 216) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleSet3Double;
  *(a2 + 224) = __IOGCFastPathSampleContainerInterfaceObjCThunk_SampleGetTraceData;
  return result;
}

void HIDObservationListAdd(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (*(a2 + 8) == 1)
    {
      v5 = (v3 + 72);
    }

    else
    {
      v5 = (v3 + 120);
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(v5);
  ++v5[1]._os_unfair_lock_opaque;
  *(a2 + 32) = 0;
  v6 = *&v5[4]._os_unfair_lock_opaque;
  *(a2 + 40) = v6;
  *v6 = a2;
  *&v5[4]._os_unfair_lock_opaque = a2 + 32;
  os_unfair_lock_unlock(v5);
  *(a2 + 24) = v4;
}

void *HIDEventObservationListRemoveObserver(char *a1, int a2, uint64_t a3)
{
  v5 = a1 + 120;
  if (a2 == 1)
  {
    v5 = a1 + 72;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_lock(v6);
  v7 = *(v6 + 1);
  do
  {
    v8 = v7;
    if (!v7)
    {
      os_unfair_lock_unlock(v6);
      return v8;
    }

    v7 = v7[4];
  }

  while (v8[2] != a3);
  v9 = v8[5];
  v10 = v6 + 16;
  if (v7)
  {
    v10 = v7 + 5;
  }

  *v10 = v9;
  *v9 = v7;
  --*(v6 + 1);
  os_unfair_lock_unlock(v6);
  v8[3] = 0;

  return v8;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueGetLatestSamplePosition(unsigned int ***a1)
{
  v1 = OUTLINED_FUNCTION_12(a1);
  v4 = v1 - v3;
  v5 = v4 + 146;
  LOWORD(v5) = atomic_load_explicit(v4 + 73, memory_order_acquire);
  v6 = v4 + 144;
  LOWORD(v6) = atomic_load_explicit(v4 + 72, memory_order_acquire);
  if (v5)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 3758097112;
  }

  result = 0;
  *v2 = atomic_load_explicit(v4 + 20, memory_order_acquire);
  return result;
}

uint64_t IOGCFastPathRoyaReplayInputQueueGetMutableSample(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = 3758097127;
  os_unfair_lock_lock_with_options();
  LOWORD(v3) = atomic_load_explicit((a1 + 144), memory_order_acquire);
  if (v3)
  {
    explicit = atomic_load_explicit((a1 + 160), memory_order_acquire);
    v9 = atomic_load_explicit((a1 + 152), memory_order_acquire);
    if (explicit + 1 >= a2 || v9 == a2)
    {
      if (v9 <= a2)
      {
        v11 = *(a1 + 104);
        if (v11 + a2 > explicit)
        {
          v12 = a1 + 168 + 24 * (a2 % v11);
          v15 = *(v12 + 16);
          v13 = (v12 + 16);
          Instance = v15;
          if (v15)
          {
            _objc_rootRetainCount();
            if (*(Instance + 8) != v3 || Instance[3] != a2)
            {
              ++Instance[1];
              *(Instance + 8) = v3;
              Instance[3] = a2;
              bzero(Instance + 4, 48 * *(Instance + 9));
            }
          }

          else
          {
            v17 = objc_opt_class();
            Instance = class_createInstance(v17, 0x30uLL);
            *(Instance + 9) = 1;
            *(Instance + 8) = v3;
            Instance[1] = 1;
            Instance[3] = a2;
            *v13 = Instance;
          }

          v7 = 0;
          *a3 = a1 + 96;
          *(a3 + 8) = a2;
          *(a3 + 16) = Instance[1];
          *(a3 + 24) = v3;
          *(a3 + 26) = *(a3 + 26) & 0xFC | 2;
        }
      }
    }

    else
    {
      v7 = 3758097128;
    }
  }

  else
  {
    v7 = 3758097112;
  }

  os_unfair_lock_unlock((a1 + 140));
  return v7;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueGetSample(unsigned int ***a1)
{
  v2 = 3758097112;
  v3 = OUTLINED_FUNCTION_12(a1);
  v7 = (v3 - v6);
  LOWORD(v1) = atomic_load_explicit((v3 - v6 + 146), memory_order_acquire);
  v8 = (v3 - v6 + 144);
  LOWORD(v8) = atomic_load_explicit(v8, memory_order_acquire);
  if (v1)
  {
    v9 = v1 == v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v4;
    explicit = atomic_load_explicit(v7 + 20, memory_order_acquire);
    v12 = atomic_load_explicit(v7 + 19, memory_order_acquire);
    if (explicit < v4)
    {
      return 3758097128;
    }

    else
    {
      if (v12 > v4)
      {
        return 3758097127;
      }

      v13 = v7[13];
      if (v13 + v4 <= explicit)
      {
        return 3758097127;
      }

      else
      {
        v14 = v5;
        v15 = &v7[3 * (v4 % v13) + 21];
        os_unfair_lock_lock_with_options();
        v16 = *(v15 + 8);
        if (v16)
        {
          v17 = *(v16 + 16);
          v18 = *(v16 + 8);
          v19 = *(v16 + 24);
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = -1;
        }

        os_unfair_lock_unlock(v15);
        if (v17 == v1 && v19 == v10)
        {
          v2 = 0;
          *v14 = v7 + 12;
          *(v14 + 8) = v10;
          *(v14 + 16) = v18;
          *(v14 + 24) = v1;
          *(v14 + 26) &= 0xFCu;
        }
      }
    }
  }

  return v2;
}

uint64_t IOGCFastPathSampleGetClient4Roya(unsigned int ****a1)
{
  v1 = **a1;
  if (*(v1 + 9) == 1919908193)
  {
    return *(*a1 - **v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleRead(unsigned int ***a1, unsigned int ****a2, uint64_t a3)
{
  v3 = 3758097127;
  if (*a2 != a1)
  {
    return 3758097090;
  }

  v6 = OUTLINED_FUNCTION_12(a1);
  v8 = v6 - v7;
  v10 = &v6[3 * (*(v9 + 8) % *(v6 - v7 + 104)) + 21] - v7;
  if ((*(v9 + 26) & 2) != 0)
  {
    OUTLINED_FUNCTION_15(v8 + 72);
    if (!v11)
    {
      return 3758096385;
    }

    os_unfair_lock_lock_with_options();
    v12 = *(v10 + 16);
    v13 = (v8 + 140);
  }

  else
  {
    OUTLINED_FUNCTION_15(v8 + 73);
    if (!v11)
    {
      return 3758096385;
    }

    os_unfair_lock_lock_with_options();
    v12 = *(v10 + 8);
    v13 = v10;
  }

  os_unfair_lock_unlock(v13);
  if (v12 && v12[3] == a2[1])
  {
    v3 = (*(a3 + 16))(a3, v12);
  }

  return v3;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleReadField()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_16();
  return __IOGCFastPathRoyaReplayInputQueueSampleRead(v0, v1, v2);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleModify(unsigned int ***a1, uint64_t a2)
{
  v2 = 3758097090;
  if (*a2 == a1 && (*(a2 + 26) & 2) != 0)
  {
    v4 = OUTLINED_FUNCTION_12(a1);
    v6 = v4 - v5;
    OUTLINED_FUNCTION_15((v4 - v5 + 144));
    if (v8)
    {
      v9 = v7;
      os_unfair_lock_lock_with_options();
      v10 = *(a2 + 8);
      v11 = &v6[24 * (v10 % *(v6 + 13)) + 168];
      v14 = *(v11 + 16);
      v12 = v11 + 16;
      v13 = v14;
      v2 = 3758097127;
      if (v14 && *(v13 + 24) == v10)
      {
        v2 = (*(v9 + 16))(v9, &v6[24 * (v10 % *(v6 + 13)) + 168], v12);
      }

      os_unfair_lock_unlock(v6 + 35);
    }

    else
    {
      return 3758096385;
    }
  }

  return v2;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleModifyField()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_16();
  return __IOGCFastPathRoyaReplayInputQueueSampleModify(v0, v1);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleDestroy(uint64_t a1, uint64_t a2)
{
  if (*a2 != a1)
  {
    return 3758097090;
  }

  result = 0;
  *(a2 + 26) &= 0xFCu;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleCommit(unsigned int ***a1)
{
  OUTLINED_FUNCTION_12(a1);
  OUTLINED_FUNCTION_3_1();
  return __IOGCFastPathRoyaReplayInputQueueSampleModify(v1, v2);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetSequenceID()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_16();
  return __IOGCFastPathRoyaReplayInputQueueSampleRead(v0, v1, v2);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetSubsampleCount()
{
  OUTLINED_FUNCTION_7_0();
  v5 = 3221225472;
  v6 = ____IOGCFastPathRoyaReplayInputQueueSampleGetSubsampleCount_block_invoke;
  v7 = &__block_descriptor_40_e56_i16__0____IOGCFastPathRoyaReplayInputQueueEntryStorage_8l;
  v8 = v0;
  return __IOGCFastPathRoyaReplayInputQueueSampleRead(v1, v2, v4);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetFlags()
{
  OUTLINED_FUNCTION_7_0();
  v5 = 3221225472;
  v6 = ____IOGCFastPathRoyaReplayInputQueueSampleGetFlags_block_invoke;
  v7 = &__block_descriptor_40_e56_i16__0____IOGCFastPathRoyaReplayInputQueueEntryStorage_8l;
  v8 = v0;
  return __IOGCFastPathRoyaReplayInputQueueSampleRead(v1, v2, v4);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp()
{
  OUTLINED_FUNCTION_8_0();
  v10[8] = 3221225472;
  v10[9] = ____IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp_block_invoke;
  v10[10] = &__block_descriptor_44_e131_B16__0r____IOGCFastPathRoyaReplayInputQueueEntryBufferField_QII______IIQQ____I_1q_____I_2q_____I_3q_____I_1d_____I_2d_____I_3d____8l;
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp_block_invoke_2;
  v10[3] = &__block_descriptor_56_e131_i16__0r____IOGCFastPathRoyaReplayInputQueueEntryBufferField_QII______IIQQ____I_1q_____I_2q_____I_3q_____I_1d_____I_2d_____I_3d____8l;
  v10[4] = v3;
  v10[5] = v4;
  v10[6] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ____IOGCFastPathRoyaReplayInputQueueSampleReadField_block_invoke;
  v14[3] = &unk_1E84145E0;
  v14[4] = v6;
  v14[5] = v10;
  return __IOGCFastPathRoyaReplayInputQueueSampleRead(v7, v8, v14);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetTimestamp()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_4_0(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetInteger()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetInteger()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_4_0(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetDouble()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetDouble()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_6();
  return OUTLINED_FUNCTION_4_0(v0, v1, v2);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetInteger2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetInteger2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_4_0(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetDouble2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetDouble2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_6();
  return OUTLINED_FUNCTION_4_0(v0, v1, v2);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetInteger3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetInteger3()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_4_0(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleGetDouble3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_11(v0);
  return OUTLINED_FUNCTION_5_1(v1, v2, v3);
}

uint64_t __IOGCFastPathRoyaReplayInputQueueSampleSetDouble3()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_6();
  return OUTLINED_FUNCTION_4_0(v0, v1, v2);
}

void *IOGCFastPathRoyaReplayInputQueueCreateWithOptions(uint64_t a1, void *a2, void *a3)
{
  v4 = [a3 copy];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:@"QueueCapacity"];
  if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    return 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"QueueChannel"];
  v9 = [v7 unsignedIntValue];
  v10 = v9;
  if (v9 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 24 * v9 - 24;
  }

  v12 = objc_opt_class();
  Instance = class_createInstance(v12, v11);
  Instance[2] = a2;
  Instance[3] = Instance + 11;
  Instance[11] = &_MergedGlobals_0;
  Instance[12] = &unk_1EEC35848;
  Instance[13] = v10;
  *(Instance + 28) = 0;
  Instance[15] = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v8 unsignedIntValue];
  }

  else
  {
    v14 = -1;
  }

  *(Instance + 34) = v14;
  *(Instance + 35) = 0;
  return Instance;
}

CFSetRef IOGCDeviceManagerCopyDevices(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    result = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    existing = 0;
    v3 = *MEMORY[0x1E696CD60];
    v4 = CFRetain(result);
    if (IOServiceGetMatchingServices(v3, v4, &existing))
    {
      return 0;
    }

    __IOGCDeviceManagerHandleDevices(a1, existing, 1, 0);
    IOObjectRelease(existing);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    return CFSetCreateCopy(*(a1 + 8), v5);
  }

  return 0;
}

void IOGCDeviceManagerSetDispatchQueue_cold_1()
{
  qword_1EC72E328 = "BUG IN GameControllerFoundation: Already activated.";
  qword_1EC72E358 = "IOGCDeviceManager";
  __break(0xB001u);
}

void IOGCDeviceManagerActivate_cold_1()
{
  qword_1EC72E328 = "BUG IN GameControllerFoundation: Queue not set.";
  qword_1EC72E358 = "IOGCDeviceManager";
  __break(0xB001u);
}

void __IOGCDeviceManagerStartMatching_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "%@ IOServiceAddMatchingNotification failed: %{mach.errno}d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t GCPrepareIOCFPlugInVtbl_cold_1(uint64_t result, uint64_t a2)
{
  *a2 = result;
  *(a2 + 8) = queryInterface_0;
  *(a2 + 16) = addRef_0;
  *(a2 + 24) = release_0;
  *(a2 + 32) = 1;
  *(a2 + 40) = probe;
  *(a2 + 48) = start;
  *(a2 + 56) = stop;
  return result;
}

uint64_t IOGCCircularControlQueueMemorySize(unsigned int a1, int a2)
{
  result = 0;
  if (a2)
  {
    v4 = ((2 * a1 + 14) & 0xFFFFFFF0) + 64;
    if (v4 >= a1)
    {
      v5 = 2 * a2 * v4;
      if (v5 > 0xFFFFFFB7)
      {
        return 0;
      }

      else
      {
        return v5 + 72;
      }
    }
  }

  return result;
}

uint64_t IOGCCircularControlQueueInit(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 3758097105;
  if (*a2 == a5 && *(a2 + 8) == a3 && *(a2 + 12) == a4)
  {
    result = 0;
    *a1 = a2;
    *(a1 + 8) = a5;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
  }

  return result;
}

uint64_t IOGCCircularControlQueueReset(void *a1, unint64_t a2)
{
  v2 = *a1;
  if (**a1 != a1[1])
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = 0;
  v4 = v2 + 2;
  v5 = atomic_load_explicit(v2 + 2, memory_order_acquire) + 1;
  v6 = &v2[3 * (v5 & 1)];
  atomic_store(0xFFFFFFFFFFFFFFFFLL, v6 + 3);
  atomic_store(a2, v6 + 4);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, v6 + 5);
  atomic_store(v5, v4);
  return result;
}

uint64_t IOGCCircularControlQueueGetNextApplyPosition(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a1[1])
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = 0;
  *a2 = v2[3 * (atomic_load_explicit(v2 + 2, memory_order_acquire) & 1) + 4];
  return result;
}

uint64_t IOGCCircularControlQueueGetLastAppliedPosition(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a1[1])
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = 0;
  *a2 = v2[3 * (atomic_load_explicit(v2 + 2, memory_order_acquire) & 1) + 3];
  return result;
}

void IOGCCircularControlQueueReadBackwardsFromLatestEnqueued()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_2(v0);
  if (v4 && *(v2 + 8) == *(v3 + 16) && *(v2 + 12) == *(v3 + 20))
  {
    OUTLINED_FUNCTION_2_4(v1, v2);
    if (v4)
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_3_2();
      v5();
    }
  }
}

void IOGCCircularControlQueueReadForwardFromNextApply()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_2(v0);
  if (v4 && *(v2 + 8) == *(v3 + 16) && *(v2 + 12) == *(v3 + 20))
  {
    OUTLINED_FUNCTION_2_4(v1, v2);
    if (v4)
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_3_2();
      v5();
    }
  }
}

uint64_t IOGCCircularControlQueueReadNext(uint64_t **a1)
{
  result = OUTLINED_FUNCTION_7_1(a1);
  if (v6)
  {
    v7 = *(v5 + 8);
    if (v7 == *(v3 + 16))
    {
      v8 = *(v5 + 12);
      if (v8 == *(v3 + 20))
      {
        explicit = atomic_load_explicit((v5 + 16), memory_order_acquire);
        v10 = v5 + 24 * (explicit & 1);
        v11 = atomic_load_explicit((v10 + 32), memory_order_acquire);
        if (v11 == -1)
        {
          return (result + 7);
        }

        else
        {
          v12 = ((2 * v8 + 14) & 0xFFFFFFF0) + 64;
          v13 = (v5 + v12 * (v11 % ((v7 - 72) / v12)) + 72);
          if (v13 + v12 <= v5 + v7 && *v13 == v4)
          {
            v14 = atomic_load_explicit((v5 + v12 * (v11 % ((v7 - 72) / v12)) + 80), memory_order_acquire) & 1;
            v15 = &v13[3 * v14];
            result = (result + 7);
            if (v15[3] == explicit && v15[4] == v11)
            {
              result = (*(v2 + 16))(v2, v11, v13 + v14 * ((v8 + 7) & 0xFFFFFFF8) + 64);
              if (result)
              {
                result = 0;
                *(v10 + 24) = v11;
                atomic_store(v11 + 1, (v10 + 32));
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOGCCircularControlQueueEntryModify(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  result = 3758097105;
  v5 = *a1;
  v6 = **a1;
  if (v6 == a1[1])
  {
    v7 = *(v5 + 2);
    if (v7 == *(a1 + 4))
    {
      v8 = *(v5 + 3);
      if (v8 == *(a1 + 5))
      {
        explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
        v10 = atomic_load_explicit(&v5[3 * (explicit & 1) + 4], memory_order_acquire);
        if (v10 == -1)
        {
          return 3758097112;
        }

        else
        {
          v11 = (v8 + 7) & 0xFFFFFFF8;
          v12 = ((v7 - 72) / (2 * v11 + 64)) >> 1;
          if (v10 + v12 <= a2)
          {
            return 3758097128;
          }

          else if (a2 + v12 <= v10)
          {
            return 3758097127;
          }

          else
          {
            v13 = ((2 * v8 + 14) & 0xFFFFFFF0) + 64;
            v14 = (v5 + v13 * (a2 % ((v7 - 72) / v13)) + 72);
            if (v14 + v13 <= v5 + v7 && *v14 == v6)
            {
              v15 = atomic_load_explicit((v5 + v13 * (a2 % ((v7 - 72) / v13)) + 80), memory_order_acquire);
              v16 = &v14[3 * ((v15 & 1) == 0)];
              v16[2] = v15;
              v16[3] = explicit;
              v16[4] = a2;
              (*(a3 + 16))(a3, v14 + ((v15 & 1) == 0) * v11 + 64, v8);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOGCCircularControlQueueEntryCommitModifications(uint64_t **a1, unint64_t a2)
{
  result = 3758097105;
  v4 = *a1;
  v5 = **a1;
  if (v5 != a1[1])
  {
    return result;
  }

  v6 = *(v4 + 2);
  if (v6 != *(a1 + 4))
  {
    return result;
  }

  v7 = *(v4 + 3);
  if (v7 != *(a1 + 5))
  {
    return result;
  }

  explicit = atomic_load_explicit(v4 + 2, memory_order_acquire);
  v9 = &v4[3 * (explicit & 1)];
  v10 = atomic_load_explicit(v9 + 4, memory_order_acquire);
  v11 = atomic_load_explicit(v9 + 5, memory_order_acquire);
  if (v10 == -1)
  {
    return 3758097112;
  }

  v12 = ((2 * v7 + 14) & 0xFFFFFFF0) + 64;
  v13 = (v6 - 72) / v12;
  v14 = v13 >> 1;
  if (v10 + v14 <= a2)
  {
    return 3758097128;
  }

  if (v14 + a2 <= v10)
  {
    return 3758097127;
  }

  v15 = (v4 + v12 * (a2 % v13) + 72);
  if (v15 + v12 <= v4 + v6 && *v15 == v5)
  {
    v16 = atomic_load_explicit(v15 + 1, memory_order_acquire) + 1;
    v17 = &v15[3 * (v16 & 1)];
    if (v17[3] != explicit)
    {
      return 3758097131;
    }

    if (v17[4] == a2)
    {
      atomic_store(v16, v15 + 1);
      result = 0;
      if (v11 == -1 || v11 < a2)
      {
        atomic_store(a2, v9 + 5);
      }

      return result;
    }

    return 3758097112;
  }

  return result;
}

uint64_t IOGCCircularControlQueueEntryResetModifications(uint64_t **a1)
{
  result = OUTLINED_FUNCTION_7_1(a1);
  if (v6)
  {
    v7 = *(v5 + 8);
    if (v7 == *(v3 + 16))
    {
      v8 = *(v5 + 12);
      if (v8 == *(v3 + 20))
      {
        explicit = atomic_load_explicit((v5 + 24 * (atomic_load_explicit((v5 + 16), memory_order_acquire) & 1) + 32), memory_order_acquire);
        if (explicit == -1)
        {
          return (result + 7);
        }

        else
        {
          v10 = (v8 + 7) & 0xFFFFFFF8;
          v12 = ((v7 - 72) / (2 * v10 + 64)) >> 1;
          if (explicit + v12 <= v2)
          {
            return (result + 23);
          }

          else if (v12 + v2 <= explicit)
          {
            return (result + 22);
          }

          else
          {
            v13 = ((2 * v8 + 14) & 0xFFFFFFF0) + 64;
            v11 = v7 - 72;
            v14 = (v5 + v13 * (v2 % ((v7 - 72) / v13)) + 72);
            if (v14 + v13 <= v5 + v7 && *v14 == v4)
            {
              v15 = atomic_load_explicit((v5 + v13 * (v2 % (v11 / v13)) + 80), memory_order_acquire) & 1;
              v16 = v5 + v13 * (v2 % (v11 / v13)) + 88 + 24 * v15;
              v17 = v5 + v13 * (v2 % (v11 / v13)) + 88 + 24 * (v15 ^ 1);
              memcpy(v14 + (v15 ^ 1) * v10 + 64, v14 + v15 * v10 + 64, v8);
              result = 0;
              *v17 = *v16;
              *(v17 + 16) = *(v16 + 16);
            }
          }
        }
      }
    }
  }

  return result;
}

void GCHIDDeviceAttributesPredicateFromMatchingDictionary_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSPredicate * _Nullable GCHIDDeviceAttributesPredicateFromMatchingDictionary(NSDictionary *__strong _Nonnull, NSString *__autoreleasing * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"GCHIDProtocols.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"[matching isKindOfClass:NSDictionary.class]"}];
}

void __GCHIDDeviceAttributesPredicateFromMatchingDictionary_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  v1 = [v0 localizedFailureReason];
  OUTLINED_FUNCTION_0_9(v1);
  OUTLINED_FUNCTION_1_6();
}

void __IOHIDQueueInputElementValueCallback(void *a1, int a2, __IOHIDQueue *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!a2 && v5[1] == a3)
  {
    Value = IOHIDQueueCopyNextValue(a3);
    if (Value)
    {
      v9 = Value;
      v10 = 0;
      *&v8 = 138412802;
      v29 = v8;
      while (1)
      {
        if (v10)
        {
          if (++v10 == 20)
          {
            v11 = _gc_log_hid_input();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *v30 = 0;
              v19 = OUTLINED_FUNCTION_1_7();
              _os_log_debug_impl(v19, v20, v21, "#WARNING IOHIDQueue is full, events may have been dropped!", v22, 2u);
            }

            v10 = 20;
          }
        }

        else
        {
          v27 = v6[5];
          IOHIDValueGetTimeStamp(v9);
          [(__IOHIDQueue *)v6[4] count];
          kdebug_trace();
          v10 = 1;
        }

        Element = IOHIDValueGetElement(v9);
        v13 = objc_getProperty(v6, sel_elements, 56, 1);
        v14 = [v13 member:Element];
        v15 = v14;
        if (!v14)
        {
          break;
        }

        [(GCHIDInputElement *)v14 valueChanged:v9];
        if (IOHIDElementGetType(Element) == kIOHIDElementTypeInput_NULL)
        {
          goto LABEL_19;
        }

        [(__IOHIDQueue *)v6[4] addObject:v15];
LABEL_17:
        CFRelease(v9);

        v9 = IOHIDQueueCopyNextValue(a3);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if (IOHIDElementGetType(Element) == kIOHIDElementTypeInput_NULL)
      {
LABEL_19:
        v16 = [(GCHIDDeviceInput *)v6 batchInputElementHandler];
        if (v16)
        {
          v17 = v6[4];
          TimeStamp = IOHIDValueGetTimeStamp(v9);
          (*(v16 + 16))(v16, v17, TimeStamp);
        }

        [(__IOHIDQueue *)v6[4] removeAllObjects:v29];
      }

      else
      {
        v16 = _gc_log_hid_input();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v30 = v29;
          *&v30[4] = v6;
          *&v30[12] = 1024;
          *&v30[14] = IOHIDElementGetCookie(Element);
          *&v30[18] = 2112;
          *&v30[20] = Element;
          v23 = OUTLINED_FUNCTION_1_7();
          _os_log_debug_impl(v23, v24, v25, "%@: Element changed: <HIDElement cookie: %u %@>", v26, 0x1Cu);
        }
      }

      goto LABEL_17;
    }
  }

LABEL_23:

  v28 = *MEMORY[0x1E69E9840];
}

_DWORD *_gc_state_dictionary_builder(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (((a2 >> (v5 - 1)) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v6 = objc_opt_new();
  v7 = (*(a3 + 16))(a3, a1, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:0];
  v10 = [v9 length];

  if (!v9)
  {
    return 0;
  }

  v11 = malloc_type_calloc(1uLL, v10 + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  v11[1] = v10;
  [v8 getCString:v11 + 34 maxLength:64 encoding:4];
  [v9 getBytes:v11 + 50 length:{objc_msgSend(v9, "length")}];
  return v11;
}

uint64_t IOGCDeviceInterfacePrepareObjCVtbl_cold_1(uint64_t result, void *a2)
{
  *a2 = result;
  a2[1] = queryInterface_0;
  a2[2] = addRef_0;
  a2[3] = release_0;
  a2[4] = openDevice;
  a2[5] = closeDevice;
  a2[6] = getProperty;
  a2[7] = setProperty;
  return result;
}

uint64_t *IOGCFastPathClientCreateWithPlugInInterface(const void *a1, io_object_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = [__IOGCFastPathClient alloc];
    v8 = v10;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v6 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v6);
  v8 = MEMORY[0x1D38AA5C0](a1, InstanceSize, 403179417, 0);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = objc_opt_class();
  v8 = objc_constructInstance(v9, v8);
  v10 = CFRetain(a1);
  v8[1] = v10;
  if (a2)
  {
LABEL_6:
    LODWORD(v10) = IOObjectRetain(a2);
    if (v10)
    {
      v18 = v10;
      v19 = _gc_log_iokit();
      if (!OUTLINED_FUNCTION_12_0(v19))
      {
LABEL_8:

        v8 = 0;
        goto LABEL_19;
      }

      v58 = 67109120;
      v59 = v18;
      goto LABEL_21;
    }

    *(v8 + 4) = a2;
  }

LABEL_10:
  v20 = *(*a3 + 8);
  v21 = OUTLINED_FUNCTION_3_4(v10, v11, v12, v13, v14, v15, v16, v17, v52, v54, v56, SBYTE2(v56), HIBYTE(v56));
  CFUUIDGetUUIDBytes(v21);
  OUTLINED_FUNCTION_8_1();
  v22 = OUTLINED_FUNCTION_17_0();
  v23 = (v20)(v22);
  v31 = v23;
  if ((v23 & 0x80000000) != 0 || (v20 = v8[3]) == 0)
  {
    v47 = _gc_log_iokit();
    if (!OUTLINED_FUNCTION_13_0(v47))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_0();
    v60 = v31;
    v41 = &dword_1D2C3B000;
    v44 = "[IOGCFastPathClient] #Error obtaining 'kIOCFPlugInInterface' from %p: %d";
    v45 = &v58;
    v42 = v20;
    goto LABEL_27;
  }

  v32 = OUTLINED_FUNCTION_2_8(v23, v24, v25, v26, v27, v28, v29, v30, v53, v55, v57, SBYTE2(v57), HIBYTE(v57));
  CFUUIDGetUUIDBytes(v32);
  OUTLINED_FUNCTION_8_1();
  v33 = OUTLINED_FUNCTION_4_3();
  v34 = v31(v33);
  if (v34 < 0 || !v8[4])
  {
    v48 = _gc_log_iokit();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_0();
    v60 = v34;
    v41 = &dword_1D2C3B000;
    v44 = "[IOGCFastPathClient] #Error obtaining 'IOGFastPathClientInterface' from %p: %d";
    v45 = &v58;
    v42 = v48;
LABEL_27:
    v43 = OS_LOG_TYPE_ERROR;
    v46 = 18;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_13(v8[3]);
  if (!v35)
  {
    v49 = _gc_log_iokit();
    if (!OUTLINED_FUNCTION_12_0(v49))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_9();
    v58 = 67109120;
    v59 = v51;
LABEL_21:
    OUTLINED_FUNCTION_9_1();
LABEL_22:
    _os_log_error_impl(v41, v42, v43, v44, v45, v46);
    goto LABEL_8;
  }

  Property = IOGCFastPathClientGetProperty(v8, @"ProviderID");
  if (Property)
  {
    v37 = Property;
    v38 = CFGetTypeID(Property);
    if (v38 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v37, kCFNumberSInt64Type, v8 + 5);
    }
  }

LABEL_19:
  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

__IOGCFastPathClient *IOGCFastPathClientCreate(const void *a1, io_object_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_9;
  }

  theScore[0] = 0;
  if (a1)
  {
    v4 = objc_opt_class();
    InstanceSize = class_getInstanceSize(v4);
    v6 = MEMORY[0x1D38AA5C0](a1, InstanceSize, 2744634659, 0);
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v6 = objc_constructInstance(v7, v6);
    v6->allocator = CFRetain(a1);
  }

  else
  {
    v6 = [__IOGCFastPathClient alloc];
  }

  v8 = IOObjectRetain(a2);
  if (v8)
  {
    v9 = v8;
    v10 = _gc_log_iokit();
    if (!OUTLINED_FUNCTION_12_0(v10))
    {
LABEL_8:

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }

    theScore[1] = 67109120;
    theScore[2] = v9;
LABEL_20:
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_9_1();
    _os_log_error_impl(v37, v38, v39, v40, v41, v42);
    goto LABEL_8;
  }

  v6->service = a2;
  v13 = OUTLINED_FUNCTION_5_4();
  v14 = CFUUIDGetConstantUUIDWithBytes(v13, 0xF2u, 0x5Fu, 0xF3u, 0xC2u, 0x33u, 0xFu, 0x4Bu, v52, BYTE1(v52), BYTE2(v52), BYTE3(v52), BYTE4(v52), BYTE5(v52), BYTE6(v52), HIBYTE(v52), 0xCDu);
  v22 = OUTLINED_FUNCTION_3_4(v14, v15, v16, v17, v18, v19, v20, v21, v53, v55, byte15a, v59, v60);
  if (IOCreatePlugInInterfaceForService(a2, v14, v22, &v6->pluginInterface, theScore))
  {
    entryID = 0;
    v43 = IOObjectCopyClass(a2);
    IORegistryEntryGetRegistryEntryID(a2, &entryID);
    v45 = _gc_log_iokit();
    if (OUTLINED_FUNCTION_12_0(v45))
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  pluginInterface = v6->pluginInterface;
  v31 = OUTLINED_FUNCTION_2_8(0, v23, v24, v25, v26, v27, v28, v29, v54, v56, byte15, SBYTE2(byte15), HIBYTE(byte15));
  CFUUIDGetUUIDBytes(v31);
  OUTLINED_FUNCTION_8_1();
  v32 = OUTLINED_FUNCTION_4_3();
  if (((&OBJC_METACLASS____GCFStaticLocalizedString.vtable)(v32) & 0x80000000) != 0 || !v6->clientInterface)
  {
    entryID = 0;
    v43 = IOObjectCopyClass(a2);
    IORegistryEntryGetRegistryEntryID(a2, &entryID);
    v44 = _gc_log_iokit();
    if (OUTLINED_FUNCTION_12_0(v44))
    {
LABEL_28:
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_0();
      _os_log_error_impl(v48, v49, OS_LOG_TYPE_ERROR, v50, v51, 0x1Cu);
      if (!v43)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (!v43)
    {
      goto LABEL_8;
    }

LABEL_25:
    CFRelease(v43);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_13(v6->pluginInterface);
  if (!v33)
  {
    v46 = _gc_log_iokit();
    if (!OUTLINED_FUNCTION_12_0(v46))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_16_0();
    goto LABEL_20;
  }

  Property = IOGCFastPathClientGetProperty(v6, @"ProviderID");
  if (Property)
  {
    v35 = Property;
    v36 = CFGetTypeID(Property);
    if (v36 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v35, kCFNumberSInt64Type, &v6->providerID);
    }
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

__IOGCFastPathControlQueue *IOGCFastPathControlQueueCreateWithOptions(const void *a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_21;
  }

  v5 = a2[4];
  v33 = 0;
  v6 = (*(*v5 + 80))(v5, a1, a3, &v33);
  if (v6 < 0 || !v33)
  {
    v25 = _gc_log_iokit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v34 = 67109120;
      v35 = v6;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v26, v27, OS_LOG_TYPE_INFO, v28, v29, 8u);
    }

    goto LABEL_21;
  }

  if (a1)
  {
    v7 = objc_opt_class();
    InstanceSize = class_getInstanceSize(v7);
    v9 = MEMORY[0x1D38AA5C0](a1, InstanceSize, 1641900405, 0);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v9 = objc_constructInstance(v10, v9);
    v9->allocator = CFRetain(a1);
  }

  else
  {
    v9 = [__IOGCFastPathControlQueue alloc];
  }

  v9->client = a2;
  v11 = *(*v33 + 8);
  v12 = OUTLINED_FUNCTION_5_4();
  v13 = CFUUIDGetConstantUUIDWithBytes(v12, 0x5Du, 0xF3u, 0x6Au, 0xD7u, 0xDDu, 0x2Bu, 0x49u, v32, BYTE1(v32), BYTE2(v32), BYTE3(v32), BYTE4(v32), BYTE5(v32), BYTE6(v32), HIBYTE(v32), 0x74u);
  CFUUIDGetUUIDBytes(v13);
  OUTLINED_FUNCTION_8_1();
  v14 = OUTLINED_FUNCTION_17_0();
  v15 = v11(v14);
  (*(*v33 + 24))(v33);
  if (v15 < 0 || (queueInterface = v9->queueInterface) == 0)
  {
    v20 = _gc_log_iokit();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_20:

LABEL_21:
      v9 = 0;
      goto LABEL_12;
    }

    v34 = 67109120;
    v35 = v15;
    OUTLINED_FUNCTION_10_0();
LABEL_19:
    _os_log_impl(v21, v22, OS_LOG_TYPE_INFO, v23, v24, 8u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_13(queueInterface);
  if (!v17)
  {
    v30 = _gc_log_iokit();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_15_0();
    goto LABEL_19;
  }

LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

__IOGCFastPathControlQueue *IOGCFastPathControlQueueCreate(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"QueueChannel";
  v9[1] = @"QueueCapacity";
  v10[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v10[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  result = IOGCFastPathControlQueueCreateWithOptions(a1, a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__IOGCFastPathInputQueue *IOGCFastPathInputQueueCreateWithOptions(const void *a1, void *a2, CFDictionaryRef theDict)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v6 = a2[5];
  valuePtr = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"QueueChannel");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      }
    }
  }

  kdebug_trace();
  v10 = a2[4];
  v47 = 0;
  v11 = (*(*v10 + 88))(v10, a1, theDict, &v47);
  if (v11 < 0 || !v47)
  {
    v30 = _gc_log_iokit();
    if (OUTLINED_FUNCTION_13_0(v30))
    {
      v49 = 67109120;
      v50 = v11;
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_9_1();
      _os_log_error_impl(v31, v32, v33, v34, v35, v36);
    }

    goto LABEL_29;
  }

  if (!a1)
  {
    v14 = [__IOGCFastPathInputQueue alloc];
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v12);
  v14 = MEMORY[0x1D38AA5C0](a1, InstanceSize, 3188172980, 0);
  if (v14)
  {
    v15 = objc_opt_class();
    v14 = objc_constructInstance(v15, v14);
    v14->allocator = CFRetain(a1);
LABEL_12:
    v14->client = a2;
    v16 = *(*v47 + 8);
    v17 = OUTLINED_FUNCTION_5_4();
    v18 = CFUUIDGetConstantUUIDWithBytes(v17, 0x19u, 0x43u, 0x1Bu, 0xCFu, 0xBBu, 0xEFu, 0x43u, v46, BYTE1(v46), BYTE2(v46), BYTE3(v46), BYTE4(v46), BYTE5(v46), BYTE6(v46), HIBYTE(v46), 0x2Du);
    CFUUIDGetUUIDBytes(v18);
    OUTLINED_FUNCTION_8_1();
    v19 = OUTLINED_FUNCTION_4_3();
    v20 = v16(v19);
    (*(*v47 + 24))(v47);
    if (v20 < 0 || (queueInterface = v14->queueInterface) == 0)
    {
      v29 = _gc_log_iokit();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_28:

LABEL_29:
        v14 = 0;
        goto LABEL_20;
      }

      v49 = 67109120;
      v50 = v20;
    }

    else
    {
      OUTLINED_FUNCTION_0_13(queueInterface);
      if (v22)
      {
        Property = IOGCFastPathInputQueueGetProperty(v14, @"QueueID");
        if (Property)
        {
          v24 = Property;
          v25 = CFGetTypeID(Property);
          if (v25 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v24, kCFNumberSInt64Type, &v14->queueID);
          }
        }

        queueID = v14->queueID;
        goto LABEL_20;
      }

      v37 = _gc_log_iokit();
      if (!OUTLINED_FUNCTION_13_0(v37))
      {
        goto LABEL_28;
      }

      var4 = (*v14->queueInterface)->var4;
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_9_1();
    _os_log_error_impl(v40, v41, v42, v43, v44, v45);
    goto LABEL_28;
  }

LABEL_20:
  kdebug_trace();
LABEL_21:
  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

__IOGCFastPathInputQueue *IOGCFastPathInputQueueCreateWithDuration(const void *a1, void *a2, double a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"QueueChannel";
  v8[1] = @"QueueDuration";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v9[1] = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  result = IOGCFastPathInputQueueCreateWithOptions(a1, a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOGCFastPathInputQueueActivate(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = 3758097112;
  v9 = 0;
  if (*(a1 + 40))
  {
    if (*(a1 + 56))
    {
      v4 = (*(*v2 + 64))(v2, &v9);
      if (v4)
      {
        v3 = v4;
      }

      else
      {
        v5 = *(a1 + 40);
        v6 = dispatch_mach_create();
        *(a1 + 72) = v6;
        if (v6)
        {
          dispatch_retain(v6);
          CFRetain(a1);
          v7 = *(a1 + 72);
          dispatch_mach_connect();
          v3 = 0;
          *(a1 + 80) = 1;
          return v3;
        }

        v3 = 3758097097;
      }
    }

    if (v9)
    {
      (*(*v2 + 64))(v2, 0);
    }
  }

  return v3;
}

__IOGCFastPathReader *IOGCFastPathReaderCreate(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_23;
  }

  v4 = a2[3];
  v5 = *(a2[2] + 40);
  v6 = a2[4];
  kdebug_trace();
  v7 = *(*v4 + 88);
  if (v7)
  {
    v42 = 0;
    v8 = v7(v4, a1, &v42);
    if (v8 < 0 || !v42)
    {
      v25 = _gc_log_iokit();
      if (OUTLINED_FUNCTION_13_0(v25))
      {
        v43 = 67109120;
        v44 = v8;
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_9_1();
        _os_log_error_impl(v26, v27, v28, v29, v30, v31);
      }

      goto LABEL_22;
    }

    if (a1)
    {
      v9 = objc_opt_class();
      InstanceSize = class_getInstanceSize(v9);
      v11 = MEMORY[0x1D38AA5C0](a1, InstanceSize, 1470306734, 0);
      if (!v11)
      {
LABEL_22:
        OUTLINED_FUNCTION_7_3();
LABEL_23:
        v14 = 0;
        goto LABEL_15;
      }

      v12 = v11;
      v13 = objc_opt_class();
      v14 = objc_constructInstance(v13, v12);
      v14->allocator = CFRetain(a1);
    }

    else
    {
      v14 = [__IOGCFastPathReader alloc];
    }

    v14->queue = a2;
    v15 = *(*v42 + 8);
    v16 = OUTLINED_FUNCTION_5_4();
    v17 = CFUUIDGetConstantUUIDWithBytes(v16, 0x6Bu, 0x29u, 0x76u, 0xBCu, 0xFu, 0xD5u, 0x4Bu, v41, BYTE1(v41), BYTE2(v41), BYTE3(v41), BYTE4(v41), BYTE5(v41), BYTE6(v41), HIBYTE(v41), 0x4Bu);
    CFUUIDGetUUIDBytes(v17);
    OUTLINED_FUNCTION_8_1();
    v18 = OUTLINED_FUNCTION_4_3();
    v19 = v15(v18);
    (*(*v42 + 24))(v42);
    if (v19 < 0 || (readerInterface = v14->readerInterface) == 0)
    {
      v24 = _gc_log_iokit();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        goto LABEL_22;
      }

      v43 = 67109120;
      v44 = v19;
LABEL_25:
      OUTLINED_FUNCTION_9_1();
      _os_log_error_impl(v35, v36, v37, v38, v39, v40);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_0_13(readerInterface);
    if (!v21)
    {
      v32 = _gc_log_iokit();
      if (!OUTLINED_FUNCTION_13_0(v32))
      {
        goto LABEL_21;
      }

      var4 = (*v14->readerInterface)->var4;
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_10_0();
      goto LABEL_25;
    }
  }

  else
  {
    v14 = IOGCFastPathSimpleReaderCreate(a1, a2);
  }

  OUTLINED_FUNCTION_7_3();
LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t IOGCFastPathInputQueueCancel_cold_2(uint64_t result)
{
  if ((*(result + 81) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    result = dispatch_mach_cancel();
    *(v1 + 81) = 1;
  }

  return result;
}

uint64_t IOGCFastPathReaderReset_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = -1;
  (*(*a1 + 56))(a1, &v6);
  OUTLINED_FUNCTION_11_0();
  kdebug_trace();
  *a3 = (*(*a1 + 48))(a1);
  v6 = -1;
  (*(*a1 + 56))(a1, &v6);
  OUTLINED_FUNCTION_11_0();
  return kdebug_trace();
}

void ConnectToDriverService_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ConnectToDriverService(Protocol *__strong, __strong id<GCConfigXPCServiceInterface>, __strong id, void (^__strong)(__strong id, NSError *__strong))"}];
  [v2 handleFailureInFunction:v3 file:@"GCConfigXPCServiceConnection.m" lineNumber:66 description:{@"Unknown service: %@", a1}];

  __break(1u);
}

void GCLookupService_cold_1(objc_class *a1, uint64_t a2)
{
  if (object_isClass(a1))
  {
    v4 = NSStringFromClass(a1);
  }

  else
  {
    if (objc_opt_isKindOfClass())
    {
      [MEMORY[0x1E696AEC0] stringWithUTF8String:protocol_getName(a1)];
    }

    else
    {
      [(objc_class *)a1 description];
    }
    v4 = ;
  }

  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@ %p> returned nil for required dependency '%@'.", v8, a2, v5];

  v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v9 userInfo:0];
  objc_exception_throw(v10);
}

void ___ZN8Observer6CreateEU13block_pointerFv13GCFutureStateP11objc_objectP7NSErrorEPU28objcproto17OS_dispatch_queue8NSObjectj11qos_class_ti_block_invoke_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void *IOGCDeviceCreate(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_4;
  }

  v10 = 0;
  v3 = [__IOGCDevice alloc];
  v3->_allocator = *MEMORY[0x1E695E480];
  v4 = [(__IOGCDevice *)v3 initWithPort:a2 error:&v10];
  if (!v4)
  {
    v8 = _gc_log_iokit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_ERROR, "IOGCDevice creation failed: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = v4;
  if (!_IOGCDeviceGetPlugInInterface(v4))
  {
    v9 = _gc_log_iokit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1D2C3B000, v9, OS_LOG_TYPE_ERROR, "IOGCDevice creation failed.", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void _IOGCDeviceGetPlugInInterface_cold_1(io_object_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  entryID = 0;
  v2 = IOObjectCopyClass(a1);
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  v3 = _gc_log_iokit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_1_11(&dword_1D2C3B000, v4, v5, "#Error instantiating 'kIOGCDeviceTypeID' CFPlugIn for <%@ '%#010llx'>: %{mach.errno}d", v6, v7, v8, v9, v11, entryID, v13);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void _IOGCDeviceGetPlugInInterface_cold_2(io_object_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  entryID = 0;
  v2 = IOObjectCopyClass(a1);
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  v3 = _gc_log_iokit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_1_11(&dword_1D2C3B000, v4, v5, "#Error obtaining 'kIOGCDeviceInterfaceID' from 'kIOGCDeviceTypeID' CFPlugIn for <%@ '%#010llx'>: %d", v6, v7, v8, v9, v11, entryID, v13);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t IOCircularDataQueueInitFixed(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  if (HIDWORD(a3))
  {
    return 3758097090;
  }

  result = 0;
  *a2 = a5;
  *a1 = a5;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  atomic_store(1uLL, (a1 + 16));
  atomic_store(1uLL, (a1 + 24));
  atomic_store(0, (a1 + 32));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 40));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 48));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 56));
  return result;
}

uint64_t IOCircularDataQueueGetStartingPosition(uint64_t a1, void *a2)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    v4 = *(a1 + 40);
    if (v4 == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueGetLatestPosition(uint64_t a1, unint64_t *a2)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    explicit = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (explicit == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else
    {
      result = 0;
      *a2 = explicit;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueReset(uint64_t a1, unint64_t a2)
{
  result = 3758097109;
  if (a2 == -1)
  {
    return 3758097090;
  }

  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  if (explicit == atomic_load_explicit((a1 + 24), memory_order_acquire))
  {
    v5 = explicit;
    atomic_compare_exchange_strong((a1 + 24), &v5, explicit + 1);
    if (v5 == explicit)
    {
      if (atomic_load_explicit((a1 + 32), memory_order_acquire) < 1)
      {
        if (*(a1 + 12))
        {
          result = 0;
          atomic_store(a2, (a1 + 40));
          atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 48));
          atomic_store(a2, (a1 + 56));
        }

        else
        {
          result = 3758097095;
        }

        atomic_store(explicit + 1, (a1 + 16));
      }

      else
      {
        atomic_store(explicit, (a1 + 24));
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueEnqueueCopy(uint64_t a1, uint64_t a2, void *__src, size_t __n)
{
  result = 3758097090;
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    return 3758097105;
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    return 3758097105;
  }

  if (__n <= 0xFFFFFFC7)
  {
    atomic_fetch_add((a1 + 32), 1uLL);
    explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
    if (explicit == atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      if (v7)
      {
        v9 = 3758097090;
        if (v7 >= __n)
        {
          v10 = atomic_load_explicit((a1 + 40), memory_order_acquire);
          v11 = atomic_load_explicit((a1 + 56), memory_order_acquire);
          if (v11 == -1)
          {
            v9 = 3758097112;
            goto LABEL_25;
          }

          v12 = (v7 + 63) & 0x1FFFFFFF8;
          v13 = (v6 - 64) / v12;
          v14 = v11 % v13 * v12;
          v9 = 3758097097;
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v15 = a1 + 64 + v14;
          if (v15 >= a1 + v6)
          {
            goto LABEL_25;
          }

          v16 = v11;
          atomic_compare_exchange_strong((a1 + 56), &v16, v11 + 1);
          if (v16 == v11)
          {
            v17 = (v15 + 32);
            atomic_store(0xFFFFFFFFFFFFFFFFLL, (v15 + 32));
            atomic_store(v11, (v15 + 40));
            *v15 = *a1;
            atomic_store(explicit, (v15 + 8));
            if (v11 <= v10)
            {
              v18 = -1;
            }

            else
            {
              v18 = v11 - 1;
            }

            atomic_store(v18, (v15 + 16));
            atomic_store(0xFFFFFFFFFFFFFFFFLL, (v15 + 24));
            *(v15 + 48) = __n;
            memcpy((v15 + 56), __src, __n);
            atomic_store(v11, v17);
            if (v11 > v10)
            {
              atomic_store(v11, (a1 + 64 + (v11 - 1) % v13 * v12 + 24));
            }

            do
            {
              v19 = atomic_load_explicit((a1 + 48), memory_order_acquire);
              if (v19 != -1 && v16 <= v19)
              {
                break;
              }

              v21 = v19;
              atomic_compare_exchange_strong((a1 + 48), &v21, v16);
            }

            while (v21 != v19);
            v9 = 0;
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v9 = 3758097095;
      }

LABEL_25:
      atomic_fetch_add((a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
      return v9;
    }

LABEL_24:
    v9 = 3758097109;
    goto LABEL_25;
  }

  return result;
}

uint64_t IOCircularDataQueueCursorReset(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
    v6 = atomic_load_explicit((a1 + 40), memory_order_acquire);
    v7 = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (v7 == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else if (v6 > a3)
    {
      return 3758097127;
    }

    else if (v7 < a3)
    {
      return 3758097128;
    }

    else
    {
      result = 0;
      *a2 = explicit;
      a2[1] = a3;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorResetLatest(uint64_t a1, unint64_t *a2)
{
  result = 3758097095;
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  if (*(a1 + 12))
  {
    v5 = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (v5 == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else
    {
      result = 0;
      *a2 = explicit;
      a2[1] = v5;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorMovePrevious(uint64_t a1, void *a2, BOOL *a3)
{
  result = 3758097095;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v8 = atomic_load_explicit((a1 + 40), memory_order_acquire);
  v9 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  if (v6)
  {
    if (v9 == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else
    {
      v10 = a2[1];
      if (v10 <= v8)
      {
        return 3758097127;
      }

      else
      {
        a2[1] = v10 - 1;
        result = 0;
        if (a3)
        {
          *a3 = v9 - (v5 - 64) / ((v6 + 63) & 0x1FFFFFFF8uLL) >= v10 - 1;
        }
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorMoveNext(uint64_t a1, void *a2, BOOL *a3)
{
  result = 3758097095;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v8 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  if (v6)
  {
    if (v8 == -1)
    {
      return OUTLINED_FUNCTION_0_16(-536870201);
    }

    else
    {
      v9 = a2[1];
      if (v9 >= v8)
      {
        return 3758097128;
      }

      else
      {
        a2[1] = v9 + 1;
        result = 0;
        if (a3)
        {
          *a3 = v8 - (v5 - 64) / ((v6 + 63) & 0x1FFFFFFF8uLL) > v9;
        }
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorAccess(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v6 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  v7 = a2[1];
  if (v7 > v6)
  {
    return 3758097128;
  }

  if (!v4)
  {
    return 3758097095;
  }

  v9 = v7 % ((v3 - 64) / ((v4 + 63) & 0x1FFFFFFF8uLL)) * ((v4 + 63) & 0x1FFFFFFF8);
  result = 3758097097;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = (a1 + v9 + 64);
    if (v11 < a1 + v3)
    {
      if (*v11 != *a1)
      {
        return 3758097105;
      }

      if (atomic_load_explicit((a1 + v9 + 72), memory_order_acquire) == explicit)
      {
        v12 = atomic_load_explicit((a1 + v9 + 96), memory_order_acquire);
        if (v12 != atomic_load_explicit((a1 + v9 + 104), memory_order_acquire))
        {
          return 3758097127;
        }

        result = 3758097127;
        if (v12 == a2[1])
        {
          (*(a3 + 16))(a3, a1 + v9 + 120, *(a1 + v9 + 112));
          v13 = atomic_load_explicit(v11 + 4, memory_order_acquire);
          if (atomic_load_explicit(v11 + 5, memory_order_acquire) == v12 && v13 == v12)
          {
            return 0;
          }

          else
          {
            return 3758097127;
          }
        }

        return result;
      }

      return 3758097131;
    }
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}