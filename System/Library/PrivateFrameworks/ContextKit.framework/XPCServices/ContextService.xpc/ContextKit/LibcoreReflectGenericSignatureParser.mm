@interface LibcoreReflectGenericSignatureParser
- (id)parseClassTypeSignature;
- (id)parseFieldTypeSignature;
- (id)parseFormalTypeParameter;
- (id)parseOptTypeArguments;
- (id)parseReturnType;
- (id)parseTypeArgument;
- (id)parseTypeSignature;
- (id)parseTypeVariableSignature;
- (void)dealloc;
- (void)expectWithChar:(unsigned __int16)char;
- (void)parseClassSignature;
- (void)parseForClassWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string;
- (void)parseForConstructorWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string withIOSClassArray:(id)array;
- (void)parseForFieldWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string;
- (void)parseForMethodWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string withIOSClassArray:(id)array;
- (void)parseMethodTypeSignatureWithIOSClassArray:(id)array;
- (void)parseOptFormalTypeParameters;
- (void)scanIdentifier;
- (void)scanSymbol;
- (void)setInputWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string;
@end

@implementation LibcoreReflectGenericSignatureParser

- (void)setInputWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string
{
  if (string)
  {
    JreStrongAssign(&self->genericDecl_, declaration);
    JreStrongAssign(&self->buffer_, [string toCharArray]);
    self->eof_ = 0;

    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
  }

  else
  {
    self->eof_ = 1;
  }
}

- (void)parseForClassWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string
{
  [(LibcoreReflectGenericSignatureParser *)self setInputWithJavaLangReflectGenericDeclaration:declaration withNSString:string];
  if (self->eof_)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (declaration && (objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001BBB54();
      }

      JreStrongAssign(&self->formalTypeParameters_, LibcoreUtilEmptyArray_TYPE_VARIABLE_);
      if (!declaration || (JreStrongAssign(&self->superclassType_, [declaration getSuperclass]), (v6 = objc_msgSend(declaration, "getInterfaces")) == 0))
      {
        JreThrowNullPointerException();
      }

      if (v6[2])
      {
        v7 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(v6);

        JreStrongAssignAndConsume(&self->interfaceTypes_, v7);
        return;
      }

      if (atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001BBB54();
      }

      JreStrongAssign(&self->formalTypeParameters_, LibcoreUtilEmptyArray_TYPE_VARIABLE_);
      v8 = NSObject_class_();
      JreStrongAssign(&self->superclassType_, v8);
      if (atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire))
      {
        goto LABEL_22;
      }
    }

    sub_10028EE84();
LABEL_22:
    v9 = LibcoreReflectListOfTypes_EMPTY_;

    JreStrongAssign(&self->interfaceTypes_, v9);
    return;
  }

  [(LibcoreReflectGenericSignatureParser *)self parseClassSignature];
}

