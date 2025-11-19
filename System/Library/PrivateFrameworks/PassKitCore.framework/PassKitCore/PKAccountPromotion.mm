@interface PKAccountPromotion
- (BOOL)_completed;
- (BOOL)_endDateHasPassed;
- (BOOL)_hasNonZeroProgress;
- (BOOL)_isOngoing;
- (BOOL)_startDateHasPassed;
- (BOOL)hideTimeRemaining;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountPromotion:(id)a3;
- (NSString)description;
- (PKAccountPromotion)initWithCoder:(id)a3;
- (PKAccountPromotion)initWithDictionary:(id)a3;
- (double)timeRemaining;
- (id)copyWithZone:(_NSZone *)a3;
- (id)layoutData;
- (unint64_t)hash;
- (void)_initWithPromotionDictionary:(id)a3;
- (void)_parseLayoutDictionary;
- (void)_updateState;
- (void)encodeWithCoder:(id)a3;
- (void)setCompletionSteps:(id)a3;
- (void)setEndDate:(id)a3;
- (void)setLayoutDictionary:(id)a3;
- (void)setLayoutDictionaryFromData:(id)a3;
- (void)setStartDate:(id)a3;
@end

@implementation PKAccountPromotion

- (PKAccountPromotion)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKAccountPromotion;
    v5 = [(PKAccountPromotion *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKAccountPromotion *)v5 _initWithPromotionDictionary:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_initWithPromotionDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"programIdentifier"];
  programIdentifier = self->_programIdentifier;
  self->_programIdentifier = v5;

  v7 = [v4 PKStringForKey:@"type"];
  self->_type = PKAccountPromotionTypeFromString(v7);

  v8 = [v4 PKDateForKey:@"startDate"];
  startDate = self->_startDate;
  self->_startDate = v8;

  v10 = [v4 PKDateForKey:@"endDate"];
  endDate = self->_endDate;
  self->_endDate = v10;

  v12 = [v4 PKStringForKey:@"name"];
  name = self->_name;
  self->_name = v12;

  v18 = [v4 PKArrayForKey:@"completionSteps"];
  v14 = [PKAccountPromotionCompletionStep completionStepsFromDictionaries:v18];
  completionSteps = self->_completionSteps;
  self->_completionSteps = v14;

  self->_impressionCount = 0;
  [(PKAccountPromotion *)self _updateState];
  v16 = [v4 PKDictionaryForKey:@"layout"];

  layoutDictionary = self->_layoutDictionary;
  self->_layoutDictionary = v16;

  [(PKAccountPromotion *)self _parseLayoutDictionary];
}

- (void)setStartDate:(id)a3
{
  objc_storeStrong(&self->_startDate, a3);

  [(PKAccountPromotion *)self _updateState];
}

- (void)setEndDate:(id)a3
{
  objc_storeStrong(&self->_endDate, a3);

  [(PKAccountPromotion *)self _updateState];
}

- (void)setCompletionSteps:(id)a3
{
  objc_storeStrong(&self->_completionSteps, a3);

  [(PKAccountPromotion *)self _updateState];
}

- (void)setLayoutDictionary:(id)a3
{
  objc_storeStrong(&self->_layoutDictionary, a3);

  [(PKAccountPromotion *)self _parseLayoutDictionary];
}

- (void)_parseLayoutDictionary
{
  if ([(NSDictionary *)self->_layoutDictionary count])
  {
    v3 = [[PKDynamicTemplateLayout alloc] initWithDictionary:self->_layoutDictionary];
    layout = self->_layout;
    self->_layout = v3;

    v5 = [(PKDynamicTemplateLayout *)self->_layout templateIdentifier];
    templateIdentifier = self->_templateIdentifier;
    self->_templateIdentifier = v5;

    v13 = [(PKDynamicTemplateLayout *)self->_layout anyLayoutLinkNamed:@"disclosure"];
    v7 = [v13 url];
    termsURL = self->_termsURL;
    self->_termsURL = v7;

    v9 = v13;
  }

  else
  {
    v10 = self->_layout;
    self->_layout = 0;

    layoutDictionary = self->_layoutDictionary;
    self->_layoutDictionary = 0;

    v12 = self->_termsURL;
    self->_termsURL = 0;

    v9 = self->_templateIdentifier;
    self->_templateIdentifier = 0;
  }
}

