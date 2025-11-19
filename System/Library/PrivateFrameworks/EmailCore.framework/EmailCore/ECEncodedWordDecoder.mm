@interface ECEncodedWordDecoder
- (BOOL)_decodeBEncodedTextToData:(id)a3;
- (BOOL)_decodeQEncodedTextToData:(id)a3;
- (BOOL)decodeEncodedTextToData:(id)a3;
- (ECEncodedWordDecoder)init;
- (ECEncodedWordDecoder)initWithHeaderData:(id)a3;
- (_NSRange)encodedTextRange;
- (_NSRange)identifyRangeOfEncodedWordAtIndex:(unint64_t)a3;
- (id)_encodedWordDelimiter;
- (id)_encodedWordEndSequence;
- (id)_encodedWordLanguageDelimiter;
- (id)_encodedWordStartSequence;
- (id)_lineSeparator;
- (void)_enumerateQByteRangesUsingBlock:(id)a3;
@end

@implementation ECEncodedWordDecoder

- (ECEncodedWordDecoder)initWithHeaderData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ECEncodedWordDecoder;
  v5 = [(ECEncodedWordDecoder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    headerData = v5->_headerData;
    v5->_headerData = v6;

    *&v5->_encodedWordEncoding = xmmword_22D0EE200;
    v5->_encodedTextRange.length = 0;
  }

  return v5;
}

- (ECEncodedWordDecoder)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:101 description:{@"Invalid initializer called, returning nil"}];

  return 0;
}

- (_NSRange)identifyRangeOfEncodedWordAtIndex:(unint64_t)a3
{
  v6 = [(ECEncodedWordDecoder *)self headerData];
  v58 = v6;
  v7 = [v6 length];
  v8 = v7 - a3;
  if (v7 <= a3)
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"ECEncodedWord.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"index < headerLength"}];
  }

  v9 = [(ECEncodedWordDecoder *)self _encodedWordStartSequence];
  v10 = [v6 rangeOfData:v9 options:2 range:{a3, v8}];
  v12 = v11;

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = v10;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
    v56 = 0;
    v15 = 0;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = [(ECEncodedWordDecoder *)self _lineSeparator];
    v19 = v12 + a3;
    v20 = v8 - v12;
    v21 = [v58 rangeOfData:v18 options:0 range:{v12 + a3, v20}];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v21 - v19;
    }

    v22 = [(ECEncodedWordDecoder *)self _encodedWordDelimiter];
    v23 = [v58 rangeOfData:v22 options:0 range:{v12 + a3, v20}];
    v16 = v23;
    v14 = v24;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {

      v56 = 0;
      v15 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = v58;
      goto LABEL_13;
    }

    v25 = v20 + v19;
    v26 = v20 + v19 - (v23 + v24);
    v6 = v58;
    v27 = [v58 rangeOfData:v22 options:0 range:{v23 + v24, v26}];
    v29 = v28;

    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v56 = v29;
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = [(ECEncodedWordDecoder *)self _encodedWordEndSequence];
      v31 = v25 - (v27 + v29);
      v32 = v30;
      v17 = [v58 rangeOfData:v30 options:0 range:{v27 + v29, v31}];
      v15 = v33;

      v13 = v27;
      goto LABEL_13;
    }

    v15 = 0;
  }

  v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
  v34 = 0;
  v55 = v13;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v13 - v16 == 2)
  {
    v59 = 0;
    [v6 getBytes:&v59 range:{v16 + v14, 1}];
    v34 = 0;
    if (v59 > 0x61u)
    {
      if (v59 != 98)
      {
        if (v59 != 113)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else if (v59 != 66)
    {
      if (v59 != 81)
      {
        goto LABEL_23;
      }

LABEL_21:
      v34 = 2;
      goto LABEL_23;
    }

    v34 = 1;
  }

LABEL_23:
  [(ECEncodedWordDecoder *)self setEncodedWordEncoding:v34];
  if (v34)
  {
    v35 = [(ECEncodedWordDecoder *)self _encodedWordLanguageDelimiter];
    v36 = v57 + v12;
    v37 = v16 - (v57 + v12);
    v38 = [v6 rangeOfData:v35 options:0 range:{v36, v37}];
    v40 = v39;
    v41 = v15 - a3 + v17;

    v42 = v16 - (v38 + v40);
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = v37;
    }

    else
    {
      v43 = v38 - v36;
    }

    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v38 + v40;
    }

    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = 0;
    }

    else
    {
      v45 = v42;
    }

    if (v43)
    {
      v46 = [v58 subdataWithRange:v36];
      v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v46 encoding:1];
      v48 = v47;
      if (v47)
      {
        v49 = ECConvertCharacterSetNameToEncoding(v47);
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    [(ECEncodedWordDecoder *)self setStringEncoding:v49];
    if (v45)
    {
      v50 = [v58 subdataWithRange:{v44, v45}];
      v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v50 encoding:1];
    }

    else
    {
      v51 = 0;
    }

    v6 = v58;
    [(ECEncodedWordDecoder *)self setLanguage:v51];
    [(ECEncodedWordDecoder *)self setEncodedTextRange:v55 + v56, v17 - (v55 + v56)];
  }

  else
  {
    [(ECEncodedWordDecoder *)self setStringEncoding:0];
    [(ECEncodedWordDecoder *)self setLanguage:0];
    a3 = 0x7FFFFFFFFFFFFFFFLL;
    [(ECEncodedWordDecoder *)self setEncodedTextRange:0x7FFFFFFFFFFFFFFFLL, 0];
    v41 = 0;
  }

  v52 = a3;
  v53 = v41;
  result.length = v53;
  result.location = v52;
  return result;
}

