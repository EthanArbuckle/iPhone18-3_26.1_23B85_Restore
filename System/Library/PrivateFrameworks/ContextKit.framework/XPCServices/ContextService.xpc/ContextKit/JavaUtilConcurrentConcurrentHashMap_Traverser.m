@interface JavaUtilConcurrentConcurrentHashMap_Traverser
- (JavaUtilConcurrentConcurrentHashMap_Traverser)initWithJavaUtilConcurrentConcurrentHashMap_NodeArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
- (id)advance;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Traverser

- (id)advance
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
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

  while (*(a1 + 44) < *(a1 + 48))
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      break;
    }

    v8 = v7[2];
    v9 = *(a1 + 40);
    if (v8 <= v9 || v9 < 0)
    {
      break;
    }

    v10 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(*(a1 + 8), *(a1 + 40));
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

        JreStrongAssign((a1 + 8), *(v4 + 40));
        sub_1001B552C(a1, v7, v9, v8);
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

    if (*(a1 + 24))
    {
      sub_1001B55D4(a1, v8);
    }

    else
    {
      v11 = *(a1 + 52) + v9;
      *(a1 + 40) = v11;
      if (v11 >= v8)
      {
        v12 = *(a1 + 44) + 1;
        *(a1 + 40) = v12;
        *(a1 + 44) = v12;
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

- (JavaUtilConcurrentConcurrentHashMap_Traverser)initWithJavaUtilConcurrentConcurrentHashMap_NodeArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  JreStrongAssign(&self->tab_, a3);
  self->index_ = a5;
  self->baseIndex_ = a5;
  self->baseLimit_ = a6;
  self->baseSize_ = a4;
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