@interface BRPair
+ (id)pairWithLeft:(id)left andRight:(id)right;
- (BOOL)isEqual:(id)equal;
@end

@implementation BRPair

+ (id)pairWithLeft:(id)left andRight:(id)right
{
  leftCopy = left;
  rightCopy = right;
  v7 = objc_alloc_init(BRPair);
  left = v7->_left;
  v7->_left = leftCopy;
  v9 = leftCopy;

  right = v7->_right;
  v7->_right = rightCopy;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      left = self->_left;
      if (left | v5->_left && ![left isEqual:?])
      {
        v8 = 0;
      }

      else
      {
        right = self->_right;
        if (right | v5->_right)
        {
          v8 = [right isEqual:?];
        }

        else
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end