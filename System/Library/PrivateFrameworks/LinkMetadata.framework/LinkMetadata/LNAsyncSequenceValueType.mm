@interface LNAsyncSequenceValueType
- (BOOL)isEqual:(id)equal;
- (LNAsyncSequenceValueType)initWithCoder:(id)coder;
- (LNAsyncSequenceValueType)initWithMemberValueType:(id)type capabilities:(int64_t)capabilities;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAsyncSequenceValueType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
    goto LABEL_14;
  }

  v6 = equalCopy;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = LNAsyncSequenceValueType;
    if ([(LNValueType *)&v16 isEqual:v6])
    {
      memberValueType = [(LNAsyncSequenceValueType *)self memberValueType];
      memberValueType2 = [(LNAsyncSequenceValueType *)v6 memberValueType];
      v9 = memberValueType;
      v10 = memberValueType2;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {

LABEL_18:
          v13 = 0;
          goto LABEL_19;
        }

        v12 = [v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      capabilities = [(LNAsyncSequenceValueType *)self capabilities];
      v13 = capabilities == [(LNAsyncSequenceValueType *)v6 capabilities];
LABEL_19:

      goto LABEL_12;
    }
  }

  else
  {

    v6 = 0;
  }

  v13 = 0;
LABEL_12:

LABEL_14:
  return v13;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = LNAsyncSequenceValueType;
  v3 = [(LNValueType *)&v8 hash];
  memberValueType = [(LNAsyncSequenceValueType *)self memberValueType];
  v5 = [memberValueType hash];
  v6 = v5 ^ [(LNAsyncSequenceValueType *)self capabilities];

  return v6 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  memberValueType = [(LNAsyncSequenceValueType *)self memberValueType];
  v4 = [v2 stringWithFormat:@"AsyncSequence<%@>", memberValueType];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNAsyncSequenceValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[LNAsyncSequenceValueType capabilities](self forKey:{"capabilities", v6.receiver, v6.super_class), @"capabilities"}];
  memberValueType = [(LNAsyncSequenceValueType *)self memberValueType];
  [coderCopy encodeObject:memberValueType forKey:@"memberValueType"];
}

- (LNAsyncSequenceValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"capabilities"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memberValueType"];

  if (v6)
  {
    self = [(LNAsyncSequenceValueType *)self initWithMemberValueType:v6 capabilities:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNAsyncSequenceValueType)initWithMemberValueType:(id)type capabilities:(int64_t)capabilities
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceValueType.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"![memberValueType isKindOfClass:[LN_TYPE(ArrayValueType) class]]"}];
  }

  v15.receiver = self;
  v15.super_class = LNAsyncSequenceValueType;
  v8 = [(LNValueType *)&v15 initWithContentType:0];
  v9 = v8;
  if (v8)
  {
    v8->_capabilities = capabilities;
    v10 = [typeCopy copy];
    memberValueType = v9->_memberValueType;
    v9->_memberValueType = v10;

    v12 = v9;
  }

  return v9;
}

@end