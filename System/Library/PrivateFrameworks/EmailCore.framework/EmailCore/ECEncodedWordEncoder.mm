@interface ECEncodedWordEncoder
- (BOOL)_getBytesWithoutSplittingComposedCharacters:(void *)characters targetQEncodedTextLength:(unint64_t)length usedLength:(unint64_t *)usedLength splitComposedCharacterSequence:(BOOL *)sequence usedQEncodedTextLength:(unint64_t *)textLength extraLength:(unint64_t *)extraLength extraQEncodedTextLength:(unint64_t *)encodedTextLength fromString:(id)self0 stringEncoding:(unint64_t)self1 range:(_NSRange)self2 remainingRange:(_NSRange *)self3;
- (ECEncodedWordEncoder)init;
- (ECEncodedWordEncoder)initWithString:(id)string stringEncoding:(unint64_t)encoding language:(id)language;
- (const)_findNextByteThatNeedsQEncodingBetweenStartByte:(const char *)byte endByte:(const char *)endByte;
- (id)description;
- (unint64_t)_bEncodeToHeaderData:(id)data currentLineLength:(unint64_t)length;
- (unint64_t)_lengthOfQEncodedTextForBytes:(const char *)bytes length:(unint64_t)length;
- (unint64_t)_qEncodeToHeaderData:(id)data currentLineLength:(unint64_t)length;
- (unint64_t)_writeEncodedWordPreambleToBuffer:(char *)buffer length:(unint64_t)length;
- (unint64_t)encodeToHeaderData:(id)data currentLineLength:(unint64_t)length;
- (unint64_t)minimumLengthOfEncodedWord;
- (void)_prepareForEncoding;
- (void)_writeQEncodedTextAndEndSequenceToHeaderBytes:(char *)bytes fromDecodedBytes:(const char *)decodedBytes length:(unint64_t)length;
@end

@implementation ECEncodedWordEncoder

- (ECEncodedWordEncoder)initWithString:(id)string stringEncoding:(unint64_t)encoding language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  if (![stringCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:417 description:{@"Invalid parameter not satisfying: %@", @"string.length"}];
  }

  if (([stringCopy canBeConvertedToEncoding:encoding] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"[string canBeConvertedToEncoding:stringEncoding]"}];
  }

  v19.receiver = self;
  v19.super_class = ECEncodedWordEncoder;
  v11 = [(ECEncodedWordEncoder *)&v19 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_stringEncoding = encoding;
    v14 = [languageCopy copy];
    language = v11->_language;
    v11->_language = v14;

    v11->_encodedWordEncoding = 0;
  }

  return v11;
}

- (ECEncodedWordEncoder)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:432 description:{@"Invalid initializer called, returning nil"}];

  return 0;
}

- (id)description
{
  stringEncoding = [(ECEncodedWordEncoder *)self stringEncoding];
  string = [(ECEncodedWordEncoder *)self string];
  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ECEncodedWordEncoder;
  v6 = [(ECEncodedWordEncoder *)&v11 description];
  v7 = ECConvertEncodingToCharacterSetName(stringEncoding);
  language = [(ECEncodedWordEncoder *)self language];
  v9 = [v5 stringWithFormat:@"%@ %lu (%@*%@) <%@: %p>", v6, stringEncoding, v7, language, objc_opt_class(), string];

  return v9;
}

- (unint64_t)minimumLengthOfEncodedWord
{
  [(ECEncodedWordEncoder *)self _prepareForEncoding];

  return [(ECEncodedWordEncoder *)self singleEncodedWordLength];
}

