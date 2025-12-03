@interface BCSManualFetchTrigger
- (void)scheduleFetchBlock:(id)block;
- (void)triggerFetchForReason:(unint64_t)reason completion:(id)completion;
@end

@implementation BCSManualFetchTrigger

- (void)scheduleFetchBlock:(id)block
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, block, 8);
  }
}

- (void)triggerFetchForReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self)
  {
    fetchBlock = self->_fetchBlock;
    if (fetchBlock)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__BCSManualFetchTrigger_triggerFetchForReason_completion___block_invoke;
      v9[3] = &unk_278D38818;
      v10 = completionCopy;
      (*(fetchBlock + 2))(fetchBlock, 0, reason, v9);
    }
  }
}

uint64_t __58__BCSManualFetchTrigger_triggerFetchForReason_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end