@interface BSXPCServiceConnectionProxy
+ (uint64_t)concreteArgumentsForArguments:(uint64_t)arguments;
+ (uint64_t)decodeArguments:(uint64_t)arguments outArgs:(void *)args fromMessage:(void *)message forConnection:;
+ (uint64_t)encodeArguments:(uint64_t)arguments inArgs:(void *)args toMessage:(uint64_t)message forConnection:(void *)connection;
+ (void)invokeMethod:(uint64_t)method onTarget:(void *)target withMessage:(void *)message forConnection:(uint64_t)connection completion:;
+ (void)proxyForConnection:(void *)connection handshake:(void *)handshake withProtocol:(int)protocol activationGeneration:(void *)generation activeXPCConnection:(void *)cConnection xpcConnectionTargetQueue:(void *)queue replyQueue:(void *)replyQueue target:(void *)self0 attributes:(void *)self1 assertionProvider:;
- (void)_decrementInFlightMessageCounter;
- (void)dealloc;
@end

@implementation BSXPCServiceConnectionProxy

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_lock_assertion)
  {
    connection = self->_connection;
    if (connection && (context = connection->_context) != 0)
    {
      proem = context->_proem;
    }

    else
    {
      proem = 0;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> dealloced before releasing its assertion : in-flight-messages=%u", proem, objc_opt_class(), self, self->_lock_messagesCount];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      *buf = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = NSStringFromClass(v10);
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BSXPCServiceConnectionProxy.m";
      v20 = 1024;
      v21 = 327;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A828EA8);
  }

  v11.receiver = self;
  v11.super_class = BSXPCServiceConnectionProxy;
  [(BSXPCServiceConnectionProxy *)&v11 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)proxyForConnection:(void *)connection handshake:(void *)handshake withProtocol:(int)protocol activationGeneration:(void *)generation activeXPCConnection:(void *)cConnection xpcConnectionTargetQueue:(void *)queue replyQueue:(void *)replyQueue target:(void *)self0 attributes:(void *)self1 assertionProvider:
{
  v67 = *MEMORY[0x1E69E9840];
  v18 = objc_opt_self();
  NSClassFromString(&cfstr_Bsxpcserviceco.isa);
  if (!a2)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v35 = objc_opt_class();
      *buf = 138544642;
      v56 = v34;
      v57 = 2114;
      v58 = NSStringFromClass(v35);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 131;
      v65 = 2114;
      v66 = v33;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8333B8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v38 = objc_opt_class();
      *buf = 138544642;
      v56 = v37;
      v57 = 2114;
      v58 = NSStringFromClass(v38);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 131;
      v65 = 2114;
      v66 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A833494);
  }

  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!handshake)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v41 = objc_opt_class();
      *buf = 138544642;
      v56 = v40;
      v57 = 2114;
      v58 = NSStringFromClass(v41);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 132;
      v65 = 2114;
      v66 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A833570);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v44 = objc_opt_class();
      *buf = 138544642;
      v56 = v43;
      v57 = 2114;
      v58 = NSStringFromClass(v44);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 132;
      v65 = 2114;
      v66 = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83364CLL);
  }

  if (![objc_msgSend(handshake "methods")])
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remoteProtocol has no methods"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v47 = objc_opt_class();
      *buf = 138544642;
      v56 = v46;
      v57 = 2114;
      v58 = NSStringFromClass(v47);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 133;
      v65 = 2114;
      v66 = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83371CLL);
  }

  if (!queue)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"replyQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v50 = objc_opt_class();
      *buf = 138544642;
      v56 = v49;
      v57 = 2114;
      v58 = NSStringFromClass(v50);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 134;
      v65 = 2114;
      v66 = v48;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8337F8);
  }

  if (connection && ![target count])
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handshake is only supported if there are launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v53 = objc_opt_class();
      *buf = 138544642;
      v56 = v52;
      v57 = 2114;
      v58 = NSStringFromClass(v53);
      v59 = 2048;
      targetCopy = v18;
      v61 = 2114;
      v62 = @"BSXPCServiceConnectionProxy.m";
      v63 = 1024;
      v64 = 135;
      v65 = 2114;
      v66 = v51;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8338C8);
  }

  protocolCopy = protocol;
  generationCopy = generation;
  name = [handshake name];
  v21 = [target count];
  v22 = BSServiceXPCLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    cConnectionCopy2 = cConnection;
    if (v23)
    {
      v25 = a2[24];
      if (v25)
      {
        v25 = *(v25 + 8);
      }

      *buf = 138543874;
      v56 = v25;
      v57 = 2114;
      v58 = name;
      v59 = 2114;
      targetCopy = target;
      v26 = "%{public}@ Remote proxy: <%{public}@> with %{public}@";
      v27 = v22;
      v28 = 32;
LABEL_18:
      _os_log_impl(&dword_19A821000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else
  {
    cConnectionCopy2 = cConnection;
    if (v23)
    {
      v29 = a2[24];
      if (v29)
      {
        v29 = *(v29 + 8);
      }

      *buf = 138543618;
      v56 = v29;
      v57 = 2114;
      v58 = name;
      v26 = "%{public}@ Remote proxy: <%{public}@>";
      v27 = v22;
      v28 = 22;
      goto LABEL_18;
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPCServiceConnectionProxy<%@>", name];
  objc_opt_class();
  v30 = objc_alloc_init(BSObjCClassCreate());
  v30[1] = a2;
  v30[2] = connection;
  v30[3] = handshake;
  *(v30 + 24) = protocolCopy;
  v30[4] = generationCopy;
  v30[5] = cConnectionCopy2;
  v30[6] = queue;
  v30[7] = [replyQueue copy];
  v30[8] = [target copy];
  v30[9] = [attributes copy];
  *(v30 + 22) = 0;
  result = v30;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void __186__BSXPCServiceConnectionProxy_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider___block_invoke(uint64_t a1, objc_class *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v27 = objc_opt_self();
  cls = a2;
  v28 = NSStringFromClass(a2);
  v30 = v3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v3 methods];
  v4 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 returnValue];
        v11 = [v8 arguments];
        v12 = [BSXPCServiceConnectionProxy concreteArgumentsForArguments:v11];
        v13 = [v11 lastObject];
        if ([v13 isPointer])
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (![v13 isBlock])
        {
          v13 = 0;
        }

        v15 = [v10 isOneWay];
        if (v15 && (v15 = [v10 isVoid]) != 0)
        {
          LOBYTE(v15) = [v10 hasQualifier:82];
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke;
        block[3] = &unk_1E7520298;
        block[4] = v13;
        block[5] = v28;
        block[11] = v10;
        block[12] = sel_createImplementationOfProtocol_forClass_;
        v32 = v15;
        block[6] = v27;
        block[7] = v9;
        block[8] = v12;
        block[9] = v30;
        v33 = v16;
        block[10] = v14;
        v17 = imp_implementationWithBlock(block);
        v18 = NSSelectorFromString([v8 name]);
        if (!class_addMethod(cls, v18, v17, [objc_msgSend(v8 "encoding")]))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to register method %@ on class %@", objc_msgSend(v8, "name"), v28];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(sel_createImplementationOfProtocol_forClass_);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138544642;
            v39 = v23;
            v40 = 2114;
            v41 = v25;
            v42 = 2048;
            v43 = v27;
            v44 = 2114;
            v45 = @"BSXPCServiceConnectionProxy.m";
            v46 = 1024;
            v47 = 570;
            v48 = 2114;
            v49 = v22;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v22 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A833CACLL);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v5);
  }

  if (!class_addProtocol(cls, [v30 protocol]))
  {
    v19 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v30 name];
      *buf = 138543618;
      v39 = v21;
      v40 = 2114;
      v41 = v28;
      _os_log_error_impl(&dword_19A821000, v19, OS_LOG_TYPE_ERROR, "[BSXPCServiceConnectionProxy] Error adding protocol %{public}@ to class %{public}@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (void)invokeMethod:(uint64_t)method onTarget:(void *)target withMessage:(void *)message forConnection:(uint64_t)connection completion:
{
  v104 = *MEMORY[0x1E69E9840];
  v80 = objc_opt_self();
  NSClassFromString(&cfstr_Bsobjcmethod.isa);
  if (!a2)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v42 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v41;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v42);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 170;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v40;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83481CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCMethodClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v45 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v44;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v45);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 170;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v43;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834900);
  }

  if (!method)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v48 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v47;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v48);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 171;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8349E4);
  }

  NSClassFromString(&cfstr_Bsxpcserviceco_2.isa);
  if (!target)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v51 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v50;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v51);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 172;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v49;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834AC8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionMessageClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v54 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v53;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v54);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 172;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v52;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834BACLL);
  }

  NSClassFromString(&cfstr_Bsxpcserviceco.isa);
  if (!message)
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v57 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v56;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v57);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 173;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v55;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834C90);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v60 = objc_opt_class();
      LODWORD(v88[0]) = 138544642;
      *(v88 + 4) = v59;
      WORD2(v88[1]) = 2114;
      *(&v88[1] + 6) = NSStringFromClass(v60);
      HIWORD(v88[2]) = 2048;
      v88[3] = v80;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v89) = 1024;
      HIDWORD(v89) = 173;
      LOWORD(v90) = 2114;
      *(&v90 + 2) = v58;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v88, 0x3Au);
    }

    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834D74);
  }

  v11 = BSServiceXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v29 = message[24];
    if (v29)
    {
      v30 = *(v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_opt_class();
    LODWORD(v88[0]) = 138543874;
    *(v88 + 4) = v30;
    WORD2(v88[1]) = 2112;
    *(&v88[1] + 6) = NSStringFromClass(v31);
    HIWORD(v88[2]) = 2112;
    v88[3] = [a2 name];
    _os_log_debug_impl(&dword_19A821000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ Invoking [%@ %@]", v88, 0x20u);
  }

  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  +[BSXPCServiceConnectionProxy decodeArguments:outArgs:fromMessage:forConnection:](BSXPCServiceConnectionProxy, [a2 arguments], v88, target, message);
  createReply = [target createReply];
  v85 = 0;
  v13 = [objc_msgSend(a2 "returnValue")];
  v16 = objc_opt_class();
  if (class_getInstanceMethod(v16, [a2 selector]))
  {
    lastArgument = [a2 lastArgument];
    if (([lastArgument isBlock] & 1) != 0 || objc_msgSend(lastArgument, "isPointer"))
    {
      argumentIndex = [lastArgument argumentIndex];
      v19 = argumentIndex;
      if (argumentIndex >= 0xA)
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reply parameter argument is out of bounds"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v70 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          *buf = 138544642;
          v93 = v70;
          v94 = 2114;
          v95 = v72;
          v96 = 2048;
          v97 = v80;
          v98 = 2114;
          v99 = @"BSXPCServiceConnectionProxy.m";
          v100 = 1024;
          v101 = 208;
          v102 = 2114;
          v103 = v69;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v69 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A83500CLL);
      }

      if (v88[argumentIndex])
      {
        v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reply parameter argument slot is not empty"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v74 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          *buf = 138544642;
          v93 = v74;
          v94 = 2114;
          v95 = v76;
          v96 = 2048;
          v97 = v80;
          v98 = 2114;
          v99 = @"BSXPCServiceConnectionProxy.m";
          v100 = 1024;
          v101 = 209;
          v102 = 2114;
          v103 = v73;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v73 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8350E4);
      }

      if ([lastArgument isBlock])
      {
        blockArguments = [lastArgument blockArguments];
        v21 = v84;
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke;
        v84[3] = &unk_1E75201A8;
        v84[4] = createReply;
        v84[5] = blockArguments;
        v84[6] = message;
        v84[7] = a2;
        v84[10] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        v84[8] = v80;
        v84[9] = connection;
        createReply = 0;
        connection = 0;
      }

      else
      {
        v21 = &v85;
      }

      v88[v19] = v21;
    }

    v27 = [objc_msgSend(a2 "arguments")];
    v28 = objc_opt_self();
    if (v27 >= 0xB)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count <= BSOBJC_MAX_ARGS"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(sel_invokeMethod_onTarget_withArguments_count_returnValue_);
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        *buf = 138544642;
        v93 = v62;
        v94 = 2114;
        v95 = v64;
        v96 = 2048;
        v97 = v28;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionProxy.m";
        v100 = 1024;
        v101 = 589;
        v102 = 2114;
        v103 = v61;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v61 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A834E54);
    }

    NSClassFromString(&cfstr_Nsobject.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSObjectClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v66 = NSStringFromSelector(sel_invokeMethod_onTarget_withArguments_count_returnValue_);
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138544642;
        v93 = v66;
        v94 = 2114;
        v95 = v68;
        v96 = 2048;
        v97 = v28;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionProxy.m";
        v100 = 1024;
        v101 = 590;
        v102 = 2114;
        v103 = v65;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v65 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A834F34);
    }

    if (v27 <= 4)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v13 != 64)
          {
            if (v13 != 66)
            {
              if (v13 == 118)
              {
LABEL_73:
                method_invoke();
                goto LABEL_82;
              }

              v77 = 606;
LABEL_173:
              __assert_rtn("+[BSXPCServiceConnectionProxy invokeMethod:onTarget:withArguments:count:returnValue:]", "BSXPCServiceConnectionProxy.m", v77, "false");
            }

            goto LABEL_89;
          }
        }

        else if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v77 = 600;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v27 == 2)
      {
        if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v77 = 612;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v27 == 3)
      {
        if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v77 = 618;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v13 != 64)
      {
        if (v13 != 66)
        {
          if (v13 == 118)
          {
            goto LABEL_73;
          }

          v77 = 624;
          goto LABEL_173;
        }

LABEL_89:
        method_invoke();
        goto LABEL_98;
      }
    }

    else
    {
      if (v27 > 7)
      {
        if (v27 == 8)
        {
          if (v13 == 64)
          {
            v78 = v90;
            method_invoke();
LABEL_104:
            v15 = v33;
            v14 = 0;
LABEL_105:
            v22 = 0;
            if (!createReply)
            {
              goto LABEL_123;
            }

            goto LABEL_106;
          }

          if (v13 == 66)
          {
            v78 = v90;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 != 118)
          {
            v77 = 648;
            goto LABEL_173;
          }

          v78 = v90;
          method_invoke();
        }

        else
        {
          if (v27 != 9)
          {
            if (v13 == 64)
            {
              v79 = v91;
              v78 = v90;
              method_invoke();
              goto LABEL_104;
            }

            if (v13 != 66)
            {
              if (v13 == 118)
              {
                v79 = v91;
                v78 = v90;
                method_invoke();
                goto LABEL_82;
              }

              v77 = 660;
              goto LABEL_173;
            }

            v79 = v91;
            v78 = v90;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 == 64)
          {
            *&v79 = v91;
            v78 = v90;
            method_invoke();
            goto LABEL_104;
          }

          if (v13 == 66)
          {
            *&v79 = v91;
            v78 = v90;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 != 118)
          {
            v77 = 654;
            goto LABEL_173;
          }

          *&v79 = v91;
          v78 = v90;
          method_invoke();
        }

LABEL_82:
        v14 = 0;
LABEL_99:
        v15 = 0;
        goto LABEL_105;
      }

      if (v27 != 5)
      {
        if (v27 == 6)
        {
          if (v13 != 64)
          {
            if (v13 != 66)
            {
              if (v13 == 118)
              {
                goto LABEL_73;
              }

              v77 = 636;
              goto LABEL_173;
            }

            goto LABEL_89;
          }

          goto LABEL_100;
        }

        if (v13 == 64)
        {
          *&v78 = v90;
          method_invoke();
          goto LABEL_104;
        }

        if (v13 != 66)
        {
          if (v13 == 118)
          {
            *&v78 = v90;
            method_invoke();
            goto LABEL_82;
          }

          v77 = 642;
          goto LABEL_173;
        }

        *&v78 = v90;
        method_invoke();
LABEL_98:
        v14 = v32;
        goto LABEL_99;
      }

      if (v13 != 64)
      {
        if (v13 != 66)
        {
          if (v13 == 118)
          {
            goto LABEL_73;
          }

          v77 = 630;
          goto LABEL_173;
        }

        goto LABEL_89;
      }
    }