- (void)_prepareForEncoding
{
  if (![(ECEncodedWordEncoder *)self encodedWordEncoding])
  {
    stringEncoding = [(ECEncodedWordEncoder *)self stringEncoding];
    string = [(ECEncodedWordEncoder *)self string];
    v5 = [string lengthOfBytesUsingEncoding:stringEncoding];
    if (v5 == 3 * (v5 / 3))
    {
      v6 = 4 * (v5 / 3);
    }

    else
    {
      v6 = 4 * (v5 / 3) + 4;
    }

    if (ECEncodingIsASCIISuperset(stringEncoding))
    {
      v7 = [string dataUsingEncoding:stringEncoding];
      v8 = -[ECEncodedWordEncoder _lengthOfQEncodedTextForBytes:length:](self, "_lengthOfQEncodedTextForBytes:length:", [v7 bytes], objc_msgSend(v7, "length"));
      v9 = v8 > v6;
      if (v8 < v6)
      {
        v6 = v8;
      }

      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (v9)
      {
        v11 = -70;
      }

      else
      {
        v11 = -73;
      }
    }

    else
    {
      v7 = 0;
      v11 = -70;
      v10 = 1;
    }

    [(ECEncodedWordEncoder *)self setEncodedWordEncoding:v10];
    v12 = ECConvertEncodingToCharacterSetName(stringEncoding);
    v13 = [v12 lengthOfBytesUsingEncoding:1];
    if (!v13)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:489 description:{@"Character set %@ is not encodable in ASCII", v12}];
    }

    [(ECEncodedWordEncoder *)self setCharacterSet:v12];
    language = [(ECEncodedWordEncoder *)self language];
    v15 = language;
    if (language)
    {
      v16 = [language lengthOfBytesUsingEncoding:1];
      if (!v16)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:496 description:{@"Language %@ is not encodable in ASCII", v15}];
      }

      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = v13 + v17 + 5;
    if ((v11 + v18) <= 0xFFFFFFFFFFFFFFB3)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:507 description:{@"Impossible to make an encoded-word with character set %@ and language %@", v12, v15}];
    }

    if (v6 + v18 + 2 <= 0x4B)
    {
      [(ECEncodedWordEncoder *)self setDecodedText:v7];
    }

    [(ECEncodedWordEncoder *)self setSingleEncodedWordLength:v6 + v18 + 2];
  }
}

- (unint64_t)encodeToHeaderData:(id)data currentLineLength:(unint64_t)length
{
  dataCopy = data;
  [(ECEncodedWordEncoder *)self _prepareForEncoding];
  encodedWordEncoding = [(ECEncodedWordEncoder *)self encodedWordEncoding];
  if (encodedWordEncoding == 1)
  {
    v9 = [(ECEncodedWordEncoder *)self _bEncodeToHeaderData:dataCopy currentLineLength:length];
  }

  else
  {
    if (encodedWordEncoding != 2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:533 description:@"Could not determine encoded-word encoding"];

      goto LABEL_7;
    }

    v9 = [(ECEncodedWordEncoder *)self _qEncodeToHeaderData:dataCopy currentLineLength:length];
  }

  length = v9;
LABEL_7:

  return length;
}

- (unint64_t)_writeEncodedWordPreambleToBuffer:(char *)buffer length:(unint64_t)length
{
  *buffer = 16189;
  v8 = buffer + 2;
  characterSet = [(ECEncodedWordEncoder *)self characterSet];
  v21 = 0;
  v10 = length - 2;
  [characterSet getBytes:v8 maxLength:length - 2 usedLength:&v21 encoding:1 options:2 range:0 remainingRange:{objc_msgSend(characterSet, "length"), 0}];
  v11 = v21;
  language = [(ECEncodedWordEncoder *)self language];
  v13 = language;
  v14 = &v8[v11];
  if (language)
  {
    *v14 = 42;
    v15 = v14 + 1;
    v20 = 0;
    [language getBytes:v15 maxLength:v10 + ~v11 usedLength:&v20 encoding:1 options:2 range:0 remainingRange:{objc_msgSend(language, "length"), 0}];
    v14 = &v15[v20];
  }

  *v14 = 63;
  encodedWordEncoding = [(ECEncodedWordEncoder *)self encodedWordEncoding];
  if (encodedWordEncoding == 1)
  {
    v17 = 66;
  }

  else
  {
    if (encodedWordEncoding != 2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:588 description:@"Could not determine encoded-word encoding"];

      goto LABEL_9;
    }

    v17 = 81;
  }

  v14[1] = v17;
