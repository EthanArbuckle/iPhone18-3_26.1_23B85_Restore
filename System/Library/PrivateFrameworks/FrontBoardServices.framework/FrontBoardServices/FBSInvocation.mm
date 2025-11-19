@interface FBSInvocation
+ (void)initialize;
- (BOOL)compatibleWithTarget:(id)a3;
- (Class)extension;
- (id)_createReplyBlockWithSignature:(void *)a3 arguments:(void *)a4 handler:;
- (id)debugDescriptionWithMultilinePrefix:(uint64_t)a1;
- (id)descriptionWithMultilinePrefix:(uint64_t)a1;
- (id)membersForCoder;
- (id)resolve;
- (id)succinctDescriptionBuilder;
- (void)_invokeWithTarget:(void *)a3 loggingID:(void *)a4 replyHandler:;
- (void)cannotResolveForReason:(id)a3;
- (void)dealloc;
- (void)decodeWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithInvocation:(void *)a3 interface:;
- (void)invokeWithReceiver:(id)a3 replyHandler:(id)a4;
- (void)invokeWithTarget:(id)a3 replyHandler:(id)a4;
- (void)resolve;
@end

@implementation FBSInvocation

+ (void)initialize
{
  objc_opt_class();

  BSXPCAutoCodingInitialize();
}

void __27__FBSInvocation_initialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  BSXPCSecureCoding();
}

- (Class)extension
{
  v2 = [(FBSInvocation *)self context];
  v3 = [v2 decodeStringForKey:@"extension"];

  v4 = NSClassFromString(v3);
  v5 = v4;
  if (v3 && !v4)
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FBSInvocation(FBSComponentScene) *)v3 extension];
    }
  }

  v7 = v5;

  return v5;
}

- (void)initWithInvocation:(void *)a3 interface:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      [FBSInvocation initWithInvocation:? interface:?];
    }

    if (!v5)
    {
      [FBSInvocation initWithInvocation:? interface:?];
    }

    v8 = [v5 selector];
    v9 = [v5 methodSignature];
    v10 = [v7 methodForSelector:v8];
    if (!v10)
    {
      [FBSInvocation initWithInvocation:v8 interface:sel_initWithInvocation_interface_];
    }

    v11 = v10;
    v12 = [v10 returnValue];
    v13 = [v12 isVoid];

    if ((v13 & 1) == 0)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = NSStringFromSelector(v8);
      v49 = [v7 name];
      v50 = [v47 stringWithFormat:@"return value is not void for @selector(%@) in <%@>", v48, v49];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSInvocation initWithInvocation:? interface:?];
      }

      [v50 UTF8String];
      _bs_set_crash_log_message();
    }

    v62 = 0;
    v14 = objc_opt_new();
    v15 = [v11 arguments];
    if ([v15 count])
    {
      v52 = v8;
      v53 = v9;
      v16 = 0;
      while (1)
      {
        v17 = [v15 objectAtIndex:v16];
        if ([v17 isBlock])
        {
          break;
        }

        v18 = [v5 fbs_getObjectForValue:v17 atIndex:v16 + 2];
        [v14 setObject:v18 forSetting:v16];

        if (++v16 >= [v15 count])
        {
          v54 = 0;
          v19 = 0;
LABEL_18:
          v9 = v53;
          goto LABEL_19;
        }
      }

      v20 = v17;
      v19 = [v53 _signatureForBlockAtArgumentIndex:v16 + 2];
      v21 = [v15 lastObject];

      if (v20 != v21)
      {
        [FBSInvocation initWithInvocation:? interface:?];
      }

      v54 = v20;
      v22 = [v20 blockReturnValue];
      v23 = [v22 isVoid];

      if ((v23 & 1) == 0)
      {
        [FBSInvocation initWithInvocation:? interface:?];
      }

      if (!v19)
      {
        [FBSInvocation initWithInvocation:? interface:?];
      }

      [v5 getArgument:&v62 atIndex:v16 + 2];
      v24 = [v62 copy];
      v25 = v62;
      v62 = v24;

      if (!v62)
      {
        goto LABEL_18;
      }

      v26 = [v54 blockArguments];
      v51 = [v19 numberOfArguments];
      v9 = v53;
      if ([v26 count] != v51 - 1)
      {
        [FBSInvocation initWithInvocation:? interface:?];
      }

      v27 = objc_opt_new();
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __46__FBSInvocation_initWithInvocation_interface___block_invoke;
      v55[3] = &unk_1E76BE2D0;
      v56 = v27;
      v60 = v52;
      v19 = v19;
      v57 = v19;
      v58 = v26;
      v61 = v51;
      v59 = v62;
      v28 = v26;
      v29 = v27;
      v30 = [v55 copy];
      v31 = a1[7];
      a1[7] = v30;

LABEL_19:
      v8 = v52;
    }

    else
    {
      v54 = 0;
      v19 = 0;
    }

    v32 = [v7 name];
    v33 = a1[1];
    a1[1] = v32;

    v34 = NSStringFromSelector(v8);
    v35 = a1[2];
    a1[2] = v34;

    v36 = [v11 encoding];
    v37 = a1[3];
    a1[3] = v36;

    v38 = [off_1E76BCA80 coder];
    v39 = a1[4];
    a1[4] = v38;

    v40 = a1[5];
    a1[5] = v14;
    v41 = v14;

    v42 = objc_opt_new();
    v43 = a1[6];
    a1[6] = v42;

    v44 = FBLogSceneInvocation();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [FBSInvocation initWithInvocation:a1 interface:v44];
    }

    v45 = a1;
  }

  return a1;
}