LABEL_100:
    method_invoke();
    goto LABEL_104;
  }

  v86 = @"BSServiceInterfaceMethod";
  v87[0] = [a2 name];
  v22 = BSServiceConnectionErrorCreateWithInfo(3uLL, @"No method on target found for selector", [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1]);
  v23 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    name = [a2 name];
    *buf = 138412546;
    v93 = v25;
    v94 = 2112;
    v95 = name;
    _os_log_error_impl(&dword_19A821000, v23, OS_LOG_TYPE_ERROR, "[BSXPCServiceConnectionProxy] Error: No method found on object %@ for @selector(%@)", buf, 0x16u);
  }

  v14 = 0;
  v15 = 0;
  if (createReply)
  {
LABEL_106:
    if (v13 == 66)
    {
      [createReply encodeBool:v14 forKey:@"BSXPCReturnValue"];
    }

    else if (v13 == 64)
    {
      returnValue = [a2 returnValue];
      objectClass = [returnValue objectClass];
      if (v15)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81;
          v83[3] = &unk_1E75201D0;
          v83[4] = v15;
          v83[5] = a2;
          v83[7] = v80;
          v83[8] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
          v83[6] = objectClass;
          __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81(v83);
        }

        [createReply encodeObject:v15 forKey:@"BSXPCReturnValue"];
      }

      else if ([returnValue isObjectNonnull])
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85;
        v82[3] = &unk_1E7520180;
        v82[4] = a2;
        v82[5] = objectClass;
        v82[6] = v80;
        v82[7] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85(v82);
      }
    }

    if (v85)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v37 = v85;
      if ((isKindOfClass & 1) == 0)
      {
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90;
        v81[3] = &unk_1E7520180;
        v81[4] = v85;
        v81[5] = a2;
        v81[6] = v80;
        v81[7] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90(v81);
      }
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v22;
    }

    if (v38)
    {
      [createReply encodeObject:v38 forKey:@"BSXPCReturnError"];
    }

    [createReply send];
    [createReply invalidate];
  }

