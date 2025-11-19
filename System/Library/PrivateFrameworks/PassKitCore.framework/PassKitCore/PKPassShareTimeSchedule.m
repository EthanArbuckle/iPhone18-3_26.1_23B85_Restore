@interface PKPassShareTimeSchedule
+ (id)emptySchedule;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassShareTimeSchedule:(id)a3;
- (PKPassShareTimeSchedule)initWithCoder:(id)a3;
- (PKPassShareTimeSchedule)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)intersect:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDaysOfMonth:(id)a3;
- (void)setDaysOfWeek:(id)a3;
- (void)setHoursOfDay:(id)a3;
@end

@implementation PKPassShareTimeSchedule

+ (id)emptySchedule
{
  v2 = objc_alloc_init(PKPassShareTimeSchedule);
  [(PKPassShareTimeSchedule *)v2 setInterval:1];
  [(PKPassShareTimeSchedule *)v2 setFrequency:2];

  return v2;
}

- (PKPassShareTimeSchedule)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = PKPassShareTimeSchedule;
    v5 = [(PKPassShareTimeSchedule *)&v16 init];
    if (v5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__PKPassShareTimeSchedule_initWithDictionary___block_invoke;
      aBlock[3] = &unk_1E79D46B8;
      v6 = v4;
      v15 = v6;
      v7 = _Block_copy(aBlock);
      v8 = v7[2](v7, @"hoursOfDay");
      [(PKPassShareTimeSchedule *)v5 setHoursOfDay:v8];

      v9 = v7[2](v7, @"daysOfTheWeek");
      [(PKPassShareTimeSchedule *)v5 setDaysOfWeek:v9];

      v10 = v7[2](v7, @"daysOfTheMonth");
      [(PKPassShareTimeSchedule *)v5 setDaysOfMonth:v10];

      v5->_interval = [v6 PKIntegerForKey:@"interval"];
      v11 = [v6 PKStringForKey:@"frequency"];
      v5->_frequency = PKPassShareTimeScheduleFrequencyFromString(v11);
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __46__PKPassShareTimeSchedule_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) PKArrayContaining:objc_opt_class() forKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [*(a1 + 32) PKArrayContaining:objc_opt_class() forKey:v3];
    v6 = [v7 pk_arrayByApplyingBlock:&__block_literal_global_143];
  }

  return v6;
}

uint64_t __46__PKPassShareTimeSchedule_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSArray *)self->_hoursOfDay pk_arrayByApplyingBlock:&__block_literal_global_162_0];
  [v3 setObject:v4 forKeyedSubscript:@"hoursOfDay"];

  v5 = [(NSArray *)self->_daysOfWeek pk_arrayByApplyingBlock:&__block_literal_global_164_0];
  [v3 setObject:v5 forKeyedSubscript:@"daysOfTheWeek"];

  v6 = [(NSArray *)self->_daysOfMonth pk_arrayByApplyingBlock:&__block_literal_global_166];
  [v3 setObject:v6 forKeyedSubscript:@"daysOfTheMonth"];

  if (self->_interval)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v3 setObject:v7 forKeyedSubscript:@"interval"];
  }

  frequency = self->_frequency;
  v9 = @"none";
  if (frequency > 1)
  {
    if (frequency == 3)
    {
      v9 = @"month";
    }

    if (frequency == 2)
    {
      v10 = @"week";
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    if (!frequency)
    {
      goto LABEL_14;
    }

    if (frequency == 1)
    {
      v10 = @"day";
    }

    else
    {
      v10 = @"none";
    }
  }

  [v3 setObject:v10 forKeyedSubscript:@"frequency"];
LABEL_14:
  v11 = [v3 copy];

  return v11;
}

- (void)setHoursOfDay:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_169_0];
  hoursOfDay = self->_hoursOfDay;
  self->_hoursOfDay = v4;
}

- (void)setDaysOfWeek:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_171];
  daysOfWeek = self->_daysOfWeek;
  self->_daysOfWeek = v4;
}

- (void)setDaysOfMonth:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_173_0];
  daysOfMonth = self->_daysOfMonth;
  self->_daysOfMonth = v4;
}