void __46__FBSInvocation_initWithInvocation_interface___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) signal])
  {
    if (v6)
    {
      v7 = [v6 domain];
      v8 = [v7 isEqualToString:@"FBSInvocation"];

      if ((v8 & 1) == 0)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __46__FBSInvocation_initWithInvocation_interface___block_invoke_2;
        v34[3] = &unk_1E76BE2A8;
        v9 = *(a1 + 64);
        v35 = v6;
        v36 = v9;
        v6 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBSInvocation" code:1 configuration:v34];
      }
    }

    v10 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:*(a1 + 40)];
    if (v5)
    {
      v11 = v5[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v33 = [*(a1 + 48) lastObject];
    if (*(a1 + 72) >= 2uLL)
    {
      for (i = 1; i < *(a1 + 72); ++i)
      {
        v14 = [*(a1 + 48) objectAtIndex:i - 1];
        memset(v39, 0, sizeof(v39));
        v15 = [v14 type];
        v16 = [v12 objectForSetting:i - 1];
        v17 = v16;
        if (v15 > 0x3Fu)
        {
          if (v15 == 66)
          {
            v20 = [v16 BOOLValue];
LABEL_26:
            LOBYTE(v39[0]) = v20;
            goto LABEL_27;
          }

          if (v15 == 64)
          {
            if (v16)
            {
              *&v39[0] = v16;
            }

            else if (v6)
            {
              if (v14 == v33)
              {
                v21 = [v14 objectClass];
                if (v21 == objc_opt_class())
                {
                  *&v39[0] = v6;
                }
              }
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (v15 == 35)
          {
            v18 = NSClassFromString(v16);
            goto LABEL_24;
          }

          if (v15 == 58)
          {
            v18 = NSSelectorFromString(v16);
LABEL_24:
            *&v39[0] = v18;
            goto LABEL_27;
          }
        }

        v19 = v15 & 0xDF;
        if (v19 <= 0x4B)
        {
          if (v19 == 67)
          {
            v20 = [v16 charValue];
            goto LABEL_26;
          }

          if (v19 == 73)
          {
            LODWORD(v39[0]) = [v16 intValue];
            goto LABEL_27;
          }
        }

        else
        {
          switch(v19)
          {
            case 'L':
              v18 = [v16 longValue];
              goto LABEL_24;
            case 'Q':
              v18 = [v16 longLongValue];
              goto LABEL_24;
            case 'S':
              LOWORD(v39[0]) = [v16 shortValue];
              goto LABEL_27;
          }
        }

        if (v15 > 0x65u)
        {
          if (v15 == 123)
          {
            v28 = [v14 size];
            if (v28 >= 0x81)
            {
              v32 = [MEMORY[0x1E696AAA8] currentHandler];
              v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation initWithInvocation:interface:]_block_invoke"];
              [v32 handleFailureInFunction:v31 file:@"FBSInvocation.m" lineNumber:214 description:@"struct is too large"];
            }

            if (([v17 bs_getValue:v39 ofSize:v28] & 1) == 0)
            {
              v29 = [MEMORY[0x1E696AAA8] currentHandler];
              v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation initWithInvocation:interface:]_block_invoke"];
              [v29 handleFailureInFunction:v30 file:@"FBSInvocation.m" lineNumber:215 description:{@"Unable to decode struct: %@", v14}];
            }

            goto LABEL_27;
          }

          if (v15 != 102)
          {
LABEL_46:
            v24 = FBLogSceneInvocation();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v14;
              _os_log_error_impl(&dword_1A2DBB000, v24, OS_LOG_TYPE_ERROR, "Parameter is not supported: %@", buf, 0xCu);
            }

            v25 = [MEMORY[0x1E696AAA8] currentHandler];
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation initWithInvocation:interface:]_block_invoke"];
            [v25 handleFailureInFunction:v26 file:@"FBSInvocation.m" lineNumber:218 description:{@"Unsupported parameter: %@", v14}];

            goto LABEL_27;
          }

          [v16 floatValue];
          LODWORD(v39[0]) = v23;
        }

        else
        {
          if (v15 == 42)
          {
            v27 = v16;
            v18 = [v17 UTF8String];
            goto LABEL_24;
          }

          if (v15 != 100)
          {
            goto LABEL_46;
          }

          [v16 doubleValue];
          *&v39[0] = v22;
        }

LABEL_27:
        [v10 setArgument:v39 atIndex:i];
      }
    }

    [v10 invokeWithTarget:*(a1 + 56)];
  }
}

