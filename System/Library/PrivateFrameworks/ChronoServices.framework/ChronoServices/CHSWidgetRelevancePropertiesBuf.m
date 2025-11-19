@interface CHSWidgetRelevancePropertiesBuf
@end

@implementation CHSWidgetRelevancePropertiesBuf

_CHSWidgetRelevanceBuf *__46___CHSWidgetRelevancePropertiesBuf_relevances__block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = [_CHSWidgetRelevanceBuf alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v6 = [(_CHSWidgetRelevanceBuf *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

void __71___CHSWidgetRelevancePropertiesBuf_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deepCopyUsingBufferBuilder:*(a1 + 40)];
  [v2 addObject:?];
}

void __71___CHSWidgetRelevancePropertiesBuf_deepCopyUsingBufferBuilder_changes___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(a1 + 32))
  {
    [v9 setExtensionIdentity:?];
  }

  if (*(a1 + 40))
  {
    [v9 setKind:?];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (*(v3 + 24) == 1)
    {
      v4 = *(v3 + 25);
      goto LABEL_10;
    }

    if (*(v3 + 24))
    {
      goto LABEL_11;
    }
  }

  v4 = [*(a1 + 56) supportsBackgroundRefresh];
LABEL_10:
  [v9 setSupportsBackgroundRefresh:v4 & 1];
LABEL_11:
  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(v5 + 26) == 1)
    {
      v6 = *(v5 + 27);
      goto LABEL_16;
    }

    if (*(v5 + 26))
    {
      goto LABEL_17;
    }
  }

  v6 = [*(a1 + 56) isDeletion];
LABEL_16:
  [v9 setIsDeletion:v6 & 1];
LABEL_17:
  v7 = *(a1 + 48);
  if (v7)
  {
    if (*(v7 + 28) == 1)
    {
      v8 = *(v7 + 32);
      goto LABEL_22;
    }

    if (*(v7 + 28))
    {
      goto LABEL_23;
    }
  }

  [*(a1 + 56) lastRelevanceUpdate];
LABEL_22:
  [v9 setLastRelevanceUpdate:v8];
LABEL_23:
  if (*(a1 + 64))
  {
    [v9 setRelevances:?];
  }
}

uint64_t __52___CHSWidgetRelevancePropertiesBuf_verifyUTF8Fields__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 verifyUTF8Fields];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

@end