@interface BCSManualFetchTrigger
- (void)scheduleFetchBlock:(id)a3;
- (void)triggerFetchForReason:(unint64_t)a3 completion:(id)a4;
@end

@implementation BCSManualFetchTrigger

- (void)scheduleFetchBlock:(id)a3
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, a3, 8);
  }
}

- (void)triggerFetchForReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self)
  {
    fetchBlock = self->_fetchBlock;
    if (fetchBlock)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__BCSManualFetchTrigger_triggerFetchForReason_completion___block_invoke;
      v9[3] = &unk_278D38818;
      v10 = v6;
      (*(fetchBlock + 2))(fetchBlock, 0, a3, v9);
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