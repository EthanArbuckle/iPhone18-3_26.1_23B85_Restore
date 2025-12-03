@interface ECMessageBodyStringAccumulator
- (ECMessageBodyStringAccumulator)initWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit currencyFormatter:(id)formatter;
- (NSString)debugDescription;
- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (void)appendCurrencyDecimalSeparator;
- (void)appendCustomEntityWithTag:(unint64_t)tag stringRepresentation:(id)representation;
- (void)appendInnerTextWithConsumableNode:(id)node;
- (void)appendNewline;
- (void)appendRange:(_NSRange)range ofString:(id)string;
- (void)appendString:(id)string;
@end

@implementation ECMessageBodyStringAccumulator

- (ECMessageBodyStringAccumulator)initWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit currencyFormatter:(id)formatter
{
  formatterCopy = formatter;
  v18.receiver = self;
  v18.super_class = ECMessageBodyStringAccumulator;
  v10 = [(ECMessageBodyStringAccumulator *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    objc_storeStrong(&v10->_currencyFormatter, formatter);
    v11->_remainingLength = limit;
    options = v11->_options;
    v13 = objc_alloc(MEMORY[0x277CCAB68]);
    if ((options & 8) != 0)
    {
      limitCopy = 2;
    }

    else
    {
      limitCopy = limit;
    }

    v15 = [v13 initWithCapacity:limitCopy];
    accumulatedString = v11->_accumulatedString;
    v11->_accumulatedString = v15;

    v11->_lastEntity = 0;
    v11->_lastCustomEntityTag = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (NSString)debugDescription
{
  accumulatedString = [(ECMessageBodyStringAccumulator *)self accumulatedString];
  v4 = [accumulatedString mutableCopy];

  [v4 replaceOccurrencesOfString:@"\n" withString:@"␊" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"\r" withString:@"␍" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"\t" withString:@"␉" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@" " withString:@"␠" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@" " withString:@"␢" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"​" withString:@"␢" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"‌" withString:@"␢" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"‍" withString:@"␢" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"⁠" withString:@"␢" options:0 range:{0, objc_msgSend(v4, "length")}];
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __50__ECMessageBodyStringAccumulator_debugDescription__block_invoke;
  v14 = &unk_27874BCE0;
  selfCopy = self;
  v17 = v18;
  v6 = v5;
  v16 = v6;
  v7 = MEMORY[0x2318C92C0](&v11);
  if (((v7[2])(v7, 17, @".condenseWhitespace") & 1) == 0)
  {
    (v7)[2](v7, 16, @".condenseVerticalWhitespace");
    (v7)[2](v7, 1, @".condenseHorizontalWhitespace");
  }

  (v7)[2](v7, 2, @".resolveHTMLEntities");
  (v7)[2](v7, 4, @".parseSingleLine");
  (v7)[2](v7, 8, @".parseSingleNonWhitespaceCharacter");
  (v7)[2](v7, 32, @".condenseEmptyLines");
  [v6 appendString:@"]"];
  if (self->_remainingLength == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"unlimited";
  }

  else if ([(ECMessageBodyStringAccumulator *)self isFull])
  {
    v8 = @"full";
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"remaining=%llu", self->_remainingLength];
  }

  selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@ %@\n\t%@", objc_opt_class(), self, v6, v8, v4, v11, v12, v13, v14, selfCopy];

  _Block_object_dispose(v18, 8);

  return selfCopy;
}

BOOL __50__ECMessageBodyStringAccumulator_debugDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  v7 = v6 & a2;
  if ((v6 & a2) == a2)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [*(a1 + 40) appendString:{@", "}];
    }

    [*(a1 + 40) appendString:v5];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v7 == a2;
}

- (void)appendNewline
{
  if ((self->_options & 0x10) != 0)
  {
    v2 = @" ";
  }

  else
  {
    v2 = @"\n";
  }

  [(ECMessageBodyStringAccumulator *)self appendString:v2];
}

- (void)appendCurrencyDecimalSeparator
{
  currencyDecimalSeparator = [(NSNumberFormatter *)self->_currencyFormatter currencyDecimalSeparator];
  [(ECMessageBodyStringAccumulator *)self appendString:?];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  -[ECMessageBodyStringAccumulator appendRange:ofString:](self, "appendRange:ofString:", 0, [stringCopy length], stringCopy);
}

