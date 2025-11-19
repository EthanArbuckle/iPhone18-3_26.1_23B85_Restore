@interface JavaTextMessageFormat
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (JavaTextMessageFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextMessageFormat)initWithNSString:(id)a3;
- (JavaTextMessageFormat)initWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
- (id)clone;
- (id)formatToCharacterIteratorWithId:(id)a3;
- (id)getFormats;
- (id)getFormatsByArgumentIndex;
- (id)parseWithNSString:(id)a3;
- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4;
- (id)toPattern;
- (unint64_t)hash;
- (void)applyPatternWithNSString:(id)a3;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)setFormatByArgumentIndexWithInt:(int)a3 withJavaTextFormat:(id)a4;
- (void)setFormatWithInt:(int)a3 withJavaTextFormat:(id)a4;
- (void)setFormatsByArgumentIndexWithJavaTextFormatArray:(id)a3;
- (void)setFormatsWithJavaTextFormatArray:(id)a3;
- (void)setLocaleWithJavaUtilLocale:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaTextMessageFormat

- (JavaTextMessageFormat)initWithNSString:(id)a3 withJavaUtilLocale:(id)a4
{
  JavaTextFormat_init(self, a2);
  JreStrongAssign(&self->locale_, a4);
  [(JavaTextMessageFormat *)self applyPatternWithNSString:a3];
  return self;
}

- (JavaTextMessageFormat)initWithNSString:(id)a3
{
  Default = JavaUtilLocale_getDefault();
  JavaTextFormat_init(self, v6);
  JreStrongAssign(&self->locale_, Default);
  [(JavaTextMessageFormat *)self applyPatternWithNSString:a3];
  return self;
}

- (void)applyPatternWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 length];
  v5 = new_JavaLangStringBuffer_init();
  v6 = new_JavaTextParsePosition_initWithInt_(0);
  v7 = new_JavaUtilArrayList_init();
  v24 = [IOSIntArray arrayWithLength:10];
  v22 = new_JavaUtilArrayList_init();
  if ([(JavaTextParsePosition *)v6 getIndex]>= v4)
  {
    LODWORD(v25) = 0;
    v8 = -1;
  }

  else
  {
    v25 = 0;
    v8 = -1;
    v21 = v5;
    do
    {
      if (JavaTextFormat_upToWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_(a3, v6, v5, 123))
      {
        v9 = v7;
        v10 = [(JavaTextParsePosition *)v6 getIndex];
        if (v10 >= v4)
        {
LABEL_25:
          v20 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid argument number");
          objc_exception_throw(v20);
        }

        v11 = v10;
        v12 = 0;
        while (1)
        {
          v13 = [a3 charAtWithInt:v11];
          if (v13 == 44 || v13 == 125)
          {
            break;
          }

          v12 = v13 + 10 * v12 - 48;
          if (v12 >= 0)
          {
            v11 = (v11 + 1);
            if (v11 < v4)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        [(JavaTextParsePosition *)v6 setIndexWithInt:v11];
        [(JavaUtilArrayList *)v22 addWithId:sub_1001E4CC4(self, a3, v6)];
        v15 = v24;
        v14 = v25;
        size = v24->super.size_;
        if (v25 >= size)
        {
          v17 = [IOSIntArray arrayWithLength:2 * size];
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v24, 0, v17, 0, v24->super.size_);
          v14 = v25;
          size = v17->super.size_;
          v15 = v17;
        }

        v7 = v9;
        v5 = v21;
        if (v14 < 0 || v14 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v25);
        }

        *(&v15->super.size_ + v14 + 1) = v12;
        if (v12 > v8)
        {
          v8 = v12;
        }

        v24 = v15;
        v25 = (v14 + 1);
      }

      [(JavaUtilArrayList *)v7 addWithId:[(JavaLangStringBuffer *)v5 description]];
      [(JavaLangStringBuffer *)v5 setLengthWithInt:0];
    }

    while ([(JavaTextParsePosition *)v6 getIndex]< v4);
  }

  v18 = [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:NSString_class_()]];
  JreStrongAssign(&self->strings_, v18);
  JreStrongAssign(&self->argumentNumbers_, v24);
  v19 = [(JavaUtilArrayList *)v22 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v25 type:JavaTextFormat_class_()]];
  JreStrongAssign(&self->formats_, v19);
  self->maxOffset_ = v25 - 1;
  self->maxArgumentIndex_ = v8;
}