LABEL_9:
  v14[2] = 63;

  return v14 - buffer + 3;
}

- (unint64_t)_bEncodeToHeaderData:(id)data currentLineLength:(unint64_t)length
{
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = 76 - length;
  if (76 - length >= 0x4B)
  {
    v7 = 75;
  }

  if (length >= 0x4C)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  singleEncodedWordLength = [(ECEncodedWordEncoder *)self singleEncodedWordLength];
  if (v8 >= singleEncodedWordLength)
  {
    v26 = [dataCopy length];
    [dataCopy increaseLengthBy:singleEncodedWordLength];
    v27 = [dataCopy mutableBytes] + v26;
    v28 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:v27 length:singleEncodedWordLength];
    decodedText = [(ECEncodedWordEncoder *)self decodedText];
    if (!decodedText)
    {
      string = [(ECEncodedWordEncoder *)self string];
      selfCopy = self;
      v32 = string;
      decodedText = [string dataUsingEncoding:{-[ECEncodedWordEncoder stringEncoding](selfCopy, "stringEncoding")}];
    }

    v33 = [decodedText base64EncodedDataWithOptions:0];
    v34 = [v33 length];
    v35 = v27 + v28;
    [v33 getBytes:v35 length:v34];
    *(v35 + v34) = 15679;
    v36 = singleEncodedWordLength + length;

    goto LABEL_36;
  }

  memset(__src, 0, 75);
  v10 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:__src length:75];
  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3 * ((73 - v10) >> 2)];
  string2 = [(ECEncodedWordEncoder *)self string];
  selfCopy2 = self;
  stringEncoding = [(ECEncodedWordEncoder *)self stringEncoding];
  v13 = [string2 length];
  *&v63 = 0;
  *(&v63 + 1) = v13;
  if (v8 >= v10 + 6)
  {
    v57 = (v8 - v10 - 2) >> 2;
    [v11 setLength:3 * v57];
    v62 = 0;
    v14 = v11;
    mutableBytes = [v11 mutableBytes];
    v61 = xmmword_22D0EE210;
    v16 = v63;
    v17 = string2;
    if ([v17 getBytes:mutableBytes maxLength:3 * v57 usedLength:&v62 encoding:stringEncoding options:2 range:v63 remainingRange:&v61])
    {
      if (!*(&v61 + 1))
      {
        goto LABEL_14;
      }

      v18 = [v17 rangeOfComposedCharacterSequenceAtIndex:v61];
      if (v18 >= v61)
      {
        goto LABEL_14;
      }

      if (v18 > v16)
      {
        v64 = xmmword_22D0EE210;
        if ([v17 getBytes:mutableBytes maxLength:3 * v57 usedLength:&v62 encoding:stringEncoding options:2 range:v16 remainingRange:{v18 - v16, &v64}])
        {
          v19 = v61 - v64 + *(&v61 + 1);
          *&v61 = v64;
          *(&v61 + 1) = v19;
LABEL_14:

          [v11 setLength:v62];
          currentHandler2 = [v11 base64EncodedDataWithOptions:0];
          v21 = [currentHandler2 length];
          v22 = [dataCopy length];
          [dataCopy increaseLengthBy:v10 + v21 + 2];
          v23 = dataCopy;
          v24 = ([dataCopy mutableBytes] + v22);
          memcpy(v24, __src, v10);
          v25 = &v24[v10];
          [currentHandler2 getBytes:v25 length:v21];
          *&v25[v21] = 15679;
          v63 = v61;
          goto LABEL_15;
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL getBytesFromStringWithoutSplittingComposedCharacters(NSString * _Nonnull __strong, void * _Nonnull, NSUInteger, NSUInteger * _Nonnull, NSStringEncoding, NSRange, NSRangePointer _Nonnull, BOOL * _Nonnull)"}];
        [currentHandler handleFailureInFunction:v38 file:@"ECEncodedWord.m" lineNumber:745 description:@"Failed to get bytes from string"];

        v39 = v61 - v64 + *(&v61 + 1);
        *&v61 = v64;
        *(&v61 + 1) = v39;
      }
    }

    if (v57 < (73 - v10) >> 2)
    {
      goto LABEL_21;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"ECEncodedWord.m" lineNumber:678 description:@"Failed to get bytes from string"];
LABEL_15:

LABEL_21:
    v13 = *(&v63 + 1);
  }

  if (v13)
  {
    while (1)
    {
      [v11 setLength:3 * ((73 - v10) >> 2)];
      *&v61 = 0;
      v40 = v11;
      mutableBytes2 = [v11 mutableBytes];
      v42 = v63;
      currentHandler3 = string2;
      if (![currentHandler3 getBytes:mutableBytes2 maxLength:3 * ((73 - v10) >> 2) usedLength:&v61 encoding:stringEncoding options:2 range:v42 remainingRange:&v63])
      {
        goto LABEL_31;
      }

      if (!*(&v63 + 1))
      {
        goto LABEL_32;
      }

      v44 = [currentHandler3 rangeOfComposedCharacterSequenceAtIndex:v63];
      if (v44 >= v63)
      {
        goto LABEL_32;
      }

      if (v44 <= v42)
      {

        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:selfCopy2 file:@"ECEncodedWord.m" lineNumber:692 description:@"Can't make encoded-word without splitting a composed character sequence"];
      }

      else
      {
        v64 = xmmword_22D0EE210;
        if (([currentHandler3 getBytes:mutableBytes2 maxLength:3 * ((73 - v10) >> 2) usedLength:&v61 encoding:stringEncoding options:2 range:v42 remainingRange:{v44 - v42, &v64}] & 1) == 0)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL getBytesFromStringWithoutSplittingComposedCharacters(NSString * _Nonnull __strong, void * _Nonnull, NSUInteger, NSUInteger * _Nonnull, NSStringEncoding, NSRange, NSRangePointer _Nonnull, BOOL * _Nonnull)"}];
          [currentHandler4 handleFailureInFunction:v47 file:@"ECEncodedWord.m" lineNumber:745 description:@"Failed to get bytes from string"];

          v48 = v63 - v64 + *(&v63 + 1);
          *&v63 = v64;
          *(&v63 + 1) = v48;
LABEL_31:

          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:selfCopy2 file:@"ECEncodedWord.m" lineNumber:691 description:@"Failed to get bytes from string"];
          goto LABEL_32;
        }

        v45 = v63 - v64 + *(&v63 + 1);
        *&v63 = v64;
        *(&v63 + 1) = v45;
      }

