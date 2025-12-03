@interface PKPassShareTimeConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassShareTimeConfiguration:(id)configuration;
- (PKPassShareTimeConfiguration)initWithCoder:(id)coder;
- (PKPassShareTimeConfiguration)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)intersect:(id)intersect;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassShareTimeConfiguration

- (PKPassShareTimeConfiguration)initWithDictionary:(id)dictionary
{
  v22[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = PKPassShareTimeConfiguration;
  self = [(PKPassShareTimeConfiguration *)&v21 init];
  if (self)
  {
    v5 = [dictionaryCopy PKStringForKey:@"timeSupport"];
    self->_support = PKPassShareTimeConfigurationSupportFromString(v5);

    v6 = [dictionaryCopy PKDateForKey:@"startDate"];
    startDate = self->_startDate;
    self->_startDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"expirationDate"];
    expirationDate = self->_expirationDate;
    self->_expirationDate = v8;

    v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"schedules"];
    v11 = [v10 pk_arrayBySafelyApplyingBlock:&__block_literal_global_103];
    schedules = self->_schedules;
    self->_schedules = v11;

    v13 = [dictionaryCopy PKDictionaryForKey:@"schedule"];
    v14 = v13;
    if (!self->_schedules && v13)
    {
      v15 = [[PKPassShareTimeSchedule alloc] initWithDictionary:v13];
      v16 = v15;
      if (v15)
      {
        v22[0] = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
        v18 = self->_schedules;
        self->_schedules = v17;
      }
    }

    if (self->_support || self->_startDate || self->_expirationDate || self->_schedules)
    {

      goto LABEL_13;
    }

LABEL_15:
    selfCopy = 0;
    goto LABEL_16;
  }

LABEL_13:
  self = self;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

PKPassShareTimeSchedule *__51__PKPassShareTimeConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassShareTimeSchedule alloc] initWithDictionary:v2];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  v5 = self->_support - 1;
  if (v5 > 2)
  {
    v6 = @"none";
  }

  else
  {
    v6 = off_1E79D4740[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"timeSupport"];
  startDate = self->_startDate;
  if (startDate)
  {
    v8 = PKW3CDateStringFromDate(startDate);
    [v4 setObject:v8 forKeyedSubscript:@"startDate"];
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    v10 = PKW3CDateStringFromDate(expirationDate);
    [v4 setObject:v10 forKeyedSubscript:@"expirationDate"];
  }

  v11 = [(NSArray *)self->_schedules pk_arrayByApplyingBlock:&__block_literal_global_46_0];
  [v4 setObject:v11 forKeyedSubscript:@"schedules"];

  v12 = [v4 copy];

  return v12;
}

