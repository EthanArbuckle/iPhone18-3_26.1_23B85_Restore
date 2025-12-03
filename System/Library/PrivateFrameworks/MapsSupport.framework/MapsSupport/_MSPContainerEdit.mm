@interface _MSPContainerEdit
- (void)ifAddition:(id)addition ifRemoval:(id)removal ifReplacement:(id)replacement ifContentUpdate:(id)update ifReplacedEntirely:(id)entirely;
- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEdit

- (void)ifAddition:(id)addition ifRemoval:(id)removal ifReplacement:(id)replacement ifContentUpdate:(id)update ifReplacedEntirely:(id)entirely
{
  additionCopy = addition;
  removalCopy = removal;
  replacementCopy = replacement;
  updateCopy = update;
  entirelyCopy = entirely;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = additionCopy;
    if (!additionCopy)
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
    v16 = removalCopy;
    if (removalCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = replacementCopy;
      if (replacementCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = updateCopy;
        if (updateCopy)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (entirelyCopy)
        {
          v18 = isKindOfClass;
          v16 = entirelyCopy;
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

- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  [(_MSPContainerEdit *)self methodForSelector:a2, block];

  [_MSPContainerEdit instanceMethodForSelector:a2];
}

@end