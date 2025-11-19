@interface PKDateContainer
- (BOOL)isEqual:(id)a3;
- (PKDateContainer)initWithCoder:(id)a3;
- (PKDateContainer)initWithDate:(id)a3 timeZone:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDateContainer

- (PKDateContainer)initWithDate:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  result = a4;
  if (v7)
  {
    v9 = result;
    if (self)
    {
      v11.receiver = self;
      v11.super_class = PKDateContainer;
      v10 = [(PKDateContainer *)&v11 init];
      self = v10;
      if (v10)
      {
        objc_storeStrong(&v10->_date, a3);
        objc_storeStrong(&self->_timeZone, a4);
      }
    }

    return self;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKDateContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = PKDateContainer;
    v6 = [(PKDateContainer *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_date, v5);
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
      timeZone = v7->_timeZone;
      v7->_timeZone = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKDateContainer" code:0 userInfo:0];
    [v4 failWithError:v11];

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (self)
        {
          date = self->_date;
          v8 = v6->_date;
          if (date && v8)
          {
            if (([(NSDate *)date isEqual:?]& 1) != 0)
            {
LABEL_8:
              timeZone = self->_timeZone;
              v10 = v6->_timeZone;
              if (timeZone && v10)
              {
                LOBYTE(self) = [(NSTimeZone *)timeZone isEqual:?];
              }

              else
              {
                LOBYTE(self) = timeZone == v10;
              }

              goto LABEL_16;
            }
          }

          else if (date == v8)
          {
            goto LABEL_8;
          }

          LOBYTE(self) = 0;
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_17:

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKDateContainer allocWithZone:?];
  if (v5)
  {
    v12.receiver = v5;
    v12.super_class = PKDateContainer;
    v6 = [(PKDateContainer *)&v12 init];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSDate *)self->_date copyWithZone:a3];
  date = v6->_date;
  v6->_date = v7;

  timeZone = self->_timeZone;
  if (timeZone)
  {
    timeZone = [(NSTimeZone *)timeZone copyWithZone:a3];
  }

  v10 = v6->_timeZone;
  v6->_timeZone = timeZone;

  return v6;
}

@end