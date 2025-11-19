@interface NSMutableString
@end

@implementation NSMutableString

void __53__NSMutableString_EncodedWord__sg_decodeEncodedWords__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"=\\?(?:[^\\s()<>@ options::\\/\\[\\]?.=]+?)\\?(?:[^\\s()<>@ error:{;:\\/\\[\\]?.=]+?)\\?(?:[^?\\s]+)\\?=", 0, &v7}];;
  v4 = v7;
  if (v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSString+EncodedWord.m" lineNumber:45 description:{@"error creating encodedWordRegex: %@", v4}];
  }

  v5 = sg_decodeEncodedWords__pasExprOnceResult;
  sg_decodeEncodedWords__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __53__NSMutableString_EncodedWord__sg_decodeEncodedWords__block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v2 = [v1 invertedSet];
  v3 = sg_decodeEncodedWords__pasExprOnceResult_18;
  sg_decodeEncodedWords__pasExprOnceResult_18 = v2;

  objc_autoreleasePoolPop(v0);
}

@end