- (id)clone
{
  v16.receiver = self;
  v16.super_class = JavaTextMessageFormat;
  v3 = [(JavaTextFormat *)&v16 clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_20:
    JreThrowClassCastException();
  }

  formats = self->formats_;
  if (!formats)
  {
    goto LABEL_19;
  }

  v5 = [IOSObjectArray arrayWithLength:formats->super.size_ type:JavaTextFormat_class_()];
  size = self->formats_->super.size_;
  v7 = (size - 1);
  if (size - 1 >= 0)
  {
    do
    {
      v8 = self->formats_;
      v9 = v8->super.size_;
      if (v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      if ((&v8->elementType_)[v7])
      {
        v10 = self->formats_;
        v11 = v10->super.size_;
        if (v7 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v7);
        }

        v12 = (&v10->elementType_)[v7];
        if (!v12)
        {
          goto LABEL_19;
        }

        v13 = [(IOSClass *)v12 clone];
        objc_opt_class();
        if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_20;
        }

        IOSObjectArray_Set(v5, v7, v13);
      }
    }

    while (v7-- > 0);
  }

  if (!v3)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  JreStrongAssign(v3 + 4, v5);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    objc_opt_class();
    if (!a3)
    {
      goto LABEL_27;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    maxOffset = self->maxOffset_;
    if (maxOffset == *(a3 + 10))
    {
      if ((maxOffset & 0x80000000) == 0)
      {
        v6 = 0;
        while (1)
        {
          argumentNumbers = self->argumentNumbers_;
          if (!argumentNumbers)
          {
            break;
          }

          size = argumentNumbers->super.size_;
          if ((v6 & 0x80000000) != 0 || v6 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v6);
          }

          v9 = *(&argumentNumbers->super.size_ + v6 + 1);
          v10 = *(a3 + 3);
          v11 = *(v10 + 8);
          if ((v6 & 0x80000000) != 0 || v6 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v6);
          }

          if (v9 != *(v10 + 12 + 4 * v6))
          {
            goto LABEL_18;
          }

          v6 = (v6 + 1);
          if (v6 > self->maxOffset_)
          {
            goto LABEL_21;
          }
        }

LABEL_27:
        JreThrowNullPointerException();
      }