void __46__FBSInvocation_initWithInvocation_interface___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureDescription:@"Invocation failed."];
  [v4 setFailureReason:@"An underlying error occurred."];
  v3 = NSStringFromSelector(*(a1 + 40));
  [v4 setUserInfoValue:v3 forKey:@"selector"];

  [v4 setUnderlyingError:*(a1 + 32)];
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deallocation of un-resolved invocation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (BOOL)compatibleWithTarget:(id)a3
{
  v4 = a3;
  if (v4 && ([(BSAtomicSignal *)self->_invoked hasBeenSignalled]& 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = 1;
    }

    else
    {
      [(FBSInvocation *)self selector];
      v5 = objc_opt_respondsToSelector();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)invokeWithTarget:(id)a3 replyHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(FBSInvocation *)self _invokeWithTarget:v8 loggingID:0 replyHandler:v6];
  objc_autoreleasePoolPop(v7);
}

- (void)_invokeWithTarget:(void *)a3 loggingID:(void *)a4 replyHandler:
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v72 = a4;
  if (!a1)
  {
    v69 = v8;
    goto LABEL_71;
  }

  if (([*(a1 + 48) signal] & 1) == 0)
  {
    [FBSInvocation _invokeWithTarget:? loggingID:? replyHandler:?];
  }

  v9 = &stru_1F1595B30;
  if (v8)
  {
    v9 = v8;
  }

  v69 = v9;

  v10 = [a1 selector];
  if (!v7 || (v11 = v10, (objc_opt_respondsToSelector() & 1) == 0))
  {
    v43 = MEMORY[0x1E696ABC0];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke;
    v78[3] = &unk_1E76BE2F8;
    v79 = v7;
    v80 = a1;
    v44 = [v43 bs_errorWithDomain:@"FBSInvocation" code:1 configuration:v78];
    v72[2](v72, 0, v44);

    v45 = v79;
    goto LABEL_70;
  }

  v68 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(*(a1 + 24), "UTF8String")}];
  v12 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v68];
  [v12 setSelector:v11];
  v73 = v12;
  v13 = NSProtocolFromString(*(a1 + 8));
  v14 = _interfaceFromProtocol(v13);
  v15 = [v14 methodForSelector:v11];

  if (!v15)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:sel__invokeWithTarget_loggingID_replyHandler_ object:a1 file:@"FBSInvocation.m" lineNumber:382 description:{@"no method found for %@ in %@", *(a1 + 16), *(a1 + 8)}];
  }

  v67 = v15;
  v16 = [v15 arguments];
  v70 = 0;
  v71 = 0;
  for (i = 2; i - 2 < [v16 count]; ++i)
  {
    v18 = [v16 objectAtIndex:i - 2];
    v19 = [v18 type];
    v20 = [*(a1 + 40) objectForSetting:i - 2];
    v21 = v20;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    memset(v93, 0, sizeof(v93));
    if (v19 > 0x3Fu)
    {
      if (v19 == 66)
      {
        v31 = [v20 BOOLValue];
LABEL_29:
        v93[0] = v31;
        goto LABEL_34;
      }

      if (v19 == 64)
      {
        if ([v18 isBlock])
        {
          if (!v72)
          {
            v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reply handler is expected"];
            v50 = MEMORY[0x1E69E9C10];
            v51 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v52 = NSStringFromSelector(sel__invokeWithTarget_loggingID_replyHandler_);
              v53 = objc_opt_class();
              v54 = NSStringFromClass(v53);
              *buf = 138544642;
              v82 = v52;
              v83 = 2114;
              v84 = v54;
              v85 = 2048;
              v86 = a1;
              v87 = 2114;
              v88 = @"FBSInvocation.m";
              v89 = 1024;
              v90 = 397;
              v91 = 2114;
              v92 = v49;
              _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v55 = v49;
            [v49 UTF8String];
            _bs_set_crash_log_message();
          }

          v23 = [v16 lastObject];
          v24 = v18 == v23;

          if (!v24)
          {
            v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"block is not the last argument"];
            v57 = MEMORY[0x1E69E9C10];
            v58 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v59 = NSStringFromSelector(sel__invokeWithTarget_loggingID_replyHandler_);
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              *buf = 138544642;
              v82 = v59;
              v83 = 2114;
              v84 = v61;
              v85 = 2048;
              v86 = a1;
              v87 = 2114;
              v88 = @"FBSInvocation.m";
              v89 = 1024;
              v90 = 398;
              v91 = 2114;
              v92 = v56;
              _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v62 = v56;
            [v56 UTF8String];
            _bs_set_crash_log_message();
          }

          v25 = [v68 _signatureForBlockAtArgumentIndex:i];
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_146;
          v76[3] = &unk_1E76BE370;
          v76[4] = a1;
          v26 = v72;
          v77 = v26;
          v27 = [off_1E76BC9A0 sentinelWithCompletion:v76];

          v28 = [v18 blockArguments];
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_3;
          v74[3] = &unk_1E76BE398;
          v71 = v27;
          v75 = v71;
          v29 = [(FBSInvocation *)a1 _createReplyBlockWithSignature:v25 arguments:v28 handler:v74];

          *v93 = v29;
          v72 = 0;
          v70 = v29;
        }

        else
        {
          *v93 = v21;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v19 == 35)
      {
        v22 = NSClassFromString(v20);
        goto LABEL_27;
      }

      if (v19 == 58)
      {
        v22 = NSSelectorFromString(v20);
LABEL_27:
        *v93 = v22;
        goto LABEL_34;
      }
    }

    v30 = v19 & 0xDF;
    if (v30 <= 0x4B)
    {
      if (v30 == 67)
      {
        v31 = [v20 charValue];
        goto LABEL_29;
      }

      if (v30 == 73)
      {
        *v93 = [v20 intValue];
        goto LABEL_34;
      }
    }

    else
    {
      switch(v30)
      {
        case 'L':
          v22 = [v20 longValue];
          goto LABEL_27;
        case 'Q':
          v22 = [v20 longLongValue];
          goto LABEL_27;
        case 'S':
          *v93 = [v20 shortValue];
          goto LABEL_34;
      }
    }

    if (v19 <= 0x65u)
    {
      if (v19 == 42)
      {
        v37 = v20;
        v22 = [v21 UTF8String];
        goto LABEL_27;
      }

      if (v19 == 100)
      {
        [v20 doubleValue];
        *v93 = v32;
        goto LABEL_34;
      }

LABEL_45:
      v34 = FBLogSceneInvocation();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v82 = v18;
        _os_log_error_impl(&dword_1A2DBB000, v34, OS_LOG_TYPE_ERROR, "Parameter is not supported: %@", buf, 0xCu);
      }

      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation _invokeWithTarget:loggingID:replyHandler:]"];
      [v35 handleFailureInFunction:v36 file:@"FBSInvocation.m" lineNumber:455 description:{@"Unsupported parameter: %@", v18}];

      goto LABEL_34;
    }

    if (v19 != 123)
    {
      if (v19 == 102)
      {
        [v20 floatValue];
        *v93 = v33;
        goto LABEL_34;
      }

      goto LABEL_45;
    }

    v38 = [v18 size];
    if (v38 >= 0x81)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation _invokeWithTarget:loggingID:replyHandler:]"];
      [v41 handleFailureInFunction:v42 file:@"FBSInvocation.m" lineNumber:451 description:@"struct is too large"];
    }

    if (([v21 bs_getValue:v93 ofSize:v38] & 1) == 0)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSInvocation _invokeWithTarget:loggingID:replyHandler:]"];
      [v39 handleFailureInFunction:v40 file:@"FBSInvocation.m" lineNumber:452 description:{@"Unable to decode struct: %@", v18}];
    }

