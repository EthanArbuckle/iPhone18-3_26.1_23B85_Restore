@interface ECEncodedWordEncoder
- (BOOL)_getBytesWithoutSplittingComposedCharacters:(void *)a3 targetQEncodedTextLength:(unint64_t)a4 usedLength:(unint64_t *)a5 splitComposedCharacterSequence:(BOOL *)a6 usedQEncodedTextLength:(unint64_t *)a7 extraLength:(unint64_t *)a8 extraQEncodedTextLength:(unint64_t *)a9 fromString:(id)a10 stringEncoding:(unint64_t)a11 range:(_NSRange)a12 remainingRange:(_NSRange *)a13;
- (ECEncodedWordEncoder)init;
- (ECEncodedWordEncoder)initWithString:(id)a3 stringEncoding:(unint64_t)a4 language:(id)a5;
- (const)_findNextByteThatNeedsQEncodingBetweenStartByte:(const char *)a3 endByte:(const char *)a4;
- (id)description;
- (unint64_t)_bEncodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4;
- (unint64_t)_lengthOfQEncodedTextForBytes:(const char *)a3 length:(unint64_t)a4;
- (unint64_t)_qEncodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4;
- (unint64_t)_writeEncodedWordPreambleToBuffer:(char *)a3 length:(unint64_t)a4;
- (unint64_t)encodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4;
- (unint64_t)minimumLengthOfEncodedWord;
- (void)_prepareForEncoding;
- (void)_writeQEncodedTextAndEndSequenceToHeaderBytes:(char *)a3 fromDecodedBytes:(const char *)a4 length:(unint64_t)a5;
@end

@implementation ECEncodedWordEncoder

- (ECEncodedWordEncoder)initWithString:(id)a3 stringEncoding:(unint64_t)a4 language:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (![v9 length])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:417 description:{@"Invalid parameter not satisfying: %@", @"string.length"}];
  }

  if (([v9 canBeConvertedToEncoding:a4] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"[string canBeConvertedToEncoding:stringEncoding]"}];
  }

  v19.receiver = self;
  v19.super_class = ECEncodedWordEncoder;
  v11 = [(ECEncodedWordEncoder *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_stringEncoding = a4;
    v14 = [v10 copy];
    language = v11->_language;
    v11->_language = v14;

    v11->_encodedWordEncoding = 0;
  }

  return v11;
}

- (ECEncodedWordEncoder)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:432 description:{@"Invalid initializer called, returning nil"}];

  return 0;
}

- (id)description
{
  v3 = [(ECEncodedWordEncoder *)self stringEncoding];
  v4 = [(ECEncodedWordEncoder *)self string];
  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ECEncodedWordEncoder;
  v6 = [(ECEncodedWordEncoder *)&v11 description];
  v7 = ECConvertEncodingToCharacterSetName(v3);
  v8 = [(ECEncodedWordEncoder *)self language];
  v9 = [v5 stringWithFormat:@"%@ %lu (%@*%@) <%@: %p>", v6, v3, v7, v8, objc_opt_class(), v4];

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
    v4 = [(ECEncodedWordEncoder *)self stringEncoding];
    v22 = [(ECEncodedWordEncoder *)self string];
    v5 = [v22 lengthOfBytesUsingEncoding:v4];
    if (v5 == 3 * (v5 / 3))
    {
      v6 = 4 * (v5 / 3);
    }

    else
    {
      v6 = 4 * (v5 / 3) + 4;
    }

    if (ECEncodingIsASCIISuperset(v4))
    {
      v7 = [v22 dataUsingEncoding:v4];
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
    v12 = ECConvertEncodingToCharacterSetName(v4);
    v13 = [v12 lengthOfBytesUsingEncoding:1];
    if (!v13)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:489 description:{@"Character set %@ is not encodable in ASCII", v12}];
    }

    [(ECEncodedWordEncoder *)self setCharacterSet:v12];
    v14 = [(ECEncodedWordEncoder *)self language];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 lengthOfBytesUsingEncoding:1];
      if (!v16)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:496 description:{@"Language %@ is not encodable in ASCII", v15}];
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
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:507 description:{@"Impossible to make an encoded-word with character set %@ and language %@", v12, v15}];
    }

    if (v6 + v18 + 2 <= 0x4B)
    {
      [(ECEncodedWordEncoder *)self setDecodedText:v7];
    }

    [(ECEncodedWordEncoder *)self setSingleEncodedWordLength:v6 + v18 + 2];
  }
}

