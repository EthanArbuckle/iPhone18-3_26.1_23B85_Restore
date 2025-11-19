@interface IMMessagePartGUID
+ (id)encodeMessagePartGUID:(id)a3 prefix:(id)a4 partNumber:(unint64_t)a5;
- (BOOL)decodeRangesWithEncodedGuid:(id)a3 ranges:(IMMessagePartRanges *)a4;
- (BOOL)isEqual:(id)a3;
- (IMMessagePartGUID)initWithCoder:(id)a3;
- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)a3;
- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)a3 messageGUID:(id)a4 prefix:(id)a5 partNumber:(unint64_t)a6 ranges:(IMMessagePartRanges *)a7;
- (IMMessagePartGUID)initWithMessageGUID:(id)a3 prefix:(id)a4 partNumber:(unint64_t)a5;
- (IMMessagePartRanges)ranges;
- (_NSRange)messageGUIDRange;
- (_NSRange)partNumberRange;
- (_NSRange)prefixRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMMessagePartGUID

- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v7 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C142C(v7);
    }

    goto LABEL_9;
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (![(IMMessagePartGUID *)self decodeRangesWithEncodedGuid:v5 ranges:&v15])
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (*(&v15 + 1))
  {
    v6 = [v5 substringWithRange:v15];
  }

  else
  {
    v6 = 0;
  }

  if (*(&v17 + 1))
  {
    v10 = [v5 substringWithRange:v17];
  }

  else
  {
    v10 = 0;
  }

  if (*(&v16 + 1))
  {
    v11 = [v5 substringWithRange:v16];
    v12 = v11;
    if (v11 && [v11 length])
    {
      v13 = [v12 unsignedIntValue];
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  self = [(IMMessagePartGUID *)self initWithEncodedMessagePartGUID:v5 messageGUID:v10 prefix:v6 partNumber:v13 ranges:v14];

  v8 = self;
LABEL_10:

  return v8;
}

- (BOOL)decodeRangesWithEncodedGuid:(id)a3 ranges:(IMMessagePartRanges *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    a4->partNumberRange = 0u;
    a4->messageGUIDRange = 0u;
    a4->prefixRange = 0u;
    if (![v5 length])
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = [v6 characterAtIndex:v7];
      if (v12 == 58)
      {
        v13 = v7;
      }

      else
      {
        v13 = v10;
      }

      if (v12 == 58)
      {
        v14 = v7;
      }

      else
      {
        v14 = v11;
      }

      if (v12 == 47)
      {
        v9 = v11 + 1;
      }

      else
      {
        v10 = v13;
      }

      if (v12 == 47)
      {
        v8 = ~v11 + v7;
        v11 = v7;
      }

      else
      {
        v11 = v14;
      }

      ++v7;
    }

    while (v7 < [v6 length]);
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v6 length];
      a4->prefixRange.location = 0;
      a4->prefixRange.length = v10;
      a4->partNumberRange.location = v9;
      a4->partNumberRange.length = v8;
      a4->messageGUIDRange.location = v11 + 1;
      a4->messageGUIDRange.length = v15 + ~v11;
      LOBYTE(a4) = 1;
    }

    else
    {
LABEL_18:
      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (IMMessagePartGUID)initWithMessageGUID:(id)a3 prefix:(id)a4 partNumber:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() encodeMessagePartGUID:v9 prefix:v8 partNumber:a5];

  v11 = [(IMMessagePartGUID *)self initWithEncodedMessagePartGUID:v10];
  return v11;
}

- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)a3 messageGUID:(id)a4 prefix:(id)a5 partNumber:(unint64_t)a6 ranges:(IMMessagePartRanges *)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v32.receiver = self;
  v32.super_class = IMMessagePartGUID;
  v15 = [(IMMessagePartGUID *)&v32 init];
  if (!v15)
  {
    goto LABEL_11;
  }

  if (!v12 || (v16 = [v12 length], !v14) || !v16 || (v17 = objc_msgSend(v14, "length"), !v13) || !v17 || !objc_msgSend(v13, "length"))
  {
    v27 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = v12;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      _os_log_error_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_ERROR, "Failed to create IMMessagePartGuid with input: encodedMessagePartGUID: %@, prefix: %@, messageGUID: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (!a7->messageGUIDRange.length || !a7->prefixRange.length)
  {
    v29 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromRange(a7->prefixRange);
      v31 = NSStringFromRange(a7->messageGUIDRange);
      *buf = 138412546;
      v34 = v30;
      v35 = 2112;
      v36 = v31;
      _os_log_error_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_ERROR, "Failed to create IMMessagePartGuid with invalid ranges: prefixRange: %@, messageGUIDRange: %@", buf, 0x16u);
    }

LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v18 = [v12 copy];
  encodedMessagePartGUID = v15->_encodedMessagePartGUID;
  v15->_encodedMessagePartGUID = v18;

  v20 = [v13 copy];
  messageGUID = v15->_messageGUID;
  v15->_messageGUID = v20;

  v22 = [v14 copy];
  prefix = v15->_prefix;
  v15->_prefix = v22;

  v15->_partNumber = a6;
  prefixRange = a7->prefixRange;
  partNumberRange = a7->partNumberRange;
  v15->_ranges.messageGUIDRange = a7->messageGUIDRange;
  v15->_ranges.partNumberRange = partNumberRange;
  v15->_ranges.prefixRange = prefixRange;
LABEL_11:
  v26 = v15;
LABEL_16:

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  v6 = [(IMMessagePartGUID *)self messageGUID];
  v7 = [(IMMessagePartGUID *)self prefix];
  v8 = [(IMMessagePartGUID *)self partNumber];
  [(IMMessagePartGUID *)self ranges];
  v9 = [v4 initWithEncodedMessagePartGUID:v5 messageGUID:v6 prefix:v7 partNumber:v8 ranges:&v11];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(IMMessagePartGUID *)self encodedMessagePartGUID];
    v6 = [v4 encodedMessagePartGUID];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)prefixRange
{
  length = self->_ranges.prefixRange.length;
  location = self->_ranges.prefixRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)partNumberRange
{
  length = self->_ranges.partNumberRange.length;
  location = self->_ranges.partNumberRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)messageGUIDRange
{
  length = self->_ranges.messageGUIDRange.length;
  location = self->_ranges.messageGUIDRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = IMMessagePartGUID;
  v4 = [(IMMessagePartGUID *)&v14 description];
  v5 = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  v6 = [(IMMessagePartGUID *)self prefix];
  v7 = [(IMMessagePartGUID *)self messageGUID];
  v8 = [(IMMessagePartGUID *)self partNumber];
  v16.location = [(IMMessagePartGUID *)self prefixRange];
  v9 = NSStringFromRange(v16);
  v17.location = [(IMMessagePartGUID *)self partNumberRange];
  v10 = NSStringFromRange(v17);
  v18.location = [(IMMessagePartGUID *)self messageGUIDRange];
  v11 = NSStringFromRange(v18);
  v12 = [v3 stringWithFormat:@"%@ encodedMessagePartGUID: %@, prefix: %@, messageGUID: %@, partNumber: %ld, prefixRange: %@, partNumberRange: %@, messageGUIDRange: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

+ (id)encodeMessagePartGUID:(id)a3 prefix:(id)a4 partNumber:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8 && [v7 length] && objc_msgSend(v9, "length"))
  {
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%c%@", v9, 58, v7, v13, v14];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%c%ld%c%@", v9, 58, a5, 47, v7];
    }
    v11 = ;
  }

  else
  {
    v10 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C142C(v10);
    }

    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  [v4 encodeObject:v5 forKey:@"encodedMessagePartGUID"];
}

- (IMMessagePartGUID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedMessagePartGUID"];

  v6 = [(IMMessagePartGUID *)self initWithEncodedMessagePartGUID:v5];
  return v6;
}

- (IMMessagePartRanges)ranges
{
  v3 = *&self[1].prefixRange.length;
  retstr->prefixRange = *&self->messageGUIDRange.length;
  retstr->partNumberRange = v3;
  retstr->messageGUIDRange = *&self[1].partNumberRange.length;
  return self;
}

@end