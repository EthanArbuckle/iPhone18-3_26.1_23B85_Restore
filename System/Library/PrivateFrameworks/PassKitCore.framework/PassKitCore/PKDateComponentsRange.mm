@interface PKDateComponentsRange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDateComponentsRange:(id)range;
- (PKDateComponentsRange)initWithCoder:(id)coder;
- (PKDateComponentsRange)initWithStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents;
- (id)dateInterval;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDateComponentsRange

- (PKDateComponentsRange)initWithStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents
{
  v6 = startDateComponents;
  v7 = endDateComponents;
  v8 = v7;
  selfCopy = 0;
  if (v6 && v7)
  {
    if ([(NSDateComponents *)v6 isValidDate]&& [(NSDateComponents *)v8 isValidDate])
    {
      v16.receiver = self;
      v16.super_class = PKDateComponentsRange;
      v10 = [(PKDateComponentsRange *)&v16 init];
      if (v10)
      {
        v11 = [(NSDateComponents *)v6 copy];
        v12 = v10->_startDateComponents;
        v10->_startDateComponents = v11;

        v13 = [(NSDateComponents *)v8 copy];
        v14 = v10->_endDateComponents;
        v10->_endDateComponents = v13;
      }

      self = v10;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)dateInterval
{
  date = [(NSDateComponents *)self->_startDateComponents date];
  date2 = [(NSDateComponents *)self->_endDateComponents date];
  v5 = date2;
  if (date)
  {
    v6 = date2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || [date compare:date2] == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:date endDate:v5];
  }

  return v7;
}

- (unint64_t)hash
{
  v6[2] = *MEMORY[0x1E69E9840];
  endDateComponents = self->_endDateComponents;
  v6[0] = self->_startDateComponents;
  v6[1] = endDateComponents;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDateComponentsRange *)self isEqualToDateComponentsRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToDateComponentsRange:(id)range
{
  rangeCopy = range;
  startDateComponents = self->_startDateComponents;
  v6 = rangeCopy[1];
  if (startDateComponents)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSDateComponents *)startDateComponents isEqual:?]& 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (startDateComponents != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  endDateComponents = self->_endDateComponents;
  v10 = rangeCopy[2];
  if (endDateComponents && v10)
  {
    v8 = [(NSDateComponents *)endDateComponents isEqual:?];
  }

  else
  {
    v8 = endDateComponents == v10;
  }

LABEL_13:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  startDateComponents = self->_startDateComponents;
  coderCopy = coder;
  [coderCopy encodeObject:startDateComponents forKey:@"startDateComponents"];
  [coderCopy encodeObject:self->_endDateComponents forKey:@"endDateComponents"];
}

- (PKDateComponentsRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateComponents"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDateComponents"];

  v7 = [(PKDateComponentsRange *)self initWithStartDateComponents:v5 endDateComponents:v6];
  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDateComponents *)self->_startDateComponents description];
  [v3 appendFormat:@"startDateComponents: '%@'; ", v4];

  v5 = [(NSDateComponents *)self->_endDateComponents description];
  [v3 appendFormat:@"endDateComponents: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

@end