LABEL_32:

      [v11 setLength:v61];
      v49 = [v11 base64EncodedDataWithOptions:0];
      v50 = [v49 length];
      v51 = [dataCopy length];
      [dataCopy increaseLengthBy:v10 + 4 + v50];
      v52 = dataCopy;
      v53 = ([dataCopy mutableBytes] + v51);
      *v53++ = 8202;
      memcpy(v53, __src, v10);
      v54 = v53 + v10;
      [v49 getBytes:v54 length:v50];
      *&v54[v50] = 15679;

      if (!*(&v63 + 1))
      {
        v36 = v10 + v50 + 3;
        goto LABEL_35;
      }
    }
  }

  v36 = 0;
LABEL_35:

LABEL_36:
  v55 = *MEMORY[0x277D85DE8];
  return v36;
}

- (unint64_t)_qEncodeToHeaderData:(id)data currentLineLength:(unint64_t)length
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = 76 - length;
  if (76 - length >= 0x4B)
  {
    v8 = 75;
  }

  if (length >= 0x4C)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  singleEncodedWordLength = [(ECEncodedWordEncoder *)self singleEncodedWordLength];
  if (v9 >= singleEncodedWordLength)
  {
    v22 = [dataCopy length];
    [dataCopy increaseLengthBy:singleEncodedWordLength];
    v23 = [dataCopy mutableBytes] + v22;
    v24 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:v23 length:singleEncodedWordLength];
    decodedText = [(ECEncodedWordEncoder *)self decodedText];
    -[ECEncodedWordEncoder _writeQEncodedTextAndEndSequenceToHeaderBytes:fromDecodedBytes:length:](self, "_writeQEncodedTextAndEndSequenceToHeaderBytes:fromDecodedBytes:length:", v23 + v24, [decodedText bytes], objc_msgSend(decodedText, "length"));
    v26 = singleEncodedWordLength + length;
  }

  else
  {
    v43 = a2;
    memset(__src, 0, 75);
    v11 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:__src length:75];
    v44 = &v42;
    v12 = 73 - v11;
    v13 = MEMORY[0x28223BE20]();
    v15 = &v42 - v14;
    if (v13 != 73)
    {
      memset(&v42 - v14, 170, v12);
    }

    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    string = [(ECEncodedWordEncoder *)self string];
    stringEncoding = [(ECEncodedWordEncoder *)self stringEncoding];
    v17 = [string length];
    *&v49 = 0;
    *(&v49 + 1) = v17;
    v45 = v11 + 3;
    if (v9 >= v11 + 3)
    {
      v18 = v9 - v11 - 2;
      v48 = xmmword_22D0EE210;
      v47 = 0;
      if (![(ECEncodedWordEncoder *)self _getBytesWithoutSplittingComposedCharacters:v15 targetQEncodedTextLength:v18 usedLength:&v53 splitComposedCharacterSequence:&v47 usedQEncodedTextLength:&v51 extraLength:&v52 extraQEncodedTextLength:&v50 fromString:string stringEncoding:stringEncoding range:0 remainingRange:v17, &v48]|| (v47 & 1) != 0 || v51 > v18)
      {
        if (v18 >= v12)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:830 description:@"Failed to get bytes from string"];
        }

        v52 = 0;
        v50 = 0;
      }

      else
      {
        v19 = [dataCopy length];
        [dataCopy increaseLengthBy:v11 + v51 + 2];
        v20 = dataCopy;
        v21 = ([dataCopy mutableBytes] + v19);
        memcpy(v21, __src, v11);
        [(ECEncodedWordEncoder *)self _writeQEncodedTextAndEndSequenceToHeaderBytes:&v21[v11] fromDecodedBytes:v15 length:v53];
        v49 = v48;
        if (v52)
        {
          memmove(v15, &v15[v53], v52);
        }
      }

      v17 = *(&v49 + 1);
    }

    if (v17)
    {
      do
      {
        LOBYTE(v48) = 0;
        if (![(ECEncodedWordEncoder *)self _getBytesWithoutSplittingComposedCharacters:v15 targetQEncodedTextLength:v12 usedLength:&v53 splitComposedCharacterSequence:&v48 usedQEncodedTextLength:&v51 extraLength:&v52 extraQEncodedTextLength:&v50 fromString:string stringEncoding:stringEncoding range:v49 remainingRange:v17, &v49])
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:843 description:@"Failed to get bytes from string"];
        }

        if (v48 == 1)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:844 description:@"Can't make encoded-word without splitting a composed character sequence"];
        }

        if (v51 > v12)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:845 description:@"Can't make encoded-word without splitting a composed character sequence"];
        }

        v27 = [dataCopy length];
        [dataCopy increaseLengthBy:v11 + 4 + v51];
        v28 = v51;
        v29 = dataCopy;
        v30 = ([dataCopy mutableBytes] + v27);
        *v30++ = 8202;
        memcpy(v30, __src, v11);
        [(ECEncodedWordEncoder *)self _writeQEncodedTextAndEndSequenceToHeaderBytes:v30 + v11 fromDecodedBytes:v15 length:v53];
        if (v52)
        {
          memmove(v15, &v15[v53], v52);
        }

        v17 = *(&v49 + 1);
      }

      while (*(&v49 + 1));
      v26 = v45 + v28;
    }

    else
    {
      v26 = 0;
    }

    if (v52)
    {
      if (v50 > v12)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler5 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:868 description:@"Can't make encoded-word without splitting a composed character sequence"];
      }

      v34 = [dataCopy length];
      [dataCopy increaseLengthBy:v11 + v50 + 4];
      v35 = v50;
      v36 = dataCopy;
      v37 = ([dataCopy mutableBytes] + v34);
      *v37++ = 8202;
      memcpy(v37, __src, v11);
      [(ECEncodedWordEncoder *)self _writeQEncodedTextAndEndSequenceToHeaderBytes:v37 + v11 fromDecodedBytes:v15 length:v52];
      v26 = v45 + v35;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)_getBytesWithoutSplittingComposedCharacters:(void *)characters targetQEncodedTextLength:(unint64_t)length usedLength:(unint64_t *)usedLength splitComposedCharacterSequence:(BOOL *)sequence usedQEncodedTextLength:(unint64_t *)textLength extraLength:(unint64_t *)extraLength extraQEncodedTextLength:(unint64_t *)encodedTextLength fromString:(id)self0 stringEncoding:(unint64_t)self1 range:(_NSRange)self2 remainingRange:(_NSRange *)self3
{
  stringCopy = string;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = *extraLength;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = *encodedTextLength;
  *extraLength = 0;
  *encodedTextLength = 0;
  remainingRange->location = range.location + range.length;
  remainingRange->length = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __241__ECEncodedWordEncoder__getBytesWithoutSplittingComposedCharacters_targetQEncodedTextLength_usedLength_splitComposedCharacterSequence_usedQEncodedTextLength_extraLength_extraQEncodedTextLength_fromString_stringEncoding_range_remainingRange___block_invoke;
  v24[3] = &unk_27874BA08;
  lengthCopy = length;
  encodingCopy = encoding;
  v27 = &v46;
  v28 = &v38;
  v25 = stringCopy;
  selfCopy = self;
  v29 = &v42;
  charactersCopy = characters;
  sequenceCopy = sequence;
  extraLengthCopy = extraLength;
  encodedTextLengthCopy = encodedTextLength;
  remainingRangeCopy = remainingRange;
  rangeCopy = range;
  v19 = stringCopy;
  [v19 enumerateSubstringsInRange:range.location options:range.length usingBlock:{514, v24}];
  *usedLength = v47[3];
  *textLength = v43[3];
  v20 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  return v20;
}