- (id)_encodedWordStartSequence
{
  if (_encodedWordStartSequence_onceToken != -1)
  {
    [ECEncodedWordDecoder _encodedWordStartSequence];
  }

  v3 = _encodedWordStartSequence_encodedWordStartSequence;

  return v3;
}

uint64_t __49__ECEncodedWordDecoder__encodedWordStartSequence__block_invoke()
{
  _encodedWordStartSequence_encodedWordStartSequence = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kEncodedWordStartSequence length:2];

  return MEMORY[0x2821F96F8]();
}

- (id)_lineSeparator
{
  if (_lineSeparator_onceToken != -1)
  {
    [ECEncodedWordDecoder _lineSeparator];
  }

  v3 = _lineSeparator_lineSeparator;

  return v3;
}

uint64_t __38__ECEncodedWordDecoder__lineSeparator__block_invoke()
{
  _lineSeparator_lineSeparator = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kLineSeparator length:1];

  return MEMORY[0x2821F96F8]();
}

- (id)_encodedWordEndSequence
{
  if (_encodedWordEndSequence_onceToken != -1)
  {
    [ECEncodedWordDecoder _encodedWordEndSequence];
  }

  v3 = _encodedWordEndSequence_encodedWordEndSequence;

  return v3;
}

uint64_t __47__ECEncodedWordDecoder__encodedWordEndSequence__block_invoke()
{
  _encodedWordEndSequence_encodedWordEndSequence = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kEncodedWordEndSequence length:2];

  return MEMORY[0x2821F96F8]();
}

- (id)_encodedWordDelimiter
{
  if (_encodedWordDelimiter_onceToken != -1)
  {
    [ECEncodedWordDecoder _encodedWordDelimiter];
  }

  v3 = _encodedWordDelimiter_encodedWordDelimiter;

  return v3;
}

uint64_t __45__ECEncodedWordDecoder__encodedWordDelimiter__block_invoke()
{
  _encodedWordDelimiter_encodedWordDelimiter = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kEncodedWordDelimiter length:1];

  return MEMORY[0x2821F96F8]();
}

- (id)_encodedWordLanguageDelimiter
{
  if (_encodedWordLanguageDelimiter_onceToken != -1)
  {
    [ECEncodedWordDecoder _encodedWordLanguageDelimiter];
  }

  v3 = _encodedWordLanguageDelimiter_encodedWordLanguageDelimiter;

  return v3;
}

uint64_t __53__ECEncodedWordDecoder__encodedWordLanguageDelimiter__block_invoke()
{
  _encodedWordLanguageDelimiter_encodedWordLanguageDelimiter = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kEncodedWordLanguageDelimiter length:1];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)decodeEncodedTextToData:(id)a3
{
  v4 = a3;
  v5 = [(ECEncodedWordDecoder *)self encodedWordEncoding];
  if (v5 == 1)
  {
    [(ECEncodedWordDecoder *)self encodedTextRange];
    if (v8)
    {
      v7 = [(ECEncodedWordDecoder *)self _decodeBEncodedTextToData:v4];
      goto LABEL_7;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    v9 = 0;
    goto LABEL_10;
  }

  [(ECEncodedWordDecoder *)self encodedTextRange];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [(ECEncodedWordDecoder *)self _decodeQEncodedTextToData:v4];
LABEL_7:
  v9 = v7;
LABEL_10:

  return v9;
}

- (BOOL)_decodeBEncodedTextToData:(id)a3
{
  v4 = a3;
  v5 = [(ECEncodedWordDecoder *)self headerData];
  v6 = [(ECEncodedWordDecoder *)self encodedTextRange];
  v8 = [v5 subdataWithRange:{v6, v7}];

  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v8 options:1];
  if (v9)
  {
    [v4 appendData:v9];
  }

  return v9 != 0;
}

