@interface PKFelicaShinkansenTicket
- (PKFelicaShinkansenTicket)initWithCoder:(id)coder;
- (PKFelicaShinkansenTicket)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFelicaShinkansenTicket

- (PKFelicaShinkansenTicket)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
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
      v7 = [dictionaryCopy objectForKeyedSubscript:{@"NFTrains", 0}];
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
      v16 = [dictionaryCopy objectForKeyedSubscript:@"NFValidityStartDate"];
      v17 = [v15 numberWithInteger:IntegerFromFelicaDateFormat(v16)];
      validityStartDate = v5->_validityStartDate;
      v5->_validityStartDate = v17;

      v19 = [dictionaryCopy objectForKeyedSubscript:@"NFValidityTerm"];
      v20 = [v19 copy];
      validityTerm = v5->_validityTerm;
      v5->_validityTerm = v20;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKFelicaShinkansenTicket)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKFelicaShinkansenTicket;
  v5 = [(PKFelicaShinkansenTicket *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"trains"];
    trains = v5->_trains;
    v5->_trains = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validityStartDate"];
    validityStartDate = v5->_validityStartDate;
    v5->_validityStartDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validityTerm"];
    validityTerm = v5->_validityTerm;
    v5->_validityTerm = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  trains = self->_trains;
  coderCopy = coder;
  [coderCopy encodeObject:trains forKey:@"trains"];
  [coderCopy encodeObject:self->_validityStartDate forKey:@"validityStartDate"];
  [coderCopy encodeObject:self->_validityTerm forKey:@"validityTerm"];
}

@end