LABEL_123:
  if (connection)
  {
    (*(connection + 16))(connection);
  }

  v39 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)decodeArguments:(uint64_t)arguments outArgs:(void *)args fromMessage:(void *)message forConnection:
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if ([a2 count] >= 0xB)
  {
    v32 = v9;
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[arguments count] <= 10"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
      v35 = objc_opt_class();
      *buf = 138544642;
      v45 = v34;
      v46 = 2114;
      v47 = NSStringFromClass(v35);
      v48 = 2048;
      v49 = v32;
      v50 = 2114;
      v51 = @"BSXPCServiceConnectionProxy.m";
      v52 = 1024;
      v53 = 783;
      v54 = 2114;
      v55 = v33;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A835AF4);
  }

  v39 = v9;
  v41 = a2;
  v10 = [BSXPCServiceConnectionProxy concreteArgumentsForArguments:a2];
  lastObject = [v10 lastObject];
  objectClass = [lastObject objectClass];
  v13 = objc_opt_class();
  v14 = [args containsValueForKey:@"BSXPCReturnError"];
  messageCopy = message;
  v42 = v13;
  if ((v14 & 1) == 0 && objectClass == v13)
  {
    v14 = [args containsValueForKey:{__KeyForIndex_block_invoke(objc_msgSend(lastObject, "argumentIndex"))}];
  }

  v40 = lastObject;
  if ([v10 count])
  {
    v15 = 0;
    v16 = *MEMORY[0x1E695D940];
    do
    {
      v17 = [v10 objectAtIndex:v15];
      if (v15 != [v17 argumentIndex])
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[argument argumentIndex] == idx"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
          v31 = objc_opt_class();
          *buf = 138544642;
          v45 = v30;
          v46 = 2114;
          v47 = NSStringFromClass(v31);
          v48 = 2048;
          v49 = v39;
          v50 = 2114;
          v51 = @"BSXPCServiceConnectionProxy.m";
          v52 = 1024;
          v53 = 796;
          v54 = 2114;
          v55 = v29;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v29 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A835A14);
      }

      type = [v17 type];
      if (type > 0x50)
      {
        if (type == 81)
        {
          v20 = [args decodeUInt64ForKey:__KeyForIndex_block_invoke(v15)];
          goto LABEL_19;
        }

        if (type == 113)
        {
          v20 = [args decodeInt64ForKey:__KeyForIndex_block_invoke(v15)];
LABEL_19:
          *(arguments + 8 * v15) = v20;
          goto LABEL_20;
        }
      }

      else
      {
        if (type == 35)
        {
          v21 = [args decodeStringForKey:__KeyForIndex_block_invoke(v15)];
          v20 = NSClassFromString(v21);
          goto LABEL_19;
        }

        if (type == 64)
        {
          if ([v17 isXPCObject])
          {
            v19 = [args _implicitDecodeXPCObjectForKey:__KeyForIndex_block_invoke(v15)];
          }

          else
          {
            objectClass2 = [v17 objectClass];
            if ([objectClass2 isSubclassOfClass:objc_opt_class()])
            {
              v19 = messageCopy;
            }

            else
            {
              objectContainedClasses = [v17 objectContainedClasses];
              if ([objectContainedClasses count])
              {
                if ([objectClass2 isSubclassOfClass:objc_opt_class()])
                {
                  v19 = [args decodeDictionaryOfClass:objc_msgSend(objectContainedClasses forKey:{"objectAtIndex:", 1), __KeyForIndex_block_invoke(v15)}];
                }

                else
                {
                  v19 = [args decodeCollectionOfClass:objectClass2 containingClass:objc_msgSend(objectContainedClasses forKey:{"firstObject"), __KeyForIndex_block_invoke(v15)}];
                }
              }

              else
              {
                v19 = [args decodeObjectOfClass:objectClass2 forKey:__KeyForIndex_block_invoke(v15)];
              }
            }
          }

          *(arguments + 8 * v15) = v19;
          if (v19)
          {
            v24 = 1;
          }

          else
          {
            v24 = v14;
          }

          if ((v24 & 1) == 0 && [v17 isObjectNonnull])
          {
            [MEMORY[0x1E695DF30] raise:v16 format:{@"Decoded nil for nonnull parameter %ld; expected %@", v15, NSStringFromClass(objc_msgSend(v17, "objectClass"))}];
          }

          goto LABEL_20;
        }
      }

      [MEMORY[0x1E695DF30] raise:v16 format:{@"Decoding value of type %c not implemented or supported", objc_msgSend(v17, "type")}];