uint64_t __241__ECEncodedWordEncoder__getBytesWithoutSplittingComposedCharacters_targetQEncodedTextLength_usedLength_splitComposedCharacterSequence_usedQEncodedTextLength_extraLength_extraQEncodedTextLength_fromString_stringEncoding_range_remainingRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a3;
  v11 = *(*(*(a1 + 48) + 8) + 24);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80) - v11;
  v23 = 0;
  v22 = xmmword_22D0EE210;
  result = [*(a1 + 32) getBytes:v12 + v11 maxLength:v13 usedLength:&v23 encoding:*(a1 + 88) options:0 range:a3 remainingRange:{a4, &v22}];
  if (!result || (v15 = *(&v22 + 1)) != 0 && *(*(*(a1 + 48) + 8) + 24))
  {
    *a7 = 1;
LABEL_5:
    v16 = *(a1 + 120);
    v17 = *(a1 + 128) - v9 + *(a1 + 136);
    *v16 = v9;
    v16[1] = v17;
    return result;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  **(a1 + 96) = v15 != 0;
  result = [*(a1 + 40) _lengthOfQEncodedTextForBytes:v12 + v11 length:v23];
  v18 = *(*(*(a1 + 64) + 8) + 24) + result;
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 24);
  if (v18 > *(a1 + 80) && v20)
  {
    v21 = *(a1 + 112);
    **(a1 + 104) = v23;
    *v21 = result;
  }

  else
  {
    *(v19 + 24) = v20 + v23;
    *(*(*(a1 + 64) + 8) + 24) = v18;
  }

  if (v18 >= *(a1 + 80) || *(&v22 + 1))
  {
    *a7 = 1;
    v9 += a4;
    goto LABEL_5;
  }

  return result;
}

