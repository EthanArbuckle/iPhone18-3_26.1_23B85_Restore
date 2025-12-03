@interface JavaUtilConcurrentConcurrentHashMap
+ (int)spreadWithInt:(int)int;
+ (void)ensureLoadedWithIOSClass:(id)class;
+ (void)initialize;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeWithId:(id)id withId:(id)withId;
- (BOOL)replaceWithId:(id)id withId:(id)withId withId:(id)a5;
- (JavaUtilConcurrentConcurrentHashMap)initWithJavaUtilMap:(id)map;
- (NSString)description;
- (id)elements;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)keySetWithId:(id)id;
- (id)keys;
- (id)replaceWithId:(id)id withId:(id)withId;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (unint64_t)sumCount;
- (void)__javaClone;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilConcurrentConcurrentHashMap

+ (int)spreadWithInt:(int)int
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  return int & 0x7FFFFFFF ^ HIWORD(int);
}

- (JavaUtilConcurrentConcurrentHashMap)initWithJavaUtilMap:(id)map
{
  JavaUtilAbstractMap_init(self, a2);
  atomic_store(0x10u, &self->sizeCtl_);
  [(JavaUtilConcurrentConcurrentHashMap *)self putAllWithJavaUtilMap:map];
  return self;
}

- (int)size
{
  v2 = [JavaUtilConcurrentConcurrentHashMap sumCount]_0(self);
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = v2;
  }

  return v3 & ~(v3 >> 63);
}

- (unint64_t)sumCount
{
  v1 = atomic_load((self + 64));
  result = atomic_load((self + 40));
  if (v1 && *(v1 + 8) >= 1)
  {
    v3 = 0;
    v4 = v1;
    do
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v6 = atomic_load((v5 + 64));
        result += v6;
      }

      ++v3;
      v4 += 8;
    }

    while (v3 < *(v1 + 8));
  }

  return result;
}

- (id)getWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  v5 = [id hash];
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  result = atomic_load(&self->table_);
  if (!result)
  {
    return result;
  }

  v7 = *(result + 2);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v9 < 0 != v8)
  {
    return 0;
  }

  v10 = v5 & 0x7FFFFFFF ^ HIWORD(v5);
  result = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(result, v9 & v10);
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 2);
  if (v12 == v10)
  {
    goto LABEL_13;
  }

  if ((v12 & 0x80000000) == 0)
  {
    while (1)
    {
      v11 = v11[4];
      if (!v11)
      {
        break;
      }

      if (*(v11 + 2) == v10)
      {
LABEL_13:
        v13 = v11[2];
        if (v13 == id || v13 && ([id isEqual:?] & 1) != 0)
        {
          return atomic_load(v11 + 3);
        }
      }
    }

    return 0;
  }

  result = [result findWithInt:v10 withId:id];
  v11 = result;
  if (result)
  {
    return atomic_load(v11 + 3);
  }

  return result;
}

- (BOOL)containsValueWithId:(id)id
{
  if (!id)
  {
    v8 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v8);
  }

  v3 = atomic_load(&self->table_);
  if (v3)
  {
    v5 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(v3, *(v3 + 2), 0, *(v3 + 2));
    for (i = v5; ; v5 = i)
    {
      v3 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v5);
      if (!v3)
      {
        break;
      }

      v7 = atomic_load(v3 + 3);
      if (v7 == id || v7 && ([id isEqual:?] & 1) != 0)
      {
        LOBYTE(v3) = 1;
        return v3;
      }
    }
  }

  return v3;
}

