@interface IRCommand
- (BOOL)isEqual:(id)a3;
- (BOOL)setSequence:(unint64_t *)a3 withCount:(unint64_t)a4;
- (IRCommand)initWithCoder:(id)a3;
- (IRCommand)initWithProtocol:(id)a3 payload:(unint64_t)a4 repeat:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRCommand

- (void)dealloc
{
  sequence = self->_sequence;
  if (sequence)
  {
    free(sequence);
  }

  v4.receiver = self;
  v4.super_class = IRCommand;
  [(IRCommand *)&v4 dealloc];
}

- (IRCommand)initWithProtocol:(id)a3 payload:(unint64_t)a4 repeat:(BOOL)a5
{
  if (a3)
  {
    v11.receiver = self;
    v11.super_class = IRCommand;
    v8 = [(IRCommand *)&v11 init];
    v9 = v8;
    if (v8)
    {
      v8->_payload = a4;
      v8->_isRepeat = a5;
      v8->_protocol = a3;
      v9->_timestamp = mach_absolute_time();
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

- (IRCommand)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = IRCommand;
  v4 = [(IRCommand *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"commandSequence"}];
    if ([v7 count])
    {
      v8 = malloc_type_calloc([v7 count], 8uLL, 0x100004000313F17uLL);
      v4->_sequence = v8;
      if (v8)
      {
        v9 = [v7 count];
        v4->_sequenceCount = v9;
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = [objc_msgSend(v7 objectAtIndexedSubscript:{v10), "unsignedLongLongValue"}];
            sequence = v4->_sequence;
            sequenceCount = v4->_sequenceCount;
            sequence[v10++] = v11;
          }

          while (v10 < sequenceCount);
        }

        else
        {
          sequence = v4->_sequence;
        }

        v4->_payload = *sequence;
      }
    }

    v4->_isRepeat = [a3 decodeBoolForKey:@"commandIsRepeat"];
    v4->_protocol = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"commandProtocol"];
    v4->_timestamp = [a3 decodeInt64ForKey:@"commandTimestamp"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = objc_opt_new();
  if (self->_sequenceCount)
  {
    v5 = 0;
    do
    {
      [v6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", self->_sequence[v5++])}];
    }

    while (v5 < self->_sequenceCount);
  }

  [a3 encodeObject:self->_protocol forKey:@"commandProtocol"];
  [a3 encodeObject:v6 forKey:@"commandSequence"];
  [a3 encodeBool:self->_isRepeat forKey:@"commandIsRepeat"];
  [a3 encodeInt64:self->_timestamp forKey:@"commandTimestamp"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithProtocol:payload:repeat:", -[IRCommand protocol](self, "protocol"), -[IRCommand payload](self, "payload"), -[IRCommand isRepeat](self, "isRepeat")}];
  if (v4)
  {
    [v4 setTimestamp:{-[IRCommand timestamp](self, "timestamp")}];
  }

  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = IRCommand;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[IRCommand description](&v8, sel_description)}];
  [v3 appendFormat:@" Protocol: %@;", self->_protocol];
  [v3 appendFormat:@" Payload: %#llx;", self->_payload];
  if (self->_isRepeat)
  {
    v4 = "Y";
  }

  else
  {
    v4 = "N";
  }

  [v3 appendFormat:@" Repeat: %s;", v4];
  [v3 appendFormat:@" Timestamp: %llu;", self->_timestamp];
  v5 = " sequence:";
  if (!self->_sequenceCount)
  {
    v5 = "";
  }

  [v3 appendFormat:@" sequenceCount: %lu;%s", self->_sequenceCount, v5];
  if (self->_sequenceCount)
  {
    v6 = 0;
    do
    {
      [v3 appendFormat:@" %016llx", self->_sequence[v6++]];
    }

    while (v6 < self->_sequenceCount);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = -[IRProtocol isEqual:](-[IRCommand protocol](self, "protocol"), "isEqual:", [a3 protocol]);
    if (!v5)
    {
      return v5;
    }

    v6 = [(IRCommand *)self sequenceCount];
    if (v6 != [a3 sequenceCount])
    {
LABEL_7:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ([(IRCommand *)self sequenceCount])
    {
      v7 = memcmp(-[IRCommand sequence](self, "sequence"), [a3 sequence], 8 * -[IRCommand sequenceCount](self, "sequenceCount")) == 0;
    }

    else
    {
      v8 = [(IRCommand *)self payload];
      v7 = v8 == [a3 payload];
    }

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)setSequence:(unint64_t *)a3 withCount:(unint64_t)a4
{
  if (a4)
  {
    if (!self->_sequence)
    {
      v7 = malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL);
      self->_sequence = v7;
      if (v7)
      {
        self->_sequenceCount = a4;
        memcpy(v7, a3, 8 * a4);
        self->_payload = *self->_sequence;
      }
    }
  }

  return 0;
}

@end