- (void)parseForMethodWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string withIOSClassArray:(id)array
{
  [(LibcoreReflectGenericSignatureParser *)self setInputWithJavaLangReflectGenericDeclaration:declaration withNSString:string];
  if (self->eof_)
  {
    objc_opt_class();
    if (declaration && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    JreStrongAssign(&self->formalTypeParameters_, LibcoreUtilEmptyArray_TYPE_VARIABLE_);
    if (!declaration)
    {
      goto LABEL_25;
    }

    getParameterTypes = [declaration getParameterTypes];
    if (!getParameterTypes)
    {
      goto LABEL_25;
    }

    if (getParameterTypes[2])
    {
      v9 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(getParameterTypes);
      JreStrongAssignAndConsume(&self->parameterTypes_, v9);
    }

    else
    {
      if ((atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10028EE84();
      }

      JreStrongAssign(&self->parameterTypes_, LibcoreReflectListOfTypes_EMPTY_);
    }

    getExceptionTypes = [declaration getExceptionTypes];
    if (!getExceptionTypes)
    {
LABEL_25:
      JreThrowNullPointerException();
    }

    if (getExceptionTypes[2])
    {
      v11 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(getExceptionTypes);
      JreStrongAssignAndConsume(&self->exceptionTypes_, v11);
    }

    else
    {
      if ((atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10028EE84();
      }

      JreStrongAssign(&self->exceptionTypes_, LibcoreReflectListOfTypes_EMPTY_);
    }

    getReturnType = [declaration getReturnType];

    JreStrongAssign(&self->returnType_, getReturnType);
  }

  else
  {

    [(LibcoreReflectGenericSignatureParser *)self parseMethodTypeSignatureWithIOSClassArray:array];
  }
}

- (void)parseForConstructorWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string withIOSClassArray:(id)array
{
  [(LibcoreReflectGenericSignatureParser *)self setInputWithJavaLangReflectGenericDeclaration:declaration withNSString:string];
  if (self->eof_)
  {
    objc_opt_class();
    if (declaration && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    JreStrongAssign(&self->formalTypeParameters_, LibcoreUtilEmptyArray_TYPE_VARIABLE_);
    if (!declaration)
    {
      goto LABEL_26;
    }

    getParameterTypes = [declaration getParameterTypes];
    if (!getParameterTypes)
    {
      goto LABEL_26;
    }

    if (getParameterTypes[2])
    {
      v9 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(getParameterTypes);
      JreStrongAssignAndConsume(&self->parameterTypes_, v9);
    }

    else
    {
      if ((atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10028EE84();
      }

      JreStrongAssign(&self->parameterTypes_, LibcoreReflectListOfTypes_EMPTY_);
    }

    getExceptionTypes = [declaration getExceptionTypes];
    if (!getExceptionTypes)
    {
LABEL_26:
      JreThrowNullPointerException();
    }

    if (getExceptionTypes[2])
    {
      v11 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(getExceptionTypes);

      JreStrongAssignAndConsume(&self->exceptionTypes_, v11);
    }

    else
    {
      if ((atomic_load_explicit(LibcoreReflectListOfTypes__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10028EE84();
      }

      v12 = LibcoreReflectListOfTypes_EMPTY_;

      JreStrongAssign(&self->exceptionTypes_, v12);
    }
  }

  else
  {

    [(LibcoreReflectGenericSignatureParser *)self parseMethodTypeSignatureWithIOSClassArray:array];
  }
}

- (void)parseForFieldWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string
{
  [(LibcoreReflectGenericSignatureParser *)self setInputWithJavaLangReflectGenericDeclaration:declaration withNSString:string];
  if (!self->eof_)
  {
    parseFieldTypeSignature = [(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature];

    JreStrongAssign(&self->fieldType_, parseFieldTypeSignature);
  }
}

- (void)parseClassSignature
{
  [(LibcoreReflectGenericSignatureParser *)self parseOptFormalTypeParameters];
  JreStrongAssign(&self->superclassType_, [(LibcoreReflectGenericSignatureParser *)self parseClassTypeSignature]);
  v3 = new_LibcoreReflectListOfTypes_initWithInt_(16);
  JreStrongAssignAndConsume(&self->interfaceTypes_, v3);
  while (self->symbol_)
  {
    [(LibcoreReflectListOfTypes *)self->interfaceTypes_ addWithJavaLangReflectType:[(LibcoreReflectGenericSignatureParser *)self parseClassTypeSignature]];
  }
}

- (void)parseOptFormalTypeParameters
{
  v3 = new_LibcoreReflectListOfVariables_init();
  if (self->symbol_ == 60)
  {
    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
    do
    {
      [(LibcoreReflectListOfVariables *)v3 addWithJavaLangReflectTypeVariable:[(LibcoreReflectGenericSignatureParser *)self parseFormalTypeParameter]];
      symbol = self->symbol_;
    }

    while (symbol != 62 && symbol != 0);
    [(LibcoreReflectGenericSignatureParser *)self expectWithChar:62];
  }

  getArray = [(LibcoreReflectListOfVariables *)v3 getArray];

  JreStrongAssign(&self->formalTypeParameters_, getArray);
}

- (id)parseFormalTypeParameter
{
  [(LibcoreReflectGenericSignatureParser *)self scanIdentifier];
  identifier = self->identifier_;
  if (!identifier)
  {
    JreThrowNullPointerException();
  }

  intern = [(NSString *)identifier intern];
  v5 = new_LibcoreReflectListOfTypes_initWithInt_(8);
  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:58];
  symbol = self->symbol_;
  if ((symbol - 76) > 0xF || ((1 << (symbol - 76)) & 0x8101) == 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    [(LibcoreReflectListOfTypes *)v5 addWithJavaLangReflectType:[(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature]];
    symbol = self->symbol_;
LABEL_11:
    if (symbol != 58)
    {
      break;
    }

    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
  }

  v8 = new_LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_withLibcoreReflectListOfTypes_(self->genericDecl_, intern, v5);

  return v8;
}

- (id)parseFieldTypeSignature
{
  symbol = self->symbol_;
  switch(symbol)
  {
    case '[':
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
      v5 = new_LibcoreReflectGenericArrayTypeImpl_initWithJavaLangReflectType_([(LibcoreReflectGenericSignatureParser *)self parseTypeSignature]);

      return v5;
    case 'T':

      return [(LibcoreReflectGenericSignatureParser *)self parseTypeVariableSignature];
    case 'L':

      return [(LibcoreReflectGenericSignatureParser *)self parseClassTypeSignature];
    default:
      v6 = new_JavaLangReflectGenericSignatureFormatError_init();
      objc_exception_throw(v6);
  }
}

- (id)parseClassTypeSignature
{
  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:76];
  v3 = new_JavaLangStringBuilder_init();
  [(LibcoreReflectGenericSignatureParser *)self scanIdentifier];
  while (self->symbol_ == 47)
  {
    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
    v4 = [(JavaLangStringBuilder *)v3 appendWithNSString:self->identifier_];
    if (!v4)
    {
LABEL_9:
      JreThrowNullPointerException();
    }

    [v4 appendWithNSString:@"."];
    [(LibcoreReflectGenericSignatureParser *)self scanIdentifier];
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:self->identifier_];
  v5 = new_LibcoreReflectParameterizedTypeImpl_initWithLibcoreReflectParameterizedTypeImpl_withNSString_withLibcoreReflectListOfTypes_withJavaLangClassLoader_(0, [(JavaLangStringBuilder *)v3 description], [(LibcoreReflectGenericSignatureParser *)self parseOptTypeArguments], self->loader_);
  if (self->symbol_ == 46)
  {
    do
    {
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
      [(LibcoreReflectGenericSignatureParser *)self scanIdentifier];
      v6 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"$"];
      if (!v6)
      {
        goto LABEL_9;
      }

      [v6 appendWithNSString:self->identifier_];
      v7 = new_LibcoreReflectParameterizedTypeImpl_initWithLibcoreReflectParameterizedTypeImpl_withNSString_withLibcoreReflectListOfTypes_withJavaLangClassLoader_(v5, [(JavaLangStringBuilder *)v3 description], [(LibcoreReflectGenericSignatureParser *)self parseOptTypeArguments], self->loader_);
    }

    while (self->symbol_ == 46);
    v5 = v7;
  }

  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:59];
  return v5;
}

- (id)parseOptTypeArguments
{
  v3 = new_LibcoreReflectListOfTypes_initWithInt_(8);
  if (self->symbol_ == 60)
  {
    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
    do
    {
      [(LibcoreReflectListOfTypes *)v3 addWithJavaLangReflectType:[(LibcoreReflectGenericSignatureParser *)self parseTypeArgument]];
      symbol = self->symbol_;
    }

    while (symbol != 62 && symbol != 0);
    [(LibcoreReflectGenericSignatureParser *)self expectWithChar:62];
  }

  return v3;
}

- (id)parseTypeArgument
{
  v3 = new_LibcoreReflectListOfTypes_initWithInt_(1);
  v4 = new_LibcoreReflectListOfTypes_initWithInt_(1);
  symbol = self->symbol_;
  switch(symbol)
  {
    case '-':
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
      [(LibcoreReflectListOfTypes *)v4 addWithJavaLangReflectType:[(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature]];
      goto LABEL_7;
    case '+':
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
      parseFieldTypeSignature = [(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature];
LABEL_8:
      [(LibcoreReflectListOfTypes *)v3 addWithJavaLangReflectType:parseFieldTypeSignature];
      v7 = new_LibcoreReflectWildcardTypeImpl_initWithLibcoreReflectListOfTypes_withLibcoreReflectListOfTypes_(v3, v4);

      return v7;
    case '*':
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
LABEL_7:
      parseFieldTypeSignature = NSObject_class_();
      goto LABEL_8;
  }

  return [(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature];
}

- (id)parseTypeVariableSignature
{
  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:84];
  [(LibcoreReflectGenericSignatureParser *)self scanIdentifier];
  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:59];
  v3 = new_LibcoreReflectTypeVariableImpl_initWithJavaLangReflectGenericDeclaration_withNSString_(self->genericDecl_, self->identifier_);

  return v3;
}

- (id)parseTypeSignature
{
  symbol = self->symbol_;
  if (symbol > 0x48)
  {
    if (self->symbol_ > 0x52u)
    {
      if (symbol == 83)
      {
        [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

        return +[IOSClass shortClass];
      }

      if (symbol == 90)
      {
        [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

        return +[IOSClass BOOLeanClass];
      }
    }

    else
    {
      if (symbol == 73)
      {
        [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

        return +[IOSClass intClass];
      }

      if (symbol == 74)
      {
        [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

        return +[IOSClass longClass];
      }
    }

LABEL_36:

    return [(LibcoreReflectGenericSignatureParser *)self parseFieldTypeSignature];
  }

  if (self->symbol_ > 0x43u)
  {
    if (symbol == 68)
    {
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

      return +[IOSClass doubleClass];
    }

    if (symbol == 70)
    {
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

      return +[IOSClass floatClass];
    }

    goto LABEL_36;
  }

  if (symbol != 66)
  {
    if (symbol == 67)
    {
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

      return +[IOSClass charClass];
    }

    goto LABEL_36;
  }

  [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

  return +[IOSClass byteClass];
}

- (void)parseMethodTypeSignatureWithIOSClassArray:(id)array
{
  [(LibcoreReflectGenericSignatureParser *)self parseOptFormalTypeParameters];
  v5 = new_LibcoreReflectListOfTypes_initWithInt_(16);
  JreStrongAssignAndConsume(&self->parameterTypes_, v5);
  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:40];
  while (self->symbol_ && self->symbol_ != 41)
  {
    [(LibcoreReflectListOfTypes *)self->parameterTypes_ addWithJavaLangReflectType:[(LibcoreReflectGenericSignatureParser *)self parseTypeSignature]];
  }

  [(LibcoreReflectGenericSignatureParser *)self expectWithChar:41];
  JreStrongAssign(&self->returnType_, [(LibcoreReflectGenericSignatureParser *)self parseReturnType]);
  if (self->symbol_ == 94)
  {
    v6 = new_LibcoreReflectListOfTypes_initWithInt_(8);
    JreStrongAssignAndConsume(&self->exceptionTypes_, v6);
    do
    {
      [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
      exceptionTypes = self->exceptionTypes_;
      if (self->symbol_ == 84)
      {
        parseTypeVariableSignature = [(LibcoreReflectGenericSignatureParser *)self parseTypeVariableSignature];
      }

      else
      {
        parseTypeVariableSignature = [(LibcoreReflectGenericSignatureParser *)self parseClassTypeSignature];
      }

      [(LibcoreReflectListOfTypes *)exceptionTypes addWithJavaLangReflectType:parseTypeVariableSignature];
    }

    while (self->symbol_ == 94);
  }

  else
  {
    if (array)
    {
      v9 = new_LibcoreReflectListOfTypes_initWithJavaLangReflectTypeArray_(array);
    }

    else
    {
      v9 = new_LibcoreReflectListOfTypes_initWithInt_(0);
    }

    JreStrongAssignAndConsume(&self->exceptionTypes_, v9);
  }
}

- (id)parseReturnType
{
  if (self->symbol_ == 86)
  {
    [(LibcoreReflectGenericSignatureParser *)self scanSymbol];

    return +[IOSClass voidClass];
  }

  else
  {

    return [(LibcoreReflectGenericSignatureParser *)self parseTypeSignature];
  }
}

- (void)scanSymbol
{
  if (self->eof_)
  {
    v7 = new_JavaLangReflectGenericSignatureFormatError_init();
    objc_exception_throw(v7);
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  size = buffer->super.size_;
  if (pos >= size)
  {
    self->symbol_ = 0;
    self->eof_ = 1;
  }

  else
  {
    if (pos < 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, self->pos_);
    }

    v6 = self->pos_;
    self->symbol_ = *(&buffer->super.size_ + pos + 2);
    self->pos_ = pos + 1;
  }
}

- (void)expectWithChar:(unsigned __int16)char
{
  if (self->symbol_ != char)
  {
    v4 = new_JavaLangReflectGenericSignatureFormatError_init();
    objc_exception_throw(v4);
  }

  [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
}

- (void)scanIdentifier
{
  if (self->eof_)
  {
LABEL_24:
    v13 = new_JavaLangReflectGenericSignatureFormatError_init();
    objc_exception_throw(v13);
  }

  v3 = new_JavaLangStringBuilder_initWithInt_(0x20u);
  symbol = self->symbol_;
  if (symbol <= 0x3C && ((1 << symbol) & 0x1C00C00000000000) != 0)
  {
    self->symbol_ = 0;
    self->eof_ = 1;
    goto LABEL_24;
  }

  v6 = v3;
  [(JavaLangStringBuilder *)v3 appendWithChar:?];
  buffer = self->buffer_;
  while (1)
  {
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    pos = self->pos_;
    size = buffer->super.size_;
    if (pos < 0 || pos >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, pos);
    }

    v10 = *(&buffer->super.size_ + pos + 2);
    if (((v10 & 0xFFDF) - 65) >= 0x1Au && v10 <= 0x3C && ((1 << v10) & 0x1C00C00000000000) != 0)
    {
      break;
    }

    [(JavaLangStringBuilder *)v6 appendWithChar:?];
    v12 = self->pos_ + 1;
    self->pos_ = v12;
    buffer = self->buffer_;
    if (v12 == buffer->super.size_)
    {
      JreStrongAssign(&self->identifier_, [(JavaLangStringBuilder *)v6 description]);
      self->symbol_ = 0;
      self->eof_ = 1;
      return;
    }
  }

  JreStrongAssign(&self->identifier_, [(JavaLangStringBuilder *)v6 description]);

  [(LibcoreReflectGenericSignatureParser *)self scanSymbol];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectGenericSignatureParser;
  [(LibcoreReflectGenericSignatureParser *)&v3 dealloc];
}

@end