- (void)putAllWithJavaUtilMap:(id)map
{
  if (!map || (sub_1001B0244(self, [map size]), v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = objc_msgSend(map, "entrySet", 0)) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (!v11)
        {
          goto LABEL_12;
        }

        sub_1001AFE00(self, [*(*(&v12 + 1) + 8 * v10) getKey], objc_msgSend(v11, "getValue"), 0);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)clear
{
  v2 = atomic_load(&self->table_);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    while (v5 < *(v2 + 8))
    {
      v6 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v2, v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(v6 + 2);
        if (v8 == -1879048193)
        {
          v2 = sub_1001B094C(self, v2, v6);
          v5 = 0;
          if (!v2)
          {
            break;
          }
        }

        else
        {
          objc_sync_enter(v6);
          if (JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v2, v5) == v7)
          {
            v9 = v7;
            if ((v8 & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                JreThrowClassCastException();
              }

              v9 = atomic_load(v7 + 6);
              if (v9)
              {
LABEL_26:
                do
                {
                  --v4;
                  v9 = *(v9 + 32);
                }

                while (v9);
              }
            }

            JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v2, v5++, 0);
          }

          objc_sync_exit(v7);
        }
      }

      else
      {
        ++v5;
      }
    }

    if (v4)
    {

      sub_1001B0AD8(self, v4, -1);
    }
  }
}

- (id)keySet
{
  result = self->keySet_ConcurrentHashMap_;
  if (!result)
  {
    v4 = new_JavaUtilConcurrentConcurrentHashMap_KeySetView_initWithJavaUtilConcurrentConcurrentHashMap_withId_(self, 0);

    return JreStrongAssignAndConsume(&self->keySet_ConcurrentHashMap_, v4);
  }

  return result;
}

- (id)values
{
  result = self->values_;
  if (!result)
  {
    v4 = [JavaUtilConcurrentConcurrentHashMap_ValuesView alloc];
    objc_storeWeak(&v4->super.map_, self);

    return JreStrongAssignAndConsume(&self->values_, v4);
  }

  return result;
}

- (id)entrySet
{
  result = self->entrySet_;
  if (!result)
  {
    v4 = [JavaUtilConcurrentConcurrentHashMap_EntrySetView alloc];
    objc_storeWeak(&v4->super.map_, self);

    return JreStrongAssignAndConsume(&self->entrySet_, v4);
  }

  return result;
}

- (unint64_t)hash
{
  result = atomic_load(&self->table_);
  if (result)
  {
    v3 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(result, *(result + 8), 0, *(result + 8));
    result = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v3);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        v6 = *(v4 + 16);
        if (!v6 || (v7 = [v6 hash], (v8 = atomic_load((v4 + 24))) == 0))
        {
          JreThrowNullPointerException();
        }

        v5 += [v8 hash] ^ v7;
        v4 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v3);
      }

      while (v4);
      return v5;
    }
  }

  return result;
}

