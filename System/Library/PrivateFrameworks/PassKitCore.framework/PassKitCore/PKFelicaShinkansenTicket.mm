@interface PKFelicaShinkansenTicket
- (PKFelicaShinkansenTicket)initWithCoder:(id)a3;
- (PKFelicaShinkansenTicket)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFelicaShinkansenTicket

- (PKFelicaShinkansenTicket)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v28.receiver = self;
    v28.super_class = PKFelicaShinkansenTicket;
    v5 = [(PKFelicaShinkansenTicket *)&v28 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [v4 objectForKeyedSubscript:{@"NFTrains", 0}];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[PKFelicaShinkansenTrain alloc] initWithDictionary:*(*(&v24 + 1) + 8 * i)];
            if (v12)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v9);
      }

      v13 = [v6 count];
      if (v13)
      {
        v13 = [v6 copy];
      }

      trains = v5->_trains;
      v5->_trains = v13;

      v15 = MEMORY[0x1E696AD98];
      v16 = [v4 objectForKeyedSubscript:@"NFValidityStartDate"];
      v17 = [v15 numberWithInteger:IntegerFromFelicaDateFormat(v16)];
      validityStartDate = v5->_validityStartDate;
      v5->_validityStartDate = v17;

      v19 = [v4 objectForKeyedSubscript:@"NFValidityTerm"];
      v20 = [v19 copy];
      validityTerm = v5->_validityTerm;
      v5->_validityTerm = v20;
    }

    self = v5;
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (PKFelicaShinkansenTicket)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKFelicaShinkansenTicket;
  v5 = [(PKFelicaShinkansenTicket *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"trains"];
    trains = v5->_trains;
    v5->_trains = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validityStartDate"];
    validityStartDate = v5->_validityStartDate;
    v5->_validityStartDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validityTerm"];
    validityTerm = v5->_validityTerm;
    v5->_validityTerm = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  trains = self->_trains;
  v5 = a3;
  [v5 encodeObject:trains forKey:@"trains"];
  [v5 encodeObject:self->_validityStartDate forKey:@"validityStartDate"];
  [v5 encodeObject:self->_validityTerm forKey:@"validityTerm"];
}

@end