LABEL_20:
      ++v15;
    }

    while (v15 < [v10 count]);
  }

  result = [args containsValueForKey:@"BSXPCReturnError"];
  if (result)
  {
    result = [args decodeObjectOfClass:objc_opt_class() forKey:@"BSXPCReturnError"];
    if (result)
    {
      if (objectClass == v42)
      {
        v26 = result;
        v27 = [objc_msgSend(v41 "lastObject")];
        if (v27 != [v10 count] - 1)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[arguments lastObject] argumentIndex] == ([concreteArguments count] - 1)"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v37 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
            v38 = objc_opt_class();
            *buf = 138544642;
            v45 = v37;
            v46 = 2114;
            v47 = NSStringFromClass(v38);
            v48 = 2048;
            v49 = v39;
            v50 = 2114;
            v51 = @"BSXPCServiceConnectionProxy.m";
            v52 = 1024;
            v53 = 854;
            v54 = 2114;
            v55 = v36;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v36 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A835BD4);
        }

        result = [v40 argumentIndex];
        *(arguments + 8 * result) = v26;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 32);
  if (v13)
  {
    *buf = a2;
    *&buf[8] = a3;
    *&buf[16] = a4;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    v22 = a7;
    v23 = a8;
    v24 = a9;
    v25 = a10;
    v26 = a11;
    v14 = *(a1 + 48);
    [BSXPCServiceConnectionProxy encodeArguments:*(a1 + 40) inArgs:buf toMessage:v13 forConnection:?];
    [*(a1 + 32) send];
    [*(a1 + 32) invalidate];
  }

  else if (a2)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"arg1 == nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSXPCServiceConnectionProxy invokeMethod:onTarget:withMessage:forConnection:completion:]_block_invoke"];
      *&buf[12] = 2114;
      *&buf[14] = @"BSXPCServiceConnectionProxy.m";
      *&buf[22] = 1024;
      LODWORD(v21) = 233;
      WORD2(v21) = 2114;
      *(&v21 + 6) = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A835E6CLL);
  }

  result = *(a1 + 72);
  if (result)
  {
    v16 = *(result + 16);
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
  }

  return result;
}