- (NSString)description
{
  v3 = atomic_load(&self->table_);
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(v3, v4, 0, v4);
  v6 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v6 appendWithChar:123];
  v7 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v5);
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      v9 = *(v8 + 2);
      v10 = atomic_load(v8 + 3);
      v11 = v9 == self ? @"(this Map)" : v9;
      [(JavaLangStringBuilder *)v6 appendWithId:v11];
      [(JavaLangStringBuilder *)v6 appendWithChar:61];
      v12 = v10 == self ? @"(this Map)" : v10;
      [(JavaLangStringBuilder *)v6 appendWithId:v12];
      v13 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v5);
      if (!v13)
      {
        break;
      }

      v8 = v13;
      v14 = [(JavaLangStringBuilder *)v6 appendWithChar:44];
      if (!v14)
      {
        goto LABEL_19;
      }

      [v14 appendWithChar:32];
    }
  }

  v15 = [(JavaLangStringBuilder *)v6 appendWithChar:125];
  if (!v15)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  return [v15 description];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_31;
  }

  LODWORD(getKey) = [JavaUtilMap_class_() isInstance:equal];
  if (!getKey)
  {
    return getKey;
  }

  v6 = JavaUtilMap_class_();
  if (equal && ([v6 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = atomic_load(&self->table_);
  if (v7)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(v7, v8, 0, v8);
  v10 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v9);
  if (v10)
  {
    do
    {
      v11 = atomic_load(v10 + 3);
      if (!equal)
      {
        goto LABEL_33;
      }

      getKey = [equal getWithId:v10[2]];
      if (!getKey)
      {
        return getKey;
      }

      if (getKey != v11)
      {
        LODWORD(getKey) = [getKey isEqual:v11];
        if (!getKey)
        {
          return getKey;
        }
      }

      v10 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v9);
    }

    while (v10);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (!equal)
    {
      goto LABEL_33;
    }
  }

  entrySet = [equal entrySet];
  if (!entrySet)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v13 = entrySet;
  v14 = [entrySet countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v14)
  {
LABEL_31:
    LOBYTE(getKey) = 1;
    return getKey;
  }

  v15 = v14;
  v16 = *v23;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v22 + 1) + 8 * i);
      if (!v18)
      {
        goto LABEL_33;
      }

      getKey = [*(*(&v22 + 1) + 8 * i) getKey];
      if (!getKey)
      {
        return getKey;
      }

      v19 = getKey;
      getKey = [v18 getValue];
      if (!getKey)
      {
        return getKey;
      }

      v20 = getKey;
      getKey = [(JavaUtilConcurrentConcurrentHashMap *)self getWithId:v19];
      if (!getKey)
      {
        return getKey;
      }

      if (v20 != getKey)
      {
        LODWORD(getKey) = [v20 isEqual:getKey];
        if (!getKey)
        {
          return getKey;
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    LOBYTE(getKey) = 1;
  }

  while (v15);
  return getKey;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (qword_100554D28 != -1)
  {
    sub_1001B7320();
  }

  v5 = [IOSObjectArray arrayWithLength:16 type:qword_100554D20];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [JavaUtilConcurrentConcurrentHashMap_Segment alloc];
      JavaUtilConcurrentLocksReentrantLock_init(v7);
      v7->loadFactor_ = 0.75;
      IOSObjectArray_SetAndConsume(v5, v6++, v7);
    }

    while (v6 < v5->super.size_);
  }

  if (!stream || (v8 = [stream putFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  [v8 putWithNSString:@"segments" withId:v5];
  [v9 putWithNSString:@"segmentShift" withInt:28];
  [v9 putWithNSString:@"segmentMask" withInt:15];
  [stream writeFields];
  v10 = atomic_load(&self->table_);
  if (v10)
  {
    v11 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(v10, v10[2], 0, v10[2]);
    v12 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v11);
    if (v12)
    {
      v13 = v12;
      do
      {
        [stream writeObjectWithId:v13[2]];
        v14 = atomic_load(v13 + 3);
        [stream writeObjectWithId:v14];
        v13 = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v11);
      }

      while (v13);
    }
  }

  [stream writeObjectWithId:0];

  [stream writeObjectWithId:0];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  atomic_store(0xFFFFFFFF, &self->sizeCtl_);
  if (!stream)
  {
LABEL_48:
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readObject = [stream readObject];
  readObject2 = [stream readObject];
  if (!readObject)
  {
    goto LABEL_12;
  }

  v6 = readObject2;
  if (!readObject2)
  {
    goto LABEL_12;
  }

  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [readObject hash];
    if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001B7300();
    }

    v9 = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v10 & 0x7FFFFFFF ^ HIWORD(v10), readObject, v6, v9);
    readObject = [stream readObject];
    readObject3 = [stream readObject];
    --v8;
    v7 = (v7 + 1);
    if (!readObject)
    {
      break;
    }

    v6 = readObject3;
  }

  while (readObject3);
  if (!v8)
  {
LABEL_12:
    atomic_store(0, &self->sizeCtl_);
    return;
  }

  if (-v8 > 0x1FFFFFFF)
  {
    v12 = 0x40000000;
  }

  else
  {
    v12 = sub_1001AF280((v7 >> 1) - v8 + 1);
  }

  v13 = v12;
  if (qword_100554D18 != -1)
  {
    sub_1001B730C();
  }

  v14 = [IOSObjectArray arrayWithLength:v13 type:qword_100554D10];
  objc_opt_class();
  if (v14 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_49:
    JreThrowClassCastException();
  }

  v39 = v13;
  if (!v9)
  {
    v16 = 0;
    goto LABEL_47;
  }

  v15 = v13 - 1;
  v16 = 0;
  v43 = v14;
  v42 = v15;
  do
  {
    while (1)
    {
      while (1)
      {
LABEL_20:
        v17 = v9;
        p_next = &v9->next_;
        v9 = v9->next_;
        v19 = *(p_next - 6);
        v20 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v14, v19 & v15);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_37;
        }

        v22 = *(v17 + 16);
        if ((*(v20 + 2) & 0x80000000) == 0)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_49;
        }

        v37 = atomic_load((v17 + 24));
        if (!sub_1001B19AC(v21, v19, v22, v37))
        {
          ++v16;
        }

        if (!v9)
        {
          goto LABEL_47;
        }
      }

      v23 = v16;
      v24 = 0;
      v25 = v20;
      do
      {
        if (*(v25 + 2) == v19)
        {
          v26 = v25[2];
          if (v26 == v22)
          {
            goto LABEL_44;
          }

          if (v26)
          {
            if (!v22)
            {
              goto LABEL_48;
            }

            if ([v22 isEqual:v39])
            {
LABEL_44:
              v14 = v43;
              v16 = v23;
              v15 = v42;
              if (!v9)
              {
                goto LABEL_47;
              }

              goto LABEL_20;
            }
          }
        }

        ++v24;
        v25 = v25[4];
      }

      while (v25);
      v27 = v24 < 8;
      v14 = v43;
      v16 = v23;
      v15 = v42;
      if (!v27)
      {
        break;
      }

