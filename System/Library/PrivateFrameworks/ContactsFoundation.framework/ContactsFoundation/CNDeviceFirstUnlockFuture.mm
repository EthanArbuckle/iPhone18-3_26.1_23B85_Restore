@interface CNDeviceFirstUnlockFuture
+ (id)deviceFirstUnlockFuture;
@end

@implementation CNDeviceFirstUnlockFuture

+ (id)deviceFirstUnlockFuture
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CNPromise);
  out_token = -1;
  v3 = dispatch_get_global_queue(0, 0);
  v4 = +[CNMobileKeyBag firstUnlockNotificationID];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __52__CNDeviceFirstUnlockFuture_deviceFirstUnlockFuture__block_invoke;
  handler[3] = &unk_1E6ED5278;
  v5 = v2;
  v16 = v5;
  v6 = notify_register_dispatch(v4, &out_token, v3, handler);
  if (v6)
  {
    v18 = @"notify_status";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    future = [CNFoundationError errorWithCode:10 userInfo:v8];

    [(CNPromise *)v5 finishWithError:future];
  }

  else
  {
    future = [(CNPromise *)v5 future];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__CNDeviceFirstUnlockFuture_deviceFirstUnlockFuture__block_invoke_2;
    v13[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
    v14 = out_token;
    [future addFailureBlock:v13];
  }

  future2 = [(CNPromise *)v5 future];

  v11 = *MEMORY[0x1E69E9840];

  return future2;
}

uint64_t __52__CNDeviceFirstUnlockFuture_deviceFirstUnlockFuture__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFB0] null];
  [v3 finishWithResult:v4];

  return notify_cancel(a2);
}

uint64_t __52__CNDeviceFirstUnlockFuture_deviceFirstUnlockFuture__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [CNFoundationError isCanceledError:a2];
  if (result)
  {
    v4 = *(a1 + 32);

    return notify_cancel(v4);
  }

  return result;
}

@end