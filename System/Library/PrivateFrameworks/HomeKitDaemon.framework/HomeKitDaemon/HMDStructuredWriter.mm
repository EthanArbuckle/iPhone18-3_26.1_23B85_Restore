@interface HMDStructuredWriter
+ (id)extendedTypeWriterWithWriter:(id)writer options:(unint64_t)options;
+ (id)writerIntoOPACKData:(id)data;
+ (id)writerIntoObject:(id *)object;
+ (id)writerIntoObject:(id *)object extendedTypeOptions:(unint64_t)options;
- (void)beginArrayOfSize:(unint64_t)size;
- (void)beginDictionaryOfSize:(unint64_t)size;
- (void)endArray;
- (void)endDictionary;
- (void)failWithError:(id)error;
- (void)writeData:(id)data;
- (void)writeDate:(id)date;
- (void)writeDictionaryKey:(id)key;
- (void)writeLogicalValue:(id)value validateAndCopy:(BOOL)copy;
- (void)writeNull;
- (void)writeNumber:(id)number;
- (void)writeString:(id)string;
- (void)writeToken:(_HMDStructuredDataToken)token;
- (void)writeUUID:(id)d;
@end

@implementation HMDStructuredWriter

+ (id)extendedTypeWriterWithWriter:(id)writer options:(unint64_t)options
{
  writerCopy = writer;
  v6 = writerCopy;
  if (options)
  {
    v7 = [[HMDExtendedTypeWriter alloc] initWithWriter:writerCopy options:options];
  }

  else
  {
    v7 = writerCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)writerIntoOPACKData:(id)data
{
  dataCopy = data;
  v5 = [HMDStructuredDataOPACKWriter alloc];
  v6 = dataCopy;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v10 = _HMFPreconditionFailure();
      return [(HMDStructuredReader *)v10 readerFromOPACKData:v11, v12];
    }

    v13.receiver = v5;
    v13.super_class = HMDStructuredDataOPACKWriter;
    v8 = objc_msgSendSuper2(&v13, sel_init);
    v5 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, data);
    }
  }

  return v5;
}

- (void)writeLogicalValue:(id)value validateAndCopy:(BOOL)copy
{
  valueCopy = value;
  if (!valueCopy)
  {
    v15 = _HMFPreconditionFailure();

    _Unwind_Resume(v15);
  }

  v16 = valueCopy;
  v7 = [HMDStructuredDataFoundationReader tokenForValue:valueCopy];
  v9 = v7;
  v10 = v8;
  if ((v7 - 6) < 7)
  {
    v11 = v8;
    if (self)
    {
      [(HMDStructuredWriter *)self writeToken:v9, v10];
      goto LABEL_9;
    }

    v12 = v11;
    goto LABEL_6;
  }

  if (v7 != -2)
  {
    v12 = [[HMDStructuredDataFoundationReader alloc] initWithInput:v16];
    [v12 copyLogicalValueToWriter:self];
    error = [v12 error];

    if (error)
    {
      error2 = [v12 error];
      [(HMDStructuredWriter *)self failWithError:error2];
    }

LABEL_6:

    goto LABEL_9;
  }

  [(HMDStructuredWriter *)self failWithError:v8];
LABEL_9:
}

+ (id)writerIntoObject:(id *)object extendedTypeOptions:(unint64_t)options
{
  v6 = [self writerIntoObject:object];
  v7 = [self extendedTypeWriterWithWriter:v6 options:options];

  return v7;
}

+ (id)writerIntoObject:(id *)object
{
  v3 = [[HMDStructuredDataFoundationOutputPointerWriter alloc] initWithOutput:object];

  return v3;
}

- (void)writeToken:(_HMDStructuredDataToken)token
{
  value = token.value;
  if (token.type > 6)
  {
    if (token.type > 9)
    {
      switch(token.type)
      {
        case 0xALL:
          [(HMDStructuredWriter *)self writeData:token.value];
          break;
        case 0xBLL:
          [(HMDStructuredWriter *)self writeDate:token.value];
          break;
        case 0xCLL:
          [(HMDStructuredWriter *)self writeUUID:token.value];
          break;
        default:
          goto LABEL_35;
      }
    }

    else if (token.type == 7)
    {
      -[HMDStructuredWriter writeBoolean:](self, "writeBoolean:", [token.value BOOLValue]);
    }

    else if (token.type == 8)
    {
      [(HMDStructuredWriter *)self writeString:token.value];
    }

    else
    {
      [(HMDStructuredWriter *)self writeNumber:token.value];
    }
  }

  else if (token.type > 3)
  {
    if (token.type == 4)
    {
      [(HMDStructuredWriter *)self endDictionary];
    }

    else if (token.type == 5)
    {
      [(HMDStructuredWriter *)self writeDictionaryKey:token.value];
    }

    else
    {
      [(HMDStructuredWriter *)self writeNull];
    }
  }

  else
  {
    if (token.type == 1)
    {
      if (token.value)
      {
        unsignedIntegerValue = [token.value unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = -1;
      }

      [(HMDStructuredWriter *)self beginArrayOfSize:unsignedIntegerValue];
      goto LABEL_32;
    }

    if (token.type != 2)
    {
      if (token.type == 3)
      {
        if (token.value)
        {
          unsignedIntegerValue2 = [token.value unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = -1;
        }

        [(HMDStructuredWriter *)self beginDictionaryOfSize:unsignedIntegerValue2];
        goto LABEL_32;
      }

LABEL_35:
      v6 = MEMORY[0x277CBEAD8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid token type (%zd)", token.type];
      v8 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:0];
      v9 = v8;

      objc_exception_throw(v8);
    }

    [(HMDStructuredWriter *)self endArray];
  }

LABEL_32:
}

- (void)writeUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:12, dCopy];
  }

  else
  {
  }
}

- (void)writeDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:11, dateCopy];
  }

  else
  {
  }
}

- (void)writeData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:10, dataCopy];
  }

  else
  {
  }
}

- (void)writeNumber:(id)number
{
  numberCopy = number;
  v5 = numberCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:9, numberCopy];
  }

  else
  {
  }
}

- (void)writeString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:8, stringCopy];
  }

  else
  {
  }
}

- (void)writeNull
{
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:6, 0];
  }
}

- (void)endDictionary
{
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:4, 0];
  }
}

- (void)writeDictionaryKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:5, keyCopy];
  }

  else
  {
  }
}

- (void)beginDictionaryOfSize:(unint64_t)size
{
  if (size == -1)
  {
    v4 = 0;
    v5 = 0;
    if (self)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];

    v5 = v4;
    if (self)
    {
LABEL_3:

      [(HMDStructuredWriter *)self writeToken:3, v4];
      return;
    }
  }
}

- (void)endArray
{
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:2, 0];
  }
}

- (void)beginArrayOfSize:(unint64_t)size
{
  if (size == -1)
  {
    v4 = 0;
    v5 = 0;
    if (self)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];

    v5 = v4;
    if (self)
    {
LABEL_3:

      [(HMDStructuredWriter *)self writeToken:1, v4];
      return;
    }
  }
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  if (!self->_error)
  {
    v7 = errorCopy;
    if (errorCopy)
    {
      hmfUnspecifiedError = errorCopy;
    }

    else
    {
      hmfUnspecifiedError = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    }

    error = self->_error;
    self->_error = hmfUnspecifiedError;

    errorCopy = v7;
  }
}

@end