@interface GKRequestIdentifier
+ (id)requestIdentifierForInvocation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GKRequestIdentifier)initWithInvocation:(id)a3;
- (SEL)selector;
- (id)_argumentsForInvocation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setSelector:(SEL)a3;
@end

@implementation GKRequestIdentifier

- (id)_argumentsForInvocation:(id)a3
{
  v3 = a3;
  v4 = [v3 methodSignature];
  v5 = [v4 numberOfArguments];
  v6 = v5 - [v3 _gkHasReplyBlock];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  if (v6 >= 3)
  {
    for (i = 2; v6 != i; ++i)
    {
      v9 = *[v4 getArgumentTypeAtIndex:i];
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
              v14 = 0;
              [v3 getArgument:&v14 atIndex:i];
              v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
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
          LODWORD(v14) = 0;
          [v3 getArgument:&v14 atIndex:i];
          v10 = [MEMORY[0x277CCABB0] numberWithInt:v14];
          goto LABEL_38;
        }

        if (v9 == 33)
        {
          goto LABEL_25;
        }

        if (v9 == 64)
        {
          v14 = 0;
          [v3 getArgument:&v14 atIndex:i];
          if (!v14)
          {
            v14 = [MEMORY[0x277CBEB68] null];
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

        LOBYTE(v14) = 0;
        [v3 getArgument:&v14 atIndex:i];
        v10 = [MEMORY[0x277CCABB0] numberWithBool:v14];
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
            LOWORD(v14) = 0;
            [v3 getArgument:&v14 atIndex:i];
            v10 = [MEMORY[0x277CCABB0] numberWithShort:v14];
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
            LOBYTE(v14) = 0;
            [v3 getArgument:&v14 atIndex:i];
            v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        if (v9 == 100)
        {
          v14 = 0;
          [v3 getArgument:&v14 atIndex:i];
          v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&v14];
        }

        else
        {
          if (v9 != 102)
          {
            goto LABEL_41;
          }

          LODWORD(v14) = 0;
          [v3 getArgument:&v14 atIndex:i];
          LODWORD(v11) = v14;
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

- (GKRequestIdentifier)initWithInvocation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GKRequestIdentifier;
  v5 = [(GKRequestIdentifier *)&v13 init];
  v6 = v5;
  if (v5)
  {
    p_selector = &v5->_selector;
    v8 = [v4 selector];
    if (v8)
    {
      *p_selector = v8;
    }

    else
    {
      *p_selector = 0;
    }

    v9 = NSStringFromSelector(v8);
    v6->_savedHash = [v9 hash];

    v10 = [(GKRequestIdentifier *)v6 _argumentsForInvocation:v4];
    arguments = v6->_arguments;
    v6->_arguments = v10;
  }

  return v6;
}

+ (id)requestIdentifierForInvocation:(id)a3
{
  v3 = a3;
  v4 = [[GKRequestIdentifier alloc] initWithInvocation:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end