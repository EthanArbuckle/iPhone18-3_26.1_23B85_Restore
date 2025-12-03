@interface HMDStructuredReader
+ (HMDTokenBasedStructuredReader)readerWithError:(uint64_t)error;
+ (id)extendedTypeReaderWithReader:(id)reader;
+ (id)readerFromOPACKData:(id)data;
+ (id)readerFromObject:(id)object;
+ (id)readerFromObjectWithExtendedTypes:(id)types;
- (BOOL)readBoolean;
- (_HMDStructuredDataToken)readToken;
- (id)readData;
- (id)readDate;
- (id)readDictionaryKey;
- (id)readLogicalValueAsObject;
- (id)readNumber;
- (id)readString;
- (id)readUUID;
- (int64_t)tokenType;
- (unint64_t)beginArray;
- (unint64_t)beginDictionary;
- (void)_processLogicalValueWithBlock:(void *)block;
- (void)copyLogicalValueToWriter:(id)writer;
- (void)endArray;
- (void)endDictionary;
- (void)readNull;
- (void)skipLogicalValue;
- (void)skipToken;
@end

@implementation HMDStructuredReader

+ (id)extendedTypeReaderWithReader:(id)reader
{
  readerCopy = reader;
  v4 = [[HMDExtendedTypeReader alloc] initWithReader:readerCopy];

  return v4;
}

+ (id)readerFromOPACKData:(id)data
{
  if (data)
  {
    v4 = OPACKDecodeData();
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:? userInfo:?];
    v6 = [(HMDStructuredReader *)self readerWithError:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v6 = [(HMDStructuredReader *)self readerWithError:v4];
  }

  return v6;
}

+ (HMDTokenBasedStructuredReader)readerWithError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(HMDTokenBasedStructuredReader);
  [(HMDTokenBasedStructuredReader *)v3 failWithError:v2];

  return v3;
}

- (id)readLogicalValueAsObject
{
  tokenType = [(HMDStructuredReader *)self tokenType];
  if (tokenType > 8)
  {
    if (tokenType > 10)
    {
      if (tokenType == 11)
      {
        readDate = [(HMDStructuredReader *)self readDate];
        goto LABEL_19;
      }

      if (tokenType == 12)
      {
        readDate = [(HMDStructuredReader *)self readUUID];
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (tokenType == 9)
    {
      [(HMDStructuredReader *)self readNumber];
    }

    else
    {
      [(HMDStructuredReader *)self readData];
    }

    readDate = LABEL_9:;
    goto LABEL_19;
  }

  if (tokenType > 6)
  {
    if (tokenType == 7)
    {
      [MEMORY[0x277CCABB0] numberWithBool:{-[HMDStructuredReader readBoolean](self, "readBoolean")}];
    }

    else
    {
      [(HMDStructuredReader *)self readString];
    }

    goto LABEL_9;
  }

  if (tokenType == -2)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (tokenType == 6)
  {
    [(HMDStructuredReader *)self readNull];
    readDate = [MEMORY[0x277CBEB68] null];
LABEL_19:
    v5 = readDate;
    goto LABEL_20;
  }

LABEL_23:
  v10 = 0;
  v7 = [[HMDStructuredDataFoundationOutputPointerWriter alloc] initWithOutput:?];
  [(HMDStructuredReader *)self copyLogicalValueToWriter:v7];
  error = [(HMDStructuredDataStream *)self error];
  v9 = v10;
  if (error)
  {
    v9 = 0;
  }

  v5 = v9;

LABEL_20:

  return v5;
}

+ (id)readerFromObjectWithExtendedTypes:(id)types
{
  v3 = [self readerFromObject:types];
  v4 = [HMDStructuredReader extendedTypeReaderWithReader:v3];

  return v4;
}

+ (id)readerFromObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v4 = objectCopy;
    v5 = [[HMDStructuredDataFoundationReader alloc] initWithInput:objectCopy];

    return v5;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    [(HMDUserActivityHomeAwayReport *)v7 .cxx_destruct];
  }

  return result;
}

- (void)copyLogicalValueToWriter:(id)writer
{
  writerCopy = writer;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDStructuredReader_copyLogicalValueToWriter___block_invoke;
  v6[3] = &unk_27868A4D8;
  v9 = v10;
  v5 = writerCopy;
  v7 = v5;
  selfCopy = self;
  [(HMDStructuredReader *)self _processLogicalValueWithBlock:v6];

  _Block_object_dispose(v10, 8);
}

