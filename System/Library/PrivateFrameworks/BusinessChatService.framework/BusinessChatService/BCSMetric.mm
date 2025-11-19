@interface BCSMetric
- (id)_initWithType:(void *)a3 context:(void *)a4 postProcessingMetricHandlers:;
- (void)submitForPostProcessing;
@end

@implementation BCSMetric

- (id)_initWithType:(void *)a3 context:(void *)a4 postProcessingMetricHandlers:
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BCSMetric;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      v10[3] = a2;
      objc_storeStrong(v10 + 2, a3);
      objc_storeStrong(a1 + 1, a4);
    }
  }

  return a1;
}

- (void)submitForPostProcessing
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__BCSMetric_submitForPostProcessing__block_invoke;
  v3[3] = &unk_278D3A348;
  v3[4] = self;
  [(NSArray *)postProcessingMetricHandlers enumerateObjectsUsingBlock:v3];
}

@end