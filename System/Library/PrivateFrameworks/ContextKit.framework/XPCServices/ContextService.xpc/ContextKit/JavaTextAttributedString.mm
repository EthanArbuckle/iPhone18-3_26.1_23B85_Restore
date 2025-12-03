@interface JavaTextAttributedString
- (id)getIterator;
- (id)getIteratorWithJavaTextAttributedCharacterIterator_AttributeArray:(id)array;
- (id)getIteratorWithJavaTextAttributedCharacterIterator_AttributeArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)addAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id;
- (void)addAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation JavaTextAttributedString

- (void)addAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id
{
  if (!attribute)
  {
    v14 = new_JavaLangNullPointerException_initWithNSString_(@"attribute == null");
    goto LABEL_14;
  }

  text = self->text_;
  if (!text)
  {
    goto LABEL_11;
  }

  if ([(NSString *)text isEmpty])
  {
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(@"text is empty");
LABEL_14:
    objc_exception_throw(v14);
  }

  attributeMap = self->attributeMap_;
  if (!attributeMap)
  {
    goto LABEL_11;
  }

  v9 = [(JavaUtilMap *)attributeMap getWithId:attribute];
  if (v9)
  {
    v10 = v9;
    [(JavaUtilArrayList *)v9 clear];
    goto LABEL_8;
  }

  v10 = new_JavaUtilArrayList_initWithInt_(1);
  [(JavaUtilMap *)self->attributeMap_ putWithId:attribute withId:v10];
  if (!v10)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

LABEL_8:
  v11 = [(NSString *)self->text_ length];
  v12 = [JavaTextAttributedString_Range alloc];
  v12->start_ = 0;
  v12->end_ = v11;
  JreStrongAssign(&v12->value_, id);
  v13 = v12;

  [(JavaUtilArrayList *)v10 addWithId:v13];
}

