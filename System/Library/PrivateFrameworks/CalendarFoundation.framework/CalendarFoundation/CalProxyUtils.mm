@interface CalProxyUtils
+ (id)copyReplyBlockFromInvocation:(id)a3;
+ (int64_t)replyBlockArgumentIndex:(id)a3;
+ (void)callReplyHandler:(id)a3 ofInvocation:(id)a4 withErrorCode:(int64_t)a5;
@end

@implementation CalProxyUtils

+ (int64_t)replyBlockArgumentIndex:(id)a3
{
  v3 = [a3 methodSignature];
  v4 = [v3 numberOfArguments];
  if (v4 < 3)
  {
    goto LABEL_9;
  }

  v5 = v4 - 1;
  v6 = [v3 getArgumentTypeAtIndex:v4 - 1];
  v7 = *v6;
  if (v7 == 64)
  {
    v7 = v6[1];
    if (v7 == 63)
    {
      if (!v6[2])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = 63;
  }

  else
  {
    v8 = 64;
  }

  if (v8 != v7)
  {
LABEL_9:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_10:

  return v5;
}

+ (id)copyReplyBlockFromInvocation:(id)a3
{
  v4 = a3;
  v5 = [a1 replyBlockArgumentIndex:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v8 = 0;
    [v4 getArgument:&v8 atIndex:v5];
    v6 = [v8 copy];
  }

  return v6;
}

+ (void)callReplyHandler:(id)a3 ofInvocation:(id)a4 withErrorCode:(int64_t)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = _Block_signature(v7);
    if (!v9 || (v10 = v9, !*v9))
    {
      v11 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CalProxyUtils callReplyHandler:v8 ofInvocation:v11 withErrorCode:?];
      }

      goto LABEL_18;
    }

    v11 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:v9];
    v12 = [v11 numberOfArguments];
    if (v12 < 2)
    {
LABEL_18:

      goto LABEL_19;
    }

    v13 = v12;
    v14 = [v11 getArgumentTypeAtIndex:1];
    v15 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v11];
    v16 = v15;
    v17 = *v14;
    if (v17 == 105)
    {
      if (v14[1])
      {
LABEL_7:
        v18 = +[CalFoundationLogSubsystem defaultCategory];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CalProxyUtils callReplyHandler:v14 ofInvocation:v18 withErrorCode:?];
        }

        goto LABEL_14;
      }
    }

    else if (105 != v17)
    {
      goto LABEL_7;
    }

    HIDWORD(v22) = v5;
    [v15 setArgument:&v22 + 4 atIndex:1];
LABEL_14:
    if (v13 != 2)
    {
      for (i = 2; i != v13; ++i)
      {
        v20 = &v22 - (([v11 frameLength]+ 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v20, [v11 frameLength]);
        [v16 setArgument:v20 atIndex:i];
      }
    }

    [v16 setTarget:v7];
    [v16 invoke];

    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)callReplyHandler:(uint64_t)a1 ofInvocation:(NSObject *)a2 withErrorCode:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "The first argument of the reply block is of type %s, which is not an int. Ignoring!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)callReplyHandler:(void *)a1 ofInvocation:(NSObject *)a2 withErrorCode:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "_Block_signature() failed for the block argument of invocation %@.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end