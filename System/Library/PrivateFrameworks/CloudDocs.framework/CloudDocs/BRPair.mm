@interface BRPair
+ (id)pairWithLeft:(id)a3 andRight:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation BRPair

+ (id)pairWithLeft:(id)a3 andRight:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(BRPair);
  left = v7->_left;
  v7->_left = v5;
  v9 = v5;

  right = v7->_right;
  v7->_right = v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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