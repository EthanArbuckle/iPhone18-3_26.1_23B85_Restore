@interface XRIntKeyedDictionary
- (XRIntKeyedDictionary)initWithCoder:(id)coder;
- (XRIntKeyedDictionary)initWithIntKeyedDictionary:(id)dictionary copyObjects:(BOOL)objects;
- (id).cxx_construct;
- (id)allKeys;
- (id)allObjects;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForIntegerKey:(unint64_t)key options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateObjectsAndIntegerKeys:(id)keys;
- (void)setObject:(id)object forIntegerKey:(unint64_t)key;
@end

@implementation XRIntKeyedDictionary

- (XRIntKeyedDictionary)initWithIntKeyedDictionary:(id)dictionary copyObjects:(BOOL)objects
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = XRIntKeyedDictionary;
  v7 = [(XRIntKeyedDictionary *)&v16 init];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2480A28B4;
    v13[3] = &unk_278EFC2B0;
    objectsCopy = objects;
    v14 = v7;
    objc_msgSend_enumerateObjectsAndIntegerKeys_(dictionaryCopy, v9, v13, v10, v11);
  }

  return v8;
}

- (XRIntKeyedDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v10)
  {
    v30 = 0;
    objc_msgSend_decodeValueOfObjCType_at_size_(coderCopy, v9, "I", &v30, 4);
    if (v30)
    {
      for (i = 0; i < v30; ++i)
      {
        v29 = 0;
        v16 = objc_msgSend_decodeObject(coderCopy, v11, v12, v13, v14);
        v29 = objc_msgSend_unsignedLongLongValue(v16, v17, v18, v19, v20);

        v25 = objc_msgSend_decodeObject(coderCopy, v21, v22, v23, v24);
        v31 = &v29;
        v26 = sub_2480A3094(&v10->_hash_map.__table_.__bucket_list_.__ptr_, &v29);
        v27 = v26[3];
        v26[3] = v25;
      }
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  size = self->_hash_map.__table_.__size_;
  objc_msgSend_encodeValueOfObjCType_at_(coderCopy, v5, "I", &size, v6);
  for (i = &self->_hash_map.__table_.__first_node_; ; objc_msgSend_encodeObject_(coderCopy, v15, i[3].__next_, v16, v17))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }

    v11 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, i[2].__next_, v8, v9);
    objc_msgSend_encodeObject_(coderCopy, v12, v11, v13, v14);
  }
}

- (id)objectForIntegerKey:(unint64_t)key options:(unint64_t)options
{
  optionsCopy = options;
  v13[0] = key;
  v6 = sub_2480A35C4(&self->_hash_map.__table_.__bucket_list_.__ptr_, v13);
  if (v6)
  {
    v10 = v6[3];
  }

  else if (optionsCopy)
  {
    v10 = objc_msgSend_mutableCopyWithZone_(self->_prototype, v7, 0, v8, v9);
    v13[2] = v13;
    v11 = sub_2480A3094(&self->_hash_map.__table_.__bucket_list_.__ptr_, v13);
    objc_storeStrong(v11 + 3, v10);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setObject:(id)object forIntegerKey:(unint64_t)key
{
  keyCopy = key;
  objectCopy = object;
  v11 = objectCopy;
  v7 = sub_2480A3678(&self->_hash_map.__table_.__bucket_list_.__ptr_, &keyCopy);
  v9 = v8;

  if (!v9)
  {
    objc_storeStrong(v7 + 3, object);
  }
}

- (id)allObjects
{
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_hash_map.__table_.__size_, v2, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2480A2E24;
  v11[3] = &unk_278EFC2D8;
  v6 = v5;
  v12 = v6;
  objc_msgSend_enumerateObjectsAndIntegerKeys_(self, v7, v11, v8, v9);

  return v6;
}

- (id)allKeys
{
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_hash_map.__table_.__size_, v2, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2480A2EFC;
  v11[3] = &unk_278EFC2D8;
  v6 = v5;
  v12 = v6;
  objc_msgSend_enumerateObjectsAndIntegerKeys_(self, v7, v11, v8, v9);

  return v6;
}

- (void)enumerateObjectsAndIntegerKeys:(id)keys
{
  v5 = 0;
  next = self->_hash_map.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      (*(keys + 2))(keys, next[3], next[2], &v5);
      next = *next;
    }

    while (next && (v5 & 1) == 0);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4 != self)
  {
    v4->_hash_map.__table_.__max_load_factor_ = self->_hash_map.__table_.__max_load_factor_;
    sub_2480A3AFC(&v4->_hash_map.__table_.__bucket_list_.__ptr_, self->_hash_map.__table_.__first_node_.__next_, 0);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end