- (unint64_t)_lengthOfQEncodedTextForBytes:(const char *)bytes length:(unint64_t)length
{
  v7 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:bytes endByte:&bytes[length]];
  if (!v7)
  {
    return length;
  }

  v8 = v7;
  lengthCopy = length;
  do
  {
    v11 = *v8;
    v10 = v8 + 1;
    if (v11 != 32)
    {
      lengthCopy += 2;
    }

    v8 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:v10 endByte:&bytes[length]];
  }

  while (v8);
  return lengthCopy;
}

- (void)_writeQEncodedTextAndEndSequenceToHeaderBytes:(char *)bytes fromDecodedBytes:(const char *)decodedBytes length:(unint64_t)length
{
  decodedBytesCopy = decodedBytes;
  v15 = *MEMORY[0x277D85DE8];
  v8 = &decodedBytes[length];
  0x4645444342413938 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:decodedBytes endByte:&decodedBytes[length], 0x3736353433323130, 0x4645444342413938];
  if (0x4645444342413938)
  {
    v10 = 0x4645444342413938;
    do
    {
      if (decodedBytesCopy < v10)
      {
        memcpy(bytes, decodedBytesCopy, v10 - decodedBytesCopy);
        bytes += v10 - decodedBytesCopy;
      }

      if (*v10 == 32)
      {
        *bytes = 95;
        v11 = 1;
      }

      else
      {
        *bytes = 61;
        bytes[1] = *(&v14 | (*v10 >> 4));
        bytes[2] = *(&v14 | *v10 & 0xF);
        v11 = 3;
      }

      bytes += v11;
      decodedBytesCopy = v10 + 1;
      v10 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:v10 + 1 endByte:v8];
    }

    while (v10);
  }

  if (decodedBytesCopy < v8)
  {
    v12 = v8 - decodedBytesCopy;
    memcpy(bytes, decodedBytesCopy, v12);
    bytes += v12;
  }

  *bytes = 15679;
  v13 = *MEMORY[0x277D85DE8];
}

