@interface MADEmbeddingResult
@end

@implementation MADEmbeddingResult

void __68__MADEmbeddingResult_MLMultiArray__embeddingFromMultiArray_version___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end