- (unint64_t)encodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4
{
  v7 = a3;
  [(ECEncodedWordEncoder *)self _prepareForEncoding];
  v8 = [(ECEncodedWordEncoder *)self encodedWordEncoding];
  if (v8 == 1)
  {
    v9 = [(ECEncodedWordEncoder *)self _bEncodeToHeaderData:v7 currentLineLength:a4];
  }

  else
  {
    if (v8 != 2)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:533 description:@"Could not determine encoded-word encoding"];

      goto LABEL_7;
    }

    v9 = [(ECEncodedWordEncoder *)self _qEncodeToHeaderData:v7 currentLineLength:a4];
  }

  a4 = v9;
LABEL_7:

  return a4;
}

- (unint64_t)_writeEncodedWordPreambleToBuffer:(char *)a3 length:(unint64_t)a4
{
  *a3 = 16189;
  v8 = a3 + 2;
  v9 = [(ECEncodedWordEncoder *)self characterSet];
  v21 = 0;
  v10 = a4 - 2;
  [v9 getBytes:v8 maxLength:a4 - 2 usedLength:&v21 encoding:1 options:2 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}];
  v11 = v21;
  v12 = [(ECEncodedWordEncoder *)self language];
  v13 = v12;
  v14 = &v8[v11];
  if (v12)
  {
    *v14 = 42;
    v15 = v14 + 1;
    v20 = 0;
    [v12 getBytes:v15 maxLength:v10 + ~v11 usedLength:&v20 encoding:1 options:2 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
    v14 = &v15[v20];
  }

  *v14 = 63;
  v16 = [(ECEncodedWordEncoder *)self encodedWordEncoding];
  if (v16 == 1)
  {
    v17 = 66;
  }

  else
  {
    if (v16 != 2)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:588 description:@"Could not determine encoded-word encoding"];

      goto LABEL_9;
    }

    v17 = 81;
  }

  v14[1] = v17;
LABEL_9:
  v14[2] = 63;

  return v14 - a3 + 3;
}

