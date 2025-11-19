@interface ServiceRemovedCallback
@end

@implementation ServiceRemovedCallback

void ____ServiceRemovedCallback_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    v4 = (**(v3 + 80))(*(a1 + 40));
  }

  else
  {
    v4 = MEMORY[0x1E696CD28](*(a1 + 40));
  }

  v5 = v4;
  CFRelease(*(a1 + 40));
  v6 = _gc_log_hid();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = [v5 unsignedLongLongValue];
    _os_log_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_INFO, "HID Service Removed: serviceID='%#010llx'", &v9, 0xCu);
  }

  if ([*(*v2 + 64) gc_member:v5])
  {
    ____ServiceRemovedCallback_block_invoke_cold_1();
  }

  else
  {
    v7 = _gc_log_hid();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ____ServiceRemovedCallback_block_invoke_cold_2(v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ____ServiceRemovedCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v3 = [*(*v2 + 64) mutableCopy];
  [v3 removeObject:v0];
  v4 = [v3 copy];

  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v0, 0}];
  [GCHIDEventSystemClient _onqueue_services:? added:? removed:?];
}

void ____ServiceRemovedCallback_block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 unsignedLongLongValue];
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v1, v2, "#NOTE Un-tracked HID Service Removed: serviceID='%#010llx'", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

@end