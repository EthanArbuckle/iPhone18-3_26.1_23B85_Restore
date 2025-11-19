@interface Broadcaster
- (Broadcaster)initWithNotifier:(id)a3 messageContext:(id)a4 protocol:(id)a5 targets:(id)a6 priority:(int)a7 completion:(id)a8;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)sendXPCObject:(id)a3;
@end

@implementation Broadcaster

- (void)dealloc
{
  messageContext = self->_messageContext;
  if (messageContext)
  {
    CFRelease(messageContext);
  }

  targets = self->_targets;
  if (targets)
  {
    CFRelease(targets);
  }

  _Block_release(self->_completion);
  v5.receiver = self;
  v5.super_class = Broadcaster;
  [(Broadcaster *)&v5 dealloc];
}

- (Broadcaster)initWithNotifier:(id)a3 messageContext:(id)a4 protocol:(id)a5 targets:(id)a6 priority:(int)a7 completion:(id)a8
{
  if (!a5 || !objc_msgSend_count(a6, a2, a3))
  {
    return 0;
  }

  self->_parent = a3;
  self->_targets = a6;
  self->_messageContext = a4;
  self->_protocol = a5;
  self->_curXPCMessagePriority = a7;
  self->_completion = _Block_copy(a8);
  return self;
}

- (void)sendXPCObject:(id)a3
{
  if (a3)
  {
    if (objc_msgSend_count(self->_targets, a2, a3))
    {
      v7 = objc_msgSend_defaultBroadcaster(IMRemoteObjectBroadcaster, v5, v6);
      v10 = objc_msgSend__queue(v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1959B7FCC;
      v11[3] = &unk_1E7439598;
      v11[4] = a3;
      v11[5] = self;
      dispatch_sync(v10, v11);
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  protocol = self->_protocol;
  MethodDescription = protocol_getMethodDescription(protocol, a3, 1, 1);
  types = MethodDescription.types;
  if (!MethodDescription.name)
  {
    types = protocol_getMethodDescription(protocol, a3, 0, 1).types;
    if (types)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!MethodDescription.types)
  {
    return 0;
  }

LABEL_3:
  v7 = MEMORY[0x1E695DF68];

  return objc_msgSend_signatureWithObjCTypes_(v7, types, types);
}

- (void)forwardInvocation:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(self->_targets, a2, a3))
  {
    goto LABEL_42;
  }

  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (dword_1ED517080)
  {
LABEL_4:
    v7 = objc_msgSend_selector(a3, v5, v6);
    v8 = NSStringFromSelector(v7);
    messageContext = self->_messageContext;
    shouldBoost = objc_msgSend_shouldBoost(messageContext, v10, v11);
    v13 = @"NO";
    if (shouldBoost)
    {
      v13 = @"YES";
    }

    NSLog(&cfstr_ForwardingHeld.isa, v8, messageContext, v13);
  }

LABEL_7:
  v14 = objc_msgSend_curXPCMessagePriority(self, v5, v6);
  objc_msgSend_setCurXPCMessagePriority_(self, v15, 0);
  kdebug_trace();
  targets = self->_targets;
  v17 = self->_messageContext;
  completion = self->_completion;
  v18 = IMCreateXPCObjectFromInvocation(a3);
  if (!v18)
  {
    goto LABEL_42;
  }

  v19 = v18;
  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v20, "invocation", v19);
  xpc_dictionary_set_int64(v20, "priority", v14);
  xpc_release(v19);
  if (!v20)
  {
    goto LABEL_41;
  }

  if (objc_msgSend_count(targets, v21, v22))
  {
    v25 = objc_msgSend__copyForEnumerating(targets, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v23, &v57, v61, 16);
  if (!v26)
  {
    goto LABEL_40;
  }

  v29 = v26;
  v30 = *v58;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v58 != v30)
      {
        objc_enumerationMutation(v25);
      }

      v32 = *(*(&v57 + 1) + 8 * i);
      if ((objc_msgSend_isValid(v32, v27, v28) & 1) == 0)
      {
        if (dword_1ED517080 < 0)
        {
          if (qword_1ED517528 != -1)
          {
            sub_1959D57C0();
          }

          if (dword_1ED517080 <= 0)
          {
            goto LABEL_40;
          }
        }

        else if (!dword_1ED517080)
        {
          goto LABEL_40;
        }

        _IMLog(@"* Object is no longer valid, skipping this enqueue: %@", v33, v34, v35, v36, v37, v38, v39, v32);
        goto LABEL_40;
      }

      v40 = objc_msgSend__queue(v32, v33, v34);
      if (v40)
      {
        v41 = v40;
        dispatch_retain(v40);
        xpc_retain(v20);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19598DE94;
        block[3] = &unk_1E74395C0;
        block[4] = v32;
        block[5] = v20;
        block[7] = v41;
        block[8] = completion;
        block[6] = v17;
        v44 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        if (v17 && ((objc_msgSend_isReply(v17, v42, v43) & 1) != 0 || objc_msgSend_isSync(v17, v45, v46)))
        {
          if ((_os_feature_enabled_impl() & 1) != 0 || (v49 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v47, v48), v52 = objc_msgSend_threadDictionary(v49, v50, v51), objc_msgSend_objectForKey_(v52, v53, @"com.apple.IMRemoteObjectDeliveringMessageKey") == v32))
          {
            v44[2](v44);
LABEL_33:
            _Block_release(v44);
            continue;
          }

          dispatch_sync(v41, v44);
        }

        else
        {
          dispatch_async(v41, v44);
        }

        if (v44)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v57, v61, 16);
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_40:

LABEL_41:
  xpc_release(v20);
LABEL_42:
  v54 = *MEMORY[0x1E69E9840];
}

@end