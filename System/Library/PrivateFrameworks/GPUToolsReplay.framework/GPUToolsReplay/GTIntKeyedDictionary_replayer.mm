@interface GTIntKeyedDictionary_replayer
- (GTIntKeyedDictionary_replayer)initWithCapacity:(unint64_t)capacity;
- (GTIntKeyedDictionary_replayer)initWithCoder:(id)coder;
- (GTIntKeyedDictionary_replayer)initWithIntKeyedDictionary:(id)dictionary;
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

@implementation GTIntKeyedDictionary_replayer

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

- (void)removeObjectForKey:(id)key
{
  longLongValue = [key longLongValue];

  [(GTIntKeyedDictionary_replayer *)self removeObjectForIntKey:longLongValue];
}

- (id)objectForKey:(id)key
{
  longLongValue = [key longLongValue];

  return [(GTIntKeyedDictionary_replayer *)self objectForIntKey:longLongValue];
}

- (void)setObject:(id)object forKey:(id)key
{
  longLongValue = [key longLongValue];

  [(GTIntKeyedDictionary_replayer *)self setObject:object forIntKey:longLongValue];
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

- (void)removeObjectForIntKey:(int64_t)key
{
  v3 = self->_private;
  v4 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v3, key);
  if (v4)
  {
    v5 = v4;
    CFRelease(v4[3]);
    v6 = v3[1];
    v7 = v5[1];
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v6)
      {
        v7 %= *&v6;
      }
    }

    else
    {
      v7 &= *&v6 - 1;
    }

    v9 = *(*v3 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v5);
    if (v10 == v3 + 2)
    {
      goto LABEL_20;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v7)
    {
LABEL_20:
      if (!*v5)
      {
        goto LABEL_21;
      }

      v12 = *(*v5 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v7)
      {
LABEL_21:
        *(*v3 + 8 * v7) = 0;
      }
    }

    v13 = *v5;
    if (*v5)
    {
      v14 = *(v13 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v14 >= *&v6)
        {
          v14 %= *&v6;
        }
      }

      else
      {
        v14 &= *&v6 - 1;
      }

      if (v14 != v7)
      {
        *(*v3 + 8 * v14) = v10;
        v13 = *v5;
      }
    }

    *v10 = v13;
    *v5 = 0;
    --v3[3];

    operator delete(v5);
  }
}

- (id)objectForIntKey:(int64_t)key
{
  result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(self->_private, key);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (void)setObject:(id)object forIntKey:(int64_t)key
{
  if (object)
  {
    v5 = self->_private;
    v6 = v5[1];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      keyCopy = key;
      if (v6 <= key)
      {
        keyCopy = key % v6;
      }
    }

    else
    {
      keyCopy = (v6 - 1) & key;
    }

    v9 = *(*v5 + 8 * keyCopy);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == key)
      {
        if (v10[2] == key)
        {
          v12 = v10[3];
          if (v12 != object)
          {
            CFRelease(v12);
            CFRetain(object);
            v10[3] = object;
          }

          return;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= v6)
          {
            v11 %= v6;
          }
        }

        else
        {
          v11 &= v6 - 1;
        }

        if (v11 != keyCopy)
        {
          goto LABEL_22;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  [(GTIntKeyedDictionary_replayer *)self removeObjectForIntKey:key];
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
      for (j = 0; j != v6; ++j)
      {
        *(*v2 + 8 * j) = 0;
      }
    }

    v2[3] = 0;
  }
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    for (i = (v3 + 16); ; CFRelease(i[3]))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v5 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v3);
    MEMORY[0x2530332C0](v5, 0x10A0C408EF24B1CLL);
  }

  v6.receiver = self;
  v6.super_class = GTIntKeyedDictionary_replayer;
  [(GTIntKeyedDictionary_replayer *)&v6 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[GTIntKeyedDictionary encodeWithCoder:]", ", 0, "[coder allowsKeyedCoding]"");
  }

  [coder encodeObject:-[GTIntKeyedDictionary_replayer allKeys](self forKey:{"allKeys"), @"keys"}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__GTIntKeyedDictionary_encodeWithCoder___block_invoke;
  v5[3] = &unk_279657C80;
  v5[4] = coder;
  [(GTIntKeyedDictionary_replayer *)self enumerateKeysAndObjectsUsingBlock:v5];
}

- (GTIntKeyedDictionary_replayer)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v12 = "[coder allowsKeyedCoding]";
    goto LABEL_8;
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"keys"}];
  if (!v7)
  {
    v12 = "keys";
LABEL_8:
    __assert_rtn("[GTIntKeyedDictionary initWithCoder:]", "", 0, v12);
  }

  v8 = v7;
  v9 = -[GTIntKeyedDictionary_replayer initWithCapacity:](self, "initWithCapacity:", [v7 count]);
  v10 = v9;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__GTIntKeyedDictionary_initWithCoder___block_invoke;
    v13[3] = &unk_279657CA8;
    v13[4] = coder;
    v13[5] = v9;
    [v8 enumerateObjectsUsingBlock:v13];
  }

  return v10;
}

- (GTIntKeyedDictionary_replayer)initWithIntKeyedDictionary:(id)dictionary
{
  v4 = -[GTIntKeyedDictionary_replayer initWithCapacity:](self, "initWithCapacity:", [dictionary count]);
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__GTIntKeyedDictionary_initWithIntKeyedDictionary___block_invoke;
    v7[3] = &unk_279657C80;
    v7[4] = v4;
    [dictionary enumerateKeysAndObjectsUsingBlock:v7];
  }

  return v5;
}

- (GTIntKeyedDictionary_replayer)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = GTIntKeyedDictionary_replayer;
  if ([(GTIntKeyedDictionary_replayer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

@end