LABEL_34:
    [v73 setArgument:v93 atIndex:i];
  }

  if (v73)
  {
    v46 = FBLogSceneInvocation();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 16);
      v48 = [off_1E76BC9B0 succinctDescriptionForObject:v7];
      *v93 = 138543874;
      *&v93[4] = v69;
      *&v93[12] = 2114;
      *&v93[14] = v47;
      *&v93[22] = 2114;
      *&v93[24] = v48;
      _os_log_impl(&dword_1A2DBB000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invoking %{public}@ on target: %{public}@", v93, 0x20u);
    }

    [v73 invokeWithTarget:v7];
  }

  if (v72)
  {
    (v72[2])();
  }

  else
  {
    v72 = 0;
  }

  v65 = *(a1 + 40);
  v64 = (a1 + 40);
  [v65 removeAllSettings];
  v66 = *v64;
  *v64 = 0;

  v45 = v70;
LABEL_70:

LABEL_71:
}

- (void)invokeWithReceiver:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = v6;
  v8 = v11;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v11 targetForInvocation:self];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v11 loggingIdentifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_autoreleasePoolPush();
  [(FBSInvocation *)self _invokeWithTarget:v8 loggingID:v9 replyHandler:v7];
  objc_autoreleasePoolPop(v10);
}

- (id)resolve
{
  if (self->_resolved)
  {
    [(FBSInvocation *)a2 resolve];
  }

  v3 = MEMORY[0x1A58E80F0](self->_reply, a2);
  reply = self->_reply;
  self->_reply = 0;

  self->_resolved = 1;
  v5 = MEMORY[0x1A58E80F0](v3);

  return v5;
}

