@interface JavaTextAttributedString_AttributedIterator
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getAllAttributeKeys;
- (id)getAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)a3;
- (id)getAttributes;
- (int)getRunLimit;
- (int)getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:(id)a3;
- (int)getRunLimitWithJavaUtilSet:(id)a3;
- (int)getRunStart;
- (int)getRunStartWithJavaTextAttributedCharacterIterator_Attribute:(id)a3;
- (int)getRunStartWithJavaUtilSet:(id)a3;
- (unsigned)current;
- (unsigned)first;
- (unsigned)last;
- (unsigned)next;
- (unsigned)previous;
- (unsigned)setIndexWithInt:(int)a3;
- (void)dealloc;
@end

@implementation JavaTextAttributedString_AttributedIterator

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaTextAttributedString_AttributedIterator;
  v3 = [(JavaTextAttributedString_AttributedIterator *)&v7 clone];
  objc_opt_class();
  if (v3)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    attributesAllowed = self->attributesAllowed_;
    if (attributesAllowed)
    {
      v5 = [(JavaUtilHashSet *)attributesAllowed clone];
      objc_opt_class();
      if (!v5 || (objc_opt_isKindOfClass() & 1) != 0)
      {
        JreStrongAssign(v3 + 4, v5);
        return v3;
      }

LABEL_9:
      JreThrowClassCastException();
    }
  }

  else if (self->attributesAllowed_)
  {
    JreThrowNullPointerException();
  }

  return v3;
}

- (unsigned)current
{
  if (self->offset_ == self->end_)
  {
    return -1;
  }

  attrString = self->attrString_;
  if (!attrString || (text = attrString->text_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)text charAtWithInt:?];
}

- (unsigned)first
{
  begin = self->begin_;
  if (begin == self->end_)
  {
    return -1;
  }

  self->offset_ = begin;
  attrString = self->attrString_;
  if (!attrString || (text = attrString->text_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)text charAtWithInt:?];
}

- (id)getAllAttributeKeys
{
  if (!self->begin_)
  {
    attrString = self->attrString_;
    if (attrString)
    {
      text = attrString->text_;
      if (text)
      {
        end = self->end_;
        if (end != [(NSString *)text length]|| self->attributesAllowed_)
        {
          goto LABEL_6;
        }

        attributeMap = self->attrString_->attributeMap_;
        if (attributeMap)
        {

          return [(JavaUtilMap *)attributeMap keySet];
        }
      }
    }

LABEL_24:
    JreThrowNullPointerException();
  }

LABEL_6:
  v6 = self->attrString_;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6->attributeMap_;
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = new_JavaUtilHashSet_initWithInt_(((4 * [(JavaUtilMap *)v7 size]) / 3 + 1));
  v9 = [(JavaUtilMap *)self->attrString_->attributeMap_ entrySet];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = [v9 iterator];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if ([v10 hasNext])
  {
    do
    {
      v12 = [v11 next];
      v13 = v12;
      attributesAllowed = self->attributesAllowed_;
      if (attributesAllowed)
      {
        if (!v12)
        {
          goto LABEL_24;
        }

        if (!-[JavaUtilHashSet containsWithId:](attributesAllowed, "containsWithId:", [v12 getKey]))
        {
          continue;
        }
      }

      else if (!v12)
      {
        goto LABEL_24;
      }

      if (sub_100225B64(self, [v13 getValue]))
      {
        -[JavaUtilHashSet addWithId:](v8, "addWithId:", [v13 getKey]);
      }
    }

    while (([v11 hasNext] & 1) != 0);
  }

  return v8;
}

- (id)getAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)a3
{
  attributesAllowed = self->attributesAllowed_;
  if (attributesAllowed && ![(JavaUtilHashSet *)attributesAllowed containsWithId:a3])
  {
    return 0;
  }

  attrString = self->attrString_;
  if (!attrString || (attributeMap = attrString->attributeMap_) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilMap *)attributeMap getWithId:a3];
  objc_opt_class();
  if (!v8)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return sub_100225DFC(self, v8);
}

- (id)getAttributes
{
  attrString = self->attrString_;
  if (!attrString || (attributeMap = attrString->attributeMap_) == 0 || (v5 = new_JavaUtilHashMap_initWithInt_(((4 * -[JavaUtilMap size](attributeMap, "size")) / 3 + 1)), (v6 = -[JavaUtilMap entrySet](self->attrString_->attributeMap_, "entrySet")) == 0) || (v7 = [v6 iterator]) == 0)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v8 = v7;
  if ([v7 hasNext])
  {
    do
    {
      v9 = [v8 next];
      v10 = v9;
      attributesAllowed = self->attributesAllowed_;
      if (attributesAllowed)
      {
        if (!v9)
        {
          goto LABEL_15;
        }

        if (!-[JavaUtilHashSet containsWithId:](attributesAllowed, "containsWithId:", [v9 getKey]))
        {
          continue;
        }
      }

      else if (!v9)
      {
        goto LABEL_15;
      }

      v12 = sub_100225DFC(self, [v10 getValue]);
      if (v12)
      {
        -[JavaUtilHashMap putWithId:withId:](v5, "putWithId:withId:", [v10 getKey], v12);
      }
    }

    while (([v8 hasNext] & 1) != 0);
  }

  return v5;
}

