@interface NSString(WBXMLAdditions)
+ (uint64_t)acceptsTopLevelLeaves;
+ (uint64_t)frontingBasicTypes;
+ (uint64_t)notifyOfUnknownTokens;
+ (uint64_t)parsingLeafNode;
+ (uint64_t)parsingWithSubItems;
- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:;
@end

@implementation NSString(WBXMLAdditions)

+ (uint64_t)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_61 == 1)
  {
    v1 = acceptsTopLevelLeaves___result_62;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_62 = v1;
    acceptsTopLevelLeaves___haveChecked_61 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_63 == 1)
  {
    v1 = parsingLeafNode___result_64;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_64 = v1;
    parsingLeafNode___haveChecked_63 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_65 == 1)
  {
    v1 = parsingWithSubItems___result_66;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_66 = v1;
    parsingWithSubItems___haveChecked_65 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_67 == 1)
  {
    v1 = frontingBasicTypes___result_68;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_68 = v1;
    frontingBasicTypes___haveChecked_67 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_69 == 1)
  {
    v1 = notifyOfUnknownTokens___result_70;
  }

  else
  {
    v1 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_70 = v1;
    notifyOfUnknownTokens___haveChecked_69 = 1;
  }

  return v1 & 1;
}

- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  currentByte = [v14 currentByte];
  [v14 advanceOffsetByAmount:1];
  v40 = v16;
  if ([v14 currentByte] != 3)
  {
    v25 = v15;
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected a string, but got no string prefix"];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/Utilities/WBXMLAdditions.m", 91, objc_msgSend(v14, "curOffset")];
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 134217984;
      curOffset = [v14 curOffset];
      _os_log_impl(&dword_24A0AC000, v31, v32, "Failure at index %lld:", buf, 0xCu);
    }

    v33 = DALoggingwithCategory();
    if (!os_log_type_enabled(v33, v32))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    curOffset = v29;
    goto LABEL_23;
  }

  [v14 advanceOffsetByAmount:1];
  v20 = (a8 - 2);
  v41 = 0;
  v21 = [v14 bufferForLength:v20 shouldFree:&v41];
  v22 = v21;
  v23 = 0;
  v24 = (v21 + v20 - 1);
  if (v24 > v21)
  {
    v23 = 0;
    while (!*v24)
    {
      ++v23;
      if (--v24 <= v21)
      {
        v23 = a8 - 3;
        break;
      }
    }
  }

  v25 = v15;
  v26 = v20 - v23;
  self = [self initWithBytes:v21 length:v20 - v23 encoding:4];
  if (!self)
  {
    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 67109120;
      LODWORD(curOffset) = v26;
      _os_log_impl(&dword_24A0AC000, v27, v28, "Dropping a string of length %d, as it isn't valid UTF-8.", buf, 8u);
    }

    self = [0 initWithString:&stru_285D39BD0];
  }

  if (v41 == 1)
  {
    free(v22);
  }

  [v14 advanceOffsetByAmount:v20];
  if ([v14 currentByte] == 1)
  {
    [v14 advanceOffsetByAmount:1];
    goto LABEL_25;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected END_TOKEN after the string for token %x, but had %x", currentByte, objc_msgSend(v14, "currentByte")];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/Utilities/WBXMLAdditions.m", 115, objc_msgSend(v14, "curOffset")];
  v34 = DALoggingwithCategory();
  v32 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v34, v32))
  {
    curOffset2 = [v14 curOffset];
    *buf = 134217984;
    curOffset = curOffset2;
    _os_log_impl(&dword_24A0AC000, v34, v32, "Failure at index %lld:", buf, 0xCu);
  }

  v33 = DALoggingwithCategory();
  if (os_log_type_enabled(v33, v32))
  {
    *buf = 138412290;
    curOffset = v29;
LABEL_23:
    _os_log_impl(&dword_24A0AC000, v33, v32, "failure reason was %@", buf, 0xCu);
  }

LABEL_24:

  [v14 setParseErrorReason:v30];
LABEL_25:
  parseErrorReason = [v14 parseErrorReason];

  if (parseErrorReason)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  v38 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end