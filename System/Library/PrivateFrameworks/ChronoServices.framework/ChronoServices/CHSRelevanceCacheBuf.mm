@interface CHSRelevanceCacheBuf
@end

@implementation CHSRelevanceCacheBuf

id __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(v2 + a2 + 4)];

  return v3;
}

_CHSWidgetRelevancePropertiesBuf *__31___CHSRelevanceCacheBuf_groups__block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = [_CHSWidgetRelevancePropertiesBuf alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke_cold_1();
  }

  v6 = [(_CHSWidgetRelevancePropertiesBuf *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

void __60___CHSRelevanceCacheBuf_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deepCopyUsingBufferBuilder:*(a1 + 40)];
  [v2 addObject:?];
}

void __60___CHSRelevanceCacheBuf_deepCopyUsingBufferBuilder_changes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [v3 setArchivedObjects:?];
  }

  if (*(a1 + 40))
  {
    [v3 setGroups:?];
  }
}

uint64_t __41___CHSRelevanceCacheBuf_verifyUTF8Fields__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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