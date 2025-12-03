@interface IMTextInputCryptographer
+ (id)sharedCryptographer;
- (IMTextInputCryptographer)init;
- (NSData)deviceSalt;
- (id)stringDigestForName:(id)name;
- (void)prewarmDeviceSalt;
@end

@implementation IMTextInputCryptographer

+ (id)sharedCryptographer
{
  if (qword_1EB2E90C0 != -1)
  {
    sub_1A8256070();
  }

  v3 = qword_1EB2E90C8;

  return v3;
}

- (IMTextInputCryptographer)init
{
  v6.receiver = self;
  v6.super_class = IMTextInputCryptographer;
  v2 = [(IMTextInputCryptographer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TextInput.crypto", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)prewarmDeviceSalt
{
  if (!self->_deviceSalt)
  {
    block[7] = v3;
    block[8] = v4;
    v6 = objc_msgSend_dispatchQueue(self, a2, v2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82561C8;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (NSData)deviceSalt
{
  v42 = *MEMORY[0x1E69E9840];
  deviceSalt = self->_deviceSalt;
  if (!deviceSalt)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B020]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC40], @"deviceSalt");
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], @"com.apple.TextInput");
    result = 0;
    v6 = SecItemCopyMatching(Mutable, &result);
    v7 = self->_deviceSalt;
    self->_deviceSalt = result;

    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = self->_deviceSalt;
      if (v11)
      {
        v12 = @"NO";
      }

      else
      {
        v12 = @"YES";
      }

      v13 = objc_msgSend_length(v11, v9, v10);
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      v40 = 1024;
      v41 = v6;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received _deviceSalt is nil? %@, length? %lu, with status: %d", buf, 0x1Cu);
    }

    if (self->_deviceSalt)
    {
      goto LABEL_18;
    }

    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2598(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    memset(buf, 0, 20);
    arc4random_buf(buf, 0x14uLL);
    v22 = CFDataCreate(v4, buf, 20);
    v23 = self->_deviceSalt;
    self->_deviceSalt = v22;

    v24 = self->_deviceSalt;
    if (v24)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v24);
      v25 = SecItemAdd(Mutable, 0);
      if (!v25)
      {
LABEL_18:
        CFRelease(Mutable);
        deviceSalt = self->_deviceSalt;
        goto LABEL_19;
      }

      v26 = v25;
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E25D0(v26, v27);
      }

      p_super = &self->_deviceSalt->super;
      self->_deviceSalt = 0;
    }

    else
    {
      p_super = IMLogHandleForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2648(p_super, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  v36 = *MEMORY[0x1E69E9840];

  return deviceSalt;
}

- (id)stringDigestForName:(id)name
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8259C50;
  v19 = sub_1A825AF54;
  v20 = 0;
  if (objc_msgSend_length(nameCopy, v5, v6))
  {
    v9 = objc_msgSend_dispatchQueue(self, v7, v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8395B48;
    block[3] = &unk_1E7813DE8;
    block[4] = self;
    v13 = nameCopy;
    v14 = &v15;
    dispatch_sync(v9, block);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

@end