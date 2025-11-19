@interface PKSecureElement_HWManagerEventListener
- (void)secureElement:(id)a3 didChangeRestrictedMode:(BOOL)a4;
@end

@implementation PKSecureElement_HWManagerEventListener

- (void)secureElement:(id)a3 didChangeRestrictedMode:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__544;
  v19 = __Block_byref_object_dispose__545;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __SharedHardwareManagerEventListenerCopy_block_invoke;
  v14[3] = &unk_1E79D0918;
  v14[4] = &v15;
  _SharedHardwareManagerEventListenerAccess(0, v14);
  v6 = v16[5];
  _Block_object_dispose(&v15, 8);

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) secureElement:v5 didChangeRestrictedMode:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }
}

@end