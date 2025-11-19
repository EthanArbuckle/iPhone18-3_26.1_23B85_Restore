@interface CHSIntentReferenceBuf
@end

@implementation CHSIntentReferenceBuf

id __36___CHSIntentReferenceBuf_intentData__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(v2 + a2 + 4)];

  return v3;
}

id __36___CHSIntentReferenceBuf_schemaData__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(v2 + a2 + 4)];

  return v3;
}

id __43___CHSIntentReferenceBuf_partialIntentData__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(v2 + a2 + 4)];

  return v3;
}

void __61___CHSIntentReferenceBuf_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(v3 + 8) == 1)
    {
      v4 = *(v3 + 16);
      goto LABEL_6;
    }

    if (*(v3 + 8))
    {
      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 40) stableHash];
LABEL_6:
  [v5 setStableHash:v4];
LABEL_7:
  if (*(a1 + 48))
  {
    [v5 setIntentData:?];
  }

  if (*(a1 + 56))
  {
    [v5 setSchemaData:?];
  }

  if (*(a1 + 64))
  {
    [v5 setPartialIntentData:?];
  }
}

@end