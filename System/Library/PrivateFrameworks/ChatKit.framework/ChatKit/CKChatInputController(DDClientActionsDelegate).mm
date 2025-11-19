@interface CKChatInputController(DDClientActionsDelegate)
@end

@implementation CKChatInputController(DDClientActionsDelegate)

- (void)handleClientActionFromUrl:()DDClientActionsDelegate context:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsTrailingText(void)"];
  [v0 handleFailureInFunction:v1 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)handleClientActionFromUrl:()DDClientActionsDelegate context:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsMiddleText(void)"];
  [v0 handleFailureInFunction:v1 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)handleClientActionFromUrl:()DDClientActionsDelegate context:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsLeadingText(void)"];
  [v0 handleFailureInFunction:v1 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)handleClientActionFromUrl:()DDClientActionsDelegate context:.cold.4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsReferenceDateKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

@end