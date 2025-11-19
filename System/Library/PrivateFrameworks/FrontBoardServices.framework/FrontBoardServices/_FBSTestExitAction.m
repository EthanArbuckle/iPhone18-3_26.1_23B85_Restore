@interface _FBSTestExitAction
- (_FBSTestExitAction)init;
@end

@implementation _FBSTestExitAction

- (_FBSTestExitAction)init
{
  v3 = [off_1E76BC978 responderWithHandler:&__block_literal_global_25];
  [v3 setQueue:MEMORY[0x1E69E96A0]];
  v4 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = _FBSTestExitAction;
  v5 = [(_FBSTestExitAction *)&v7 initWithInfo:v4 responder:v3];

  return v5;
}

@end