- (void)appendRange:(_NSRange)range ofString:(id)string
{
  length = range.length;
  location = range.location;
  v16[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (length >= 0x3200001)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ECMessageBodyStringAccumulator appendRange:ofString:]"];
    [currentHandler handleFailureInFunction:v15 file:@"ECMessageBodyStringAccumulator.m" lineNumber:133 description:{@"Temporary buffer too large or with a negative count (%zu).", length}];
  }

  if (length <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = length;
  }

  MEMORY[0x28223BE20]();
  v10 = v16 - v9;
  memset(v16 - v9, 170, v11);
  if (length > 0x400)
  {
    v12 = malloc_type_calloc(v8, 2uLL, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v10, 2 * v8);
    v12 = 0;
  }

  if (length >= 0x401)
  {
    v10 = v12;
  }

  [stringCopy getCharacters:v10 range:{location, length}];
  [(ECMessageBodyStringAccumulator *)self appendCharacters:v10 length:length];
  free(v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  if (length)
  {
    v6 = 0;
    v7 = 0;
    options = self->_options;
    v52 = options & 0xA;
    v45 = options & 0x18;
    v46 = options & 9;
    v51 = (options & 0x39) != 0;
    v9 = (options & 0x18) == 0 || (options & 9) == 0;
    v10 = (options & 0x18) != 0 && (options & 9) != 0;
    v44 = v10;
    v50 = options & ((options & 0x10) != 0);
    v53 = self->_options;
    v48 = v53 & 0x19;
    v49 = (options >> 4) & 1;
    if ((options & 1) == 0)
    {
      v9 = 1;
    }

    v47 = v9;
    while (1)
    {
      if (self->_isFull)
      {
LABEL_137:

        return;
      }

      v11 = characters[v6];
      v12 = v6 + 1;
      if (!self->_options)
      {
        *v55 = v11;
        goto LABEL_18;
      }

      if (v52 == 2 && v11 == 38)
      {
        if (v7)
        {
          [(__CFString *)v7 setString:&stru_284041D88];
        }

        else
        {
          v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:20];
        }

        if (v6 + 21 >= length)
        {
          lengthCopy = length;
        }

        else
        {
          lengthCopy = v6 + 21;
        }

        v18 = v7;
        if (v12 >= lengthCopy)
        {
          lengthCopy = v12;
        }

        else
        {
          v19 = v12;
          while (1)
          {
            chars = characters[v19];
            v20 = chars;
            v21 = v19 + 1;
            if (chars <= 0x3Bu && ((1 << chars) & 0x800004100002600) != 0)
            {
              break;
            }

            v7 = v18;
            CFStringAppendCharacters(v18, &chars, 1);
            ++v19;
            if (lengthCopy == v21)
            {
              goto LABEL_42;
            }
          }

          v57 = 59;
          CFStringAppendCharacters(v18, &v57, 1);
          if (v20 == 59)
          {
            lengthCopy = v19 + 1;
          }

          else
          {
            lengthCopy = v19;
          }

          v7 = v18;
        }

LABEL_42:
        ec_parseHTMLEntityCharacter = [(__CFString *)v7 ec_parseHTMLEntityCharacter];
        if (ec_parseHTMLEntityCharacter)
        {
          v11 = ec_parseHTMLEntityCharacter;
        }

        else
        {
          v11 = 38;
        }

        if (ec_parseHTMLEntityCharacter)
        {
          v12 = lengthCopy;
        }
      }

      ec_whitespaceNewlineAndTagCharacterSet = [MEMORY[0x277CCA900] ec_whitespaceNewlineAndTagCharacterSet];
      v25 = [ec_whitespaceNewlineAndTagCharacterSet longCharacterIsMember:v11];

      if (!v25)
      {
        break;
      }

      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v27 = [newlineCharacterSet longCharacterIsMember:v11];

      if (v27)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      if (!v51)
      {
        v30 = v7;
        lastEntity = self->_lastEntity;
        v34 = 1;
        goto LABEL_78;
      }

      lastEntity = self->_lastEntity;
      if (((v50 | v53 & ~v27) & 1) != 0 || (v49 & v27) != 0)
      {
        v30 = v7;
        v34 = 0;
        if (!lastEntity)
        {
          v28 = 0;
        }

LABEL_78:
        v15 = 1;
        if (v28 == lastEntity || lastEntity - 1 > 1)
        {
          goto LABEL_115;
        }

        if ((v53 & 4) != 0 && lastEntity == 2)
        {
          self->_isFull = 1;
          self->_lastEntity = v28;
          self->_beforeLastEntity = 2;
          if (v28 == 3)
          {
            self->_lastCustomEntityTag = 0x7FFFFFFFFFFFFFFFLL;
          }

LABEL_117:
          v7 = v30;
          goto LABEL_136;
        }

        if (v48 == 16)
        {
          if (v28 == 2 || lastEntity != 2)
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (v48 == 1 && v28 != 1 && lastEntity == 1)
          {
            goto LABEL_108;
          }

          if (!v47 && (v53 & 0x10) != 0 && v28 - 3 < 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_104;
          }

LABEL_95:
          if ((v53 & 0x20) == 0 || self->_beforeLastEntity == 2)
          {
            goto LABEL_114;
          }

          v39 = v28 == 3 || lastEntity == 1;
          v40 = !v39;
          if ((v40 & v34 & 1) == 0)
          {
            goto LABEL_114;
          }

LABEL_104:
          v14 = lastEntity == 1;
          v41 = v44;
          if (v14)
          {
            v41 = 1;
          }

          if (v41)
          {
LABEL_108:
            v42 = 32;
LABEL_110:
            v56 = v42;
            CFStringAppendCharacters(self->_accumulatedString, &v56, 1);
            remainingLength = self->_remainingLength;
            if (remainingLength && remainingLength != 0x7FFFFFFFFFFFFFFFLL)
            {
              self->_remainingLength = remainingLength - 1;
            }

            lastEntity = self->_lastEntity;
LABEL_114:
            v15 = 1;
LABEL_115:
            self->_lastEntity = v28;
            self->_beforeLastEntity = lastEntity;
            if (v28 == 3)
            {
              self->_lastCustomEntityTag = 0x7FFFFFFFFFFFFFFFLL;
              if (v34)
              {
                goto LABEL_119;
              }
            }

            else if (v34)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }
        }

        v42 = 10;
        goto LABEL_110;
      }

      if (lastEntity != v28)
      {
        v30 = v7;
        v34 = 1;
        if ((v53 & 0x20) != 0 && lastEntity != 3)
        {
          v38 = lastEntity == 1 && self->_beforeLastEntity == 3;
          v34 = v38 & v27;
        }

        goto LABEL_78;
      }

      if ((v53 & 0x20) != 0 || !((v46 == 0) | v27 & 1))
      {
        self->_lastEntity = v28;
        self->_beforeLastEntity = v28;
      }

      else
      {
        self->_lastEntity = v28;
        self->_beforeLastEntity = v28;
        if (((v45 != 0) & v27) == 0)
        {
          v30 = v7;
          v15 = 1;
LABEL_119:
          *v55 = 0;
          if ((v11 - 0x10000) < 0x100000)
          {
            v55[0] = ((v11 - 0x10000) >> 10) | 0xD800;
            v55[1] = v11 & 0x3FF | 0xDC00;
            v16 = 2;
            goto LABEL_124;
          }

          v55[0] = v11;
          if (v15)
          {
            v7 = v30;
LABEL_18:
            v13 = self->_remainingLength;
            v14 = v13 <= 1 && (v11 & 0xFC00) == 55296;
            if (!v14)
            {
              v15 = 1;
              v16 = 1;
              goto LABEL_125;
            }

            self->_isFull = 1;
          }

          else
          {
            v16 = 1;
LABEL_124:
            v7 = v30;
LABEL_125:
            CFStringAppendCharacters(self->_accumulatedString, v55, v16);
            v13 = self->_remainingLength;
            if (v15 && v13 && v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              self->_remainingLength = --v13;
            }
          }

          if (!v13)
          {
            self->_isFull = 1;
          }

          if ((v53 & 8) != 0 && self->_lastEntity == 3 && ([(NSMutableString *)self->_accumulatedString ec_isWhitespace]& 1) == 0)
          {
            self->_isFull = 1;
          }
        }
      }

LABEL_136:
      v6 = v12;
      if (v12 >= length)
      {
        goto LABEL_137;
      }
    }

    ec_ignorableCharacterSet = [MEMORY[0x277CCA900] ec_ignorableCharacterSet];
    v32 = [ec_ignorableCharacterSet longCharacterIsMember:v11];

    if (v32)
    {
      v33 = self->_lastEntity;
      self->_beforeLastEntity = v33;
      if (v33 == 3)
      {
        self->_lastCustomEntityTag = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_136;
    }

    ec_zeroWidthCharacterSet = [MEMORY[0x277CCA900] ec_zeroWidthCharacterSet];
    v30 = v7;
    v36 = [ec_zeroWidthCharacterSet longCharacterIsMember:v11];

    v28 = self->_lastEntity;
    v34 = 1;
    if ((v36 & 1) == 0)
    {
      lastEntity = self->_lastEntity;
      v28 = 3;
      goto LABEL_78;
    }

    v15 = 0;
    lastEntity = self->_lastEntity;
    goto LABEL_115;
  }
}

- (void)appendCustomEntityWithTag:(unint64_t)tag stringRepresentation:(id)representation
{
  representationCopy = representation;
  if (self->_lastCustomEntityTag != tag)
  {
    v7 = representationCopy;
    if (self->_lastEntity == 3)
    {
      [(ECMessageBodyStringAccumulator *)self appendString:@" "];
    }

    [(ECMessageBodyStringAccumulator *)self appendString:v7];
    [(ECMessageBodyStringAccumulator *)self appendString:@" "];
    self->_lastCustomEntityTag = tag;
    representationCopy = v7;
  }
}

- (void)appendInnerTextWithConsumableNode:(id)node
{
  v19 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{nodeCopy, 0}];
  while ([v5 count] && !-[ECMessageBodyStringAccumulator isFull](self, "isFull"))
  {
    v6 = objc_autoreleasePoolPush();
    lastObject = [v5 lastObject];
    v8 = [lastObject copyConsumableNodesAndAppendInnerTextToStringAccumulator:self];
    [v5 removeLastObject];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    reverseObjectEnumerator = [v8 reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [v5 addObject:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end