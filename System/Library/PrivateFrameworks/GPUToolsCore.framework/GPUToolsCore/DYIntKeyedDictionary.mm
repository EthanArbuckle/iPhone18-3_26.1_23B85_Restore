@interface DYIntKeyedDictionary
- (DYIntKeyedDictionary)initWithCapacity:(unint64_t)capacity;
- (DYIntKeyedDictionary)initWithCoder:(id)coder;
- (DYIntKeyedDictionary)initWithIntKeyedDictionary:(id)dictionary;
- (id)allKeys;
- (id)objectForIntKey:(int64_t)key;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeAllObjects;
- (void)removeObjectForIntKey:(int64_t)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forIntKey:(int64_t)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation DYIntKeyedDictionary

- (DYIntKeyedDictionary)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = DYIntKeyedDictionary;
  if ([(DYIntKeyedDictionary *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (DYIntKeyedDictionary)initWithIntKeyedDictionary:(id)dictionary
{
  result = -[DYIntKeyedDictionary initWithCapacity:](self, "initWithCapacity:", [dictionary count]);
  if (result)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__DYIntKeyedDictionary_initWithIntKeyedDictionary___block_invoke;
    v6[3] = &unk_27930CA88;
    v6[4] = result;
    v5 = result;
    [dictionary enumerateKeysAndObjectsUsingBlock:v6];
    return v5;
  }

  return result;
}

- (DYIntKeyedDictionary)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [DYIntKeyedDictionary initWithCoder:];
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"keys"}];
  if (!v7)
  {
    [DYIntKeyedDictionary initWithCoder:];
  }

  v8 = v7;
  result = -[DYIntKeyedDictionary initWithCapacity:](self, "initWithCapacity:", [v7 count]);
  if (result)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__DYIntKeyedDictionary_initWithCoder___block_invoke;
    v11[3] = &unk_27930CFC0;
    v11[4] = coder;
    v11[5] = result;
    v10 = result;
    [v8 enumerateObjectsUsingBlock:v11];
    return v10;
  }

  return result;
}

uint64_t __38__DYIntKeyedDictionary_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 longLongValue];
  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%llu", v3)}];
  if (!v4)
  {
    __38__DYIntKeyedDictionary_initWithCoder___block_invoke_cold_1();
  }

  v5 = v4;
  v6 = *(a1 + 40);

  return [v6 setObject:v5 forIntKey:v3];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [DYIntKeyedDictionary encodeWithCoder:];
  }

  [coder encodeObject:-[DYIntKeyedDictionary allKeys](self forKey:{"allKeys"), @"keys"}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__DYIntKeyedDictionary_encodeWithCoder___block_invoke;
  v5[3] = &unk_27930CA88;
  v5[4] = coder;
  [(DYIntKeyedDictionary *)self enumerateKeysAndObjectsUsingBlock:v5];
}

uint64_t __40__DYIntKeyedDictionary_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a2];

  return [v4 encodeObject:a3 forKey:v5];
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    v4 = (v3 + 2);
    for (i = v3 + 2; ; CFRelease(i[3]))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v6 = *v4;
    if (*v4)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = *v3;
    *v3 = 0;
    if (v8)
    {
      operator delete(v8);
    }

    MEMORY[0x253030980](v3, 0x10A0C408EF24B1CLL);
  }

  v9.receiver = self;
  v9.super_class = DYIntKeyedDictionary;
  [(DYIntKeyedDictionary *)&v9 dealloc];
}

- (void)removeAllObjects
{
  v2 = self->_private;
  for (i = v2[2]; i; i = *i)
  {
    CFRelease(i[3]);
  }

  if (v2[3])
  {
    v4 = v2[2];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v2[2] = 0;
    v6 = v2[1];
    if (v6)
    {
      bzero(*v2, 8 * v6);
    }

    v2[3] = 0;
  }
}

- (void)setObject:(id)object forIntKey:(int64_t)key
{
  if (object)
  {
    v6 = self->_private;
    v10[0] = key;
    v10[1] = object;
    v7 = std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::__emplace_unique_key_args<long long,std::pair<long long const,objc_object  {objcproto8NSObject}>>(v6, v10);
    if (v8)
    {
      CFRetain(object);
    }

    else if (v7[3] != object)
    {
      v9 = v7;
      CFRelease(v7[3]);
      CFRetain(object);
      v9[3] = object;
    }
  }

  else
  {

    [(DYIntKeyedDictionary *)self removeObjectForIntKey:key];
  }
}

- (id)objectForIntKey:(int64_t)key
{
  v3 = self->_private;
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    keyCopy = key;
    if (v4 <= key)
    {
      keyCopy = key % v4;
    }
  }

  else
  {
    keyCopy = (v4 - 1) & key;
  }

  v7 = *(*v3 + 8 * keyCopy);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == key)
      {
        if (v8[2] == key)
        {
          return v8[3];
        }
      }

      else if ((v10 & v9) != keyCopy)
      {
        return 0;
      }

      v8 = *v8;
      if (!v8)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == key)
    {
      break;
    }

    if (v11 >= v4)
    {
      v11 %= v4;
    }

    if (v11 != keyCopy)
    {
      return 0;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != key)
  {
    goto LABEL_16;
  }

  return v8[3];
}

- (void)removeObjectForIntKey:(int64_t)key
{
  v3 = self->_private;
  v4 = v3[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      keyCopy = key;
      if (v4 <= key)
      {
        keyCopy = key % v4;
      }
    }

    else
    {
      keyCopy = (v4 - 1) & key;
    }

    v7 = *(*v3 + 8 * keyCopy);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = *(v8 + 8);
            if (v10 == key)
            {
              if (*(v8 + 16) == key)
              {
                goto LABEL_22;
              }
            }

            else if ((v10 & v9) != keyCopy)
            {
              return;
            }

            v8 = *v8;
            if (!v8)
            {
              return;
            }
          }
        }

        do
        {
          v11 = *(v8 + 8);
          if (v11 == key)
          {
            if (*(v8 + 16) == key)
            {
LABEL_22:
              CFRelease(*(v8 + 24));
              std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::remove(v3, v8, &__p);
              v12 = __p;
              __p = 0;
              if (v12)
              {
                operator delete(v12);
              }

              return;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != keyCopy)
            {
              return;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v4 = self->_private;
  v6 = 0;
  v5 = v4 + 16;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    (*(block + 2))(block, v5[2], v5[3], &v6);
  }

  while (v6 != 1);
}

- (void)setObject:(id)object forKey:(id)key
{
  longLongValue = [key longLongValue];

  [(DYIntKeyedDictionary *)self setObject:object forIntKey:longLongValue];
}

- (id)objectForKey:(id)key
{
  longLongValue = [key longLongValue];

  return [(DYIntKeyedDictionary *)self objectForIntKey:longLongValue];
}

- (void)removeObjectForKey:(id)key
{
  longLongValue = [key longLongValue];

  [(DYIntKeyedDictionary *)self removeObjectForIntKey:longLongValue];
}

- (id)allKeys
{
  v3 = objc_opt_new();
  for (i = *(self->_private + 2); i; i = *i)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:i[2]];
    [v3 addObject:v5];
  }

  return v3;
}

@end