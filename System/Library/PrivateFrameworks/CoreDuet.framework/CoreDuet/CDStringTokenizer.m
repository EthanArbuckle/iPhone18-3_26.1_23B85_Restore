@interface CDStringTokenizer
@end

@implementation CDStringTokenizer

void __40___CDStringTokenizer_isEnglishStopWord___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v3 = [CFSTR(""a able];
  v1 = [v0 setWithArray:v3];
  v2 = isEnglishStopWord___stopWordSet;
  isEnglishStopWord___stopWordSet = v1;
}

@end