@interface EDPersistenceHookRegistry
+ (OS_os_log)log;
+ (id)_proxiedProtocols;
- (BOOL)respondsToSelector:(SEL)a3;
- (EDPersistenceHookRegistry)init;
- (id)_copyRespondersForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_initializeMethodSignatures;
- (void)_messageRespondersWithInvocation:(id)a3;
- (void)_registerHookResponder:(id)a3 protocol:(id)a4;
- (void)_registerHookResponder:(id)a3 withMethodDescription:(objc_method_description)a4;
- (void)_registerSelector:(SEL)a3 types:(const char *)a4;
- (void)dealloc;
- (void)unregisterAllHookResponders;
- (void)unregisterHookResponder:(id)a3;
@end

@implementation EDPersistenceHookRegistry

+ (id)_proxiedProtocols
{
  v4[14] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45E8930;
  v4[1] = &unk_1F45E8D78;
  v4[2] = &unk_1F45EBC58;
  v4[3] = &unk_1F45EE650;
  v4[4] = &unk_1F4629640;
  v4[5] = &unk_1F4612C80;
  v4[6] = &unk_1F45FCC80;
  v4[7] = &unk_1F45EAB98;
  v4[8] = &unk_1F45F79B8;
  v4[9] = &unk_1F46016B8;
  v4[10] = &unk_1F45ECD50;
  v4[11] = &unk_1F46296A0;
  v4[12] = &unk_1F4629700;
  v4[13] = &unk_1F4606088;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:14];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EDPersistenceHookRegistry_log__block_invoke;
  block[3] = &unk_1E8255D68;
  block[4] = a1;
  if (log_onceToken_77 != -1)
  {
    dispatch_once(&log_onceToken_77, block);
  }

  return log_log_77;
}

os_log_t __32__EDPersistenceHookRegistry_log__block_invoke(uint64_t a1)
{
  v1 = [NSStringFromClass(*(a1 + 32)) UTF8String];
  result = os_log_create("com.apple.email", v1);
  log_log_77 = result;
  return result;
}

- (EDPersistenceHookRegistry)init
{
  v6.receiver = self;
  v6.super_class = EDPersistenceHookRegistry;
  v2 = [(EDPersistenceHookRegistry *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E695E9E8];
    v2->_hookRespondersBySelector = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    v3->_methodSignaturesBySelector = CFDictionaryCreateMutable(0, 0, 0, v4);
    [(EDPersistenceHookRegistry *)v3 _initializeMethodSignatures];
  }

  return v3;
}

- (void)dealloc
{
  hookRespondersBySelector = self->_hookRespondersBySelector;
  if (hookRespondersBySelector)
  {
    CFRelease(hookRespondersBySelector);
  }

  methodSignaturesBySelector = self->_methodSignaturesBySelector;
  if (methodSignaturesBySelector)
  {
    CFRelease(methodSignaturesBySelector);
  }

  v5.receiver = self;
  v5.super_class = EDPersistenceHookRegistry;
  [(EDPersistenceHookRegistry *)&v5 dealloc];
}

- (void)_initializeMethodSignatures
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_opt_class() _proxiedProtocols];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        outCount = -1431655766;
        v7 = protocol_copyMethodDescriptionList(v6, 1, 1, &outCount);
        v24 = -1431655766;
        v8 = protocol_copyMethodDescriptionList(v6, 0, 1, &v24);
        if (outCount)
        {
          v9 = 0;
          p_types = &v7->types;
          do
          {
            v11 = *(p_types - 1);
            v12 = *p_types;
            MethodTypeEncoding = _protocol_getMethodTypeEncoding();
            if (MethodTypeEncoding)
            {
              v14 = MethodTypeEncoding;
            }

            else
            {
              v14 = v12;
            }

            [(EDPersistenceHookRegistry *)self _registerSelector:v11 types:v14];
            ++v9;
            p_types += 2;
          }

          while (v9 < outCount);
        }

        if (v24)
        {
          v15 = 0;
          v16 = &v8->types;
          do
          {
            v17 = *(v16 - 1);
            v18 = *v16;
            v19 = _protocol_getMethodTypeEncoding();
            if (v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v18;
            }

            [(EDPersistenceHookRegistry *)self _registerSelector:v17 types:v20];
            ++v15;
            v16 += 2;
          }

          while (v15 < v24);
        }

        if (v7)
        {
          free(v7);
        }

        if (v8)
        {
          free(v8);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_registerSelector:(SEL)a3 types:(const char *)a4
{
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:a4];
  v8 = [v7 numberOfArguments];
  if (v8 == 2)
  {
    v9 = objc_opt_class();
    v10 = __HookResponderCallOut0__;
LABEL_5:
    class_addMethod(v9, a3, v10, a4);
  }

  else
  {
    v11 = v8;
    if ((v8 - 3) <= 3)
    {
      v12 = 2;
      while (1)
      {
        v13 = [v7 _classForObjectAtArgumentIndex:v12];
        if (!(v13 | [v7 _protocolsForObjectAtArgumentIndex:v12]))
        {
          break;
        }

        if (v11 == ++v12)
        {
          v9 = objc_opt_class();
          switch(v11)
          {
            case 5:
              v10 = __HookResponderCallOut3__;
              break;
            case 4:
              v10 = __HookResponderCallOut2__;
              break;
            case 3:
              v10 = __HookResponderCallOut1__;
              break;
            default:
              v10 = __HookResponderCallOut4__;
              break;
          }

          goto LABEL_5;
        }
      }

      if (v11 == 4)
      {
        v14 = [v7 getArgumentTypeAtIndex:3];
        if (*v14 == 66 && !v14[1])
        {
          v9 = objc_opt_class();
          v10 = __HookResponderCallOut1WithBool__;
          goto LABEL_5;
        }
      }
    }
  }

  methodSignaturesBySelector = self->_methodSignaturesBySelector;

  CFDictionarySetValue(methodSignaturesBySelector, a3, v7);
}