- (const)_findNextByteThatNeedsQEncodingBetweenStartByte:(const char *)byte endByte:(const char *)endByte
{
  if (_findNextByteThatNeedsQEncodingBetweenStartByte_endByte__onceToken != -1)
  {
    [ECEncodedWordEncoder _findNextByteThatNeedsQEncodingBetweenStartByte:endByte:];
  }

  if (byte >= endByte)
  {
    return 0;
  }

  while (((*(&_findNextByteThatNeedsQEncodingBetweenStartByte_endByte__bytesThatNeedEncoding + (*byte >> 3)) >> (*byte & 7)) & 1) == 0)
  {
    if (++byte == endByte)
    {
      return 0;
    }
  }

  return byte;
}

void __80__ECEncodedWordEncoder__findNextByteThatNeedsQEncodingBetweenStartByte_endByte___block_invoke()
{
  _findNextByteThatNeedsQEncodingBetweenStartByte_endByte__bytesThatNeedEncoding = -1;
  byte_27D9F8B64 |= 0xFDu;
  byte_27D9F8B65 |= 0x53u;
  byte_27D9F8B67 |= 0xFCu;
  byte_27D9F8B68 |= 1u;
  byte_27D9F8B6B |= 0xF8u;
  byte_27D9F8B6C |= 1u;
  byte_27D9F8B6F |= 0xF8u;
  qword_27D9F8B70 = -1;
  unk_27D9F8B78 = -1;
}

@end