LABEL_21:
      locale = self->locale_;
      if (!locale)
      {
        goto LABEL_27;
      }

      v12 = [(JavaUtilLocale *)locale isEqual:*(a3 + 1)];
      if (v12)
      {
        v12 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->strings_, *(a3 + 2));
        if (v12)
        {
          formats = self->formats_;
          v15 = *(a3 + 4);

          LOBYTE(v12) = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(formats, v15);
        }
      }
    }

    else
    {
LABEL_18:
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)formatToCharacterIteratorWithId:(id)a3
{
  if (!a3)
  {
    v15 = new_JavaLangNullPointerException_initWithNSString_(@"object == null");
    objc_exception_throw(v15);
  }

  v5 = new_JavaLangStringBuffer_init();
  v6 = new_JavaUtilArrayList_init();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = new_JavaTextFieldPosition_initWithInt_(0);
  sub_1001E5550(self, a3, v5, v7, v6);
  v8 = new_JavaTextAttributedString_initWithNSString_([(JavaLangStringBuffer *)v5 description]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (!v13)
        {
          JreThrowNullPointerException();
        }

        [(JavaTextAttributedString *)v8 addAttributeWithJavaTextAttributedCharacterIterator_Attribute:*(v13 + 16) withId:*(v13 + 24) withInt:*(v13 + 8) withInt:*(v13 + 12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return [(JavaTextAttributedString *)v8 getIterator];
}

- (JavaTextMessageFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
{
  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return sub_1001E5550(self, a3, a4, a5, 0);
}

- (id)getFormats
{
  formats = self->formats_;
  if (!formats)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)formats clone];
}

- (id)getFormatsByArgumentIndex
{
  v3 = [IOSObjectArray arrayWithLength:self->maxArgumentIndex_ + 1 type:JavaTextFormat_class_()];
  if (self->maxOffset_ <= 0x7FFFFFFEu)
  {
    v4 = 0;
    do
    {
      argumentNumbers = self->argumentNumbers_;
      if (!argumentNumbers)
      {
        goto LABEL_12;
      }

      size = argumentNumbers->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      formats = self->formats_;
      if (!formats)
      {
LABEL_12:
        JreThrowNullPointerException();
      }

      v8 = *(&argumentNumbers->super.size_ + v4 + 1);
      v9 = formats->super.size_;
      if (v4 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v4);
      }

      IOSObjectArray_Set(v3, v8, (&formats->elementType_)[v4++]);
    }

    while (v4 < self->maxOffset_ + 1);
  }

  return v3;
}

- (void)setFormatByArgumentIndexWithInt:(int)a3 withJavaTextFormat:(id)a4
{
  if (self->maxOffset_ <= 0x7FFFFFFEu)
  {
    v7 = 0;
    do
    {
      argumentNumbers = self->argumentNumbers_;
      if (!argumentNumbers)
      {
LABEL_12:
        JreThrowNullPointerException();
      }

      size = argumentNumbers->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      if (*(&argumentNumbers->super.size_ + v7 + 1) == a3)
      {
        formats = self->formats_;
        if (!formats)
        {
          goto LABEL_12;
        }

        IOSObjectArray_Set(formats, v7, a4);
      }

      ++v7;
    }

    while (v7 < self->maxOffset_ + 1);
  }
}

- (void)setFormatsByArgumentIndexWithJavaTextFormatArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_18;
  }

  if (*(a3 + 2) >= 1)
  {
    v5 = 0;
    while (self->maxOffset_ > 0x7FFFFFFEu)
    {
LABEL_16:
      if (++v5 >= *(a3 + 2))
      {
        return;
      }
    }

    v6 = 0;
    while (1)
    {
      argumentNumbers = self->argumentNumbers_;
      if (!argumentNumbers)
      {
        break;
      }

      size = argumentNumbers->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      if (v5 == *(&argumentNumbers->super.size_ + v6 + 1))
      {
        if (!self->formats_)
        {
          break;
        }

        v9 = *(a3 + 2);
        if (v5 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v5);
        }

        IOSObjectArray_Set(self->formats_, v6, *(a3 + v5 + 3));
      }

      if (++v6 >= self->maxOffset_ + 1)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }
}

- (unint64_t)hash
{
  maxOffset = self->maxOffset_;
  if ((maxOffset & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      argumentNumbers = self->argumentNumbers_;
      if (!argumentNumbers)
      {
        break;
      }

      size = argumentNumbers->super.size_;
      if ((v4 & 0x80000000) != 0 || v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      strings = self->strings_;
      if (!strings)
      {
        break;
      }

      v9 = *(&argumentNumbers->super.size_ + v4 + 1);
      v10 = strings->super.size_;
      if ((v4 & 0x80000000) != 0 || v4 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v4);
      }

      v11 = (&strings->elementType_)[v4];
      if (!v11)
      {
        break;
      }

      v12 = [(IOSClass *)v11 hash];
      formats = self->formats_;
      if (!formats)
      {
        break;
      }

      v14 = v12;
      v15 = formats->super.size_;
      if ((v4 & 0x80000000) != 0 || v4 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v4);
      }

      v5 += v9 + v14;
      if ((&formats->elementType_)[v4])
      {
        v16 = self->formats_;
        v17 = v16->super.size_;
        if ((v4 & 0x80000000) != 0 || v4 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v4);
        }

        v18 = (&v16->elementType_)[v4];
        if (!v18)
        {
          break;
        }

        v5 += [(IOSClass *)v18 hash];
      }

      v4 = (v4 + 1);
      maxOffset = self->maxOffset_;
      if (v4 > maxOffset)
      {
        goto LABEL_25;
      }
    }