void __48__HMDStructuredReader_copyLogicalValueToWriter___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(a1 + 40);

    [v2 skipToken];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) readToken];
    if (v3)
    {
      [v3 writeToken:{v4, v5}];
    }

    else
    {
    }

    v6 = [*(a1 + 32) error];
    *(*(*(a1 + 48) + 8) + 24) = v6 != 0;
  }
}

- (void)_processLogicalValueWithBlock:(void *)block
{
  v6 = a2;
  if (block)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        tokenType = [block tokenType];
        if (tokenType != 5)
        {
          break;
        }

        v6[2]();
      }

      if (tokenType > 1)
      {
        if (tokenType == 2 || tokenType == 4)
        {
          if (!v3)
          {
            goto LABEL_18;
          }

          --v3;
        }

        else if (tokenType == 3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(tokenType)
        {
          case -2:
            goto LABEL_19;
          case -1:
LABEL_18:
            v5 = HMDStructuredDataTokenTypeAsString(tokenType);
            [block failWithReason:{@"Unexpected <%@>", v5}];

            goto LABEL_19;
          case 1:
LABEL_13:
            ++v3;
            break;
        }
      }

      v6[2]();
    }

    while (v3);
  }

LABEL_19:
}

- (void)skipLogicalValue
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__HMDStructuredReader_skipLogicalValue__block_invoke;
  v2[3] = &unk_27868A728;
  v2[4] = self;
  [(HMDStructuredReader *)self _processLogicalValueWithBlock:v2];
}

- (void)skipToken
{
  [(HMDStructuredReader *)self readToken];
}

- (_HMDStructuredDataToken)readToken
{
  tokenType = [(HMDStructuredReader *)self tokenType];
  error = 0;
  v5 = -1;
  switch(tokenType)
  {
    case -2:
      error = [(HMDStructuredDataStream *)self error];
      v5 = -2;
      break;
    case -1:
      break;
    case 1:
      beginArray = [(HMDStructuredReader *)self beginArray];
      if (beginArray != -1)
      {
        error = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:beginArray];
        v5 = 1;
        goto LABEL_14;
      }

      error = 0;
      v5 = 1;
      break;
    case 2:
      [(HMDStructuredReader *)self endArray];
      error = 0;
      v5 = 2;
      break;
    case 3:
      beginDictionary = [(HMDStructuredReader *)self beginDictionary];
      if (beginDictionary == -1)
      {
        error = 0;
        v5 = 3;
      }

      else
      {
        error = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:beginDictionary];
        v5 = 3;
LABEL_14:
      }

      break;
    case 4:
      [(HMDStructuredReader *)self endDictionary];
      error = 0;
      v5 = 4;
      break;
    case 5:
      error = [(HMDStructuredReader *)self readDictionaryKey];
      v5 = 5;
      break;
    case 6:
      [(HMDStructuredReader *)self readNull];
      error = 0;
      v5 = 6;
      break;
    case 7:
      readBoolean = [(HMDStructuredReader *)self readBoolean];
      error = [MEMORY[0x277CCABB0] numberWithBool:readBoolean];
      v5 = 7;
      break;
    case 8:
      error = [(HMDStructuredReader *)self readString];
      v5 = 8;
      break;
    case 9:
      error = [(HMDStructuredReader *)self readNumber];
      v5 = 9;
      break;
    case 10:
      error = [(HMDStructuredReader *)self readData];
      v5 = 10;
      break;
    case 11:
      error = [(HMDStructuredReader *)self readDate];
      v5 = 11;
      break;
    case 12:
      error = [(HMDStructuredReader *)self readUUID];
      v5 = 12;
      break;
    default:
      v11 = MEMORY[0x277CBEAD8];
      v12 = *MEMORY[0x277CBE658];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid token type (%zd)", tokenType];
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
  }

  v9 = v5;
  v10 = error;
  result.value = v10;
  result.type = v9;
  return result;
}

- (id)readUUID
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)readDate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)readData
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)readNumber
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)readString
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)readBoolean
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)readNull
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)endDictionary
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)readDictionaryKey
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (unint64_t)beginDictionary
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)endArray
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (unint64_t)beginArray
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (int64_t)tokenType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end