- (void)_registerHookResponder:(id)a3 withMethodDescription:(objc_method_description)a4
{
  name = a4.name;
  Value = CFDictionaryGetValue(self->_hookRespondersBySelector, a4.name);
  if (!Value)
  {
    Value = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    CFDictionarySetValue(self->_hookRespondersBySelector, name, Value);
  }

  [Value addObject:a3];
}

- (void)_registerHookResponder:(id)a3 protocol:(id)a4
{
  outCount = -1431655766;
  v8 = protocol_copyMethodDescriptionList(a4, 1, 1, &outCount);
  v16 = -1431655766;
  v9 = protocol_copyMethodDescriptionList(a4, 0, 1, &v16);
  os_unfair_lock_lock(&self->_lock);
  if (outCount)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      name = v11->name;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      [(EDPersistenceHookRegistry *)self _registerHookResponder:a3 withMethodDescription:v11->name, v11->types];
      ++v10;
      ++v11;
    }

    while (v10 < outCount);
  }

  if (v16)
  {
    v13 = 0;
    v14 = v9;
    do
    {
      v15 = v14->name;
      if (objc_opt_respondsToSelector())
      {
        [(EDPersistenceHookRegistry *)self _registerHookResponder:a3 withMethodDescription:v14->name, v14->types];
      }

      ++v13;
      ++v14;
    }

    while (v13 < v16);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    free(v8);
  }

  if (v9)
  {
    free(v9);
  }
}

- (void)unregisterHookResponder:(id)a3
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&self->_lock);
    context = a3;
    CFDictionaryApplyFunction(self->_hookRespondersBySelector, _unregistrationWalker, &context);
    os_unfair_lock_unlock(&self->_lock);
    objc_autoreleasePoolPop(v5);
  }
}

- (void)unregisterAllHookResponders
{
  os_unfair_lock_lock(&self->_lock);
  CFDictionaryRemoveAllValues(self->_hookRespondersBySelector);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = EDPersistenceHookRegistry;
  return [(EDPersistenceHookRegistry *)&v6 respondsToSelector:?]|| CFDictionaryGetValue(self->_methodSignaturesBySelector, a3) != 0;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  result = CFDictionaryGetValue(self->_methodSignaturesBySelector, a3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = EDPersistenceHookRegistry;
    return [(EDPersistenceHookRegistry *)&v6 methodSignatureForSelector:a3];
  }

  return result;
}

- (id)_copyRespondersForSelector:(SEL)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [CFDictionaryGetValue(self->_hookRespondersBySelector a3)];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)_messageRespondersWithInvocation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = -[EDPersistenceHookRegistry _copyRespondersForSelector:](self, "_copyRespondersForSelector:", [a3 selector]);
  v5 = +[EDPersistenceHookRegistry log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(EDPersistenceHookRegistry *)a3 _messageRespondersWithInvocation:v4, v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [a3 invokeWithTarget:v10];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_messageRespondersWithInvocation:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = NSStringFromSelector([a1 selector]);
  v8 = 2114;
  v9 = a2;
  v5 = *MEMORY[0x1E69E9840];
}

@end