LABEL_37:
      ++v16;
      JreStrongAssign(p_next, v21);
      JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v14, v19 & v15, v17);
      if (!v9)
      {
        goto LABEL_47;
      }
    }

    v40 = v16 + 1;
    JreStrongAssign(p_next, v21);
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(v17 + 8);
      v31 = *(v17 + 16);
      v32 = atomic_load((v17 + 24));
      v33 = [JavaUtilConcurrentConcurrentHashMap_TreeNode alloc];
      JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v33, v30, v31, v32, 0, 0);
      v34 = v33;
      v35 = v34;
      if (JreStrongAssign(v34 + 8, v28))
      {
        if (!v28)
        {
          goto LABEL_48;
        }

        JreStrongAssign(v28 + 4, v34);
        v35 = v29;
      }

      v17 = *(v17 + 32);
      v28 = v34;
      v29 = v35;
    }

    while (v17);
    v36 = [JavaUtilConcurrentConcurrentHashMap_TreeBin alloc];
    JavaUtilConcurrentConcurrentHashMap_TreeBin_initWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v36, v35);
    v15 = v42;
    v14 = v43;
    JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v43, v19 & v42, v36);
    v16 = v40;
  }

  while (v9);
LABEL_47:
  selfCopy = self;
  JreVolatileStrongAssign(&self->table_, v14);
  atomic_store(v39 - (v39 >> 2), &self->sizeCtl_);
  atomic_store(v16, &selfCopy->baseCount_);
}

- (BOOL)removeWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    v5 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v5);
  }

  return withId && sub_1001B0470(self, id, 0, withId) != 0;
}

- (BOOL)replaceWithId:(id)id withId:(id)withId withId:(id)a5
{
  if (!id || !withId || !a5)
  {
    v6 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v6);
  }

  return sub_1001B0470(self, id, a5, withId) != 0;
}

- (id)replaceWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    v6 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v6);
  }

  return sub_1001B0470(self, id, withId, 0);
}

- (id)keys
{
  v3 = atomic_load(&self->table_);
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [JavaUtilConcurrentConcurrentHashMap_KeyIterator alloc];
  JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(v5, v3, v4, 0, v4, self);

  return v5;
}

- (id)elements
{
  v3 = atomic_load(&self->table_);
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [JavaUtilConcurrentConcurrentHashMap_ValueIterator alloc];
  JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(v5, v3, v4, 0, v4, self);

  return v5;
}