LABEL_33:
    JreThrowNullPointerException();
  }

  v5 = 0;
LABEL_25:
  v19 = self->strings_;
  if (!v19)
  {
    goto LABEL_33;
  }

  v20 = maxOffset + 1;
  v21 = v19->super.size_;
  if (v20 < v21)
  {
    if (maxOffset <= -2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, maxOffset + 1);
    }

    v22 = (&v19->elementType_)[v20];
    if (!v22)
    {
      goto LABEL_33;
    }

    v5 += [(IOSClass *)v22 hash];
  }

  locale = self->locale_;
  if (locale)
  {
    v5 += [(JavaUtilLocale *)locale hash];
  }

  return v5;
}

- (id)parseWithNSString:(id)a3
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextMessageFormat *)self parseWithNSString:a3 withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v8 = new_JavaTextParseException_initWithNSString_withInt_(@"Parse failure", [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v8);
  }

  return v6;
}

- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4
{
  if (!a3)
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    return LibcoreUtilEmptyArray_OBJECT_;
  }

  v7 = new_JavaTextParsePosition_initWithInt_(0);
  if (!a4)
  {
    goto LABEL_47;
  }

  v8 = v7;
  v9 = [a4 getIndex];
  v10 = [IOSObjectArray arrayWithLength:self->maxArgumentIndex_ + 1 type:NSObject_class_()];
  maxOffset = self->maxOffset_;
  if (maxOffset < 0)
  {
    goto LABEL_35;
  }

  v37 = a4;
  v12 = 0;
  do
  {
    strings = self->strings_;
    if (!strings)
    {
      goto LABEL_47;
    }

    size = strings->super.size_;
    if ((v12 & 0x80000000) != 0 || v12 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v12);
    }

    v15 = (&strings->elementType_)[v12];
    if (([a3 hasPrefix:v15 offset:v9] & 1) == 0)
    {
      v30 = v37;
LABEL_44:
      v35 = v9;
      goto LABEL_45;
    }

    if (!v15)
    {
      goto LABEL_47;
    }

    v16 = [(IOSClass *)v15 length];
    formats = self->formats_;
    if (!formats)
    {
      goto LABEL_47;
    }

    v18 = v16;
    v19 = formats->super.size_;
    if ((v12 & 0x80000000) != 0 || v12 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v12);
    }

    v20 = (&formats->elementType_)[v12];
    if (v20)
    {
      [(JavaTextParsePosition *)v8 setIndexWithInt:v9 + v18];
      v21 = [(IOSClass *)v20 parseObjectWithNSString:a3 withJavaTextParsePosition:v8];
      if ([(JavaTextParsePosition *)v8 getErrorIndex]!= -1)
      {
        goto LABEL_42;
      }

      v9 = [(JavaTextParsePosition *)v8 getIndex];
    }

    else
    {
      v22 = v10;
      v23 = v12 + 1;
      v24 = self->strings_;
      v25 = v24->super.size_;
      if (v12 + 1 >= v25)
      {
        v21 = [a3 substring:v9 + v18];
        v9 = [a3 length];
      }

      else
      {
        if (v23 < 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v12 + 1));
        }

        v26 = [a3 indexOfString:(&v24->elementType_)[v23] fromIndex:v9 + v18];
        if (v26 == -1)
        {
LABEL_42:
          v35 = (v9 + v18);
          v30 = v37;
LABEL_45:
          [v30 setErrorIndexWithInt:v35];
          return 0;
        }

        v27 = v26;
        v21 = [a3 substring:v9 + v18 endIndex:v26];
        v9 = v27;
      }

      v10 = v22;
    }

    argumentNumbers = self->argumentNumbers_;
    if (!argumentNumbers)
    {
      goto LABEL_47;
    }

    v29 = argumentNumbers->super.size_;
    if ((v12 & 0x80000000) != 0 || v12 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v12);
    }

    IOSObjectArray_Set(v10, *(&argumentNumbers->super.size_ + v12 + 1), v21);
    v12 = (v12 + 1);
    maxOffset = self->maxOffset_;
  }

  while (v12 <= maxOffset);
  a4 = v37;
