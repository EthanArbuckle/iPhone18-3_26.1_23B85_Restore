@interface CWFXPCProxy
- (id)__copyReplyBlockFromInvocation:(id)invocation;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CWFXPCProxy

- (id)__copyReplyBlockFromInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments >= 3 && (v6 = numberOfArguments - 1, v7 = [methodSignature getArgumentTypeAtIndex:numberOfArguments - 1], *v7 == 64) && v7[1] == 63 && !v7[2])
  {
    v10 = 0;
    [invocationCopy getArgument:&v10 atIndex:v6];
    v8 = [v10 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  v39 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  if ([(CWFXPCProxy *)self isSynchronous])
  {
    v5 = [(CWFXPCProxy *)self __copyReplyBlockFromInvocation:invocationCopy];
    if (v5)
    {
      v6 = v5;
      v7 = dispatch_block_create(0, &unk_1F5B89AD0);
      _Block_signature(v6);
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = sub_1E0C1D688;
      v29 = &unk_1E86E66B8;
      v8 = v6;
      v30 = v8;
      v31 = v7;
      v9 = v7;
      *v32 = __NSMakeSpecialForwardingCaptureBlock();
      methodSignature = [invocationCopy methodSignature];
      [invocationCopy setArgument:v32 atIndex:{objc_msgSend(methodSignature, "numberOfArguments") - 1}];

      target = [(CWFXPCProxy *)self target];
      [invocationCopy setTarget:target];

      [invocationCopy retainArguments];
      queue = [(CWFXPCProxy *)self queue];
      LODWORD(target) = qos_class_self();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C1D6EC;
      block[3] = &unk_1E86E6010;
      v25 = invocationCopy;
      v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, target, 0, block);
      dispatch_async(queue, v13);

      dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v19 = CWFGetOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136446978;
        *&v32[4] = "[CWFXPCProxy forwardInvocation:]";
        v33 = 2082;
        v34 = "CWFXPCProxy.m";
        v35 = 1024;
        v36 = 86;
        v37 = 2114;
        v38 = invocationCopy;
        _os_log_send_and_compose_impl();
      }

      v8 = 0;
    }
  }

  else
  {
    target2 = [(CWFXPCProxy *)self target];
    [invocationCopy setTarget:target2];

    [invocationCopy retainArguments];
    queue2 = [(CWFXPCProxy *)self queue];
    v16 = qos_class_self();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0C1D730;
    v22[3] = &unk_1E86E6010;
    v23 = invocationCopy;
    v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, v16, 0, v22);
    dispatch_async(queue2, v17);

    v8 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  target = [(CWFXPCProxy *)self target];
  v5 = [target methodSignatureForSelector:selector];

  return v5;
}

@end