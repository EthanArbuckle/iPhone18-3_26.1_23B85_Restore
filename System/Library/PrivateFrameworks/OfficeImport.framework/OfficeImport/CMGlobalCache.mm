@interface CMGlobalCache
+ (id)borderStyleCache;
+ (id)borderWidthCache;
+ (id)colorPropertyCache;
+ (id)cssStylesheetCache;
+ (id)drawableElementCache;
+ (id)lengthPropertyCache;
+ (void)initGlobalCache;
+ (void)releaseGlobalCache;
@end

@implementation CMGlobalCache

+ (void)initGlobalCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary setObject:dictionary forKey:@"gColorPropertyCache"];

  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary2 setObject:dictionary2 forKey:@"gLengthPropertyCache"];

  currentThread3 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary3 = [currentThread3 threadDictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary3 setObject:dictionary3 forKey:@"gBorderStyleCache"];

  currentThread4 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary4 = [currentThread4 threadDictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary4 setObject:dictionary4 forKey:@"gBorderWidthCache"];

  currentThread5 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary5 = [currentThread5 threadDictionary];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary5 setObject:dictionary5 forKey:@"gCssStylesheetCache"];

  currentThread6 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary6 = [currentThread6 threadDictionary];
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  [threadDictionary6 setObject:dictionary6 forKey:@"gDrawableElementCache"];
}

+ (id)colorPropertyCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gColorPropertyCache"];

  return v4;
}

+ (id)drawableElementCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gDrawableElementCache"];

  return v4;
}

+ (id)lengthPropertyCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gLengthPropertyCache"];

  return v4;
}

+ (void)releaseGlobalCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setValue:0 forKey:@"gColorPropertyCache"];

  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setValue:0 forKey:@"gLengthPropertyCache"];

  currentThread3 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary3 = [currentThread3 threadDictionary];
  [threadDictionary3 setValue:0 forKey:@"gBorderStyleCache"];

  currentThread4 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary4 = [currentThread4 threadDictionary];
  [threadDictionary4 setValue:0 forKey:@"gBorderWidthCache"];

  currentThread5 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary5 = [currentThread5 threadDictionary];
  [threadDictionary5 setValue:0 forKey:@"gCssStylesheetCache"];

  currentThread6 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary6 = [currentThread6 threadDictionary];
  [threadDictionary6 setValue:0 forKey:@"gDrawableElementCache"];
}

+ (id)borderStyleCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gBorderStyleCache"];

  return v4;
}

+ (id)borderWidthCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gBorderWidthCache"];

  return v4;
}

+ (id)cssStylesheetCache
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"gCssStylesheetCache"];

  return v4;
}

@end