- (id)intersect:(id)intersect
{
  v42 = *MEMORY[0x1E69E9840];
  intersectCopy = intersect;
  if (!intersectCopy)
  {
    selfCopy = self;
    goto LABEL_40;
  }

  v5 = self->_startDate;
  v6 = *(intersectCopy + 2);
  v7 = v6;
  if ((v5 != 0) == (v6 != 0))
  {
    v9 = [(NSDate *)v5 laterDate:v6];
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  v11 = v9;
  v12 = self->_expirationDate;
  v13 = *(intersectCopy + 3);
  v14 = v13;
  if ((v12 != 0) == (v13 != 0))
  {
    v16 = [v13 earlierDate:v13];
  }

  else
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v7;
    }

    v16 = v15;
  }

  v17 = v16;
  if (v11 && v16 && [(NSDate *)v11 compare:v16]== NSOrderedDescending)
  {
    v18 = PKLogFacilityTypeGetObject(0x22uLL);
    v36 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v40 = 2112;
      v41 = intersectCopy;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPassShareTimeConfiguration: Intersected time configurations and found start date after expiration date. \n lhs: %@ \n\n rhs: %@", buf, 0x16u);
    }

    v19 = 0;
    selfCopy = 0;
    goto LABEL_39;
  }

  firstObject = [(NSArray *)self->_schedules firstObject];
  firstObject2 = [*(intersectCopy + 4) firstObject];
  v35 = firstObject2;
  v36 = firstObject;
  if ((firstObject != 0) == (firstObject2 != 0))
  {
    if (firstObject | firstObject2)
    {
      v19 = [firstObject intersect:firstObject2];
      if (!v19)
      {
        v23 = PKLogFacilityTypeGetObject(0x22uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = firstObject;
          v40 = 2112;
          v41 = v35;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKPassShareTimeConfiguration: Intersected schedules and found no common schedule. \n lhs: %@ \n\n rhs: %@", buf, 0x16u);
        }

        v19 = 0;
        selfCopy = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (firstObject)
    {
      v22 = firstObject;
    }

    else
    {
      v22 = firstObject2;
    }

    v19 = v22;
  }

  selfCopy = objc_alloc_init(PKPassShareTimeConfiguration);
  [(PKPassShareTimeConfiguration *)selfCopy setStartDate:v11];
  [(PKPassShareTimeConfiguration *)selfCopy setExpirationDate:v17];
  if (v19)
  {
    v37 = v19;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    selfCopy3 = self;
    v24 = intersectCopy;
    v25 = v17;
    v26 = v14;
    v27 = v12;
    v28 = v11;
    v29 = v7;
    v31 = v30 = v5;
    [(PKPassShareTimeConfiguration *)selfCopy setSchedules:v31];

    v5 = v30;
    v7 = v29;
    v11 = v28;
    v12 = v27;
    v14 = v26;
    v17 = v25;
    intersectCopy = v24;
    self = selfCopy3;
  }

  if (self->_support >= *(intersectCopy + 1))
  {
    support = *(intersectCopy + 1);
  }

  else
  {
    support = self->_support;
  }

  [(PKPassShareTimeConfiguration *)selfCopy setSupport:support];
LABEL_38:

LABEL_39:
LABEL_40:

  return selfCopy;
}

- (PKPassShareTimeConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPassShareTimeConfiguration;
  v5 = [(PKPassShareTimeConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"support"];
    v5->_support = PKPassShareTimeConfigurationSupportFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"schedules"];
    schedules = v5->_schedules;
    v5->_schedules = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = self->_support - 1;
  if (v4 > 2)
  {
    v5 = @"none";
  }

  else
  {
    v5 = off_1E79D4740[v4];
  }

  coderCopy = coder;
  [coderCopy encodeObject:v5 forKey:@"support"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_schedules forKey:@"schedules"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ ", v5];;

  v7 = self->_support - 1;
  if (v7 > 2)
  {
    v8 = @"none";
  }

  else
  {
    v8 = off_1E79D4740[v7];
  }

  [v6 appendFormat:@"support: '%@'; ", v8];
  [v6 appendFormat:@"startDate: '%@'; ", self->_startDate];
  [v6 appendFormat:@"expirationDate: '%@'; ", self->_expirationDate];
  [v6 appendFormat:@"schedules: '%@'; ", self->_schedules];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_startDate)
  {
    [array addObject:?];
  }

  if (self->_expirationDate)
  {
    [v4 addObject:?];
  }

  if (self->_schedules)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_support - v5 + 32 * v5;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareTimeConfiguration *)self isEqualToPassShareTimeConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareTimeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    goto LABEL_17;
  }

  startDate = self->_startDate;
  v6 = configurationCopy[2];
  if (startDate)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (startDate != v6)
    {
      goto LABEL_17;
    }
  }

  else if (([(NSDate *)startDate isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

  expirationDate = self->_expirationDate;
  v9 = configurationCopy[3];
  if (!expirationDate || !v9)
  {
    if (expirationDate == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  schedules = self->_schedules;
  v11 = configurationCopy[4];
  if (schedules && v11)
  {
    v12 = [(NSArray *)schedules isEqual:?];
  }

  else
  {
    v12 = schedules == v11;
  }

LABEL_18:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKPassShareTimeConfiguration allocWithZone:?]];
  v4->_support = self->_support;
  v5 = [(NSDate *)self->_startDate copy];
  startDate = v4->_startDate;
  v4->_startDate = v5;

  v7 = [(NSDate *)self->_expirationDate copy];
  expirationDate = v4->_expirationDate;
  v4->_expirationDate = v7;

  v9 = [(NSArray *)self->_schedules pk_arrayByApplyingBlock:&__block_literal_global_75];
  schedules = v4->_schedules;
  v4->_schedules = v9;

  return v4;
}

id __45__PKPassShareTimeConfiguration_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

@end