@interface GKRequestIdentifier
+ (id)requestIdentifierForInvocation:(id)invocation;
- (BOOL)isEqual:(id)equal;
- (GKRequestIdentifier)initWithInvocation:(id)invocation;
- (SEL)selector;
- (id)_argumentsForInvocation:(id)invocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setSelector:(SEL)selector;
@end

@implementation GKRequestIdentifier

- (id)_argumentsForInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  v6 = numberOfArguments - [invocationCopy _gkHasReplyBlock];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  if (v6 >= 3)
  {
    for (i = 2; v6 != i; ++i)
    {
      v9 = *[methodSignature getArgumentTypeAtIndex:i];
      if (v9 <= 0x52)
      {
        if (v9 > 66)
        {
          if (v9 > 75)
          {
            if (v9 != 76)
            {
              if (v9 != 81)
              {
                goto LABEL_41;
              }

LABEL_33:
              null = 0;
              [invocationCopy getArgument:&null atIndex:i];
              v10 = [MEMORY[0x277CCABB0] numberWithLongLong:null];
              goto LABEL_38;
            }
          }

          else
          {
            if (v9 == 67)
            {
              goto LABEL_32;
            }

            if (v9 != 73)
            {
              goto LABEL_41;
            }
          }

LABEL_25:
          LODWORD(null) = 0;
          [invocationCopy getArgument:&null atIndex:i];
          v10 = [MEMORY[0x277CCABB0] numberWithInt:null];
          goto LABEL_38;
        }

        if (v9 == 33)
        {
          goto LABEL_25;
        }

        if (v9 == 64)
        {
          null = 0;
          [invocationCopy getArgument:&null atIndex:i];
          if (!null)
          {
            null = [MEMORY[0x277CBEB68] null];
          }

          [v7 addObject:?];
          continue;
        }

        if (v9 != 66)
        {
LABEL_41:

          v7 = 0;
          continue;
        }

        LOBYTE(null) = 0;
        [invocationCopy getArgument:&null atIndex:i];
        v10 = [MEMORY[0x277CCABB0] numberWithBool:null];
      }

      else
      {
        if (v9 > 104)
        {
          if (v9 > 112)
          {
            if (v9 == 113)
            {
              goto LABEL_33;
            }

            if (v9 != 115)
            {
              goto LABEL_41;
            }

LABEL_31:
            LOWORD(null) = 0;
            [invocationCopy getArgument:&null atIndex:i];
            v10 = [MEMORY[0x277CCABB0] numberWithShort:null];
            goto LABEL_38;
          }

          if (v9 != 105 && v9 != 108)
          {
            goto LABEL_41;
          }

          goto LABEL_25;
        }

        if (v9 <= 99)
        {
          if (v9 != 83)
          {
            if (v9 != 99)
            {
              goto LABEL_41;
            }

LABEL_32:
            LOBYTE(null) = 0;
            [invocationCopy getArgument:&null atIndex:i];
            v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:null];
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        if (v9 == 100)
        {
          null = 0;
          [invocationCopy getArgument:&null atIndex:i];
          v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&null];
        }

        else
        {
          if (v9 != 102)
          {
            goto LABEL_41;
          }

          LODWORD(null) = 0;
          [invocationCopy getArgument:&null atIndex:i];
          LODWORD(v11) = null;
          v10 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        }
      }

LABEL_38:
      v12 = v10;
      [v7 addObject:v10];
    }
  }

  return v7;
}

- (GKRequestIdentifier)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v13.receiver = self;
  v13.super_class = GKRequestIdentifier;
  v5 = [(GKRequestIdentifier *)&v13 init];
  v6 = v5;
  if (v5)
  {
    p_selector = &v5->_selector;
    selector = [invocationCopy selector];
    if (selector)
    {
      *p_selector = selector;
    }

    else
    {
      *p_selector = 0;
    }

    v9 = NSStringFromSelector(selector);
    v6->_savedHash = [v9 hash];

    v10 = [(GKRequestIdentifier *)v6 _argumentsForInvocation:invocationCopy];
    arguments = v6->_arguments;
    v6->_arguments = v10;
  }

  return v6;
}

+ (id)requestIdentifierForInvocation:(id)invocation
{
  invocationCopy = invocation;
  v4 = [[GKRequestIdentifier alloc] initWithInvocation:invocationCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(GKRequestIdentifier *)self hash];
    if (v6 == [v5 hash] && (!self->_selector ? (selector = 0) : (selector = self->_selector), !v5[2] ? (v9 = 0) : (v9 = v5[2]), sel_isEqual(selector, v9)))
    {
      v8 = [(NSArray *)self->_arguments isEqual:v5[3]];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[GKRequestIdentifier allocWithZone:?]];
  selector = self->_selector;
  v4->_savedHash = self->_savedHash;
  v4->_selector = selector;
  objc_storeStrong(&v4->_arguments, self->_arguments);
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = GKRequestIdentifier;
  v4 = [(GKRequestIdentifier *)&v9 description];
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v6 = NSStringFromSelector(selector);
  v7 = [v3 stringWithFormat:@"%@ - %@ %@", v4, v6, self->_arguments];

  return v7;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end