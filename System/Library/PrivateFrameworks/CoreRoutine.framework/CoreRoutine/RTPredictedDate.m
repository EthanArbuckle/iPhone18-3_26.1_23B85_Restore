@interface RTPredictedDate
- (BOOL)isEqual:(id)a3;
- (RTPredictedDate)initWithCoder:(id)a3;
- (RTPredictedDate)initWithDate:(id)a3 uncertainty:(double)a4 confidence:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedDate

- (RTPredictedDate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RTPredictedDate;
  v5 = [(RTPredictedDate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    [v4 decodeDoubleForKey:@"uncertainty"];
    v5->_uncertainty = v8;
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeDouble:@"uncertainty" forKey:self->_uncertainty];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
}

- (RTPredictedDate)initWithDate:(id)a3 uncertainty:(double)a4 confidence:(double)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = RTPredictedDate;
  v9 = [(RTPredictedDate *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    date = v9->_date;
    v9->_date = v10;

    v9->_uncertainty = a4;
    v9->_confidence = a5;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTPredictedDate *)self date];
  [(RTPredictedDate *)self uncertainty];
  v7 = v6;
  [(RTPredictedDate *)self confidence];
  v9 = [v4 initWithDate:v5 uncertainty:v7 confidence:v8];

  return v9;
}

- (id)description
{
  if (qword_1ED7C3850 != -1)
  {
    dispatch_once(&qword_1ED7C3850, &__block_literal_global_4);
  }

  v3 = MEMORY[0x1E696AEC0];
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [_MergedGlobals_20 stringFromDate:self->_date];
  v7 = [v3 stringWithFormat:@"%f, %@, uncertainty, %.2f, confidence, %.1f", v5, v6, *&self->_uncertainty, *&self->_confidence];

  return v7;
}

uint64_t __30__RTPredictedDate_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_20;
  _MergedGlobals_20 = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_MergedGlobals_20 setLocale:v2];

  [_MergedGlobals_20 setDateStyle:1];
  v3 = _MergedGlobals_20;

  return [v3 setTimeStyle:3];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v12 = 1;
    goto LABEL_19;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = [(RTPredictedDate *)self date];
  if (!v8)
  {
    v3 = [(RTPredictedDate *)v7 date];
    if (!v3)
    {
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v9 = [(RTPredictedDate *)self date];
  v10 = [(RTPredictedDate *)v7 date];
  v11 = [v9 isEqualToDate:v10];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(RTPredictedDate *)self uncertainty];
  v14 = v13;
  [(RTPredictedDate *)v7 uncertainty];
  v16 = v15;
  [(RTPredictedDate *)self confidence];
  v18 = v17;
  [(RTPredictedDate *)v7 confidence];
  if (v14 == v16)
  {
    v20 = v11;
  }

  else
  {
    v20 = 0;
  }

  if (v18 == v19)
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(RTPredictedDate *)self date];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696AD98];
  [(RTPredictedDate *)self uncertainty];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash] ^ v4;
  v8 = MEMORY[0x1E696AD98];
  [(RTPredictedDate *)self confidence];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 hash];

  return v7 ^ v10;
}

@end