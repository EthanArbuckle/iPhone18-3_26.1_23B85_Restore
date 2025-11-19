@interface ComAppleContextkitUtilSpindleArray
- (id)lookupWithComAppleContextkitUtilSpindleArray_State:(id)a3 withJavaUtilList:(id)a4 withJavaUtilIterator:(id)a5;
- (void)close;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilSpindleArray

- (id)lookupWithComAppleContextkitUtilSpindleArray_State:(id)a3 withJavaUtilList:(id)a4 withJavaUtilIterator:(id)a5
{
  v6 = a4;
  v40 = a3;
  if (!a3)
  {
    v40 = [(ComAppleContextkitUtilSpindleArray *)self newState];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_33:
    v6 = new_JavaUtilArrayList_init();
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_33;
  }

LABEL_3:
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v37 = [(OrgApacheLuceneStoreIndexInput *)in clone];
  v39 = v6;
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v9 = 0;
  v10 = 0;
  v11 = -1;
  v38 = -1;
  while ([a5 hasNext])
  {
    v12 = [a5 next];
    if (!v12)
    {
LABEL_34:
      JreThrowNullPointerException();
    }

    v13 = [v12 intValue];
    v21 = v13;
    if ((v13 & 0x80000000) != 0 || v13 >= self->numEntries_)
    {
      v36 = new_JavaIoIOException_initWithNSString_(@"entryId out of bounds");
LABEL_40:
      objc_exception_throw(v36);
    }

    if (v13 < v11)
    {
      v35 = JreStrcat("$I$I", v14, v15, v16, v17, v18, v19, v20, @"Entries must be passed in ascending order: ");
      v36 = new_JavaIoIOException_initWithNSString_(v35);
      goto LABEL_40;
    }

    if (v13 != v11)
    {
      while (1)
      {
        offsets = self->offsets_;
        if (!offsets)
        {
          goto LABEL_34;
        }

        size = offsets->super.size_;
        if ((v10 & 0x80000000) != 0 || v10 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v10);
        }

        if (*(&offsets->super.size_ + v10 + 1) > v21)
        {
          break;
        }

        v10 = (v10 + 2);
      }

      if (v38 != v10)
      {
        v24 = self->offsets_;
        v25 = [ComAppleContextkitUtilSpindleArray_Bucket alloc];
        sub_10013FCC0(v25, v40, v37, v24, (v10 - 2), 1, v26, v27);
        v9 = v25;
        v38 = v10;
      }

      if (!v9)
      {
        goto LABEL_36;
      }

      if ([(ComAppleContextkitUtilSpindleArray_Bucket *)v9 skipToEntryIdWithComAppleContextkitUtilSpindleArray_State:v40 withInt:v21])
      {
        v28 = 0;
        v29 = v9;
      }

      else
      {
        if (!v40)
        {
          goto LABEL_36;
        }

        JreStrongAssign(v40 + 2, 0);
        v30 = self->offsets_;
        v31 = [ComAppleContextkitUtilSpindleArray_Bucket alloc];
        sub_10013FCC0(v31, v40, v37, v30, v38, 0, v32, v33);
        v29 = v31;
        [(ComAppleContextkitUtilSpindleArray_Bucket *)v29 completeEntryWithComAppleContextkitUtilSpindleArray_State:v40];
        v38 += 2;
        v28 = v9;
      }

      if (!v39)
      {
LABEL_36:
        JreThrowNullPointerException();
      }

      [(JavaUtilArrayList *)v39 addWithId:sub_10013F928(v40, v29, v28)];
      v11 = v21;
      v9 = v29;
      if (v28)
      {
        JreStrongAssign((v28 + 8), 0);
        v11 = v21;
        v9 = v29;
      }
    }
  }

  if (v37)
  {
    [v37 close];
  }

  return v39;
}

- (void)close
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)in close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilSpindleArray;
  [(ComAppleContextkitUtilSpindleArray *)&v3 dealloc];
}

@end