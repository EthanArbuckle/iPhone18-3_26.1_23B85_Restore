@interface IMMessagePartGUID
+ (id)encodeMessagePartGUID:(id)d prefix:(id)prefix partNumber:(unint64_t)number;
- (BOOL)decodeRangesWithEncodedGuid:(id)guid ranges:(IMMessagePartRanges *)ranges;
- (BOOL)isEqual:(id)equal;
- (IMMessagePartGUID)initWithCoder:(id)coder;
- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)d;
- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)d messageGUID:(id)iD prefix:(id)prefix partNumber:(unint64_t)number ranges:(IMMessagePartRanges *)ranges;
- (IMMessagePartGUID)initWithMessageGUID:(id)d prefix:(id)prefix partNumber:(unint64_t)number;
- (IMMessagePartRanges)ranges;
- (_NSRange)messageGUIDRange;
- (_NSRange)partNumberRange;
- (_NSRange)prefixRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMessagePartGUID

- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (!dCopy || ![dCopy length])
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
    selfCopy = 0;
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
      unsignedIntValue = [v12 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  self = [(IMMessagePartGUID *)self initWithEncodedMessagePartGUID:v5 messageGUID:v10 prefix:v6 partNumber:unsignedIntValue ranges:v14];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)decodeRangesWithEncodedGuid:(id)guid ranges:(IMMessagePartRanges *)ranges
{
  guidCopy = guid;
  v6 = guidCopy;
  if (ranges)
  {
    ranges->partNumberRange = 0u;
    ranges->messageGUIDRange = 0u;
    ranges->prefixRange = 0u;
    if (![guidCopy length])
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
      ranges->prefixRange.location = 0;
      ranges->prefixRange.length = v10;
      ranges->partNumberRange.location = v9;
      ranges->partNumberRange.length = v8;
      ranges->messageGUIDRange.location = v11 + 1;
      ranges->messageGUIDRange.length = v15 + ~v11;
      LOBYTE(ranges) = 1;
    }

    else
    {
LABEL_18:
      LOBYTE(ranges) = 0;
    }
  }

  return ranges;
}

- (IMMessagePartGUID)initWithMessageGUID:(id)d prefix:(id)prefix partNumber:(unint64_t)number
{
  prefixCopy = prefix;
  dCopy = d;
  v10 = [objc_opt_class() encodeMessagePartGUID:dCopy prefix:prefixCopy partNumber:number];

  v11 = [(IMMessagePartGUID *)self initWithEncodedMessagePartGUID:v10];
  return v11;
}

- (IMMessagePartGUID)initWithEncodedMessagePartGUID:(id)d messageGUID:(id)iD prefix:(id)prefix partNumber:(unint64_t)number ranges:(IMMessagePartRanges *)ranges
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  prefixCopy = prefix;
  v32.receiver = self;
  v32.super_class = IMMessagePartGUID;
  v15 = [(IMMessagePartGUID *)&v32 init];
  if (!v15)
  {
    goto LABEL_11;
  }

  if (!dCopy || (v16 = [dCopy length], !prefixCopy) || !v16 || (v17 = objc_msgSend(prefixCopy, "length"), !iDCopy) || !v17 || !objc_msgSend(iDCopy, "length"))
  {
    v27 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = dCopy;
      v35 = 2112;
      v36 = iDCopy;
      v37 = 2112;
      v38 = prefixCopy;
      _os_log_error_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_ERROR, "Failed to create IMMessagePartGuid with input: encodedMessagePartGUID: %@, prefix: %@, messageGUID: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (!ranges->messageGUIDRange.length || !ranges->prefixRange.length)
  {
    v29 = IMLogHandleForCategory("IMMessagePartGUID");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromRange(ranges->prefixRange);
      v31 = NSStringFromRange(ranges->messageGUIDRange);
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

  v18 = [dCopy copy];
  encodedMessagePartGUID = v15->_encodedMessagePartGUID;
  v15->_encodedMessagePartGUID = v18;

  v20 = [iDCopy copy];
  messageGUID = v15->_messageGUID;
  v15->_messageGUID = v20;

  v22 = [prefixCopy copy];
  prefix = v15->_prefix;
  v15->_prefix = v22;

  v15->_partNumber = number;
  prefixRange = ranges->prefixRange;
  partNumberRange = ranges->partNumberRange;
  v15->_ranges.messageGUIDRange = ranges->messageGUIDRange;
  v15->_ranges.partNumberRange = partNumberRange;
  v15->_ranges.prefixRange = prefixRange;
LABEL_11:
  v26 = v15;
LABEL_16:

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  encodedMessagePartGUID = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  messageGUID = [(IMMessagePartGUID *)self messageGUID];
  prefix = [(IMMessagePartGUID *)self prefix];
  partNumber = [(IMMessagePartGUID *)self partNumber];
  [(IMMessagePartGUID *)self ranges];
  v9 = [v4 initWithEncodedMessagePartGUID:encodedMessagePartGUID messageGUID:messageGUID prefix:prefix partNumber:partNumber ranges:&v11];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    encodedMessagePartGUID = [(IMMessagePartGUID *)self encodedMessagePartGUID];
    encodedMessagePartGUID2 = [equalCopy encodedMessagePartGUID];
    v7 = [encodedMessagePartGUID isEqualToString:encodedMessagePartGUID2];
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
  encodedMessagePartGUID = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  prefix = [(IMMessagePartGUID *)self prefix];
  messageGUID = [(IMMessagePartGUID *)self messageGUID];
  partNumber = [(IMMessagePartGUID *)self partNumber];
  v16.location = [(IMMessagePartGUID *)self prefixRange];
  v9 = NSStringFromRange(v16);
  v17.location = [(IMMessagePartGUID *)self partNumberRange];
  v10 = NSStringFromRange(v17);
  v18.location = [(IMMessagePartGUID *)self messageGUIDRange];
  v11 = NSStringFromRange(v18);
  v12 = [v3 stringWithFormat:@"%@ encodedMessagePartGUID: %@, prefix: %@, messageGUID: %@, partNumber: %ld, prefixRange: %@, partNumberRange: %@, messageGUIDRange: %@", v4, encodedMessagePartGUID, prefix, messageGUID, partNumber, v9, v10, v11];

  return v12;
}

+ (id)encodeMessagePartGUID:(id)d prefix:(id)prefix partNumber:(unint64_t)number
{
  dCopy = d;
  prefixCopy = prefix;
  v9 = prefixCopy;
  if (dCopy && prefixCopy && [dCopy length] && objc_msgSend(v9, "length"))
  {
    if (number == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%c%@", v9, 58, dCopy, v13, v14];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%c%ld%c%@", v9, 58, number, 47, dCopy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodedMessagePartGUID = [(IMMessagePartGUID *)self encodedMessagePartGUID];
  [coderCopy encodeObject:encodedMessagePartGUID forKey:@"encodedMessagePartGUID"];
}

- (IMMessagePartGUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedMessagePartGUID"];

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