- (void)cannotResolveForReason:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_resolved)
  {
    [FBSInvocation cannotResolveForReason:a2];
  }

  v6 = MEMORY[0x1E696ABC0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __40__FBSInvocation_cannotResolveForReason___block_invoke;
  v16 = &unk_1E76BE2F8;
  v7 = v5;
  v17 = v7;
  v18 = self;
  v8 = [v6 bs_errorWithDomain:@"FBSInvocation" code:1 configuration:&v13];
  v9 = FBLogSceneInvocation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 descriptionWithMultilinePrefix:{0, v13, v14, v15, v16}];
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "Invocation failed: %@", buf, 0xCu);
  }

  v11 = MEMORY[0x1A58E80F0](self->_reply);
  reply = self->_reply;
  self->_reply = 0;

  if (v11)
  {
    (v11)[2](v11, 0, v8);
  }
}

void __40__FBSInvocation_cannotResolveForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Unable to route invocation."];
  [v3 setFailureReason:{@"%@", *(a1 + 32)}];
  v4 = NSStringFromSelector([*(a1 + 40) selector]);
  [v3 setUserInfoValue:v4 forKey:@"selector"];
}

- (id)_createReplyBlockWithSignature:(void *)a3 arguments:(void *)a4 handler:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (!v7)
    {
      [FBSInvocation _createReplyBlockWithSignature:? arguments:? handler:?];
    }

    if (!v8)
    {
      [FBSInvocation _createReplyBlockWithSignature:? arguments:? handler:?];
    }

    if (!v9)
    {
      [FBSInvocation _createReplyBlockWithSignature:? arguments:? handler:?];
    }

    [v7 _cTypeString];
    v12 = v8;
    v13 = v7;
    v14 = v10;
    a1 = __NSMakeSpecialForwardingCaptureBlock();
  }

  return a1;
}