- (id)intersect:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __37__PKPassShareTimeSchedule_intersect___block_invoke;
    v19 = &unk_1E79D4700;
    v20 = self;
    v6 = v4;
    v21 = v6;
    v7 = _Block_copy(&v16);
    v8 = v7[2](v7, &__block_literal_global_178);
    v9 = v8;
    if (v8 && ![v8 count])
    {
      v14 = 0;
    }

    else
    {
      v10 = v7[2](v7, &__block_literal_global_180);
      v11 = v10;
      if (v10 && ![v10 count])
      {
        v14 = 0;
      }

      else
      {
        v12 = v7[2](v7, &__block_literal_global_182);
        v13 = v12;
        if ((!v12 || [v12 count]) && self->_interval == v6[4] && self->_frequency == v6[5])
        {
          v14 = objc_alloc_init(PKPassShareTimeSchedule);
          [(PKPassShareTimeSchedule *)v14 setHoursOfDay:v9];
          [(PKPassShareTimeSchedule *)v14 setDaysOfWeek:v11];
          [(PKPassShareTimeSchedule *)v14 setDaysOfMonth:v13];
          [(PKPassShareTimeSchedule *)v14 setInterval:self->_interval];
          [(PKPassShareTimeSchedule *)v14 setFrequency:self->_frequency];
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  else
  {
    v14 = self;
  }

  return v14;
}

id __37__PKPassShareTimeSchedule_intersect___block_invoke(uint64_t a1, void *a2)
{
  v4 = (a2 + 2);
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = (*v4)(v5, *(a1 + 40));

  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = 0;
  if (v8 | v11)
  {
    if (v8)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v17 = v8;
      v12 = v6;
    }

    else
    {
      if (v8)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 == 0;
      }

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v8];
        v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
        [v15 intersectSet:v16];
        v12 = [v15 allObjects];
      }

      else
      {
        v18 = v11;
        v12 = v9;
      }
    }
  }

  return v12;
}

- (PKPassShareTimeSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPassShareTimeSchedule;
  v5 = [(PKPassShareTimeSchedule *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"hoursOfDay"];
    hoursOfDay = v5->_hoursOfDay;
    v5->_hoursOfDay = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"daysOfWeek"];
    daysOfWeek = v5->_daysOfWeek;
    v5->_daysOfWeek = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"daysOfMonth"];
    daysOfMonth = v5->_daysOfMonth;
    v5->_daysOfMonth = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    v5->_interval = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frequency"];
    v5->_frequency = PKPassShareTimeScheduleFrequencyFromString(v16);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hoursOfDay = self->_hoursOfDay;
  v8 = a3;
  [v8 encodeObject:hoursOfDay forKey:@"hoursOfDay"];
  [v8 encodeObject:self->_daysOfWeek forKey:@"daysOfWeek"];
  [v8 encodeObject:self->_daysOfMonth forKey:@"daysOfMonth"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_interval];
  [v8 encodeObject:v5 forKey:@"interval"];

  v6 = self->_frequency - 1;
  if (v6 > 2)
  {
    v7 = @"none";
  }

  else
  {
    v7 = off_1E79D4758[v6];
  }

  [v8 encodeObject:v7 forKey:@"frequency"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"hoursOfDay: '%@'; ", self->_hoursOfDay];
  [v6 appendFormat:@"daysOfWeek: '%@'; ", self->_daysOfWeek];
  [v6 appendFormat:@"daysOfMonth: '%@'; ", self->_daysOfMonth];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_interval];
  [v6 appendFormat:@"interval: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_frequency];
  [v6 appendFormat:@"frequency: '%@'; ", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_hoursOfDay)
  {
    [v3 addObject:?];
  }

  if (self->_daysOfWeek)
  {
    [v4 addObject:?];
  }

  if (self->_daysOfMonth)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_interval - v5 + 32 * v5;
  v7 = self->_frequency - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareTimeSchedule *)self isEqualToPassShareTimeSchedule:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareTimeSchedule:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_22;
  }

  hoursOfDay = self->_hoursOfDay;
  v6 = v4[1];
  if (hoursOfDay)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (hoursOfDay != v6)
    {
      goto LABEL_22;
    }
  }

  else if (([(NSArray *)hoursOfDay isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

  daysOfWeek = self->_daysOfWeek;
  v9 = v4[2];
  if (daysOfWeek && v9)
  {
    if (([(NSArray *)daysOfWeek isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (daysOfWeek != v9)
  {
    goto LABEL_22;
  }

  daysOfMonth = self->_daysOfMonth;
  v11 = v4[3];
  if (!daysOfMonth || !v11)
  {
    if (daysOfMonth == v11)
    {
      goto LABEL_20;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (([(NSArray *)daysOfMonth isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (self->_interval != v4[4])
  {
    goto LABEL_22;
  }

  v12 = self->_frequency == v4[5];
LABEL_23:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPassShareTimeSchedule allocWithZone:?]];
  v5 = [(NSArray *)self->_hoursOfDay copy];
  hoursOfDay = v4->_hoursOfDay;
  v4->_hoursOfDay = v5;

  v7 = [(NSArray *)self->_daysOfWeek copy];
  daysOfWeek = v4->_daysOfWeek;
  v4->_daysOfWeek = v7;

  v9 = [(NSArray *)self->_daysOfMonth copy];
  daysOfMonth = v4->_daysOfMonth;
  v4->_daysOfMonth = v9;

  v4->_interval = self->_interval;
  v4->_frequency = self->_frequency;
  return v4;
}

@end