@interface NSData(WBXMLAdditions)
+ (uint64_t)acceptsTopLevelLeaves;
+ (uint64_t)frontingBasicTypes;
+ (uint64_t)notifyOfUnknownTokens;
+ (uint64_t)parsingLeafNode;
+ (uint64_t)parsingWithSubItems;
- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:;
- (uint64_t)initForLengthTokenOfLength:()WBXMLAdditions;
@end

@implementation NSData(WBXMLAdditions)

+ (uint64_t)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_85 == 1)
  {
    v1 = acceptsTopLevelLeaves___result_86;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_86 = v1;
    acceptsTopLevelLeaves___haveChecked_85 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_87 == 1)
  {
    v1 = parsingLeafNode___result_88;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_88 = v1;
    parsingLeafNode___haveChecked_87 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_89 == 1)
  {
    v1 = parsingWithSubItems___result_90;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_90 = v1;
    parsingWithSubItems___haveChecked_89 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_91 == 1)
  {
    v1 = frontingBasicTypes___result_92;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_92 = v1;
    frontingBasicTypes___haveChecked_91 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_93 == 1)
  {
    v1 = notifyOfUnknownTokens___result_94;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_94 = v1;
    notifyOfUnknownTokens___haveChecked_93 = 1;
  }

  return v1 & 1;
}

- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  currentByte = [v10 currentByte];
  [v10 advanceOffsetByAmount:1];
  if ([v10 currentByte] != 195)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected inline data, but got the wrong prefix"];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/Utilities/WBXMLAdditions.m", 151, objc_msgSend(v10, "curOffset")];
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 134217984;
      curOffset = [v10 curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v18, "Failure at index %lld:", buf, 0xCu);
    }

    v19 = DALoggingwithCategory();
    if (!os_log_type_enabled(v19, v18))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    curOffset = v15;
    goto LABEL_16;
  }

  [v10 advanceOffsetByAmount:1];
  LODWORD(v12) = a8 - 1;
  do
  {
    currentByte2 = [v10 currentByte];
    [v10 advanceOffsetByAmount:1];
    v12 = (v12 - 1);
  }

  while (currentByte2 < 0);
  v26 = 0;
  v14 = [v10 bufferForLength:v12 shouldFree:&v26];
  self = [self initWithBytes:v14 length:v12];
  if (v26 == 1)
  {
    free(v14);
  }

  [v10 advanceOffsetByAmount:v12];
  if ([v10 currentByte] == 1)
  {
    [v10 advanceOffsetByAmount:1];
    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected END_TOKEN after the data for token %x, but had %x", currentByte, objc_msgSend(v10, "currentByte")];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/Utilities/WBXMLAdditions.m", 171, objc_msgSend(v10, "curOffset")];
  v20 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v20, v18))
  {
    curOffset2 = [v10 curOffset];
    *buf = 134217984;
    curOffset = curOffset2;
    _os_log_impl(&dword_24A0AC000, v20, v18, "Failure at index %lld:", buf, 0xCu);
  }

  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v18))
  {
    *buf = 138412290;
    curOffset = v15;
LABEL_16:
    _os_log_impl(&dword_24A0AC000, v19, v18, "failure reason was %@", buf, 0xCu);
  }

LABEL_17:

  [v10 setParseErrorReason:v16];
LABEL_18:
  parseErrorReason = [v10 parseErrorReason];

  if (parseErrorReason)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (uint64_t)initForLengthTokenOfLength:()WBXMLAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = &v13;
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      *v4 = v6 & 0x7F | v5;
      v5 = 0x80;
      v4 -= v6 > 0x7F;
      v7 = v6 > 0x7F;
      v6 >>= 7;
    }

    while (v7);
  }

  v8 = [self initWithBytes:? length:?];
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 134218242;
    v15 = a3;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_24A0AC000, v9, v10, "initting for length of %lu, I ended up with %@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end