void __66__FBSInvocation__createReplyBlockWithSignature_arguments_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_new();
  v4 = [*(a1 + 32) count];
  if (v4 != [*(a1 + 40) numberOfArguments] - 1)
  {
    __66__FBSInvocation__createReplyBlockWithSignature_arguments_handler___block_invoke_cold_1(a1);
  }

  if ([*(a1 + 40) numberOfArguments] >= 2)
  {
    v5 = 1;
    do
    {
      v6 = [*(a1 + 32) objectAtIndex:v5 - 1];
      v7 = [v9 fbs_getObjectForValue:v6 atIndex:v5];
      [v3 setObject:v7 forSetting:v5 - 1];

      ++v5;
    }

    while (v5 < [*(a1 + 40) numberOfArguments]);
  }

  v8 = [FBSInvocationReply replyWithParameters:v3];
  (*(*(a1 + 56) + 16))();
}

void __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureDescription:@"Unable to handle invocation."];
  if (*(a1 + 32))
  {
    v3 = @"Receiver does not implement selector.";
  }

  else
  {
    v3 = @"No receiver found for this message.";
  }

  [v4 setFailureReason:v3];
  [v4 setUserInfoValue:*(*(a1 + 40) + 16) forKey:@"selector"];
}

void __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailed])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_2;
    v13[3] = &unk_1E76BE348;
    v13[4] = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBSInvocation" code:3 configuration:v13];
    v5 = 0;
  }

  else
  {
    v6 = [v3 context];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = v9;

    v10 = objc_opt_class();
    v11 = v8;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v4 = v12;
  }

  (*(*(a1 + 40) + 16))();
}

void __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureReason:@"Response not possible."];
  [v3 setFailureDescription:@"Reply block deallocated without being called"];
  v4 = NSStringFromSelector([*(a1 + 32) selector]);
  [v3 setUserInfoValue:v4 forKey:@"selector"];
}

uint64_t __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    a3 = a2;
  }

  return [v3 signalWithContext:a3];
}

void __58__FBSInvocation__invokeWithTarget_loggingID_replyHandler___block_invoke_154(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Unable to decode invocation."];
  [v3 setFailureReason:@"An exception was thrown while decoding."];
  [v3 setUserInfoValue:*(a1 + 32) forKey:*off_1E76BC960];
  [v3 setUserInfoValue:*(*(a1 + 40) + 16) forKey:@"selector"];
}

void __53__FBSInvocation_debugDescriptionWithMultilinePrefix___block_invoke(id *a1)
{
  v2 = [a1[4] allSettings];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__FBSInvocation_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v3[3] = &unk_1E76BE3C0;
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 enumerateSortedWithBlock:v3];
}

void __53__FBSInvocation_debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7 = [*(a1 + 40) objectForSetting:a2];
  v5 = [*(a1 + 48) objectAtIndex:a2 - 2];
  v6 = [v4 appendObject:v7 withName:v5];
}