+ (uint64_t)encodeArguments:(uint64_t)arguments inArgs:(void *)args toMessage:(uint64_t)message forConnection:(void *)connection
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  if ([args count] > 0xA)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[arguments count] <= 10"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(sel_encodeArguments_inArgs_toMessage_forConnection_);
      v23 = objc_opt_class();
      *buf = 138544642;
      v25 = v22;
      v26 = 2114;
      v27 = NSStringFromClass(v23);
      v28 = 2048;
      v29 = v7;
      v30 = 2114;
      v31 = @"BSXPCServiceConnectionProxy.m";
      v32 = 1024;
      v33 = 723;
      v34 = 2114;
      v35 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A836268);
  }

  if ([args count])
  {
    v8 = 0;
    v9 = *MEMORY[0x1E695D940];
    do
    {
      v10 = [args objectAtIndex:v8];
      type = [v10 type];
      if (type > 0x50)
      {
        if (type == 81)
        {
          [connection encodeUInt64:*(message + 8 * v8) forKey:__KeyForIndex_block_invoke(v8)];
          goto LABEL_19;
        }

        if (type != 113)
        {
LABEL_15:
          [MEMORY[0x1E695DF30] raise:v9 format:{@"Unsupported ObjectiveC type: %c", objc_msgSend(v10, "type")}];
          goto LABEL_19;
        }

        [connection encodeInt64:*(message + 8 * v8) forKey:__KeyForIndex_block_invoke(v8)];
      }

      else
      {
        if (type == 35)
        {
          v15 = *(message + 8 * v8);
          if (v15)
          {
            v16 = NSStringFromClass(v15);
            [connection encodeObject:v16 forKey:__KeyForIndex_block_invoke(v8)];
          }

          goto LABEL_19;
        }

        if (type != 64)
        {
          goto LABEL_15;
        }

        v12 = *(message + 8 * v8);
        if (!v12)
        {
          if ([v10 isObjectNonnull])
          {
            [MEMORY[0x1E695DF30] raise:v9 format:{@"Parameter %ld expected nonnull %@", objc_msgSend(v10, "argumentIndex"), NSStringFromClass(objc_msgSend(v10, "objectClass"))}];
          }

          goto LABEL_19;
        }

        objectClass = [v10 objectClass];
        v14 = @"local";
        if (([(objc_class *)objectClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = MEMORY[0x1E695DF30];
            v18 = NSStringFromClass(objectClass);
            [v17 raise:v9 format:{@"Expected %@, but received %@", v18, NSStringFromClass(-[__CFString classForCoder](v12, "classForCoder"))}];
            goto LABEL_19;
          }

          v14 = v12;
        }

        [connection encodeObject:v14 forKey:__KeyForIndex_block_invoke(v8)];
      }

LABEL_19:
      ++v8;
    }

    while (v8 < [args count]);
  }

  result = [connection _finishCoding];
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding reply block for %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 48);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 48);
    *buf = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BSXPCServiceConnectionProxy.m";
    v16 = 1024;
    v17 = 225;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_77(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding return value from %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 48);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 48);
    *buf = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BSXPCServiceConnectionProxy.m";
    v16 = 1024;
    v17 = 275;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromClass([*(a1 + 32) classForCoder]);
  v4 = [v2 stringWithFormat:@"Return value %@ from %@ does not match expected type %@", v3, objc_msgSend(*(a1 + 40), "name"), NSStringFromClass(*(a1 + 48))];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 64));
    v6 = *(a1 + 56);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 56);
    *buf = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionProxy.m";
    v18 = 1024;
    v19 = 280;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Return value from %@ is declared nonnull", objc_msgSend(*(a1 + 32), "name"), NSStringFromClass(*(a1 + 40))];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 48);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 48);
    *buf = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BSXPCServiceConnectionProxy.m";
    v16 = 1024;
    v17 = 286;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [v2 stringWithFormat:@"Invalid out-parameter error (%@) from %@", NSStringFromClass(v4), objc_msgSend(*(a1 + 40), "name")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(*(a1 + 56));
    v7 = *(a1 + 48);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 48);
    *buf = 138544642;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2114;
    v18 = @"BSXPCServiceConnectionProxy.m";
    v19 = 1024;
    v20 = 296;
    v21 = 2114;
    v22 = v5;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_97(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding return error from %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 48);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 48);
    *buf = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BSXPCServiceConnectionProxy.m";
    v16 = 1024;
    v17 = 305;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_decrementInFlightMessageCounter
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    v2 = *(self + 92);
    if (!v2)
    {
      v5 = *(self + 8);
      if (v5 && (v6 = *(v5 + 192)) != 0)
      {
        v7 = *(v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> unbalanced message tracking detected", v7, objc_opt_class(), self];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__decrementInFlightMessageCounter);
        v10 = objc_opt_class();
        *buf = 138544642;
        v13 = v9;
        v14 = 2114;
        v15 = NSStringFromClass(v10);
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"BSXPCServiceConnectionProxy.m";
        v20 = 1024;
        v21 = 346;
        v22 = 2114;
        v23 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A836C40);
    }

    v3 = v2 - 1;
    *(self + 92) = v3;
    if (!v3)
    {
      [*(self + 80) invalidate];

      *(self + 80) = 0;
    }

    v4 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((self + 88));
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

+ (uint64_t)concreteArgumentsForArguments:(uint64_t)arguments
{
  objc_opt_self();
  lastObject = [a2 lastObject];
  isPointer = [lastObject isPointer];
  isBlock = [lastObject isBlock];
  if (!lastObject || ((isPointer | isBlock) & 1) == 0)
  {
    return a2;
  }

  v6 = [a2 count] - 1;

  return [a2 subarrayWithRange:{0, v6}];
}

unint64_t __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v136 = *MEMORY[0x1E69E9840];
  v116 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v129[0] = a3;
  v129[1] = a4;
  v129[2] = a5;
  v129[3] = a6;
  v129[4] = a7;
  v129[5] = a8;
  v130 = a9;
  v131 = a10;
  v132 = a11;
  v19 = *(a2 + 8);
  if (!v19)
  {
    goto LABEL_124;
  }

  for (i = v19[6].isa; ; i = 0)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = v129[[v21 argumentIndex]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v92 = MEMORY[0x1E696AEC0];
        if (i)
        {
          v93 = i[1];
        }

        else
        {
          v93 = 0;
        }

        v94 = *(a1 + 40);
        v95 = objc_opt_class();
        v96 = [v92 stringWithFormat:@"%@ <%@:%p> Reply block argument was not a block, but a %@", v93, v94, a2, NSStringFromClass(v95)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v97 = NSStringFromSelector(*(a1 + 96));
          v98 = *(a1 + 48);
          v99 = objc_opt_class();
          v100 = NSStringFromClass(v99);
          v101 = *(a1 + 48);
          *buf = 138544642;
          *&buf[4] = v97;
          *&buf[12] = 2114;
          *&buf[14] = v100;
          *&buf[22] = 2048;
          v134 = v101;
          *v135 = 2114;
          *&v135[2] = @"BSXPCServiceConnectionProxy.m";
          *&v135[10] = 1024;
          *&v135[12] = 390;
          *&v135[16] = 2114;
          *&v135[18] = v96;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v96 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8379E4);
      }

      v23 = [v22 copy];
      v24 = *(a2 + 8);
    }

    else
    {
      v23 = 0;
      v24 = v19;
    }

    v113 = v23;
    if ([(__CFString *)v24 _isInvalidated])
    {
      v25 = (a2 + 88);
      os_unfair_lock_lock((a2 + 88));
    }

    else
    {
      v26 = *(a2 + 32);
      v25 = (a2 + 88);
      os_unfair_lock_lock((a2 + 88));
      if (v26)
      {
        v27 = *(a2 + 16);
        os_unfair_lock_unlock((a2 + 88));
        v28 = *(a2 + 32);
        v115 = 1;
        goto LABEL_12;
      }
    }

    os_unfair_lock_unlock(v25);
    v27 = 0;
    v115 = 0;
    v28 = 0;
