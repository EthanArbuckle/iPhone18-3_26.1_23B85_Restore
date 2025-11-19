@interface HDHealthConceptAuthorizationPromptSession
@end

@implementation HDHealthConceptAuthorizationPromptSession

void __83___HDHealthConceptAuthorizationPromptSession_beginPromptTransactionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Attempt to start a prompt transaction that has already started."];
  (*(v1 + 16))(v1, 0, v2);
}

@end