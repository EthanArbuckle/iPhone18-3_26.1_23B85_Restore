@interface MDItemDecrypt
@end

@implementation MDItemDecrypt

void ___MDItemDecrypt_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  releaseConnection(v2);
}

@end