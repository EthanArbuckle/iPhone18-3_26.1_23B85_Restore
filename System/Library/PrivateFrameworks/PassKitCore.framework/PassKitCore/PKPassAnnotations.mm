@interface PKPassAnnotations
- (BOOL)isEqual:(id)equal;
- (PKPassAnnotations)initWithCoder:(id)coder;
- (PKPassAnnotations)initWithDictionary:(id)dictionary;
- (PKPassAnnotations)initWithSortingState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAnnotations

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKPassAnnotations allocWithZone:?]];
  v4->_sortingState = self->_sortingState;
  objc_storeStrong(&v4->_archivedTimestamp, self->_archivedTimestamp);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sortingState = self->_sortingState;
  coderCopy = coder;
  [coderCopy encodeInteger:sortingState forKey:@"sortingState"];
  [coderCopy encodeObject:self->_archivedTimestamp forKey:@"archivedTimestamp"];
}

- (PKPassAnnotations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v5 = [(PKPassAnnotations *)&v9 init];
  if (v5)
  {
    v5->_sortingState = [coderCopy decodeIntegerForKey:@"sortingState"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedTimestamp"];
    archivedTimestamp = v5->_archivedTimestamp;
    v5->_archivedTimestamp = v6;
  }

  return v5;
}

- (PKPassAnnotations)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v5 = [(PKPassAnnotations *)&v9 init];
  if (v5)
  {
    v5->_sortingState = [dictionaryCopy PKIntegerForKey:@"sortingState"];
    v6 = [dictionaryCopy PKDateForKey:@"archivedTimestamp"];
    archivedTimestamp = v5->_archivedTimestamp;
    v5->_archivedTimestamp = v6;
  }

  return v5;
}

- (PKPassAnnotations)initWithSortingState:(int64_t)state
{
  v9.receiver = self;
  v9.super_class = PKPassAnnotations;
  v4 = [(PKPassAnnotations *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_sortingState = state;
    if (state == 1)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  sortingState = self->_sortingState;
  if (sortingState == [equalCopy sortingState])
  {
    archivedTimestamp = self->_archivedTimestamp;
    archivedTimestamp = [equalCopy archivedTimestamp];
    v8 = archivedTimestamp;
    if (archivedTimestamp && archivedTimestamp)
    {
      v9 = [(NSDate *)archivedTimestamp isEqual:archivedTimestamp];
    }

    else
    {
      v9 = archivedTimestamp == archivedTimestamp;
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