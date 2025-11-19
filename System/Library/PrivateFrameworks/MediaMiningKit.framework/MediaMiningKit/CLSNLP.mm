@interface CLSNLP
+ (id)wordEmbeddingNeighborsWithDistanceForNgram:(id)a3 locale:(id)a4 limit:(unint64_t)a5 distance:(float)a6;
@end

@implementation CLSNLP

+ (id)wordEmbeddingNeighborsWithDistanceForNgram:(id)a3 locale:(id)a4 limit:(unint64_t)a5 distance:(float)a6
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 lowercaseString];
  v9 = *MEMORY[0x277D00380];
  v10 = *MEMORY[0x277D00370];
  v16[0] = *MEMORY[0x277D00378];
  v16[1] = v10;
  v17[0] = v9;
  v17[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = NLStringEmbeddingCreateWithOptions();
  v13 = NLStringEmbeddingCopyNeighborsWithDistances();
  v14 = [MEMORY[0x277CBEAC0] dictionary];

  if (v13)
  {

    v14 = v13;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v14;
}

@end