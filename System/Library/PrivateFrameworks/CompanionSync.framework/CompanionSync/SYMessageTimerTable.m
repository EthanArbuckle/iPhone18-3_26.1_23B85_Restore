@interface SYMessageTimerTable
@end

@implementation SYMessageTimerTable

void __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _fireCallbackForSeqno:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _cleanupTimerForSeqno:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __63___SYMessageTimerTable_addTimerWithFireDate_forSequenceNumber___block_invoke_3(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void __46___SYMessageTimerTable__fireCallbackForSeqno___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46___SYMessageTimerTable__fireCallbackForSeqno___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
  [v2 removeObjectForKey:v3];

  v4 = [*(a1 + 40) identifier];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 40);
    v7 = [v5 identifier];
    [v6 removeObjectForKey:v7];
  }
}

void __46___SYMessageTimerTable__cleanupTimerForSeqno___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46___SYMessageTimerTable__cleanupTimerForSeqno___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  [v2 removeObjectForKey:v3];

  v7 = objc_getAssociatedObject(*(*(a1[5] + 8) + 40), kTimerContextKey);
  v4 = [v7 identifier];

  if (v4)
  {
    v5 = *(a1[4] + 40);
    v6 = [v7 identifier];
    [v5 removeObjectForKey:v6];
  }
}

void __56___SYMessageTimerTable_setIdentifier_forSequenceNumber___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __53___SYMessageTimerTable_cancelTimerForSequenceNumber___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __49___SYMessageTimerTable_cancelTimerForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __34___SYMessageTimerTable_timerCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end