- (int)getRunLimit
{
  v3 = [(JavaTextAttributedString_AttributedIterator *)self getAllAttributeKeys];

  return [(JavaTextAttributedString_AttributedIterator *)self getRunLimitWithJavaUtilSet:v3];
}

- (int)getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:(id)a3
{
  attributesAllowed = self->attributesAllowed_;
  if (attributesAllowed && ![(JavaUtilHashSet *)attributesAllowed containsWithId:a3])
  {
    return self->end_;
  }

  attrString = self->attrString_;
  if (!attrString || (attributeMap = attrString->attributeMap_) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilMap *)attributeMap getWithId:a3];
  objc_opt_class();
  if (!v8)
  {
    return self->end_;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return sub_100226098(self, v8);
}

- (int)getRunLimitWithJavaUtilSet:(id)a3
{
  if (!a3 || (end = self->end_, (v5 = [a3 iterator]) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    do
    {
      v7 = -[JavaTextAttributedString_AttributedIterator getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:](self, "getRunLimitWithJavaTextAttributedCharacterIterator_Attribute:", [v6 next]);
      if (v7 < end)
      {
        end = v7;
      }
    }

    while (([v6 hasNext] & 1) != 0);
  }

  return end;
}

- (int)getRunStart
{
  v3 = [(JavaTextAttributedString_AttributedIterator *)self getAllAttributeKeys];

  return [(JavaTextAttributedString_AttributedIterator *)self getRunStartWithJavaUtilSet:v3];
}

- (int)getRunStartWithJavaTextAttributedCharacterIterator_Attribute:(id)a3
{
  attributesAllowed = self->attributesAllowed_;
  if (attributesAllowed && ![(JavaUtilHashSet *)attributesAllowed containsWithId:a3])
  {
    return self->begin_;
  }

  attrString = self->attrString_;
  if (!attrString || (attributeMap = attrString->attributeMap_) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilMap *)attributeMap getWithId:a3];
  objc_opt_class();
  if (!v8)
  {
    return self->begin_;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return sub_1002262BC(self, v8);
}

- (int)getRunStartWithJavaUtilSet:(id)a3
{
  if (!a3 || (begin = self->begin_, (v5 = [a3 iterator]) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    do
    {
      v7 = -[JavaTextAttributedString_AttributedIterator getRunStartWithJavaTextAttributedCharacterIterator_Attribute:](self, "getRunStartWithJavaTextAttributedCharacterIterator_Attribute:", [v6 next]);
      if (v7 > begin)
      {
        begin = v7;
      }
    }

    while (([v6 hasNext] & 1) != 0);
  }

  return begin;
}

- (unsigned)last
{
  end = self->end_;
  if (self->begin_ == end)
  {
    return -1;
  }

  self->offset_ = end - 1;
  attrString = self->attrString_;
  if (!attrString || (text = attrString->text_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)text charAtWithInt:?];
}

- (unsigned)next
{
  end = self->end_;
  offset = self->offset_;
  if (offset >= end - 1)
  {
    self->offset_ = end;
    return -1;
  }

  else
  {
    attrString = self->attrString_;
    if (!attrString || (text = attrString->text_) == 0)
    {
      JreThrowNullPointerException();
    }

    self->offset_ = offset + 1;

    return [(NSString *)text charAtWithInt:?];
  }
}

- (unsigned)previous
{
  offset = self->offset_;
  if (offset == self->begin_)
  {
    return -1;
  }

  attrString = self->attrString_;
  if (!attrString || (text = attrString->text_) == 0)
  {
    JreThrowNullPointerException();
  }

  self->offset_ = offset - 1;

  return [(NSString *)text charAtWithInt:?];
}

- (unsigned)setIndexWithInt:(int)a3
{
  if (self->begin_ > a3 || (end = self->end_, end < a3))
  {
    v7 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v7);
  }

  self->offset_ = a3;
  if (end == a3)
  {
    return -1;
  }

  attrString = self->attrString_;
  if (!attrString || (text = attrString->text_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)text charAtWithInt:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextAttributedString_AttributedIterator;
  [(JavaTextAttributedString_AttributedIterator *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaTextAttributedString_AttributedIterator *)self clone];

  return v3;
}

@end