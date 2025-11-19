@interface EQKitMathMLMToken
- (EQKitMathMLMToken)initWithContent:(id)a3;
- (EQKitMathMLMToken)initWithString:(id)a3 environment:(id)a4;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)schemataTokenString;
- (unsigned)schemataUnicharOrNul;
- (void)dealloc;
@end

@implementation EQKitMathMLMToken

- (EQKitMathMLMToken)initWithString:(id)a3 environment:(id)a4
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLMToken;
  v5 = [(EQKitMathMLMToken *)&v9 init:a3];
  if (v5)
  {
    v6 = EQKitUtilUTF32CharFromString(a3);
    v7 = *&v5->mFlags & 0xFC;
    if (v6)
    {
      *&v5->mFlags = v7;
      v5->mContent.mChar = v6;
    }

    else
    {
      *&v5->mFlags = v7 | 1;
      v5->mContent.mString = a3;
    }
  }

  return v5;
}

- (EQKitMathMLMToken)initWithContent:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = EQKitMathMLMToken;
    v4 = [(EQKitMathMLMToken *)&v7 init];
    v5 = v4;
    if (v4)
    {
      *&v4->mFlags = *&v4->mFlags & 0xFC | 2;
      v4->mContent.mString = a3;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  if (EQKitXMLIsTextContentOnly(a3))
  {
    EQKitXMLTextContentAsString(a3, 1, &__p);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = [v7 initWithUTF8String:p_p];
    v10 = -[EQKitMathMLMToken initWithString:environment:](self, "initWithString:environment:", v9, [a4 environment]);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v10;
  }

  else
  {
    v12 = [a4 parseChildrenAsTokenContentFromXMLNode:a3];

    return [(EQKitMathMLMToken *)self initWithContent:v12];
  }
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMToken mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMToken mathMLAttributes]::sAttributesData, &-[EQKitMathMLMUnder mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMToken mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  if ((*&self->mFlags & 3u) - 1 <= 1)
  {
  }

  v3.receiver = self;
  v3.super_class = EQKitMathMLMToken;
  [(EQKitMathMLMToken *)&v3 dealloc];
}

- (unsigned)schemataUnicharOrNul
{
  if ((*&self->mFlags & 3) != 0)
  {
    return 0;
  }

  else
  {
    return self->mContent.mChar;
  }
}

- (NSString)description
{
  if ((*&self->mFlags & 3u) > 1)
  {
    if ((*&self->mFlags & 3) == 2)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      return [v8 stringWithFormat:@"<%@ %p content=%@>", NSStringFromClass(v9), self, self->mContent.mString];
    }

    else
    {
      return 0;
    }
  }

  else if ((*&self->mFlags & 3) != 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    return [v10 stringWithFormat:@"<%@ %p string=%@>", NSStringFromClass(v11), self, self->mContent.mString];
  }

  else
  {
    v3 = EQKitUtilNewStringFromUTF32Char(self->mContent.mChar);
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = [v4 stringWithFormat:@"<%@ %p char='%@'>", NSStringFromClass(v5), self, v3];

    return v6;
  }
}

- (id)schemataTokenString
{
  if ((*&self->mFlags & 3) == 1)
  {
    return self->mContent.mString;
  }

  if ((*&self->mFlags & 3) != 0)
  {
    return 0;
  }

  v3 = EQKitUtilNewStringFromUTF32Char(self->mContent.mChar);

  return v3;
}

@end