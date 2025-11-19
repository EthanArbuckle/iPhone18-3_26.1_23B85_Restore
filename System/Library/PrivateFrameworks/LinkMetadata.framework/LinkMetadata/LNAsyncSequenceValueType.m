@interface LNAsyncSequenceValueType
- (BOOL)isEqual:(id)a3;
- (LNAsyncSequenceValueType)initWithCoder:(id)a3;
- (LNAsyncSequenceValueType)initWithMemberValueType:(id)a3 capabilities:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAsyncSequenceValueType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
    goto LABEL_14;
  }

  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = LNAsyncSequenceValueType;
    if ([(LNValueType *)&v16 isEqual:v6])
    {
      v7 = [(LNAsyncSequenceValueType *)self memberValueType];
      v8 = [(LNAsyncSequenceValueType *)v6 memberValueType];
      v9 = v7;
      v10 = v8;
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

      v15 = [(LNAsyncSequenceValueType *)self capabilities];
      v13 = v15 == [(LNAsyncSequenceValueType *)v6 capabilities];
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
  v4 = [(LNAsyncSequenceValueType *)self memberValueType];
  v5 = [v4 hash];
  v6 = v5 ^ [(LNAsyncSequenceValueType *)self capabilities];

  return v6 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNAsyncSequenceValueType *)self memberValueType];
  v4 = [v2 stringWithFormat:@"AsyncSequence<%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNAsyncSequenceValueType;
  v4 = a3;
  [(LNValueType *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNAsyncSequenceValueType capabilities](self forKey:{"capabilities", v6.receiver, v6.super_class), @"capabilities"}];
  v5 = [(LNAsyncSequenceValueType *)self memberValueType];
  [v4 encodeObject:v5 forKey:@"memberValueType"];
}

- (LNAsyncSequenceValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"capabilities"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memberValueType"];

  if (v6)
  {
    self = [(LNAsyncSequenceValueType *)self initWithMemberValueType:v6 capabilities:v5];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LNAsyncSequenceValueType)initWithMemberValueType:(id)a3 capabilities:(int64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceValueType.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"![memberValueType isKindOfClass:[LN_TYPE(ArrayValueType) class]]"}];
  }

  v15.receiver = self;
  v15.super_class = LNAsyncSequenceValueType;
  v8 = [(LNValueType *)&v15 initWithContentType:0];
  v9 = v8;
  if (v8)
  {
    v8->_capabilities = a4;
    v10 = [v7 copy];
    memberValueType = v9->_memberValueType;
    v9->_memberValueType = v10;

    v12 = v9;
  }

  return v9;
}

@end