- (void)addAttributeWithJavaTextAttributedCharacterIterator_Attribute:(id)attribute withId:(id)id withInt:(int)int withInt:(int)withInt
{
  if (!attribute)
  {
    v55 = new_JavaLangNullPointerException_initWithNSString_(@"attribute == null");
LABEL_63:
    objc_exception_throw(v55);
  }

  if (int < 0)
  {
    goto LABEL_61;
  }

  text = self->text_;
  if (!text)
  {
    goto LABEL_60;
  }

  v12 = [(NSString *)text length];
  if (int >= withInt || v12 < withInt)
  {
LABEL_61:
    v55 = new_JavaLangIllegalArgumentException_init();
    goto LABEL_63;
  }

  if (!id)
  {
    return;
  }

  attributeMap = self->attributeMap_;
  if (!attributeMap)
  {
    goto LABEL_60;
  }

  v14 = [(JavaUtilMap *)attributeMap getWithId:attribute];
  if (v14)
  {
    listIterator = [v14 listIterator];
    if (listIterator)
    {
      v16 = listIterator;
      if ([listIterator hasNext])
      {
        while (1)
        {
          next = [v16 next];
          if (!next)
          {
            goto LABEL_60;
          }

          v18 = next;
          if (next[2] >= withInt)
          {
            [v16 previous];
            goto LABEL_41;
          }

          v19 = next[3];
          if (v19 > int || v19 == int && [id isEqual:*(next + 2)])
          {
            break;
          }

          if (([v16 hasNext] & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        [v16 remove];
        v23 = v18[2];
        v24 = *(v18 + 2);
        v25 = [JavaTextAttributedString_Range alloc];
        v25->start_ = v23;
        v25->end_ = int;
        JreStrongAssign(&v25->value_, v24);
        v26 = v25;
        v27 = v18[3];
        v28 = *(v18 + 2);
        v29 = [JavaTextAttributedString_Range alloc];
        v29->start_ = withInt;
        v29->end_ = v27;
        JreStrongAssign(&v29->value_, v28);
        v30 = v29;
        while (v18[3] < withInt && [v16 hasNext])
        {
          next2 = [v16 next];
          if (!next2)
          {
            goto LABEL_60;
          }

          v18 = next2;
          if (next2[3] >= withInt)
          {
            v32 = next2[2];
            if (v32 < withInt || v32 == withInt && [id isEqual:*(next2 + 2)])
            {
              [v16 remove];
              v33 = v18[3];
              v34 = *(v18 + 2);
              v35 = [JavaTextAttributedString_Range alloc];
              v35->start_ = withInt;
              v35->end_ = v33;
              JreStrongAssign(&v35->value_, v34);
              v30 = v35;
              break;
            }
          }

          else
          {
            [v16 remove];
          }
        }

        v36 = [id isEqual:v26->value_];
        v37 = [id isEqual:v30->value_];
        start = v26->start_;
        if (v36)
        {
          if (start >= int)
          {
            intCopy = int;
          }

          else
          {
            intCopy = v26->start_;
          }

          if (v37)
          {
            if (v30->end_ <= withInt)
            {
              end = withInt;
            }

            else
            {
              end = v30->end_;
            }

            value = v26->value_;
            v42 = [JavaTextAttributedString_Range alloc];
            v42->start_ = intCopy;
            v42->end_ = end;
            JreStrongAssign(&v42->value_, value);
            v43 = v42;
            goto LABEL_42;
          }

          v51 = v26->value_;
          v52 = [JavaTextAttributedString_Range alloc];
          v52->start_ = intCopy;
          v52->end_ = withInt;
          JreStrongAssign(&v52->value_, v51);
          v53 = v52;
        }

        else
        {
          v47 = v26->end_;
          if (v37)
          {
            if (start < v47)
            {
              [v16 addWithId:v26];
            }

            if (v30->end_ <= withInt)
            {
              withIntCopy = withInt;
            }

            else
            {
              withIntCopy = v30->end_;
            }

            v49 = v30->value_;
            v50 = [JavaTextAttributedString_Range alloc];
            v50->start_ = int;
            v50->end_ = withIntCopy;
            JreStrongAssign(&v50->value_, v49);
            v43 = v50;
            goto LABEL_42;
          }

          if (start < v47)
          {
            [v16 addWithId:v26];
          }

          v54 = [JavaTextAttributedString_Range alloc];
          v54->start_ = int;
          v54->end_ = withInt;
          JreStrongAssign(&v54->value_, id);
          v53 = v54;
        }

        [v16 addWithId:v53];
        if (v30->start_ >= v30->end_)
        {
          return;
        }

        v46 = v16;
        v45 = v30;
        goto LABEL_43;
      }

LABEL_41:
      v44 = [JavaTextAttributedString_Range alloc];
      v44->start_ = int;
      v44->end_ = withInt;
      JreStrongAssign(&v44->value_, id);
      v43 = v44;
LABEL_42:
      v45 = v43;
      v46 = v16;
LABEL_43:

      [v46 addWithId:v45];
      return;
    }

LABEL_60:
    JreThrowNullPointerException();
  }

  v20 = new_JavaUtilArrayList_initWithInt_(1);
  v21 = [JavaTextAttributedString_Range alloc];
  v21->start_ = int;
  v21->end_ = withInt;
  JreStrongAssign(&v21->value_, id);
  [(JavaUtilArrayList *)v20 addWithId:v21];
  v22 = self->attributeMap_;

  [(JavaUtilMap *)v22 putWithId:attribute withId:v20];
}

- (id)getIterator
{
  v3 = [JavaTextAttributedString_AttributedIterator alloc];
  JavaTextAttributedString_AttributedIterator_initWithJavaTextAttributedString_(v3, self);

  return v3;
}

- (id)getIteratorWithJavaTextAttributedCharacterIterator_AttributeArray:(id)array
{
  text = self->text_;
  if (!text)
  {
    JreThrowNullPointerException();
  }

  v6 = [(NSString *)text length];
  v7 = [JavaTextAttributedString_AttributedIterator alloc];
  JavaTextAttributedString_AttributedIterator_initWithJavaTextAttributedString_withJavaTextAttributedCharacterIterator_AttributeArray_withInt_withInt_(v7, self, array, 0, v6);

  return v7;
}

- (id)getIteratorWithJavaTextAttributedCharacterIterator_AttributeArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v9 = [JavaTextAttributedString_AttributedIterator alloc];
  JavaTextAttributedString_AttributedIterator_initWithJavaTextAttributedString_withJavaTextAttributedCharacterIterator_AttributeArray_withInt_withInt_(v9, self, array, int, withInt);

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextAttributedString;
  [(JavaTextAttributedString *)&v3 dealloc];
}

@end