- (id)keySetWithId:(id)id
{
  if (!id)
  {
    v5 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v5);
  }

  v3 = new_JavaUtilConcurrentConcurrentHashMap_KeySetView_initWithJavaUtilConcurrentConcurrentHashMap_withId_(self, id);

  return v3;
}

+ (void)ensureLoadedWithIOSClass:(id)class
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }
}

- (void)dealloc
{
  JreReleaseVolatile(&self->table_);
  JreReleaseVolatile(&self->nextTable_);
  JreReleaseVolatile(&self->counterCells_);

  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap;
  [(JavaUtilConcurrentConcurrentHashMap *)&v3 __javaClone];
  JreRetainVolatile(&self->table_);
  JreRetainVolatile(&self->nextTable_);
  JreRetainVolatile(&self->counterCells_);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    dword_100554CB0 = ~(-1 << (32 - dword_100550388));
    dword_100554CB4 = 32 - dword_100550388;
    Runtime = JavaLangRuntime_getRuntime();
    if (!Runtime)
    {
      JreThrowNullPointerException();
    }

    JavaUtilConcurrentConcurrentHashMap_NCPU_ = [Runtime availableProcessors];
    if (qword_100554D28 != -1)
    {
      sub_1001B7320();
    }

    v3 = IOSClass_arrayType(qword_100554D20, 1u);
    v13 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"segments", v3);
    if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001B7348();
    }

    v14 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"segmentMask", JavaLangInteger_TYPE_);
    if ((atomic_load_explicit(JavaLangInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001B7348();
    }

    v15 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"segmentShift", JavaLangInteger_TYPE_);
    v4 = [IOSObjectArray newArrayWithObjects:&v13 count:3 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554CB8, v4);
    v5 = new_JavaUtilConcurrentAtomicAtomicInteger_init();
    JreStrongAssignAndConsume(&JavaUtilConcurrentConcurrentHashMap_counterHashCodeGenerator_, v5);
    v6 = new_JavaLangThreadLocal_init();
    JreStrongAssignAndConsume(&JavaUtilConcurrentConcurrentHashMap_threadCounterHashCode_, v6);
    Unsafe = SunMiscUnsafe_getUnsafe();
    JreStrongAssign(&qword_100554CC0, Unsafe);
    v8 = JavaUtilConcurrentConcurrentHashMap_class_();
    if (!qword_100554CC0)
    {
      JreThrowNullPointerException();
    }

    v9 = v8;
    qword_100554CC8 = [qword_100554CC0 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v8, "getDeclaredField:", @"sizeCtl", v13, v14, v15)}];
    qword_100554CD0 = [qword_100554CC0 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v9, "getDeclaredField:", @"transferIndex"}];
    qword_100554CD8 = [qword_100554CC0 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v9, "getDeclaredField:", @"baseCount"}];
    qword_100554CE0 = [qword_100554CC0 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v9, "getDeclaredField:", @"cellsBusy"}];
    if (qword_100554D58 != -1)
    {
      sub_1001B7354();
    }

    qword_100554CE8 = [qword_100554CC0 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(qword_100554D50, "getDeclaredField:", @"value"}];
    if (qword_100554D18 != -1)
    {
      sub_1001B737C();
    }

    v10 = IOSClass_arrayType(qword_100554D10, 1u);
    qword_100554CF0 = [qword_100554CC0 arrayBaseOffsetWithIOSClass:v10];
    v11 = [qword_100554CC0 arrayIndexScaleWithIOSClass:v10];
    if ((v11 & (v11 - 1)) != 0)
    {
      v12 = new_JavaLangError_initWithNSString_(@"data type scale not a power of two");
      objc_exception_throw(v12);
    }

    dword_100554CF8 = 31 - JavaLangInteger_numberOfLeadingZerosWithInt_(v11);
    JavaUtilConcurrentLocksLockSupport_class_();
    if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001B73A4();
    }

    atomic_store(1u, JavaUtilConcurrentConcurrentHashMap__initialized);
  }
}

@end