- (unint64_t)_bEncodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = 76 - a4;
  if (76 - a4 >= 0x4B)
  {
    v7 = 75;
  }

  if (a4 >= 0x4C)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(ECEncodedWordEncoder *)self singleEncodedWordLength];
  if (v8 >= v9)
  {
    v26 = [v6 length];
    [v6 increaseLengthBy:v9];
    v27 = [v6 mutableBytes] + v26;
    v28 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:v27 length:v9];
    v29 = [(ECEncodedWordEncoder *)self decodedText];
    if (!v29)
    {
      v30 = [(ECEncodedWordEncoder *)self string];
      v31 = self;
      v32 = v30;
      v29 = [v30 dataUsingEncoding:{-[ECEncodedWordEncoder stringEncoding](v31, "stringEncoding")}];
    }

    v33 = [v29 base64EncodedDataWithOptions:0];
    v34 = [v33 length];
    v35 = v27 + v28;
    [v33 getBytes:v35 length:v34];
    *(v35 + v34) = 15679;
    v36 = v9 + a4;

    goto LABEL_36;
  }

  memset(__src, 0, 75);
  v10 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:__src length:75];
  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3 * ((73 - v10) >> 2)];
  v60 = [(ECEncodedWordEncoder *)self string];
  v58 = self;
  v12 = [(ECEncodedWordEncoder *)self stringEncoding];
  v13 = [v60 length];
  *&v63 = 0;
  *(&v63 + 1) = v13;
  if (v8 >= v10 + 6)
  {
    v57 = (v8 - v10 - 2) >> 2;
    [v11 setLength:3 * v57];
    v62 = 0;
    v14 = v11;
    v15 = [v11 mutableBytes];
    v61 = xmmword_22D0EE210;
    v16 = v63;
    v17 = v60;
    if ([v17 getBytes:v15 maxLength:3 * v57 usedLength:&v62 encoding:v12 options:2 range:v63 remainingRange:&v61])
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
        if ([v17 getBytes:v15 maxLength:3 * v57 usedLength:&v62 encoding:v12 options:2 range:v16 remainingRange:{v18 - v16, &v64}])
        {
          v19 = v61 - v64 + *(&v61 + 1);
          *&v61 = v64;
          *(&v61 + 1) = v19;
LABEL_14:

          [v11 setLength:v62];
          v20 = [v11 base64EncodedDataWithOptions:0];
          v21 = [v20 length];
          v22 = [v6 length];
          [v6 increaseLengthBy:v10 + v21 + 2];
          v23 = v6;
          v24 = ([v6 mutableBytes] + v22);
          memcpy(v24, __src, v10);
          v25 = &v24[v10];
          [v20 getBytes:v25 length:v21];
          *&v25[v21] = 15679;
          v63 = v61;
          goto LABEL_15;
        }

        v37 = [MEMORY[0x277CCA890] currentHandler];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL getBytesFromStringWithoutSplittingComposedCharacters(NSString * _Nonnull __strong, void * _Nonnull, NSUInteger, NSUInteger * _Nonnull, NSStringEncoding, NSRange, NSRangePointer _Nonnull, BOOL * _Nonnull)"}];
        [v37 handleFailureInFunction:v38 file:@"ECEncodedWord.m" lineNumber:745 description:@"Failed to get bytes from string"];

        v39 = v61 - v64 + *(&v61 + 1);
        *&v61 = v64;
        *(&v61 + 1) = v39;
      }
    }

    if (v57 < (73 - v10) >> 2)
    {
      goto LABEL_21;
    }

    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:v58 file:@"ECEncodedWord.m" lineNumber:678 description:@"Failed to get bytes from string"];
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
      v41 = [v11 mutableBytes];
      v42 = v63;
      v43 = v60;
      if (![v43 getBytes:v41 maxLength:3 * ((73 - v10) >> 2) usedLength:&v61 encoding:v12 options:2 range:v42 remainingRange:&v63])
      {
        goto LABEL_31;
      }

      if (!*(&v63 + 1))
      {
        goto LABEL_32;
      }

      v44 = [v43 rangeOfComposedCharacterSequenceAtIndex:v63];
      if (v44 >= v63)
      {
        goto LABEL_32;
      }

      if (v44 <= v42)
      {

        v43 = [MEMORY[0x277CCA890] currentHandler];
        [v43 handleFailureInMethod:a2 object:v58 file:@"ECEncodedWord.m" lineNumber:692 description:@"Can't make encoded-word without splitting a composed character sequence"];
      }

      else
      {
        v64 = xmmword_22D0EE210;
        if (([v43 getBytes:v41 maxLength:3 * ((73 - v10) >> 2) usedLength:&v61 encoding:v12 options:2 range:v42 remainingRange:{v44 - v42, &v64}] & 1) == 0)
        {
          v46 = [MEMORY[0x277CCA890] currentHandler];
          v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL getBytesFromStringWithoutSplittingComposedCharacters(NSString * _Nonnull __strong, void * _Nonnull, NSUInteger, NSUInteger * _Nonnull, NSStringEncoding, NSRange, NSRangePointer _Nonnull, BOOL * _Nonnull)"}];
          [v46 handleFailureInFunction:v47 file:@"ECEncodedWord.m" lineNumber:745 description:@"Failed to get bytes from string"];

          v48 = v63 - v64 + *(&v63 + 1);
          *&v63 = v64;
          *(&v63 + 1) = v48;
LABEL_31:

          v43 = [MEMORY[0x277CCA890] currentHandler];
          [v43 handleFailureInMethod:a2 object:v58 file:@"ECEncodedWord.m" lineNumber:691 description:@"Failed to get bytes from string"];
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
      v51 = [v6 length];
      [v6 increaseLengthBy:v10 + 4 + v50];
      v52 = v6;
      v53 = ([v6 mutableBytes] + v51);
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

- (unint64_t)_qEncodeToHeaderData:(id)a3 currentLineLength:(unint64_t)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 76 - a4;
  if (76 - a4 >= 0x4B)
  {
    v8 = 75;
  }

  if (a4 >= 0x4C)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(ECEncodedWordEncoder *)self singleEncodedWordLength];
  if (v9 >= v10)
  {
    v22 = [v7 length];
    [v7 increaseLengthBy:v10];
    v23 = [v7 mutableBytes] + v22;
    v24 = [(ECEncodedWordEncoder *)self _writeEncodedWordPreambleToBuffer:v23 length:v10];
    v25 = [(ECEncodedWordEncoder *)self decodedText];
    -[ECEncodedWordEncoder _writeQEncodedTextAndEndSequenceToHeaderBytes:fromDecodedBytes:length:](self, "_writeQEncodedTextAndEndSequenceToHeaderBytes:fromDecodedBytes:length:", v23 + v24, [v25 bytes], objc_msgSend(v25, "length"));
    v26 = v10 + a4;
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
    v46 = [(ECEncodedWordEncoder *)self string];
    v16 = [(ECEncodedWordEncoder *)self stringEncoding];
    v17 = [v46 length];
    *&v49 = 0;
    *(&v49 + 1) = v17;
    v45 = v11 + 3;
    if (v9 >= v11 + 3)
    {
      v18 = v9 - v11 - 2;
      v48 = xmmword_22D0EE210;
      v47 = 0;
      if (![(ECEncodedWordEncoder *)self _getBytesWithoutSplittingComposedCharacters:v15 targetQEncodedTextLength:v18 usedLength:&v53 splitComposedCharacterSequence:&v47 usedQEncodedTextLength:&v51 extraLength:&v52 extraQEncodedTextLength:&v50 fromString:v46 stringEncoding:v16 range:0 remainingRange:v17, &v48]|| (v47 & 1) != 0 || v51 > v18)
      {
        if (v18 >= v12)
        {
          v41 = [MEMORY[0x277CCA890] currentHandler];
          [v41 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:830 description:@"Failed to get bytes from string"];
        }

        v52 = 0;
        v50 = 0;
      }

      else
      {
        v19 = [v7 length];
        [v7 increaseLengthBy:v11 + v51 + 2];
        v20 = v7;
        v21 = ([v7 mutableBytes] + v19);
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
        if (![(ECEncodedWordEncoder *)self _getBytesWithoutSplittingComposedCharacters:v15 targetQEncodedTextLength:v12 usedLength:&v53 splitComposedCharacterSequence:&v48 usedQEncodedTextLength:&v51 extraLength:&v52 extraQEncodedTextLength:&v50 fromString:v46 stringEncoding:v16 range:v49 remainingRange:v17, &v49])
        {
          v31 = [MEMORY[0x277CCA890] currentHandler];
          [v31 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:843 description:@"Failed to get bytes from string"];
        }

        if (v48 == 1)
        {
          v32 = [MEMORY[0x277CCA890] currentHandler];
          [v32 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:844 description:@"Can't make encoded-word without splitting a composed character sequence"];
        }

        if (v51 > v12)
        {
          v33 = [MEMORY[0x277CCA890] currentHandler];
          [v33 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:845 description:@"Can't make encoded-word without splitting a composed character sequence"];
        }

        v27 = [v7 length];
        [v7 increaseLengthBy:v11 + 4 + v51];
        v28 = v51;
        v29 = v7;
        v30 = ([v7 mutableBytes] + v27);
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
        v40 = [MEMORY[0x277CCA890] currentHandler];
        [v40 handleFailureInMethod:v43 object:self file:@"ECEncodedWord.m" lineNumber:868 description:@"Can't make encoded-word without splitting a composed character sequence"];
      }

      v34 = [v7 length];
      [v7 increaseLengthBy:v11 + v50 + 4];
      v35 = v50;
      v36 = v7;
      v37 = ([v7 mutableBytes] + v34);
      *v37++ = 8202;
      memcpy(v37, __src, v11);
      [(ECEncodedWordEncoder *)self _writeQEncodedTextAndEndSequenceToHeaderBytes:v37 + v11 fromDecodedBytes:v15 length:v52];
      v26 = v45 + v35;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)_getBytesWithoutSplittingComposedCharacters:(void *)a3 targetQEncodedTextLength:(unint64_t)a4 usedLength:(unint64_t *)a5 splitComposedCharacterSequence:(BOOL *)a6 usedQEncodedTextLength:(unint64_t *)a7 extraLength:(unint64_t *)a8 extraQEncodedTextLength:(unint64_t *)a9 fromString:(id)a10 stringEncoding:(unint64_t)a11 range:(_NSRange)a12 remainingRange:(_NSRange *)a13
{
  v18 = a10;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = *a8;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = *a9;
  *a8 = 0;
  *a9 = 0;
  a13->location = a12.location + a12.length;
  a13->length = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __241__ECEncodedWordEncoder__getBytesWithoutSplittingComposedCharacters_targetQEncodedTextLength_usedLength_splitComposedCharacterSequence_usedQEncodedTextLength_extraLength_extraQEncodedTextLength_fromString_stringEncoding_range_remainingRange___block_invoke;
  v24[3] = &unk_27874BA08;
  v31 = a4;
  v32 = a11;
  v27 = &v46;
  v28 = &v38;
  v25 = v18;
  v26 = self;
  v29 = &v42;
  v30 = a3;
  v33 = a6;
  v34 = a8;
  v35 = a9;
  v36 = a13;
  v37 = a12;
  v19 = v18;
  [v19 enumerateSubstringsInRange:a12.location options:a12.length usingBlock:{514, v24}];
  *a5 = v47[3];
  *a7 = v43[3];
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

- (unint64_t)_lengthOfQEncodedTextForBytes:(const char *)a3 length:(unint64_t)a4
{
  v7 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:a3 endByte:&a3[a4]];
  if (!v7)
  {
    return a4;
  }

  v8 = v7;
  v9 = a4;
  do
  {
    v11 = *v8;
    v10 = v8 + 1;
    if (v11 != 32)
    {
      v9 += 2;
    }

    v8 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:v10 endByte:&a3[a4]];
  }

  while (v8);
  return v9;
}

- (void)_writeQEncodedTextAndEndSequenceToHeaderBytes:(char *)a3 fromDecodedBytes:(const char *)a4 length:(unint64_t)a5
{
  v5 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v8 = &a4[a5];
  v9 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:a4 endByte:&a4[a5], 0x3736353433323130, 0x4645444342413938];
  if (v9)
  {
    v10 = v9;
    do
    {
      if (v5 < v10)
      {
        memcpy(a3, v5, v10 - v5);
        a3 += v10 - v5;
      }

      if (*v10 == 32)
      {
        *a3 = 95;
        v11 = 1;
      }

      else
      {
        *a3 = 61;
        a3[1] = *(&v14 | (*v10 >> 4));
        a3[2] = *(&v14 | *v10 & 0xF);
        v11 = 3;
      }

      a3 += v11;
      v5 = v10 + 1;
      v10 = [(ECEncodedWordEncoder *)self _findNextByteThatNeedsQEncodingBetweenStartByte:v10 + 1 endByte:v8];
    }

    while (v10);
  }

  if (v5 < v8)
  {
    v12 = v8 - v5;
    memcpy(a3, v5, v12);
    a3 += v12;
  }

  *a3 = 15679;
  v13 = *MEMORY[0x277D85DE8];
}

- (const)_findNextByteThatNeedsQEncodingBetweenStartByte:(const char *)a3 endByte:(const char *)a4
{
  if (_findNextByteThatNeedsQEncodingBetweenStartByte_endByte__onceToken != -1)
  {
    [ECEncodedWordEncoder _findNextByteThatNeedsQEncodingBetweenStartByte:endByte:];
  }

  if (a3 >= a4)
  {
    return 0;
  }

  while (((*(&_findNextByteThatNeedsQEncodingBetweenStartByte_endByte__bytesThatNeedEncoding + (*a3 >> 3)) >> (*a3 & 7)) & 1) == 0)
  {
    if (++a3 == a4)
    {
      return 0;
    }
  }

  return a3;
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