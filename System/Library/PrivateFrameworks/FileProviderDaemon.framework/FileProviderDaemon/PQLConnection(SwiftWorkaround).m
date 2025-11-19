@interface PQLConnection(SwiftWorkaround)
- (void)setAutoRollbackHandlerForSwift:()SwiftWorkaround;
@end

@implementation PQLConnection(SwiftWorkaround)

- (void)setAutoRollbackHandlerForSwift:()SwiftWorkaround
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PQLConnection_SwiftWorkaround__setAutoRollbackHandlerForSwift___block_invoke;
  v6[3] = &unk_1E83C1068;
  v7 = v4;
  v5 = v4;
  [a1 setAutoRollbackHandler:v6];
}

@end