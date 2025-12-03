@interface CKXStructMutableProxyBase
- ($3CC19D079FD0B010EE84973AA846B91B)mutableListInstanceForField:(SEL)field;
- (id).cxx_construct;
- (void)commit;
- (void)reset;
@end

@implementation CKXStructMutableProxyBase

- (void)commit
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_writerForProxy_(v8, v9, self, v10, v11, v12, v13);
  objc_msgSend_structInstance(self, v15, v16, v17, v18, v19, v20);
  objc_msgSend_commitStruct_(v14, v21, v27, v22, v23, v24, v25);

  v26.receiver = self;
  v26.super_class = CKXStructMutableProxyBase;
  [(CKXProxyBase *)&v26 commit];
}

- (void)reset
{
  v8.receiver = self;
  v8.super_class = CKXStructMutableProxyBase;
  [(CKXStructProxyBase *)&v8 reset];
  p_fieldTokenToListInstance = &self->fieldTokenToListInstance;
  if (p_fieldTokenToListInstance->__table_.__size_)
  {
    next = p_fieldTokenToListInstance->__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        v5 = *next;
        operator delete(next);
        next = v5;
      }

      while (v5);
    }

    p_fieldTokenToListInstance->__table_.__first_node_.__next_ = 0;
    size = p_fieldTokenToListInstance->__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        p_fieldTokenToListInstance->__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    p_fieldTokenToListInstance->__table_.__size_ = 0;
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)mutableListInstanceForField:(SEL)field
{
  p_fieldTokenToListInstance = &self->fieldTokenToListInstance;
  if (!sub_243985D18(&self->fieldTokenToListInstance.__table_.__bucket_list_.__ptr_, a4))
  {
    v41 = 0u;
    v42 = 0u;
    v14 = objc_msgSend_backingStore(self, v8, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_writerForProxy_(v14, v15, self, v16, v17, v18, v19);
    objc_msgSend_structInstance(self, v21, v22, v23, v24, v25, v26);
    if (v20)
    {
      objc_msgSend_beginReferencedListForReference_inStruct_(v20, v27, a4, v40, v28, v29, v30);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    size = p_fieldTokenToListInstance->__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_22;
    }

    v32 = vcnt_s8(size);
    v32.i16[0] = vaddlv_u8(v32);
    if (v32.u32[0] > 1uLL)
    {
      v33 = a4;
      if (size <= a4)
      {
        v33 = a4 % size;
      }
    }

    else
    {
      v33 = (size - 1) & a4;
    }

    v34 = p_fieldTokenToListInstance->__table_.__bucket_list_.__ptr_[v33];
    if (!v34 || (v35 = *v34) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v36 = v35[1];
      if (v36 == a4)
      {
        if (v35[2] == a4)
        {
          v37 = v42;
          *(v35 + 3) = v41;
          *(v35 + 5) = v37;
          break;
        }
      }

      else
      {
        if (v32.u32[0] > 1uLL)
        {
          if (v36 >= size)
          {
            v36 %= size;
          }
        }

        else
        {
          v36 &= size - 1;
        }

        if (v36 != v33)
        {
          goto LABEL_22;
        }
      }

      v35 = *v35;
      if (!v35)
      {
        goto LABEL_22;
      }
    }
  }

  result = sub_243985D18(p_fieldTokenToListInstance, a4);
  if (!result)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v39 = *&result[1].var1;
  *&retstr->var0 = *&result->var3;
  *&retstr->var2 = v39;
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end