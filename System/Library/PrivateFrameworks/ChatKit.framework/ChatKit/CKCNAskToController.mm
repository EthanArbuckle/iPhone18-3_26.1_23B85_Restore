@interface CKCNAskToController
+ (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply;
@end

@implementation CKCNAskToController

+ (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  replyCopy = reply;
  v12 = replyCopy;
  v6 = NSSelectorFromString(&cfstr_Sendcommlimits.isa);
  v7 = NSClassFromString(&cfstr_Cnasktocontrol.isa);
  if (v7)
  {
    v8 = objc_alloc_init(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = MEMORY[0x1E695DF50];
      v10 = [v8 methodSignatureForSelector:v6];
      v11 = [v9 invocationWithMethodSignature:v10];

      [v11 setSelector:v6];
      [v11 setTarget:v8];
      [v11 setArgument:&handlesCopy atIndex:2];
      [v11 setArgument:&v12 atIndex:3];
      [v11 invoke];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "+[CKCNAskToController sendCommLimitsQuestionForHandles:withReply:]";
      _os_log_impl(&dword_19020E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s missing selector", buf, 0xCu);
    }

    replyCopy = v12;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "+[CKCNAskToController sendCommLimitsQuestionForHandles:withReply:]";
    _os_log_impl(&dword_19020E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s missing class", buf, 0xCu);
  }
}

@end