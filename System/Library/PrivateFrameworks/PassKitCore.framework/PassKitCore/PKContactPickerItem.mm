@interface PKContactPickerItem
- (BOOL)isValueAccepted:(id)accepted;
- (PKContactPickerItem)initWithCoder:(id)coder;
- (PKContactPickerItem)initWithDictionary:(id)dictionary;
- (id)acceptedValues;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKContactPickerItem

- (PKContactPickerItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKContactPickerItem;
  v5 = [(PKContactPickerItem *)&v14 init];
  if (!v5 || ([dictionaryCopy PKStringForKey:@"displayName"], v6 = objc_claimAutoreleasedReturnValue(), displayName = v5->_displayName, v5->_displayName = v6, displayName, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"submissionValue"), v8 = objc_claimAutoreleasedReturnValue(), submissionValue = v5->_submissionValue, v5->_submissionValue = v8, submissionValue, objc_msgSend(dictionaryCopy, "PKArrayForKey:", @"alternativeAcceptedValues"), v10 = objc_claimAutoreleasedReturnValue(), alternativeAcceptedValues = v5->_alternativeAcceptedValues, v5->_alternativeAcceptedValues = v10, alternativeAcceptedValues, v5->_displayName) && v5->_submissionValue)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)acceptedValues
{
  acceptedValues = self->_acceptedValues;
  if (!acceptedValues)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v4 addObject:self->_submissionValue];
    [v4 addObject:self->_displayName];
    [v4 addObjectsFromArray:self->_alternativeAcceptedValues];
    v5 = [v4 copy];
    v6 = self->_acceptedValues;
    self->_acceptedValues = v5;

    acceptedValues = self->_acceptedValues;
  }

  return acceptedValues;
}

- (BOOL)isValueAccepted:(id)accepted
{
  v15 = *MEMORY[0x1E69E9840];
  acceptedCopy = accepted;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  acceptedValues = [(PKContactPickerItem *)self acceptedValues];
  v6 = [acceptedValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(acceptedValues);
        }

        if (![*(*(&v10 + 1) + 8 * i) caseInsensitiveCompare:acceptedCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [acceptedValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%@'; ", @"displayName", self->_displayName];
  [v3 appendFormat:@"%@: '%@'; ", @"submissionValue", self->_submissionValue];
  [v3 appendFormat:@"%@: '%@'; ", @"alternativeAcceptedValues", self->_alternativeAcceptedValues];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_submissionValue forKey:@"submissionValue"];
  [coderCopy encodeObject:self->_alternativeAcceptedValues forKey:@"alternativeAcceptedValues"];
}

- (PKContactPickerItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKContactPickerItem;
  v5 = [(PKContactPickerItem *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submissionValue"];
    submissionValue = v5->_submissionValue;
    v5->_submissionValue = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"alternativeAcceptedValues"];
    alternativeAcceptedValues = v5->_alternativeAcceptedValues;
    v5->_alternativeAcceptedValues = v13;
  }

  return v5;
}

@end