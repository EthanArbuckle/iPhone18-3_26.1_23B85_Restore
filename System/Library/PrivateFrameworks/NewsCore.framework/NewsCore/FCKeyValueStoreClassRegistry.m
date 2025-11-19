@interface FCKeyValueStoreClassRegistry
- (Class)classForValueType:(int)a3;
- (FCKeyValueStoreClassRegistry)init;
- (id).cxx_construct;
- (void)registerClass:(Class)a3;
@end

@implementation FCKeyValueStoreClassRegistry

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

- (FCKeyValueStoreClassRegistry)init
{
  v4.receiver = self;
  v4.super_class = FCKeyValueStoreClassRegistry;
  v2 = [(FCKeyValueStoreClassRegistry *)&v4 init];
  if (v2)
  {
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
  }

  return v2;
}

- (void)registerClass:(Class)a3
{
  p_registry = &self->_registry;
  v6 = [(objc_class *)a3 keyValuePairType];
  v7 = a3;
  size = self->_registry.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(size);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (size <= v6)
    {
      v10 = v6 % size;
    }
  }

  else
  {
    v10 = (size - 1) & v6;
  }

  v11 = p_registry->__table_.__bucket_list_.__ptr_[v10];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= size)
      {
        v13 %= size;
      }
    }

    else
    {
      v13 &= size - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (*(v12 + 4) != v6)
  {
    goto LABEL_17;
  }
}

- (Class)classForValueType:(int)a3
{
  size = self->_registry.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v4 = vcnt_s8(size);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a3;
      if (size <= a3)
      {
        v5 = a3 % size;
      }
    }

    else
    {
      v5 = (size - 1) & a3;
    }

    v6 = self->_registry.__table_.__bucket_list_.__ptr_[v5];
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a3)
        {
          if (*(i + 4) == a3)
          {
            return i[3];
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= size)
            {
              v8 %= size;
            }
          }

          else
          {
            v8 &= size - 1;
          }

          if (v8 != v5)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

@end