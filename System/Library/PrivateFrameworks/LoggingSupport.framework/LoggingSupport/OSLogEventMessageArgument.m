@interface OSLogEventMessageArgument
- (NSObject)objectRepresentation;
- (OSLogEventMessageArgument)initWithProxy:(id)a3 index:(unint64_t)a4;
- (double)doubleValue;
- (double)longDoubleValue;
- (int64_t)int64Value;
- (unint64_t)availability;
- (unint64_t)category;
- (unint64_t)scalarCategory;
- (unint64_t)scalarType;
- (unint64_t)unsignedInt64Value;
@end

@implementation OSLogEventMessageArgument

- (double)longDoubleValue
{
  v2 = 0.0;
  if (![a1 availability])
  {
    v3 = a1[2];
    if ((*(v3 + 16) & 0x10) != 0)
    {
      scalar = os_log_fmt_read_scalar(v3 + 8, *v3, *(v3 + 82));
      v5 = [a1 scalarCategory];
      if (v5 > 2)
      {
        if (v5 == 3 || v5 == 4)
        {
          return *&scalar;
        }
      }

      else if (v5 == 1)
      {
        return scalar;
      }

      else if (v5 == 2)
      {
        return scalar;
      }
    }
  }

  return v2;
}

- (double)doubleValue
{
  v3 = 0.0;
  if (![(OSLogEventMessageArgument *)self availability])
  {
    rawArg = self->_rawArg;
    if ((rawArg->var1.var1 & 0x10) != 0)
    {
      scalar = os_log_fmt_read_scalar(&rawArg->var1, rawArg->var0, WORD1(rawArg[1].var0));
      v6 = [(OSLogEventMessageArgument *)self scalarCategory];
      if (v6 > 2)
      {
        if (v6 == 3 || v6 == 4)
        {
          return *&scalar;
        }
      }

      else if (v6 == 1)
      {
        return scalar;
      }

      else if (v6 == 2)
      {
        return scalar;
      }
    }
  }

  return v3;
}

- (int64_t)int64Value
{
  if (![(OSLogEventMessageArgument *)self availability])
  {
    rawArg = self->_rawArg;
    if ((rawArg->var1.var1 & 0x10) != 0)
    {
      v4 = COERCE_DOUBLE(os_log_fmt_read_scalar(&rawArg->var1, rawArg->var0, WORD1(rawArg[1].var0)));
      v6 = [(OSLogEventMessageArgument *)self scalarCategory];
      if (v6 - 1 < 2)
      {
        return *&v4;
      }

      if (v6 == 4 || v6 == 3)
      {
        *&v4 = v4;
        return *&v4;
      }
    }
  }

  v4 = 0.0;
  return *&v4;
}

- (unint64_t)unsignedInt64Value
{
  if (![(OSLogEventMessageArgument *)self availability])
  {
    rawArg = self->_rawArg;
    if ((rawArg->var1.var1 & 0x10) != 0)
    {
      v4 = COERCE_DOUBLE(os_log_fmt_read_scalar(&rawArg->var1, rawArg->var0, WORD1(rawArg[1].var0)));
      v6 = [(OSLogEventMessageArgument *)self scalarCategory];
      if (v6 - 1 < 2)
      {
        return *&v4;
      }

      if (v6 == 4 || v6 == 3)
      {
        *&v4 = v4;
        return *&v4;
      }
    }
  }

  v4 = 0.0;
  return *&v4;
}

- (NSObject)objectRepresentation
{
  rawArg = self->_rawArg;
  if (LOBYTE(rawArg[1].var0))
  {
    return 0;
  }

  if ((rawArg->var1.var1 & 0x10) == 0)
  {
    v5 = os_log_fmt_object_for_data(&rawArg->var1, BYTE1(rawArg[1].var0), rawArg->var0, WORD1(rawArg[1].var0), self->_sizeofLong);

    return v5;
  }

  scalar = os_log_fmt_read_scalar(&rawArg->var1, rawArg->var0, WORD1(rawArg[1].var0));
  v7 = [(OSLogEventMessageArgument *)self scalarCategory];
  if (v7 > 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      return 0;
    }

    v9 = MEMORY[0x277CCABB0];

    return [v9 numberWithDouble:*&scalar];
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = MEMORY[0x277CCABB0];

        return [v8 numberWithLongLong:scalar];
      }

      return 0;
    }

    v10 = MEMORY[0x277CCABB0];

    return [v10 numberWithUnsignedLongLong:scalar];
  }
}

- (unint64_t)category
{
  rawArg = self->_rawArg;
  if ((rawArg->var1.var1 & 0x10) != 0)
  {
    return 1;
  }

  if ((rawArg->var1.var2 & 0xFC) != 0x10)
  {
    return 0;
  }

  if (BYTE1(rawArg[1].var0) == 3)
  {
    return 3;
  }

  return 2;
}

- (unint64_t)scalarType
{
  result = [(OSLogEventMessageArgument *)self category];
  if (result)
  {
    rawArg = self->_rawArg;
    if ((rawArg->var1.var1 & 0x10) != 0 && (v5 = rawArg->var1.var2 - 1, v5 <= 0xE))
    {
      return qword_22E0817F0[v5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)scalarCategory
{
  result = [(OSLogEventMessageArgument *)self category];
  if (result)
  {
    rawArg = self->_rawArg;
    if ((rawArg->var1.var1 & 0x10) != 0 && (v5 = rawArg->var1.var2 - 1, v5 <= 0xE))
    {
      return qword_22E081778[v5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)availability
{
  rawArg = self->_rawArg;
  var0_low = LOBYTE(rawArg[1].var0);
  if (var0_low <= 0xA)
  {
    if (((1 << var0_low) & 0x718) != 0)
    {
      return 4;
    }

    if (((1 << var0_low) & 0xE2) != 0)
    {
      return 2;
    }

    if (var0_low == 2)
    {
      return 1;
    }
  }

  if (LOBYTE(rawArg[1].var0))
  {
    return 4;
  }

  if (LOBYTE(rawArg[1].var1.var1))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (OSLogEventMessageArgument)initWithProxy:(id)a3 index:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = OSLogEventMessageArgument;
  v6 = [(OSLogEventMessageArgument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_decomposedMessage = a3;
    v6->_rawArg = [a3 _rawPlaceholderForIndex:a4];
    v7->_sizeofLong = [a3 sizeOfLong];
  }

  return v7;
}

@end