LABEL_12:
    v29 = [BSXPCServiceConnectionMessage messageWithXPCConnection:v28 targetQueue:*(a2 + 40) handshake:v27 activationGeneration:*(a2 + 96) delegate:v19];
    [(BSXPCServiceConnectionMessage *)v29 setReplyQueue:?];
    if (v29)
    {
      v29[60] = *(a1 + 104);
    }

    if ([i isChild])
    {
      if (i)
      {
        [(BSXPCServiceConnectionMessage *)v29 setChildIdentifier:?];
        v30 = *(i + 24);
      }

      else
      {
        [(BSXPCServiceConnectionMessage *)v29 setChildIdentifier:?];
        v30 = 0;
      }

      [(BSXPCServiceConnectionMessage *)v29 setChildIdentifierIsRemotelyDefined:?];
    }

    v112 = i;
    v114 = v27;
    lock = v25;
    [(BSXPCServiceConnectionMessage *)v29 setSelectorName:?];
    v117 = v19;
    [BSXPCServiceConnectionProxy encodeArguments:*(a1 + 64) inArgs:v129 toMessage:v29 forConnection:?];
    v31 = BSServiceXPCLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = BSServiceXPCLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        if (i)
        {
          v81 = i[1];
        }

        else
        {
          v81 = 0;
        }

        v82 = *(a1 + 40);
        if (*(a1 + 105))
        {
          v19 = @"async";
        }

        else
        {
          v19 = @"sync";
        }

        v83 = [*(a1 + 72) name];
        v84 = *(a1 + 56);
        *buf = 138544642;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v82;
        *&buf[22] = 2048;
        v134 = a2;
        *v135 = 2114;
        *&v135[2] = v19;
        *&v135[10] = 2114;
        *&v135[12] = v83;
        *&v135[20] = 2114;
        *&v135[22] = v84;
        _os_log_debug_impl(&dword_19A821000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%{public}@:%p> Sending %{public}@ [<%{public}@> %{public}@]", buf, 0x3Eu);
      }

      if ([*(a1 + 64) count])
      {
        v34 = [objc_msgSend(*(a1 + 64) "firstObject")];
        if (v34 <= [objc_msgSend(*(a1 + 64) "lastObject")])
        {
          do
          {
            v55 = v129[v34];
            if (([v55 isNSString] & 1) != 0 || objc_msgSend(v55, "isNSNumber"))
            {
              v56 = BSServiceXPCLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                if (v112)
                {
                  v57 = v112[1];
                }

                else
                {
                  v57 = 0;
                }

                v19 = *(a1 + 40);
                v58 = objc_opt_class();
                v59 = [NSStringFromClass(v58) classForCoder];
                v60 = [v55 description];
                *buf = 138544898;
                *&buf[4] = v57;
                *&buf[12] = 2114;
                *&buf[14] = v19;
                *&buf[22] = 2048;
                v134 = a2;
                *v135 = 1024;
                *&v135[2] = v34;
                *&v135[6] = 2114;
                *&v135[8] = v59;
                *&v135[16] = 2048;
                *&v135[18] = v55;
                *&v135[26] = 2114;
                *&v135[28] = v60;
                v61 = v56;
                v62 = "%{public}@ <%{public}@:%p> [%d] <%{public}@: %p; %{public}@>";
                v63 = 68;
LABEL_66:
                _os_log_debug_impl(&dword_19A821000, v61, OS_LOG_TYPE_DEBUG, v62, buf, v63);
              }
            }

            else
            {
              v64 = BSServiceXPCLog();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                if (v112)
                {
                  v19 = v112[1];
                }

                else
                {
                  v19 = 0;
                }

                v65 = *(a1 + 40);
                v66 = objc_opt_class();
                v67 = [NSStringFromClass(v66) classForCoder];
                *buf = 138544642;
                *&buf[4] = v19;
                *&buf[12] = 2114;
                *&buf[14] = v65;
                *&buf[22] = 2048;
                v134 = a2;
                *v135 = 1024;
                *&v135[2] = v34;
                *&v135[6] = 2114;
                *&v135[8] = v67;
                *&v135[16] = 2048;
                *&v135[18] = v55;
                v61 = v64;
                v62 = "%{public}@ <%{public}@:%p> [%d] <%{public}@: %p>";
                v63 = 58;
                goto LABEL_66;
              }
            }

            ++v34;
          }

          while (v34 - 1 < [objc_msgSend(*(a1 + 64) "lastObject")]);
        }
      }
    }

    if (!v115 || !*(a2 + 56) || !*(a2 + 64))
    {
      v44 = 0;
      goto LABEL_33;
    }

    v35 = lock;
    os_unfair_lock_lock(lock);
    v36 = *(a2 + 92);
    if (v36)
    {
      break;
    }

    v68 = *(a2 + 72);
    if (v68)
    {
      v69 = (*(v68 + 16))(v68, *(a1 + 40), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v134 = __Block_byref_object_copy_;
      v74 = _MergedGlobals_3;
      *v135 = __Block_byref_object_dispose_;
      *&v135[8] = _MergedGlobals_3;
      if (!_MergedGlobals_3)
      {
        v124 = MEMORY[0x1E69E9820];
        v125 = 3221225472;
        v126 = __getRBSAssertionClass_block_invoke_0;
        v127 = &unk_1E75202C0;
        v128 = buf;
        __getRBSAssertionClass_block_invoke_0(&v124);
        v74 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);
      v69 = [[v74 alloc] initWithExplanation:*(a1 + 40) target:*(a2 + 56) attributes:*(a2 + 64)];
    }

    v75 = v69;
    if (!v69)
    {
      v102 = v112;
      if (v112)
      {
        v102 = v112[1];
      }

      v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> failed to create assertion with attributes=%@", v102, *(a1 + 40), a2, *(a2 + 64)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v104 = NSStringFromSelector(*(a1 + 96));
        v105 = *(a1 + 48);
        v106 = objc_opt_class();
        v107 = NSStringFromClass(v106);
        v108 = *(a1 + 48);
        *buf = 138544642;
        *&buf[4] = v104;
        *&buf[12] = 2114;
        *&buf[14] = v107;
        *&buf[22] = 2048;
        v134 = v108;
        *v135 = 2114;
        *&v135[2] = @"BSXPCServiceConnectionProxy.m";
        *&v135[10] = 1024;
        *&v135[12] = 446;
        *&v135[16] = 2114;
        *&v135[18] = v103;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v103 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A837ADCLL);
    }

    v123[0] = 0;
    if ([v69 acquireWithError:v123])
    {
      goto LABEL_92;
    }

    v76 = [v123[0] domain];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v77 = qword_1ED4A7BB8;
    v127 = qword_1ED4A7BB8;
    if (!qword_1ED4A7BB8)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getRBSAssertionErrorDomainSymbolLoc_block_invoke;
      v134 = &unk_1E75202C0;
      *v135 = &v124;
      v78 = RunningBoardServicesLibrary_0();
      v79 = dlsym(v78, "RBSAssertionErrorDomain");
      *(*(*v135 + 8) + 24) = v79;
      qword_1ED4A7BB8 = *(*(*v135 + 8) + 24);
      v77 = *(v125 + 24);
    }

    _Block_object_dispose(&v124, 8);
    if (v77)
    {
      if ([v76 isEqualToString:*v77] && objc_msgSend(v123[0], "code") == 4)
      {
        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 3221225472;
        v122[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136;
        v122[3] = &unk_1E7520220;
        v109 = *(a1 + 40);
        v110 = *(a1 + 48);
        v122[4] = v112;
        v122[5] = v109;
        v122[6] = a2;
        v122[7] = v123[0];
        v111 = *(a1 + 96);
        v122[8] = v110;
        v122[9] = v111;
        __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136(v122);
      }

      v80 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v89 = v112;
        if (v112)
        {
          v89 = v112[1];
        }

        v90 = *(a1 + 40);
        v91 = *(a2 + 64);
        *buf = 138544386;
        *&buf[4] = v89;
        *&buf[12] = 2114;
        *&buf[14] = v90;
        *&buf[22] = 2048;
        v134 = a2;
        *v135 = 2114;
        *&v135[2] = v123[0];
        *&v135[10] = 2114;
        *&v135[12] = v91;
        _os_log_error_impl(&dword_19A821000, v80, OS_LOG_TYPE_ERROR, "%{public}@ <%{public}@:%p> failed to acquire assertion : error=%{public}@ attributes=%{public}@", buf, 0x34u);
      }

LABEL_92:
      *(a2 + 80) = v75;
      v36 = *(a2 + 92);
      v35 = lock;
      goto LABEL_93;
    }

    a2 = [MEMORY[0x1E696AAA8] currentHandler];
    [a2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getRBSAssertionErrorDomain(void)") description:{@"BSXPCServiceConnectionProxy.m", 29, @"%s", dlerror()}];
    __break(1u);
LABEL_124:
    ;
  }

  if (v36 == -1)
  {
    v37 = v112;
    if (v112)
    {
      v37 = v112[1];
    }

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> message tracking overflow", v37, *(a1 + 40), a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 96));
      v40 = *(a1 + 48);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = *(a1 + 48);
      *buf = 138544642;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      *&buf[22] = 2048;
      v134 = v43;
      *v135 = 2114;
      *&v135[2] = @"BSXPCServiceConnectionProxy.m";
      *&v135[10] = 1024;
      *&v135[12] = 438;
      *&v135[16] = 2114;
      *&v135[18] = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A837074);
  }

