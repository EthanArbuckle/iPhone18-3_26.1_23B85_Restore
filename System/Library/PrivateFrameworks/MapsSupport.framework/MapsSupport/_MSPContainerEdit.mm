@interface _MSPContainerEdit
- (void)ifAddition:(id)a3 ifRemoval:(id)a4 ifReplacement:(id)a5 ifContentUpdate:(id)a6 ifReplacedEntirely:(id)a7;
- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4;
@end

@implementation _MSPContainerEdit

- (void)ifAddition:(id)a3 ifRemoval:(id)a4 ifReplacement:(id)a5 ifContentUpdate:(id)a6 ifReplacedEntirely:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v19;
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_15:
    v16[2](v16, self);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v12;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v13;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
        if (v14)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v15)
        {
          v18 = isKindOfClass;
          v16 = v15;
          if (v18)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_16:
}

- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4
{
  [(_MSPContainerEdit *)self methodForSelector:a2, a4];

  [_MSPContainerEdit instanceMethodForSelector:a2];
}

@end