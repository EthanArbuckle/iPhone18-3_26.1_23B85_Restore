@interface INUICKPEntryPoint
- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
@end

@implementation INUICKPEntryPoint

- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__INUICKPEntryPoint_requestCardSectionViewProviderForCard_delegate_reply___block_invoke;
  v10[3] = &unk_2797EB910;
  v11 = replyCopy;
  v9 = replyCopy;
  [(INUICKPEntryPoint *)self requestIdentifiedCardSectionViewProviderForCard:card delegate:delegate reply:v10];
}

uint64_t __74__INUICKPEntryPoint_requestCardSectionViewProviderForCard_delegate_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__INUICKPEntryPoint_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke;
  v9[3] = &unk_2797EB938;
  v10 = replyCopy;
  v8 = replyCopy;
  [INUICKPCardSectionViewProvider requestInstanceFromDefaultAllocatorWithCard:card delegate:delegate reply:v9];
}

uint64_t __84__INUICKPEntryPoint_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

@end