- (BOOL)_decodeQEncodedTextToData:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  [(ECEncodedWordDecoder *)self encodedTextRange];
  v14 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ECEncodedWordDecoder__decodeQEncodedTextToData___block_invoke;
  v10[3] = &unk_27874B9E0;
  v10[4] = &v11;
  [(ECEncodedWordDecoder *)self _enumerateQByteRangesUsingBlock:v10];
  v6 = [v4 length];
  [v4 increaseLengthBy:v12[3]];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = [v4 mutableBytes] + v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ECEncodedWordDecoder__decodeQEncodedTextToData___block_invoke_2;
  v8[3] = &unk_27874B9E0;
  v8[4] = v9;
  [(ECEncodedWordDecoder *)self _enumerateQByteRangesUsingBlock:v8];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);

  return 1;
}

uint64_t __50__ECEncodedWordDecoder__decodeQEncodedTextToData___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    *(*(*(result + 32) + 8) + 24) -= 2;
  }

  return result;
}

uint64_t __50__ECEncodedWordDecoder__decodeQEncodedTextToData___block_invoke_2(uint64_t result, unsigned __int8 *__src, size_t a3, uint64_t a4)
{
  v5 = result;
  if (a4 == 2)
  {
    v9 = a3;
    v7 = result + 32;
    result = memcpy(*(*(*(result + 32) + 8) + 24), __src, a3);
  }

  else
  {
    if (a4 == 1)
    {
      v7 = result + 32;
      **(*(*(result + 32) + 8) + 24) = 32;
    }

    else
    {
      if (a4)
      {
        return result;
      }

      v6 = __maskrune(__src[1], 0xFuLL);
      result = __maskrune(__src[2], 0xFuLL);
      v8 = *(v5 + 32);
      v7 = v5 + 32;
      **(*(v8 + 8) + 24) = result + 16 * v6;
    }

    v9 = 1;
  }

  *(*(*v7 + 8) + 24) += v9;
  return result;
}

- (void)_enumerateQByteRangesUsingBlock:(id)a3
{
  v23 = a3;
  v4 = [(ECEncodedWordDecoder *)self encodedTextRange];
  v6 = v5;
  v7 = [(ECEncodedWordDecoder *)self headerData];
  v8 = [v7 bytes];

  if (v6 <= 0)
  {
    v22 = v23;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = (v8 + v4);
  v11 = &v10[v6];
  v12 = v23;
  v13 = v23 + 2;
  v14 = MEMORY[0x277D85DE0];
  do
  {
    v15 = *v10;
    if (v15 == 95)
    {
      v17 = v12;
      v18 = v17;
      if (v9)
      {
        (*v13)(v17, v9, v10 - v9, 2);
      }

      (*v13)(v18, v10, 1, 1);

      v9 = 0;
      v16 = 1;
      goto LABEL_14;
    }

    if (v15 != 61)
    {
      goto LABEL_8;
    }

    if ((v10 + 2) < v11)
    {
      if ((*(v14 + 4 * v10[1] + 60) & 0x10000) != 0 && (*(v14 + 4 * v10[2] + 60) & 0x10000) != 0)
      {
        v19 = v12;
        v20 = v19;
        if (v9)
        {
          (*v13)(v19, v9, v10 - v9, 2);
        }

        (*v13)(v20, v10, 3, 0);

        v9 = 0;
        v16 = 3;
LABEL_14:
        v12 = v23;
        goto LABEL_18;
      }

LABEL_8:
      if (!v9)
      {
        v9 = v10;
      }

      v16 = 1;
      goto LABEL_18;
    }

    if (!v9)
    {
      v9 = v10;
    }

    v16 = v11 - v10;
LABEL_18:
    v10 += v16;
  }

  while (v10 < v11);
  v21 = v12;
  if (v9)
  {
    (*v13)();
  }

LABEL_26:
}

- (_NSRange)encodedTextRange
{
  length = self->_encodedTextRange.length;
  location = self->_encodedTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end