LABEL_93:
  *(a2 + 92) = v36 + 1;
  os_unfair_lock_unlock(v35);
  v44 = 1;
LABEL_33:
  if (*(a1 + 105) == 1)
  {
    if (v113)
    {
      v45 = v120;
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_140;
      v120[3] = &unk_1E7520248;
      v121 = v44;
      v46 = *(a1 + 32);
      v120[4] = a2;
      v120[5] = v46;
      v120[6] = v117;
      v120[7] = v113;
      if (!v29)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (!v44)
      {
        goto LABEL_43;
      }

      v45 = newValue;
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_2;
      newValue[3] = &unk_1E7520270;
      newValue[4] = a2;
      if (!v29)
      {
        goto LABEL_43;
      }
    }

    objc_setProperty_nonatomic_copy(v29, v32, v45, 80);
LABEL_43:
    [v29 send];
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_105;
  }

  v47 = *(a1 + 80);
  if (v47)
  {
    v48 = v129[[v47 argumentIndex]];
    if (v48)
    {
      *v48 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  v124 = 0;
  v52 = [v29 sendSynchronouslyWithError:&v124];
  if (v44)
  {
    [(BSXPCServiceConnectionProxy *)a2 _decrementInFlightMessageCounter];
  }

  if ([*(a1 + 88) isVoid])
  {
    if (v113)
    {
      v53 = *(a1 + 32);
      v54 = [v52 message];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ____BSXPCServiceConnection_IS_INVOKING_A_MESSAGE_REPLY_BLOCK___block_invoke;
      v134 = &unk_1E7520300;
      *v135 = v53;
      *&v135[8] = v54;
      *&v135[16] = v124;
      *&v135[24] = v117;
      *&v135[32] = v113;
      BSXPCServiceConnectionExecuteCallOut(v117, 0, buf);
    }
  }

  else if (v52)
  {
    if ([*(a1 + 88) isBoolean])
    {
      v50 = 0;
      v51 = [v52 decodeBoolForKey:@"BSXPCReturnValue"];
      if (!v48)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    if ([*(a1 + 88) isObject])
    {
      v70 = [*(a1 + 88) objectClass];
      v71 = [*(a1 + 88) objectContainedClasses];
      if ([v71 count])
      {
        if ([v70 isSubclassOfClass:objc_opt_class()])
        {
          v72 = [v52 decodeDictionaryOfClass:objc_msgSend(v71 forKey:{"objectAtIndex:", 1), @"BSXPCReturnValue"}];
        }

        else
        {
          v72 = [v52 decodeCollectionOfClass:v70 containingClass:objc_msgSend(v71 forKey:{"firstObject"), @"BSXPCReturnValue"}];
        }
      }

      else
      {
        v72 = [v52 decodeObjectOfClass:v70 forKey:@"BSXPCReturnValue"];
      }

      v51 = v72;
      v85 = v72;
      v50 = 1;
      if (!v48)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }
  }

  v50 = 0;
  v51 = 0;
  if (!v48)
  {
    goto LABEL_103;
  }

LABEL_76:
  if (!v124)
  {
    if (v52)
    {
      v73 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"BSXPCReturnError"];
      goto LABEL_80;
    }

LABEL_103:
    v49 = 0;
    goto LABEL_104;
  }

  v73 = v124;
LABEL_80:
  v49 = v73;
  *v48 = v73;
LABEL_104:
  [v52 invalidate];
LABEL_105:
  [v29 invalidate];
  if (v114)
  {
    os_unfair_lock_lock(lock);

    *(a2 + 16) = 0;
    os_unfair_lock_unlock(lock);
  }

  [v116 drain];
  v86 = v49;
  if (v50)
  {
    v51 = v51;
  }

  v87 = *MEMORY[0x1E69E9840];
  return v51;
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_120(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> Encoding of %@ in <%@> failed: %@ -> %@", v3, *(a1 + 40), *(a1 + 48), *(a1 + 56), objc_msgSend(*(a1 + 64), "name"), objc_msgSend(*(a1 + 72), "description"), objc_msgSend(*(a1 + 72), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 88));
    v6 = *(a1 + 80);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 80);
    *buf = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionProxy.m";
    v18 = 1024;
    v19 = 416;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
  JUMPOUT(0x19A837EECLL);
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(v2 + 8);
  }

  v3 = *(a1 + 56);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> failed to acquire assertion : error=%@  attributes=%@", v2, *(a1 + 40), *(a1 + 48), v3, *(*(a1 + 48) + 64)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 72));
    v6 = *(a1 + 64);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 64);
    *buf = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionProxy.m";
    v18 = 1024;
    v19 = 452;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_140(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    [(BSXPCServiceConnectionProxy *)*(a1 + 32) _decrementInFlightMessageCounter];
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = [a2 message];
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____BSXPCServiceConnection_IS_INVOKING_A_MESSAGE_REPLY_BLOCK___block_invoke;
  v10[3] = &unk_1E7520300;
  v10[7] = v9;
  v10[8] = v6;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = a3;
  BSXPCServiceConnectionExecuteCallOut(v9, 0, v10);
}

@end