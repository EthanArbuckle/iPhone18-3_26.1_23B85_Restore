@interface NotificationResponseHandler
@end

@implementation NotificationResponseHandler

void ___NotificationResponseHandler_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  v3 = _NotificationHandlerMap();
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___NotificationResponseHandler_block_invoke_2;
    block[3] = &unk_1E79E26C0;
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    v12 = v7;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v8 = _NotificationHandlerMap();
  [v8 removeObjectForKey:v2];

  CFRelease(*(a1 + 32));
}

@end