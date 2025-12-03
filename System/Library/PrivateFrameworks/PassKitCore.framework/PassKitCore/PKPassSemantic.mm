@interface PKPassSemantic
+ (BOOL)isSupportedDictionaryKeyType:(id)type;
+ (BOOL)isSupportedDictionaryValueType:(id)type;
+ (id)_supportedDictionaryValueTypes;
- (BOOL)isEqual:(id)equal;
- (PKPassSemantic)initWithCoder:(id)coder;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassSemantic

- (PKPassSemantic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKPassSemantic;
  v5 = [(PKPassSemantic *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"semanticKey"];
    [(PKPassSemantic *)v5 setSemanticKey:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fieldKey"];
    [(PKPassSemantic *)v5 setFieldKey:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    [(PKPassSemantic *)v5 setStringValue:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateValue"];
    [(PKPassSemantic *)v5 setDateValue:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZoneValue"];
    [(PKPassSemantic *)v5 setTimeZoneValue:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDateInfoValue"];
    [(PKPassSemantic *)v5 setEventDateInfoValue:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
    [(PKPassSemantic *)v5 setNumberValue:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationValue"];
    [(PKPassSemantic *)v5 setLocationValue:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmountValue"];
    [(PKPassSemantic *)v5 setCurrencyAmountValue:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personNameComponentsValue"];
    [(PKPassSemantic *)v5 setPersonNameComponentsValue:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"stringsValue"];
    [(PKPassSemantic *)v5 setStringsValue:v19];

    v20 = objc_alloc(MEMORY[0x1E695DFA8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    _supportedDictionaryValueTypes = [objc_opt_class() _supportedDictionaryValueTypes];
    [v22 addObjectsFromArray:_supportedDictionaryValueTypes];

    v24 = [coderCopy decodeObjectOfClasses:v22 forKey:@"dictionariesValue"];
    [(PKPassSemantic *)v5 setDictionariesValue:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  semanticKey = [(PKPassSemantic *)self semanticKey];
  [coderCopy encodeObject:semanticKey forKey:@"semanticKey"];

  fieldKey = [(PKPassSemantic *)self fieldKey];
  [coderCopy encodeObject:fieldKey forKey:@"fieldKey"];

  stringValue = [(PKPassSemantic *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"stringValue"];

  dateValue = [(PKPassSemantic *)self dateValue];
  [coderCopy encodeObject:dateValue forKey:@"dateValue"];

  timeZoneValue = [(PKPassSemantic *)self timeZoneValue];
  [coderCopy encodeObject:timeZoneValue forKey:@"timeZoneValue"];

  eventDateInfoValue = [(PKPassSemantic *)self eventDateInfoValue];
  [coderCopy encodeObject:eventDateInfoValue forKey:@"eventDateInfoValue"];

  numberValue = [(PKPassSemantic *)self numberValue];
  [coderCopy encodeObject:numberValue forKey:@"numberValue"];

  locationValue = [(PKPassSemantic *)self locationValue];
  [coderCopy encodeObject:locationValue forKey:@"locationValue"];

  currencyAmountValue = [(PKPassSemantic *)self currencyAmountValue];
  [coderCopy encodeObject:currencyAmountValue forKey:@"currencyAmountValue"];

  personNameComponentsValue = [(PKPassSemantic *)self personNameComponentsValue];
  [coderCopy encodeObject:personNameComponentsValue forKey:@"personNameComponentsValue"];

  stringsValue = [(PKPassSemantic *)self stringsValue];
  [coderCopy encodeObject:stringsValue forKey:@"stringsValue"];

  dictionariesValue = [(PKPassSemantic *)self dictionariesValue];
  [coderCopy encodeObject:dictionariesValue forKey:@"dictionariesValue"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>, ", objc_opt_class(), self];
  [v3 appendString:v4];

  if (self->_stringValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"string: %@", self->_stringValue];
  }

  else if (self->_dateValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"date: %@", self->_dateValue];
  }

  else if (self->_timeZoneValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"timeZone: %@", self->_timeZoneValue];
  }

  else if (self->_eventDateInfoValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"eventDateInfo: %@", self->_eventDateInfoValue];
  }

  else if (self->_numberValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"number: %@", self->_numberValue];
  }

  else if (self->_locationValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"location: %@", self->_locationValue];
  }

  else if (self->_currencyAmountValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"currencyAmount: %@", self->_currencyAmountValue];
  }

  else if (self->_personNameComponentsValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"personNameComponents: %@", self->_personNameComponentsValue];
  }

  else if (self->_stringsValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"strings: %@", self->_stringsValue];
  }

  else if (self->_dictionariesValue)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"dictionaries: %@", self->_dictionariesValue];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"no value", v8];
  }
  v5 = ;
  [v3 appendString:v5];

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    fieldKey = self->_fieldKey;
    fieldKey = [v6 fieldKey];
    v10 = fieldKey;
    if (fieldKey && fieldKey)
    {
      if (([(NSString *)fieldKey isEqual:fieldKey]& 1) != 0)
      {
LABEL_8:
        dateValue = self->_dateValue;
        dateValue = [v7 dateValue];
        v13 = dateValue;
        if (dateValue && dateValue)
        {
          if (([(NSDate *)dateValue isEqual:dateValue]& 1) != 0)
          {
LABEL_11:
            timeZoneValue = self->_timeZoneValue;
            timeZoneValue = [v7 timeZoneValue];
            v16 = timeZoneValue;
            if (timeZoneValue && timeZoneValue)
            {
              if (([(NSTimeZone *)timeZoneValue isEqual:timeZoneValue]& 1) != 0)
              {
LABEL_14:
                eventDateInfoValue = self->_eventDateInfoValue;
                eventDateInfoValue = [v7 eventDateInfoValue];
                v19 = eventDateInfoValue;
                if (eventDateInfoValue && eventDateInfoValue)
                {
                  if (([(PKEventDateInfo *)eventDateInfoValue isEqual:eventDateInfoValue]& 1) != 0)
                  {
LABEL_17:
                    numberValue = self->_numberValue;
                    numberValue = [v7 numberValue];
                    v22 = numberValue;
                    if (numberValue && numberValue)
                    {
                      if (([(NSNumber *)numberValue isEqual:numberValue]& 1) != 0)
                      {
LABEL_20:
                        semanticKey = self->_semanticKey;
                        semanticKey = [v7 semanticKey];
                        v25 = semanticKey;
                        if (semanticKey && semanticKey)
                        {
                          if (([(NSString *)semanticKey isEqual:semanticKey]& 1) != 0)
                          {
LABEL_23:
                            stringValue = self->_stringValue;
                            stringValue = [v7 stringValue];
                            v28 = stringValue;
                            if (stringValue && stringValue)
                            {
                              v29 = stringValue;
                              v30 = v28;
                              v31 = [(NSString *)v29 isEqual:v28];
                              v28 = v30;
                              if (v31)
                              {
LABEL_26:
                                v53 = v28;
                                stringsValue = self->_stringsValue;
                                stringsValue = [v7 stringsValue];
                                v34 = stringsValue;
                                if (stringsValue && stringsValue)
                                {
                                  v35 = stringsValue;
                                  v36 = v34;
                                  v37 = [(NSArray *)v35 isEqual:v34];
                                  v34 = v36;
                                  if (v37)
                                  {
LABEL_29:
                                    v52 = v34;
                                    locationValue = self->_locationValue;
                                    locationValue = [v7 locationValue];
                                    v51 = locationValue;
                                    if (locationValue && locationValue)
                                    {
                                      if ([(PKLocation *)locationValue isEqual:locationValue])
                                      {
LABEL_32:
                                        dictionariesValue = self->_dictionariesValue;
                                        dictionariesValue = [v7 dictionariesValue];
                                        v50 = dictionariesValue;
                                        if (dictionariesValue && dictionariesValue)
                                        {
                                          if (([(NSArray *)dictionariesValue isEqual:dictionariesValue]& 1) != 0)
                                          {
LABEL_35:
                                            currencyAmountValue = self->_currencyAmountValue;
                                            currencyAmountValue = [v7 currencyAmountValue];
                                            v49 = currencyAmountValue;
                                            if (currencyAmountValue && currencyAmountValue)
                                            {
                                              if ([(PKCurrencyAmount *)currencyAmountValue isEqual:currencyAmountValue])
                                              {
                                                goto LABEL_38;
                                              }
                                            }

                                            else if (currencyAmountValue == currencyAmountValue)
                                            {
LABEL_38:
                                              personNameComponentsValue = self->_personNameComponentsValue;
                                              personNameComponentsValue = [v7 personNameComponentsValue];
                                              v46 = personNameComponentsValue;
                                              if (personNameComponentsValue && personNameComponentsValue)
                                              {
                                                v47 = [(NSPersonNameComponents *)personNameComponentsValue isEqual:personNameComponentsValue];
                                              }

                                              else
                                              {
                                                v47 = personNameComponentsValue == personNameComponentsValue;
                                              }

                                              goto LABEL_66;
                                            }

                                            v47 = 0;
LABEL_66:

                                            goto LABEL_67;
                                          }
                                        }

                                        else if (dictionariesValue == dictionariesValue)
                                        {
                                          goto LABEL_35;
                                        }

                                        v47 = 0;
LABEL_67:

                                        goto LABEL_68;
                                      }
                                    }

                                    else if (locationValue == locationValue)
                                    {
                                      goto LABEL_32;
                                    }

                                    v47 = 0;
LABEL_68:

                                    v34 = v52;
                                    goto LABEL_69;
                                  }
                                }

                                else if (stringsValue == stringsValue)
                                {
                                  goto LABEL_29;
                                }

                                v47 = 0;
LABEL_69:

                                v28 = v53;
                                goto LABEL_70;
                              }
                            }

                            else if (stringValue == stringValue)
                            {
                              goto LABEL_26;
                            }

                            v47 = 0;
LABEL_70:

                            goto LABEL_71;
                          }
                        }

                        else if (semanticKey == semanticKey)
                        {
                          goto LABEL_23;
                        }

                        v47 = 0;
LABEL_71:

                        goto LABEL_72;
                      }
                    }

                    else if (numberValue == numberValue)
                    {
                      goto LABEL_20;
                    }

                    v47 = 0;
LABEL_72:

                    goto LABEL_73;
                  }
                }

                else if (eventDateInfoValue == eventDateInfoValue)
                {
                  goto LABEL_17;
                }

                v47 = 0;
LABEL_73:

                goto LABEL_74;
              }
            }

            else if (timeZoneValue == timeZoneValue)
            {
              goto LABEL_14;
            }

            v47 = 0;
LABEL_74:

            goto LABEL_75;
          }
        }

        else if (dateValue == dateValue)
        {
          goto LABEL_11;
        }

        v47 = 0;
LABEL_75:

        goto LABEL_76;
      }
    }

    else if (fieldKey == fieldKey)
    {
      goto LABEL_8;
    }

    v47 = 0;
LABEL_76:

    goto LABEL_77;
  }

  v47 = 0;
LABEL_77:

  return v47;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  stringValue = [compareCopy stringValue];
  stringValue = self->_stringValue;
  if (stringValue)
  {
    v7 = stringValue == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    dateValue = [compareCopy dateValue];
    dateValue = self->_dateValue;
    if (dateValue && dateValue)
    {
      v10 = [(NSDate *)dateValue compare:dateValue];
LABEL_68:

      goto LABEL_69;
    }

    timeZoneValue = [compareCopy timeZoneValue];
    timeZoneValue = self->_timeZoneValue;
    if (timeZoneValue && timeZoneValue)
    {
      secondsFromGMT = [(NSTimeZone *)timeZoneValue secondsFromGMT];
      if (secondsFromGMT > [timeZoneValue secondsFromGMT])
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_67;
    }

    eventDateInfoValue = [compareCopy eventDateInfoValue];
    eventDateInfoValue = self->_eventDateInfoValue;
    if (eventDateInfoValue && eventDateInfoValue)
    {
      date = [(PKEventDateInfo *)eventDateInfoValue date];
      date2 = [eventDateInfoValue date];
      locationValue = date2;
      if (date)
      {
        if (date2)
        {
          v10 = [date compare:date2];
          if (!v10)
          {
            timeZone = [(PKEventDateInfo *)self->_eventDateInfoValue timeZone];
            name = [timeZone name];
            timeZone2 = [eventDateInfoValue timeZone];
            name2 = [timeZone2 name];
            v10 = __26__PKPassSemantic_compare___block_invoke(name2, name, name2);
          }
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = -1;
      }

      goto LABEL_65;
    }

    date = [compareCopy numberValue];
    numberValue = self->_numberValue;
    if (numberValue && date)
    {
      v10 = [(NSNumber *)numberValue compare:date];
LABEL_66:

LABEL_67:
      goto LABEL_68;
    }

    locationValue = [compareCopy locationValue];
    locationValue = self->_locationValue;
    if (locationValue && locationValue)
    {
      [(PKLocation *)locationValue coordinate];
      v24 = v23;
      [locationValue coordinate];
      v26 = v25;
      [(PKLocation *)self->_locationValue coordinate];
      v28 = v27;
      [locationValue coordinate];
      if (v24 == v26 && v28 == v29)
      {
        v10 = 0;
      }

      else
      {
        name3 = [(PKLocation *)self->_locationValue name];
        [locationValue name];
        v45 = v64 = locationValue;
        v10 = __26__PKPassSemantic_compare___block_invoke(v45, name3, v45);

        locationValue = v64;
        if (!v10)
        {
          relevantText = [(PKLocation *)self->_locationValue relevantText];
          relevantText2 = [v64 relevantText];
          v10 = __26__PKPassSemantic_compare___block_invoke(relevantText2, relevantText, relevantText2);

          locationValue = v64;
        }
      }

      goto LABEL_65;
    }

    currencyAmountValue = [compareCopy currencyAmountValue];
    currencyAmountValue = self->_currencyAmountValue;
    v63 = locationValue;
    if (currencyAmountValue && currencyAmountValue)
    {
      currency = [(PKCurrencyAmount *)currencyAmountValue currency];
      [currencyAmountValue currency];
      v33 = v58 = currencyAmountValue;
      v10 = __26__PKPassSemantic_compare___block_invoke(v33, currency, v33);

      currencyAmountValue = v58;
      locationValue = v63;
      if (!v10)
      {
        amount = [(PKCurrencyAmount *)self->_currencyAmountValue amount];
        amount2 = [v58 amount];
        v36 = amount2;
        if (amount)
        {
          if (amount2)
          {
            v10 = [amount compare:amount2];
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = -1;
        }

        currencyAmountValue = v58;
      }

      goto LABEL_64;
    }

    personNameComponentsValue = [compareCopy personNameComponentsValue];
    v56 = personNameComponentsValue;
    if (self->_personNameComponentsValue)
    {
      v38 = personNameComponentsValue;
      if (personNameComponentsValue)
      {
        v59 = currencyAmountValue;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __26__PKPassSemantic_compare___block_invoke_2;
        aBlock[3] = &unk_1E79D44E0;
        v66 = &__block_literal_global_100;
        v39 = _Block_copy(aBlock);
        v10 = v39[2](v39, self->_personNameComponentsValue, v38);
        if (!v10)
        {
          phoneticRepresentation = [(NSPersonNameComponents *)self->_personNameComponentsValue phoneticRepresentation];
          phoneticRepresentation2 = [v56 phoneticRepresentation];
          v42 = phoneticRepresentation2;
          if (phoneticRepresentation)
          {
            v43 = phoneticRepresentation;
            if (phoneticRepresentation2)
            {
              v10 = v39[2](v39, phoneticRepresentation, phoneticRepresentation2);
            }

            else
            {
              v10 = 1;
            }
          }

          else
          {
            v43 = 0;
            v10 = -1;
          }
        }

        currencyAmountValue = v59;
        locationValue = v63;
        goto LABEL_63;
      }
    }

    stringsValue = [compareCopy stringsValue];
    v60 = [(NSArray *)self->_stringsValue count];
    v55 = stringsValue;
    if (v60 <= [stringsValue count])
    {
      v49 = [(NSArray *)self->_stringsValue count];
      if (v49 >= [v55 count])
      {
        v61 = currencyAmountValue;
        dictionariesValue = [compareCopy dictionariesValue];
        v52 = [(NSArray *)self->_dictionariesValue count];
        if (v52 <= [dictionariesValue count])
        {
          v53 = [(NSArray *)self->_dictionariesValue count];
          if (v53 < [dictionariesValue count])
          {
            v10 = -1;
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 1;
        }

        locationValue = v63;
        v50 = v55;

        currencyAmountValue = v61;
        goto LABEL_59;
      }

      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    locationValue = v63;
    v50 = v55;
LABEL_59:

LABEL_63:
LABEL_64:

LABEL_65:
    goto LABEL_66;
  }

  v10 = [(NSString *)stringValue compare:stringValue];
LABEL_69:

  return v10;
}

uint64_t __26__PKPassSemantic_compare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v4 compare:v5];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __26__PKPassSemantic_compare___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 familyName];
  v9 = [v6 familyName];
  v10 = (*(v7 + 16))(v7, v8, v9);

  if (!v10)
  {
    v11 = *(a1 + 32);
    v12 = [v5 givenName];
    v13 = [v6 givenName];
    v10 = (*(v11 + 16))(v11, v12, v13);

    if (!v10)
    {
      v14 = *(a1 + 32);
      v15 = [v5 middleName];
      v16 = [v6 middleName];
      v10 = (*(v14 + 16))(v14, v15, v16);

      if (!v10)
      {
        v17 = *(a1 + 32);
        v18 = [v5 namePrefix];
        v19 = [v6 namePrefix];
        v10 = (*(v17 + 16))(v17, v18, v19);

        if (!v10)
        {
          v20 = *(a1 + 32);
          v21 = [v5 nameSuffix];
          v22 = [v6 nameSuffix];
          v10 = (*(v20 + 16))(v20, v21, v22);

          if (!v10)
          {
            v23 = *(a1 + 32);
            v24 = [v5 nickname];
            v25 = [v6 nickname];
            v10 = (*(v23 + 16))(v23, v24, v25);
          }
        }
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_fieldKey];
  [array safelyAddObject:self->_dateValue];
  [array safelyAddObject:self->_eventDateInfoValue];
  [array safelyAddObject:self->_numberValue];
  [array safelyAddObject:self->_semanticKey];
  [array safelyAddObject:self->_stringValue];
  [array safelyAddObject:self->_stringsValue];
  [array safelyAddObject:self->_locationValue];
  [array safelyAddObject:self->_dictionariesValue];
  [array safelyAddObject:self->_currencyAmountValue];
  [array safelyAddObject:self->_personNameComponentsValue];
  v4 = PKCombinedHash(17, array);

  return v4;
}

+ (BOOL)isSupportedDictionaryValueType:(id)type
{
  typeCopy = type;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _supportedDictionaryValueTypes = [objc_opt_class() _supportedDictionaryValueTypes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PKPassSemantic_isSupportedDictionaryValueType___block_invoke;
  v7[3] = &unk_1E79D4508;
  v5 = typeCopy;
  v8 = v5;
  v9 = &v10;
  [_supportedDictionaryValueTypes enumerateObjectsUsingBlock:v7];

  LOBYTE(_supportedDictionaryValueTypes) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return _supportedDictionaryValueTypes;
}

uint64_t __49__PKPassSemantic_isSupportedDictionaryValueType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (BOOL)isSupportedDictionaryKeyType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)_supportedDictionaryValueTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end