- (id)layoutData
{
  v10 = *MEMORY[0x1E69E9840];
  layoutDictionary = self->_layoutDictionary;
  if (layoutDictionary)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:layoutDictionary options:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error serializing promotion layout dictionary: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLayoutDictionaryFromData:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && [v4 length])
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    [(PKAccountPromotion *)self setLayoutDictionary:v6];
  }

  else
  {
    [(PKAccountPromotion *)self setLayoutDictionary:0];
  }
}

- (double)timeRemaining
{
  endDate = self->_endDate;
  if (!endDate)
  {
    return 0.0;
  }

  [(NSDate *)endDate timeIntervalSinceNow];
  return result;
}

- (BOOL)hideTimeRemaining
{
  layoutDictionary = self->_layoutDictionary;
  if (layoutDictionary)
  {
    LOBYTE(layoutDictionary) = [(NSDictionary *)layoutDictionary PKBoolForKey:@"hideTimeRemaining"];
  }

  return layoutDictionary;
}

- (void)_updateState
{
  v3 = [(PKAccountPromotion *)self _completed];
  v4 = [(PKAccountPromotion *)self _startDateHasPassed];
  v5 = [(PKAccountPromotion *)self _endDateHasPassed];
  v6 = 2;
  if (v3)
  {
    v6 = 3;
  }

  if (v4)
  {
    if (!v3 && v5)
    {
      if ([(PKAccountPromotion *)self _isOngoing]&& [(PKAccountPromotion *)self _hasNonZeroProgress])
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  self->_state = v6;
}

- (BOOL)_startDateHasPassed
{
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [v3 compare:self->_startDate] == 1;

  return self;
}

- (BOOL)_endDateHasPassed
{
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [v3 compare:self->_endDate] == 1;

  return self;
}

- (BOOL)_isOngoing
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PKAccountPromotion *)self completionSteps];
  if ([v2 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v9 + 1) + 8 * i) endValue];

          if (!v7)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)_hasNonZeroProgress
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PKAccountPromotion *)self completionSteps];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) currentValue];
        v7 = [MEMORY[0x1E696AB90] zero];
        v8 = [v6 compare:v7];

        if (v8 == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_completed
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_completionSteps count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PKAccountPromotion *)self completionSteps];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) completed])
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (NSString)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"programIdentifier: '%@'; ", self->_programIdentifier];
  v4 = PKAccountPromotionTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  v5 = PKLongDateString(self->_startDate);
  [v3 appendFormat:@"startDate: '%@'; ", v5];

  v6 = PKLongDateString(self->_endDate);
  [v3 appendFormat:@"endDate: '%@'; ", v6];

  [v3 appendFormat:@"name: '%@'; ", self->_name];
  [v3 appendFormat:@"terms: '%@'; ", self->_termsURL];
  [v3 appendFormat:@"templateID: '%@'; ", self->_templateIdentifier];
  [v3 appendFormat:@"completionSteps: \n"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_completionSteps;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) description];
        [v3 appendFormat:@"- %@\n", v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v3 appendFormat:@"layout: %@\n", self->_layoutDictionary];
  [v3 appendFormat:@"impressionCount: %ld\n", self->_impressionCount];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPromotion *)self isEqualToAccountPromotion:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountPromotion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_32;
  }

  if ([(NSDictionary *)self->_layoutDictionary count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4[12] count] == 0;
  }

  layoutDictionary = self->_layoutDictionary;
  v7 = v4[12];
  if (layoutDictionary && v7)
  {
    v8 = [(NSDictionary *)layoutDictionary isEqual:?];
  }

  else
  {
    v8 = layoutDictionary == v7;
  }

  v9 = v4[2];
  v10 = self->_programIdentifier;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10 || !v11)
    {
      goto LABEL_31;
    }

    v13 = [(NSString *)v10 isEqualToString:v11];

    if (!v13)
    {
      goto LABEL_32;
    }
  }

  if (self->_type != v4[3])
  {
    goto LABEL_32;
  }

  startDate = self->_startDate;
  v15 = v4[4];
  if (startDate && v15)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (startDate != v15)
  {
    goto LABEL_32;
  }

  endDate = self->_endDate;
  v17 = v4[5];
  if (endDate && v17)
  {
    if (([(NSDate *)endDate isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (endDate != v17)
  {
    goto LABEL_32;
  }

  v18 = v4[6];
  v10 = self->_name;
  v19 = v18;
  v12 = v19;
  if (v10 != v19)
  {
    if (v10 && v19)
    {
      v20 = [(NSString *)v10 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

LABEL_31:

    goto LABEL_32;
  }

LABEL_35:
  completionSteps = self->_completionSteps;
  v24 = v4[7];
  if (completionSteps && v24)
  {
    if (([(NSArray *)completionSteps isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (completionSteps != v24)
  {
    goto LABEL_32;
  }

  termsURL = self->_termsURL;
  v26 = v4[9];
  if (termsURL && v26)
  {
    if (([(NSURL *)termsURL isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (termsURL != v26)
  {
    goto LABEL_32;
  }

  v27 = v8 | v5;
  templateIdentifier = self->_templateIdentifier;
  v29 = v4[10];
  if (templateIdentifier && v29)
  {
    v30 = [(NSString *)templateIdentifier isEqual:?];
  }

  else
  {
    v30 = templateIdentifier == v29;
  }

  if ((v30 & v27) == 1)
  {
    v21 = self->_impressionCount == v4[8];
    goto LABEL_33;
  }

LABEL_32:
  v21 = 0;
LABEL_33:

  return v21;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_programIdentifier];
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_completionSteps];
  [v3 safelyAddObject:self->_termsURL];
  [v3 safelyAddObject:self->_templateIdentifier];
  [v3 safelyAddObject:self->_layoutDictionary];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_impressionCount - v5 + 32 * v5;

  return v6;
}

- (PKAccountPromotion)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKAccountPromotion;
  v5 = [(PKAccountPromotion *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programIdentifier"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKAccountPromotionTypeFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"completionSteps"];
    completionSteps = v5->_completionSteps;
    v5->_completionSteps = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layout"];
    [(PKAccountPromotion *)v5 setLayoutDictionaryFromData:v21];
    v5->_impressionCount = [v4 decodeIntegerForKey:@"impressionCount"];
    [(PKAccountPromotion *)v5 _updateState];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  programIdentifier = self->_programIdentifier;
  v7 = a3;
  [v7 encodeObject:programIdentifier forKey:@"programIdentifier"];
  v5 = PKAccountPromotionTypeToString(self->_type);
  [v7 encodeObject:v5 forKey:@"type"];

  [v7 encodeObject:self->_startDate forKey:@"startDate"];
  [v7 encodeObject:self->_endDate forKey:@"endDate"];
  [v7 encodeObject:self->_name forKey:@"name"];
  [v7 encodeObject:self->_completionSteps forKey:@"completionSteps"];
  v6 = [(PKAccountPromotion *)self layoutData];
  [v7 encodeObject:v6 forKey:@"layout"];

  [v7 encodeInteger:self->_impressionCount forKey:@"impressionCount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_programIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = self->_type;
  v8 = [(NSDate *)self->_startDate copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSDate *)self->_endDate copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  completionSteps = self->_completionSteps;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__PKAccountPromotion_copyWithZone___block_invoke;
  v20[3] = &__block_descriptor_40_e42__16__0__PKAccountPromotionCompletionStep_8l;
  v20[4] = a3;
  v15 = [(NSArray *)completionSteps pk_arrayBySafelyApplyingBlock:v20];
  v16 = v5[7];
  v5[7] = v15;

  v17 = [(PKAccountPromotion *)self layoutData];
  v18 = [v17 copyWithZone:a3];
  [v5 setLayoutDictionaryFromData:v18];
  v5[8] = self->_impressionCount;
  [v5 _updateState];

  return v5;
}

id __35__PKAccountPromotion_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

@end