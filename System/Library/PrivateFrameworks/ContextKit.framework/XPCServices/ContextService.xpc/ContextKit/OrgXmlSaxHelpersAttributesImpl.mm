@interface OrgXmlSaxHelpersAttributesImpl
- (OrgXmlSaxHelpersAttributesImpl)init;
- (id)getLocalNameWithInt:(int)a3;
- (id)getQNameWithInt:(int)a3;
- (id)getTypeWithInt:(int)a3;
- (id)getTypeWithNSString:(id)a3;
- (id)getTypeWithNSString:(id)a3 withNSString:(id)a4;
- (id)getURIWithInt:(int)a3;
- (id)getValueWithInt:(int)a3;
- (id)getValueWithNSString:(id)a3;
- (id)getValueWithNSString:(id)a3 withNSString:(id)a4;
- (int)getIndexWithNSString:(id)a3;
- (int)getIndexWithNSString:(id)a3 withNSString:(id)a4;
- (void)addAttributeWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7;
- (void)clear;
- (void)dealloc;
- (void)setAttributesWithOrgXmlSaxAttributes:(id)a3;
@end

@implementation OrgXmlSaxHelpersAttributesImpl

- (OrgXmlSaxHelpersAttributesImpl)init
{
  self->length_ = 0;
  JreStrongAssign(&self->data_, 0);
  return self;
}

- (id)getURIWithInt:(int)a3
{
  if (a3 < 0 || self->length_ <= a3)
  {
    return 0;
  }

  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  v4 = 5 * a3;
  size = data->super.size_;
  if (5 * a3 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return (&data->elementType_)[5 * a3];
}

- (id)getLocalNameWithInt:(int)a3
{
  if (a3 < 0 || self->length_ <= a3)
  {
    return 0;
  }

  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  size = data->super.size_;
  v5 = 5 * a3 + 1;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&data->elementType_)[v5];
}

- (id)getQNameWithInt:(int)a3
{
  if (a3 < 0 || self->length_ <= a3)
  {
    return 0;
  }

  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  size = data->super.size_;
  v5 = 5 * a3 + 2;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&data->elementType_)[v5];
}

- (id)getTypeWithInt:(int)a3
{
  if (a3 < 0 || self->length_ <= a3)
  {
    return 0;
  }

  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  size = data->super.size_;
  v5 = 5 * a3 + 3;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&data->elementType_)[v5];
}

- (id)getValueWithInt:(int)a3
{
  if (a3 < 0 || self->length_ <= a3)
  {
    return 0;
  }

  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  size = data->super.size_;
  v5 = 5 * a3 + 4;
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&data->elementType_)[v5];
}

- (int)getIndexWithNSString:(id)a3 withNSString:(id)a4
{
  v4 = 5 * self->length_;
  if (v4 < 1)
  {
    return -1;
  }

  v8 = 0;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_18;
    }

    size = data->super.size_;
    if ((v8 & 0x80000000) != 0 || v8 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v8);
    }

    v11 = (&data->elementType_)[v8];
    if (!v11)
    {
LABEL_18:
      JreThrowNullPointerException();
    }

    if ([(IOSClass *)v11 isEqual:a3])
    {
      v12 = self->data_;
      v13 = v8 + 1;
      v14 = v12->super.size_;
      if (v8 < -1 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      v15 = v12->buffer_[v8];
      if (!v15)
      {
        goto LABEL_18;
      }

      if ([v15 isEqual:a4])
      {
        return v8 / 5;
      }
    }

    v8 = (v8 + 5);
    if (v8 >= v4)
    {
      return -1;
    }
  }
}

- (int)getIndexWithNSString:(id)a3
{
  v3 = 5 * self->length_;
  if (v3 < 1)
  {
    return -1;
  }

  v6 = 0;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_13;
    }

    size = data->super.size_;
    v9 = v6 + 2;
    if (v6 + 2 < 0 || v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    v10 = data->buffer_[v6 + 1];
    if (!v10)
    {
LABEL_13:
      JreThrowNullPointerException();
    }

    if ([v10 isEqual:a3])
    {
      return v6 / 5;
    }

    v6 += 5;
    if (v6 >= v3)
    {
      return -1;
    }
  }
}

- (id)getTypeWithNSString:(id)a3 withNSString:(id)a4
{
  v4 = 5 * self->length_;
  if (v4 < 1)
  {
    return 0;
  }

  v8 = 3;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_20;
    }

    v10 = v8 - 3;
    size = data->super.size_;
    if (v8 - 3 < 0 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v8 - 3));
    }

    v12 = (&data->elementType_)[v10];
    if (!v12)
    {
LABEL_20:
      JreThrowNullPointerException();
    }

    if ([(IOSClass *)v12 isEqual:a3])
    {
      v13 = self->data_;
      v14 = v8 - 2;
      v15 = v13->super.size_;
      if (v10 < -1 || v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      v16 = *(&v13->super.size_ + v8);
      if (!v16)
      {
        goto LABEL_20;
      }

      if ([v16 isEqual:a4])
      {
        break;
      }
    }

    v17 = v8 + 2;
    v8 = (v8 + 5);
    if (v17 >= v4)
    {
      return 0;
    }
  }

  v19 = self->data_;
  v20 = v19->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v8);
  }

  return (&v19->elementType_)[v8];
}

