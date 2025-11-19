@interface PKPassAnnotations
- (BOOL)isEqual:(id)a3;
- (PKPassAnnotations)initWithCoder:(id)a3;
- (PKPassAnnotations)initWithDictionary:(id)a3;
- (PKPassAnnotations)initWithSortingState:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAnnotations

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPassAnnotations allocWithZone:?]];
  v4->_sortingState = self->_sortingState;
  objc_storeStrong(&v4->_archivedTimestamp, self->_archivedTimestamp);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  sortingState = self->_sortingState;
  v5 = a3;
  [v5 encodeInteger:sortingState forKey:@"sortingState"];
  [v5 encodeObject:self->_archivedTimestamp forKey:@"archivedTimestamp"];
}

- (PKPassAnnotations)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v5 = [(PKPassAnnotations *)&v9 init];
  if (v5)
  {
    v5->_sortingState = [v4 decodeIntegerForKey:@"sortingState"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedTimestamp"];
    archivedTimestamp = v5->_archivedTimestamp;
    v5->_archivedTimestamp = v6;
  }

  return v5;
}

- (PKPassAnnotations)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v5 = [(PKPassAnnotations *)&v9 init];
  if (v5)
  {
    v5->_sortingState = [v4 PKIntegerForKey:@"sortingState"];
    v6 = [v4 PKDateForKey:@"archivedTimestamp"];
    archivedTimestamp = v5->_archivedTimestamp;
    v5->_archivedTimestamp = v6;
  }

  return v5;
}

- (PKPassAnnotations)initWithSortingState:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v4 = [(PKPassAnnotations *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_sortingState = a3;
    if (a3 == 1)
    {
      v6 = [MEMORY[0x1E695DF00] now];
    }

    else
    {
      v6 = 0;
    }

    archivedTimestamp = v5->_archivedTimestamp;
    v5->_archivedTimestamp = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  sortingState = self->_sortingState;
  if (sortingState == [v4 sortingState])
  {
    archivedTimestamp = self->_archivedTimestamp;
    v7 = [v4 archivedTimestamp];
    v8 = v7;
    if (archivedTimestamp && v7)
    {
      v9 = [(NSDate *)archivedTimestamp isEqual:v7];
    }

    else
    {
      v9 = archivedTimestamp == v7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_archivedTimestamp)
  {
    v6[0] = self->_archivedTimestamp;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = PKCombinedHash(17, v3);
  }

  else
  {
    v4 = PKCombinedHash(17, 0);
  }

  return self->_sortingState - v4 + 32 * v4;
}

@end