LABEL_35:
  v31 = self->strings_;
  if (!v31)
  {
LABEL_47:
    JreThrowNullPointerException();
  }

  v32 = maxOffset + 1;
  v33 = v31->super.size_;
  if (v32 >= v33)
  {
    goto LABEL_41;
  }

  if (maxOffset <= -2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, maxOffset + 1);
  }

  v34 = (&v31->elementType_)[v32];
  if (![a3 hasPrefix:v34 offset:v9])
  {
    v30 = a4;
    goto LABEL_44;
  }

  if (!v34)
  {
    goto LABEL_47;
  }

  v9 = v9 + [(IOSClass *)v34 length];
LABEL_41:
  [a4 setIndexWithInt:v9];
  return v10;
}

- (void)setFormatWithInt:(int)a3 withJavaTextFormat:(id)a4
{
  formats = self->formats_;
  if (!formats)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(formats, a3, a4);
}

- (void)setFormatsWithJavaTextFormatArray:(id)a3
{
  formats = self->formats_;
  if (!formats || !a3)
  {
    JreThrowNullPointerException();
  }

  size = formats->super.size_;
  v6 = *(a3 + 2);
  if (v6 >= size)
  {
    v7 = size;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = *(a3 + 2);
      if (i >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, i);
      }

      IOSObjectArray_Set(self->formats_, i, *(a3 + i + 3));
    }
  }
}

- (void)setLocaleWithJavaUtilLocale:(id)a3
{
  JreStrongAssign(&self->locale_, a3);
  if ((self->maxOffset_ & 0x80000000) == 0)
  {
    v5 = 0;
    do
    {
      formats = self->formats_;
      if (!formats)
      {
        JreThrowNullPointerException();
      }

      size = formats->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = (&formats->elementType_)[v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = self->formats_;
        objc_opt_class();
        if (!v8)
        {
          JreThrowNullPointerException();
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        v10 = [(IOSClass *)v8 toPattern];
        v11 = new_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(a3);
        v12 = new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(v10, v11);
        IOSObjectArray_SetAndConsume(v9, v5, v12);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = self->formats_;
          objc_opt_class();
          if (!v8)
          {
            JreThrowNullPointerException();
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          v14 = new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_([(IOSClass *)v8 toPattern], a3);
          IOSObjectArray_SetAndConsume(v13, v5, v14);
        }
      }

      v5 = (v5 + 1);
    }

    while (v5 <= self->maxOffset_);
  }
}

- (id)toPattern
{
  v3 = new_JavaLangStringBuffer_init();
  v32 = 40;
  maxOffset = self->maxOffset_;
  if ((maxOffset & 0x80000000) == 0)
  {
    v5 = 0;
    do
    {
      strings = self->strings_;
      if (!strings)
      {
        goto LABEL_47;
      }

      size = strings->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      sub_1001E7478(v3, (&strings->elementType_)[v5]);
      [(JavaLangStringBuffer *)v3 appendWithChar:123];
      argumentNumbers = self->argumentNumbers_;
      if (!argumentNumbers)
      {
        goto LABEL_47;
      }

      v9 = argumentNumbers->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v5);
      }

      [(JavaLangStringBuffer *)v3 appendWithInt:*(&argumentNumbers->super.size_ + v5 + 1)];
      formats = self->formats_;
      if (!formats)
      {
        goto LABEL_47;
      }

      v11 = formats->super.size_;
      if ((v5 & 0x80000000) != 0 || v5 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v5);
      }

      v12 = (&formats->elementType_)[v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(JavaLangStringBuffer *)v3 appendWithNSString:@", choice, "];
        objc_opt_class();
        if (!v12)
        {
          goto LABEL_47;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        v13 = [(IOSClass *)v12 toPattern];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = sub_1001E6DBC(self, v3, v12);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v12)
            {
              v31 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unknown format");
              objc_exception_throw(v31);
            }

            goto LABEL_35;
          }

          v13 = sub_1001E6F04(self, v3, v12, v14, v15, v16, v17, v18);
        }
      }

      v19 = v13;
      if (v13)
      {
        v20 = [v13 length];
        if (v20 >= 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = [v19 charAtWithInt:{v22, v32}];
            v25 = v24;
            v23 ^= v24 == 39;
            if (v23)
            {
              v26 = v21;
            }

            else
            {
              if (v24 == 123)
              {
                v26 = (v21 + 1);
              }

              else
              {
                v26 = v21;
              }

              if (v24 == 125)
              {
                if (v21 < 1)
                {
                  [(JavaLangStringBuffer *)v3 appendWithNSString:@"'}"];
                  v25 = 39;
                }

                else
                {
                  v25 = 125;
                  v26 = (v21 - 1);
                }
              }
            }

            v22 = (v22 + 1);
            [(JavaLangStringBuffer *)v3 appendWithChar:v25];
            v21 = v26;
          }

          while (v20 != v22);
        }
      }

