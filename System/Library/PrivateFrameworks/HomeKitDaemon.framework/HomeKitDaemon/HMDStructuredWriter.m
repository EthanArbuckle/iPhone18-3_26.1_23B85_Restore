@interface HMDStructuredWriter
+ (id)extendedTypeWriterWithWriter:(id)a3 options:(unint64_t)a4;
+ (id)writerIntoOPACKData:(id)a3;
+ (id)writerIntoObject:(id *)a3;
+ (id)writerIntoObject:(id *)a3 extendedTypeOptions:(unint64_t)a4;
- (void)beginArrayOfSize:(unint64_t)a3;
- (void)beginDictionaryOfSize:(unint64_t)a3;
- (void)endArray;
- (void)endDictionary;
- (void)failWithError:(id)a3;
- (void)writeData:(id)a3;
- (void)writeDate:(id)a3;
- (void)writeDictionaryKey:(id)a3;
- (void)writeLogicalValue:(id)a3 validateAndCopy:(BOOL)a4;
- (void)writeNull;
- (void)writeNumber:(id)a3;
- (void)writeString:(id)a3;
- (void)writeToken:(_HMDStructuredDataToken)a3;
- (void)writeUUID:(id)a3;
@end

@implementation HMDStructuredWriter

+ (id)extendedTypeWriterWithWriter:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [[HMDExtendedTypeWriter alloc] initWithWriter:v5 options:a4];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (id)writerIntoOPACKData:(id)a3
{
  v4 = a3;
  v5 = [HMDStructuredDataOPACKWriter alloc];
  v6 = v4;
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
      objc_storeStrong(v8 + 6, a3);
    }
  }

  return v5;
}

- (void)writeLogicalValue:(id)a3 validateAndCopy:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    v15 = _HMFPreconditionFailure();

    _Unwind_Resume(v15);
  }

  v16 = v6;
  v7 = [HMDStructuredDataFoundationReader tokenForValue:v6];
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
    v13 = [v12 error];

    if (v13)
    {
      v14 = [v12 error];
      [(HMDStructuredWriter *)self failWithError:v14];
    }

LABEL_6:

    goto LABEL_9;
  }

  [(HMDStructuredWriter *)self failWithError:v8];
LABEL_9:
}

+ (id)writerIntoObject:(id *)a3 extendedTypeOptions:(unint64_t)a4
{
  v6 = [a1 writerIntoObject:a3];
  v7 = [a1 extendedTypeWriterWithWriter:v6 options:a4];

  return v7;
}

+ (id)writerIntoObject:(id *)a3
{
  v3 = [[HMDStructuredDataFoundationOutputPointerWriter alloc] initWithOutput:a3];

  return v3;
}

- (void)writeToken:(_HMDStructuredDataToken)a3
{
  value = a3.value;
  if (a3.type > 6)
  {
    if (a3.type > 9)
    {
      switch(a3.type)
      {
        case 0xALL:
          [(HMDStructuredWriter *)self writeData:a3.value];
          break;
        case 0xBLL:
          [(HMDStructuredWriter *)self writeDate:a3.value];
          break;
        case 0xCLL:
          [(HMDStructuredWriter *)self writeUUID:a3.value];
          break;
        default:
          goto LABEL_35;
      }
    }

    else if (a3.type == 7)
    {
      -[HMDStructuredWriter writeBoolean:](self, "writeBoolean:", [a3.value BOOLValue]);
    }

    else if (a3.type == 8)
    {
      [(HMDStructuredWriter *)self writeString:a3.value];
    }

    else
    {
      [(HMDStructuredWriter *)self writeNumber:a3.value];
    }
  }

  else if (a3.type > 3)
  {
    if (a3.type == 4)
    {
      [(HMDStructuredWriter *)self endDictionary];
    }

    else if (a3.type == 5)
    {
      [(HMDStructuredWriter *)self writeDictionaryKey:a3.value];
    }

    else
    {
      [(HMDStructuredWriter *)self writeNull];
    }
  }

  else
  {
    if (a3.type == 1)
    {
      if (a3.value)
      {
        v5 = [a3.value unsignedIntegerValue];
      }

      else
      {
        v5 = -1;
      }

      [(HMDStructuredWriter *)self beginArrayOfSize:v5];
      goto LABEL_32;
    }

    if (a3.type != 2)
    {
      if (a3.type == 3)
      {
        if (a3.value)
        {
          v4 = [a3.value unsignedIntegerValue];
        }

        else
        {
          v4 = -1;
        }

        [(HMDStructuredWriter *)self beginDictionaryOfSize:v4];
        goto LABEL_32;
      }

LABEL_35:
      v6 = MEMORY[0x277CBEAD8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid token type (%zd)", a3.type];
      v8 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:0];
      v9 = v8;

      objc_exception_throw(v8);
    }

    [(HMDStructuredWriter *)self endArray];
  }

LABEL_32:
}

- (void)writeUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:12, v4];
  }

  else
  {
  }
}

- (void)writeDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:11, v4];
  }

  else
  {
  }
}

- (void)writeData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:10, v4];
  }

  else
  {
  }
}

- (void)writeNumber:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:9, v4];
  }

  else
  {
  }
}

- (void)writeString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:8, v4];
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

- (void)writeDictionaryKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    [(HMDStructuredWriter *)self writeToken:5, v4];
  }

  else
  {
  }
}

- (void)beginDictionaryOfSize:(unint64_t)a3
{
  if (a3 == -1)
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

- (void)beginArrayOfSize:(unint64_t)a3
{
  if (a3 == -1)
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

- (void)failWithError:(id)a3
{
  v4 = a3;
  if (!self->_error)
  {
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    }

    error = self->_error;
    self->_error = v5;

    v4 = v7;
  }
}

@end