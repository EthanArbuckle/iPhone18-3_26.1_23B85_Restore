@interface CLSNLP
+ (id)wordEmbeddingNeighborsWithDistanceForNgram:(id)ngram locale:(id)locale limit:(unint64_t)limit distance:(float)distance;
@end

@implementation CLSNLP

+ (id)wordEmbeddingNeighborsWithDistanceForNgram:(id)ngram locale:(id)locale limit:(unint64_t)limit distance:(float)distance
{
  v17[2] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  lowercaseString = [ngram lowercaseString];
  v9 = *MEMORY[0x277D00380];
  v10 = *MEMORY[0x277D00370];
  v16[0] = *MEMORY[0x277D00378];
  v16[1] = v10;
  v17[0] = v9;
  v17[1] = localeCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = NLStringEmbeddingCreateWithOptions();
  v13 = NLStringEmbeddingCopyNeighborsWithDistances();
  dictionary = [MEMORY[0x277CBEAC0] dictionary];

  if (v13)
  {

    dictionary = v13;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return dictionary;
}

@end