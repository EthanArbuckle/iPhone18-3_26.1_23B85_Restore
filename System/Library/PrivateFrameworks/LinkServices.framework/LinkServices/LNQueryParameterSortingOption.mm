@interface LNQueryParameterSortingOption
- (BOOL)isEqual:(id)equal;
- (LNQueryParameterSortingOption)initWithCoder:(id)coder;
- (LNQueryParameterSortingOption)initWithOrder:(int64_t)order sortParameterIndex:(id)index;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryParameterSortingOption

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        order = [(LNQueryParameterSortingOption *)self order];
        if (order != [(LNQueryParameterSortingOption *)v6 order])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }

        sortParameterIndex = [(LNQueryParameterSortingOption *)self sortParameterIndex];
        sortParameterIndex2 = [(LNQueryParameterSortingOption *)v6 sortParameterIndex];
        v10 = sortParameterIndex;
        v11 = sortParameterIndex2;
        v12 = v11;
        if (v10 == v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v10 && v11)
          {
            v13 = [(LNQueryParameterSortingOption *)v10 isEqual:v11];
          }
        }
      }

      else
      {
        v13 = 0;
        v10 = v6;
        v6 = 0;
      }
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  order = [(LNQueryParameterSortingOption *)self order];
  sortParameterIndex = [(LNQueryParameterSortingOption *)self sortParameterIndex];
  v5 = [sortParameterIndex hash];

  return v5 + order;
}

- (LNQueryParameterSortingOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"order"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortParameterIndex"];

  if (v6)
  {
    self = [(LNQueryParameterSortingOption *)self initWithOrder:v5 sortParameterIndex:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNQueryParameterSortingOption order](self forKey:{"order"), @"order"}];
  sortParameterIndex = [(LNQueryParameterSortingOption *)self sortParameterIndex];
  [coderCopy encodeObject:sortParameterIndex forKey:@"sortParameterIndex"];
}

- (LNQueryParameterSortingOption)initWithOrder:(int64_t)order sortParameterIndex:(id)index
{
  indexCopy = index;
  if (!indexCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryParameterSortingOption.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"sortParameterIndex"}];
  }

  v14.receiver = self;
  v14.super_class = LNQueryParameterSortingOption;
  v9 = [(LNQueryParameterSortingOption *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_order = order;
    objc_storeStrong(&v9->_sortParameterIndex, index);
    v11 = v10;
  }

  return v10;
}

@end