LABEL_35:
      [(JavaLangStringBuffer *)v3 appendWithChar:125, v32];
      v5 = (v5 + 1);
      maxOffset = *(&self->super.super.isa + v32);
    }

    while (v5 <= maxOffset);
  }

  v27 = self->strings_;
  if (!v27)
  {
LABEL_47:
    JreThrowNullPointerException();
  }

  v28 = maxOffset + 1;
  v29 = v27->super.size_;
  if (v28 < v29)
  {
    if (maxOffset <= -2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, maxOffset + 1);
    }

    sub_1001E7478(v3, (&v27->elementType_)[v28]);
  }

  return [(JavaLangStringBuffer *)v3 description];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_25;
  }

  v3 = a3;
  v5 = [a3 putFields];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  [v5 putWithNSString:@"argumentNumbers" withId:self->argumentNumbers_];
  [v6 putWithNSString:@"formats" withId:self->formats_];
  [v6 putWithNSString:@"locale" withId:self->locale_];
  [v6 putWithNSString:@"maxOffset" withInt:self->maxOffset_];
  v7 = [IOSIntArray arrayWithLength:self->maxOffset_ + 1];
  v8 = new_JavaLangStringBuilder_init();
  maxOffset = self->maxOffset_;
  if ((maxOffset & 0x80000000) == 0)
  {
    v22 = v6;
    v23 = v3;
    v10 = 0;
    v11 = 0;
    do
    {
      strings = self->strings_;
      if (!strings)
      {
        goto LABEL_25;
      }

      size = strings->super.size_;
      if ((v10 & 0x80000000) != 0 || v10 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v10);
      }

      v14 = (&strings->elementType_)[v10];
      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = [(IOSClass *)v14 length];
      v16 = v7->super.size_;
      if ((v10 & 0x80000000) != 0 || v10 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v10);
      }

      v11 += v15;
      *(&v7->super.size_ + v10 + 1) = v11;
      v17 = self->strings_;
      v18 = v17->super.size_;
      if ((v10 & 0x80000000) != 0 || v10 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v10);
      }

      [(JavaLangStringBuilder *)v8 appendWithNSString:(&v17->elementType_)[v10]];
      v10 = (v10 + 1);
      maxOffset = self->maxOffset_;
    }

    while (v10 <= maxOffset);
    v6 = v22;
    v3 = v23;
  }

  v19 = self->strings_;
  if (!v19)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v20 = maxOffset + 1;
  v21 = v19->super.size_;
  if (v20 < v21)
  {
    if (maxOffset <= -2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, maxOffset + 1);
    }

    [(JavaLangStringBuilder *)v8 appendWithNSString:(&v19->elementType_)[v20]];
  }

  [v6 putWithNSString:@"offsets" withId:{v7, v22, v23}];
  [v6 putWithNSString:@"pattern" withId:{-[JavaLangStringBuilder description](v8, "description")}];

  [v3 writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_42;
  }

  v4 = [a3 readFields];
  if (!v4)
  {
    goto LABEL_42;
  }

  v5 = v4;
  v6 = [v4 getWithNSString:@"argumentNumbers" withId:0];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  JreStrongAssign(&self->argumentNumbers_, v6);
  v7 = [v5 getWithNSString:@"formats" withId:0];
  objc_opt_class();
  if (v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  JreStrongAssign(&self->formats_, v7);
  v8 = [v5 getWithNSString:@"locale" withId:0];
  objc_opt_class();
  if (v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  JreStrongAssign(&self->locale_, v8);
  self->maxOffset_ = [v5 getWithNSString:@"maxOffset" withInt:0];
  v9 = [v5 getWithNSString:@"offsets" withId:0];
  objc_opt_class();
  if (v9)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v10 = [v5 getWithNSString:@"pattern" withId:0];
  objc_opt_class();
  if (!v10)
  {
    maxOffset = self->maxOffset_;
    if ((maxOffset & 0x80000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_40:
    JreThrowClassCastException();
  }

  maxOffset = self->maxOffset_;
  if ((maxOffset & 0x80000000) != 0)
  {
    v12 = [v10 length] > 0;
    goto LABEL_23;
  }

LABEL_16:
  if (!v9)
  {
    goto LABEL_42;
  }

  v13 = v9[2];
  if (maxOffset >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, maxOffset);
  }

  if (!v10)
  {
    goto LABEL_42;
  }

  v14 = v9[maxOffset + 3];
  if (v14 == [v10 length])
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v12 = v15 + maxOffset;
LABEL_23:
  v16 = [IOSObjectArray newArrayWithLength:v12 type:NSString_class_()];
  JreStrongAssignAndConsume(&self->strings_, v16);
  v17 = self->maxOffset_;
  if (v17 < 0)
  {
    v19 = 0;
    goto LABEL_35;
  }

  if (!v9)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = v18;
    v21 = v9[2];
    if (v18 < 0 || v18 >= v21)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, v18);
    }

    IOSObjectArray_Set(self->strings_, v18, [v10 substring:v19 endIndex:v9[v18 + 3]]);
    v22 = v9[2];
    if ((v20 & 0x80000000) != 0 || v20 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v20);
    }

    v19 = v9[v20 + 3];
    v18 = v20 + 1;
    v17 = self->maxOffset_;
  }

  while (v20 + 1 <= v17);
LABEL_35:
  strings = self->strings_;
  size = strings->super.size_;
  if (v17 + 1 < size)
  {
    v25 = size - 1;
    v26 = [v10 substring:v19 endIndex:{objc_msgSend(v10, "length")}];

    IOSObjectArray_Set(strings, v25, v26);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextMessageFormat;
  [(JavaTextMessageFormat *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = IOSClass_arrayType(+[IOSClass intClass], 1u);
    v9[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"argumentNumbers", v2);
    v3 = JavaTextFormat_class_();
    v4 = IOSClass_arrayType(v3, 1u);
    v9[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"formats", v4);
    v5 = JavaUtilLocale_class_();
    v9[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"locale", v5);
    v9[3] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"maxOffset", +[IOSClass intClass]);
    v6 = IOSClass_arrayType(+[IOSClass intClass], 1u);
    v9[4] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"offsets", v6);
    v7 = NSString_class_();
    v9[5] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"pattern", v7);
    v8 = [IOSObjectArray newArrayWithObjects:v9 count:6 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554F18, v8);
    atomic_store(1u, &JavaTextMessageFormat__initialized);
  }
}

@end