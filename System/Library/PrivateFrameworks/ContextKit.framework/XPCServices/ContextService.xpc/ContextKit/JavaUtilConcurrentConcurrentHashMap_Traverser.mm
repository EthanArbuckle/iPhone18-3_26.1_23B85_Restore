@interface JavaUtilConcurrentConcurrentHashMap_Traverser
- (JavaUtilConcurrentConcurrentHashMap_Traverser)initWithJavaUtilConcurrentConcurrentHashMap_NodeArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (id)advance;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Traverser

- (id)advance
{
  v3 = (self + 16);
  v2 = *(self + 16);
  if (v2)
  {
    v4 = *(v2 + 32);
    if (v4)
    {
LABEL_3:
      v5 = v3;
      v6 = v4;
      goto LABEL_24;
    }
  }

  while (*(self + 44) < *(self + 48))
  {
    v7 = *(self + 8);
    if (!v7)
    {
      break;
    }

    v8 = v7[2];
    v9 = *(self + 40);
    if (v8 <= v9 || v9 < 0)
    {
      break;
    }

    v10 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(*(self + 8), *(self + 40));
    v4 = v10;
    if (v10 && (v10[2] & 0x80000000) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        JreStrongAssign((self + 8), *(v4 + 40));
        sub_1001B552C(self, v7, v9, v8);
        v4 = 0;
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_27:
          JreThrowClassCastException();
        }

        v4 = atomic_load((v4 + 48));
      }

      else
      {
        v4 = 0;
      }
    }

    if (*(self + 24))
    {
      sub_1001B55D4(self, v8);
    }

    else
    {
      v11 = *(self + 52) + v9;
      *(self + 40) = v11;
      if (v11 >= v8)
      {
        v12 = *(self + 44) + 1;
        *(self + 40) = v12;
        *(self + 44) = v12;
      }
    }

LABEL_17:
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = v3;
  v6 = 0;
LABEL_24:

  return JreStrongAssign(v5, v6);
}

- (JavaUtilConcurrentConcurrentHashMap_Traverser)initWithJavaUtilConcurrentConcurrentHashMap_NodeArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  JreStrongAssign(&self->tab_, array);
  self->index_ = withInt;
  self->baseIndex_ = withInt;
  self->baseLimit_ = a6;
  self->baseSize_ = int;
  JreStrongAssign(&self->next_, 0);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_Traverser;
  [(JavaUtilConcurrentConcurrentHashMap_Traverser *)&v3 dealloc];
}

@end