@interface CNHandleBlockingResponsePreparer
@end

@implementation CNHandleBlockingResponsePreparer

uint64_t __61___CNHandleBlockingResponsePreparer_prepareResults_forFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 value];

  v5 = [v4 address];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [*(a1 + 32) isHandleBlocked:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end