- (id)getTypeWithNSString:(id)a3
{
  v3 = 5 * self->length_;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 3;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_15;
    }

    size = data->super.size_;
    v9 = v6 - 1;
    if (v6 - 1 < 0 || v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    v10 = *(&data->isRetained_ + v6);
    if (!v10)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    if ([v10 isEqual:a3])
    {
      break;
    }

    v11 = v6 + 2;
    v6 = (v6 + 5);
    if (v11 >= v3)
    {
      return 0;
    }
  }

  v13 = self->data_;
  v14 = v13->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v6);
  }

  return (&v13->elementType_)[v6];
}

- (id)getValueWithNSString:(id)a3 withNSString:(id)a4
{
  v4 = 5 * self->length_;
  if (v4 < 1)
  {
    return 0;
  }

  v8 = 4;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_20;
    }

    v10 = v8 - 4;
    size = data->super.size_;
    if (v8 - 4 < 0 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v8 - 4));
    }

    v12 = (&data->elementType_)[v10];
    if (!v12)
    {
LABEL_20:
      JreThrowNullPointerException();
    }

    if ([(IOSClass *)v12 isEqual:a3])
    {
      v13 = self->data_;
      v14 = v8 - 3;
      v15 = v13->super.size_;
      if (v10 < -1 || v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      v16 = *(&v13->super.super.isa + v8);
      if (!v16)
      {
        goto LABEL_20;
      }

      if ([v16 isEqual:a4])
      {
        break;
      }
    }

    v17 = v8 + 1;
    v8 = (v8 + 5);
    if (v17 >= v4)
    {
      return 0;
    }
  }

  v19 = self->data_;
  v20 = v19->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v8);
  }

  return (&v19->elementType_)[v8];
}

- (id)getValueWithNSString:(id)a3
{
  v3 = 5 * self->length_;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 4;
  while (1)
  {
    data = self->data_;
    if (!data)
    {
      goto LABEL_15;
    }

    size = data->super.size_;
    v9 = v6 - 2;
    if (v6 - 2 < 0 || v9 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v9);
    }

    v10 = *(&data->super.size_ + v6);
    if (!v10)
    {
LABEL_15:
      JreThrowNullPointerException();
    }

    if ([v10 isEqual:a3])
    {
      break;
    }

    v11 = v6 + 1;
    v6 = (v6 + 5);
    if (v11 >= v3)
    {
      return 0;
    }
  }

  v13 = self->data_;
  v14 = v13->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v6);
  }

  return (&v13->elementType_)[v6];
}

- (void)clear
{
  if (self->data_ && 5 * self->length_ >= 1)
  {
    v3 = 0;
    do
    {
      IOSObjectArray_Set(self->data_, v3++, 0);
    }

    while (v3 < 5 * self->length_);
  }

  self->length_ = 0;
}

- (void)setAttributesWithOrgXmlSaxAttributes:(id)a3
{
  [(OrgXmlSaxHelpersAttributesImpl *)self clear];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 getLength];
  self->length_ = v5;
  if (v5 >= 1)
  {
    v6 = [IOSObjectArray newArrayWithLength:5 * v5 type:NSString_class_()];
    JreStrongAssignAndConsume(&self->data_, v6);
    if (self->length_ >= 1)
    {
      v7 = 0;
      v8 = 4;
      do
      {
        IOSObjectArray_Set(self->data_, v8 - 4, [a3 getURIWithInt:v7]);
        IOSObjectArray_Set(self->data_, v8 - 3, [a3 getLocalNameWithInt:v7]);
        IOSObjectArray_Set(self->data_, v8 - 2, [a3 getQNameWithInt:v7]);
        IOSObjectArray_Set(self->data_, v8 - 1, [a3 getTypeWithInt:v7]);
        IOSObjectArray_Set(self->data_, v8, [a3 getValueWithInt:v7++]);
        v8 += 5;
      }

      while (v7 < self->length_);
    }
  }
}

- (void)addAttributeWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7
{
  sub_100153F78(self, self->length_ + 1);
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(data, 5 * self->length_, a3);
  IOSObjectArray_Set(self->data_, 5 * self->length_ + 1, a4);
  IOSObjectArray_Set(self->data_, 5 * self->length_ + 2, a5);
  IOSObjectArray_Set(self->data_, 5 * self->length_ + 3, a6);
  IOSObjectArray_Set(self->data_, 5 * self->length_ + 4, a7);
  ++self->length_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersAttributesImpl;
  [(OrgXmlSaxHelpersAttributesImpl *)&v3 dealloc];
}

@end