- (id)membersForCoder
{
  if (objc_opt_class())
  {
    objc_opt_isKindOfClass();
  }

  _BSAutoMember();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objects = self->_objects;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__FBSInvocation_encodeWithCoder___block_invoke;
  v8[3] = &unk_1E76BE408;
  v9 = v4;
  v6 = v4;
  [(BSMutableSettings *)objects enumerateObjectsWithBlock:v8];
  [(BSMutableSettings *)self->_objects removeAllSettings];
  v7 = self->_objects;
  self->_objects = 0;
}

void __33__FBSInvocation_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v8 = [v5 numberWithUnsignedInteger:a2];
  v7 = [v8 stringValue];
  [v4 encodeObject:v6 forKey:v7];
}

- (void)decodeWithCoder:(id)a3
{
  v38 = a3;
  v5 = NSProtocolFromString(self->_protocolName);
  v6 = NSSelectorFromString(self->_selectorName);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FBSInvocation decodeWithCoder:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [FBSInvocation decodeWithCoder:];
LABEL_3:
  v36 = _interfaceFromProtocol(v5);
  v8 = [v36 methodForSelector:v7];
  if (!v8)
  {
    [(FBSInvocation *)&self->_selectorName decodeWithCoder:?];
  }

  v9 = [v8 encoding];
  v10 = [v9 isEqualToString:self->_encoding];

  if ((v10 & 1) == 0)
  {
    [FBSInvocation decodeWithCoder:];
  }

  v11 = [v8 returnValue];
  v12 = [v11 isVoid];

  if ((v12 & 1) == 0)
  {
    [FBSInvocation decodeWithCoder:];
  }

  v34 = a2;
  v13 = objc_opt_new();
  v37 = v8;
  v14 = [v8 arguments];
  if ([v14 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v14 objectAtIndex:{v15, v34}];
      if (([v16 isBlock] & 1) == 0)
      {
        break;
      }

LABEL_22:

      if (++v15 >= [v14 count])
      {
        goto LABEL_43;
      }
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v18 = [v17 stringValue];

    v19 = [v16 type];
    if (v19 <= 0x39)
    {
      if (v19 != 35 && v19 != 42)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (v19 != 64)
    {
      if (v19 != 58)
      {
LABEL_15:
        v20 = [v38 decodeObjectOfClass:objc_opt_class() forKey:v18];
        goto LABEL_19;
      }

LABEL_18:
      v20 = [v38 decodeStringForKey:v18];
LABEL_19:
      v21 = v20;
      if (!v20)
      {
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:
      [v13 setObject:v21 forSetting:v15];
      goto LABEL_21;
    }

    v22 = [v16 objectClass];
    v23 = [v16 objectContainedClasses];
    if (![v23 count])
    {
      v21 = [v38 decodeObjectOfClass:v22 forKey:v18];
      goto LABEL_40;
    }

    if (![v23 containsObject:objc_opt_class()])
    {
      if ([v22 isSubclassOfClass:objc_opt_class()])
      {
        if ([v23 count] <= 1)
        {
          [FBSInvocation decodeWithCoder:];
        }

        v28 = [v23 objectAtIndex:1];
        v29 = [v38 decodeDictionaryOfClass:v28 forKey:v18];
      }

      else
      {
        v28 = [v23 firstObject];
        v29 = [v38 decodeCollectionOfClass:v22 containingClass:v28 forKey:v18];
      }

      v21 = v29;

LABEL_40:
      if (!v21)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v35 = v5;
    v24 = [v38 decodeXPCObjectOfType:MEMORY[0x1E69E9E50] forKey:v18];
    v25 = _CFXPCCreateCFObjectFromXPCObject();
    v26 = v25;
    if (v24 && !v25)
    {
      [FBSInvocation decodeWithCoder:];
    }

    else if (v25 && ([v22 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v27 = [[v22 alloc] initWithArray:v26];
      goto LABEL_39;
    }

    v27 = v26;
LABEL_39:
    v21 = v27;

    v5 = v35;
    goto LABEL_40;
  }

LABEL_43:
  objects = self->_objects;
  self->_objects = v13;
  v31 = v13;

  v32 = objc_opt_new();
  invoked = self->_invoked;
  self->_invoked = v32;
}

- (id)descriptionWithMultilinePrefix:(uint64_t)a1
{
  if (a1)
  {
    v1 = [(FBSInvocation *)a1 succinctDescriptionBuilder];
    v2 = [v1 build];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)debugDescriptionWithMultilinePrefix:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_8_1();
    v4 = *(v3 + 40);
    v5 = *(v2 + 16);
    v6 = v1;
    v7 = [v5 componentsSeparatedByString:@":"];
    v8 = [(FBSInvocation *)v2 succinctDescriptionBuilder];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__FBSInvocation_debugDescriptionWithMultilinePrefix___block_invoke;
    v14[3] = &unk_1E76BE100;
    v15 = v4;
    v16 = v8;
    v17 = v7;
    v9 = v7;
    v10 = v8;
    v11 = v4;
    [v10 appendBodySectionWithName:0 multilinePrefix:v6 block:v14];

    v12 = [v10 build];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)succinctDescriptionBuilder
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[<%@> %@]", *(a1 + 8), *(a1 + 16)];
    v3 = [off_1E76BC9B0 builderWithObject:a1];
    v4 = [v3 appendObject:v2 withName:0];
    if ([*(a1 + 48) hasBeenSignalled])
    {
      v5 = [v3 appendObject:@"(invoked)" withName:0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initWithInvocation:(const char *)a1 interface:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

- (void)initWithInvocation:(char *)a1 interface:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a block can only be the last argument of a message"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(char *)a1 interface:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"block return value is not void"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(char *)a1 interface:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[replyArguments count] == (numberOfArguments - 1)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(char *)a1 interface:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"block signature returned nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(uint64_t)a1 interface:(NSObject *)a2 .cold.6(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "Created %@", &v2, 0xCu);
}

- (void)initWithInvocation:(const char *)a1 interface:(const char *)a2 .cold.7(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"No associated method was found for invocation of %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(char *)a1 interface:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"invocation", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithInvocation:(char *)a1 interface:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"interface", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __46__FBSInvocation_initWithInvocation_interface___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_ERROR, "Exception caught decoding parameters in reply block for %@: %@", buf, 0x16u);
}

- (void)_invokeWithTarget:(char *)a1 loggingID:replyHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invocation was invoked twice"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_invokeWithTarget:(uint64_t)a1 loggingID:(uint64_t)a2 replyHandler:(os_log_t)log .cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_ERROR, "Exception caught decoding parameters of %{public}@: %{public}@", &v4, 0x16u);
}

- (void)resolve
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invocation has already been resolved"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)cannotResolveForReason:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invocation has already been resolved"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createReplyBlockWithSignature:(char *)a1 arguments:handler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createReplyBlockWithSignature:(char *)a1 arguments:handler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"arguments", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createReplyBlockWithSignature:(char *)a1 arguments:handler:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"signature", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __66__FBSInvocation__createReplyBlockWithSignature_arguments_handler___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 64));
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[arguments count] == ([signature numberOfArguments] - blockOffset)", v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)decodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *v0;
  v4 = v1;
  OUTLINED_FUNCTION_4_2();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *v0;
  v4 = v1;
  OUTLINED_FUNCTION_4_2();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:(uint64_t *)a1 .cold.3(uint64_t *a1, uint64_t *a2)
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = *a1;
  v6 = *a2;
  OUTLINED_FUNCTION_4_2();
  [v4 handleFailureInMethod:v5 object:v6 file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:.cold.4()
{
  OUTLINED_FUNCTION_8_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:.cold.5()
{
  OUTLINED_FUNCTION_8_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:.cold.6()
{
  OUTLINED_FUNCTION_8_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)decodeWithCoder:.cold.7()
{
  OUTLINED_FUNCTION_2_1();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [v0 name];
  OUTLINED_FUNCTION_4_2();
  [v2 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

@end