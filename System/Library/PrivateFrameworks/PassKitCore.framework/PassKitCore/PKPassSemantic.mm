@interface PKPassSemantic
+ (BOOL)isSupportedDictionaryKeyType:(id)a3;
+ (BOOL)isSupportedDictionaryValueType:(id)a3;
+ (id)_supportedDictionaryValueTypes;
- (BOOL)isEqual:(id)a3;
- (PKPassSemantic)initWithCoder:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassSemantic

- (PKPassSemantic)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKPassSemantic;
  v5 = [(PKPassSemantic *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"semanticKey"];
    [(PKPassSemantic *)v5 setSemanticKey:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fieldKey"];
    [(PKPassSemantic *)v5 setFieldKey:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    [(PKPassSemantic *)v5 setStringValue:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateValue"];
    [(PKPassSemantic *)v5 setDateValue:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZoneValue"];
    [(PKPassSemantic *)v5 setTimeZoneValue:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDateInfoValue"];
    [(PKPassSemantic *)v5 setEventDateInfoValue:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
    [(PKPassSemantic *)v5 setNumberValue:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationValue"];
    [(PKPassSemantic *)v5 setLocationValue:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmountValue"];
    [(PKPassSemantic *)v5 setCurrencyAmountValue:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personNameComponentsValue"];
    [(PKPassSemantic *)v5 setPersonNameComponentsValue:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"stringsValue"];
    [(PKPassSemantic *)v5 setStringsValue:v19];

    v20 = objc_alloc(MEMORY[0x1E695DFA8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [objc_opt_class() _supportedDictionaryValueTypes];
    [v22 addObjectsFromArray:v23];

    v24 = [v4 decodeObjectOfClasses:v22 forKey:@"dictionariesValue"];
    [(PKPassSemantic *)v5 setDictionariesValue:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassSemantic *)self semanticKey];
  [v4 encodeObject:v5 forKey:@"semanticKey"];

  v6 = [(PKPassSemantic *)self fieldKey];
  [v4 encodeObject:v6 forKey:@"fieldKey"];

  v7 = [(PKPassSemantic *)self stringValue];
  [v4 encodeObject:v7 forKey:@"stringValue"];

  v8 = [(PKPassSemantic *)self dateValue];
  [v4 encodeObject:v8 forKey:@"dateValue"];

  v9 = [(PKPassSemantic *)self timeZoneValue];
  [v4 encodeObject:v9 forKey:@"timeZoneValue"];

  v10 = [(PKPassSemantic *)self eventDateInfoValue];
  [v4 encodeObject:v10 forKey:@"eventDateInfoValue"];

  v11 = [(PKPassSemantic *)self numberValue];
  [v4 encodeObject:v11 forKey:@"numberValue"];

  v12 = [(PKPassSemantic *)self locationValue];
  [v4 encodeObject:v12 forKey:@"locationValue"];

  v13 = [(PKPassSemantic *)self currencyAmountValue];
  [v4 encodeObject:v13 forKey:@"currencyAmountValue"];

  v14 = [(PKPassSemantic *)self personNameComponentsValue];
  [v4 encodeObject:v14 forKey:@"personNameComponentsValue"];

  v15 = [(PKPassSemantic *)self stringsValue];
  [v4 encodeObject:v15 forKey:@"stringsValue"];

  v16 = [(PKPassSemantic *)self dictionariesValue];
  [v4 encodeObject:v16 forKey:@"dictionariesValue"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v9 = [v6 fieldKey];
    v10 = v9;
    if (fieldKey && v9)
    {
      if (([(NSString *)fieldKey isEqual:v9]& 1) != 0)
      {
LABEL_8:
        dateValue = self->_dateValue;
        v12 = [v7 dateValue];
        v13 = v12;
        if (dateValue && v12)
        {
          if (([(NSDate *)dateValue isEqual:v12]& 1) != 0)
          {
LABEL_11:
            timeZoneValue = self->_timeZoneValue;
            v15 = [v7 timeZoneValue];
            v16 = v15;
            if (timeZoneValue && v15)
            {
              if (([(NSTimeZone *)timeZoneValue isEqual:v15]& 1) != 0)
              {
LABEL_14:
                eventDateInfoValue = self->_eventDateInfoValue;
                v18 = [v7 eventDateInfoValue];
                v19 = v18;
                if (eventDateInfoValue && v18)
                {
                  if (([(PKEventDateInfo *)eventDateInfoValue isEqual:v18]& 1) != 0)
                  {
LABEL_17:
                    numberValue = self->_numberValue;
                    v21 = [v7 numberValue];
                    v22 = v21;
                    if (numberValue && v21)
                    {
                      if (([(NSNumber *)numberValue isEqual:v21]& 1) != 0)
                      {
LABEL_20:
                        semanticKey = self->_semanticKey;
                        v24 = [v7 semanticKey];
                        v25 = v24;
                        if (semanticKey && v24)
                        {
                          if (([(NSString *)semanticKey isEqual:v24]& 1) != 0)
                          {
LABEL_23:
                            stringValue = self->_stringValue;
                            v27 = [v7 stringValue];
                            v28 = v27;
                            if (stringValue && v27)
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
                                v33 = [v7 stringsValue];
                                v34 = v33;
                                if (stringsValue && v33)
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
                                    v39 = [v7 locationValue];
                                    v51 = v39;
                                    if (locationValue && v39)
                                    {
                                      if ([(PKLocation *)locationValue isEqual:v39])
                                      {
LABEL_32:
                                        dictionariesValue = self->_dictionariesValue;
                                        v41 = [v7 dictionariesValue];
                                        v50 = v41;
                                        if (dictionariesValue && v41)
                                        {
                                          if (([(NSArray *)dictionariesValue isEqual:v41]& 1) != 0)
                                          {
LABEL_35:
                                            currencyAmountValue = self->_currencyAmountValue;
                                            v43 = [v7 currencyAmountValue];
                                            v49 = v43;
                                            if (currencyAmountValue && v43)
                                            {
                                              if ([(PKCurrencyAmount *)currencyAmountValue isEqual:v43])
                                              {
                                                goto LABEL_38;
                                              }
                                            }

                                            else if (currencyAmountValue == v43)
                                            {
LABEL_38:
                                              personNameComponentsValue = self->_personNameComponentsValue;
                                              v45 = [v7 personNameComponentsValue];
                                              v46 = v45;
                                              if (personNameComponentsValue && v45)
                                              {
                                                v47 = [(NSPersonNameComponents *)personNameComponentsValue isEqual:v45];
                                              }

                                              else
                                              {
                                                v47 = personNameComponentsValue == v45;
                                              }

                                              goto LABEL_66;
                                            }

                                            v47 = 0;
LABEL_66:

                                            goto LABEL_67;
                                          }
                                        }

                                        else if (dictionariesValue == v41)
                                        {
                                          goto LABEL_35;
                                        }

                                        v47 = 0;
LABEL_67:

                                        goto LABEL_68;
                                      }
                                    }

                                    else if (locationValue == v39)
                                    {
                                      goto LABEL_32;
                                    }

                                    v47 = 0;
LABEL_68:

                                    v34 = v52;
                                    goto LABEL_69;
                                  }
                                }

                                else if (stringsValue == v33)
                                {
                                  goto LABEL_29;
                                }

                                v47 = 0;
LABEL_69:

                                v28 = v53;
                                goto LABEL_70;
                              }
                            }

                            else if (stringValue == v27)
                            {
                              goto LABEL_26;
                            }

                            v47 = 0;
LABEL_70:

                            goto LABEL_71;
                          }
                        }

                        else if (semanticKey == v24)
                        {
                          goto LABEL_23;
                        }

                        v47 = 0;
LABEL_71:

                        goto LABEL_72;
                      }
                    }

                    else if (numberValue == v21)
                    {
                      goto LABEL_20;
                    }

                    v47 = 0;
LABEL_72:

                    goto LABEL_73;
                  }
                }

                else if (eventDateInfoValue == v18)
                {
                  goto LABEL_17;
                }

                v47 = 0;
LABEL_73:

                goto LABEL_74;
              }
            }

            else if (timeZoneValue == v15)
            {
              goto LABEL_14;
            }

            v47 = 0;
LABEL_74:

            goto LABEL_75;
          }
        }

        else if (dateValue == v12)
        {
          goto LABEL_11;
        }

        v47 = 0;
LABEL_75:

        goto LABEL_76;
      }
    }

    else if (fieldKey == v9)
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 stringValue];
  stringValue = self->_stringValue;
  if (stringValue)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [v4 dateValue];
    dateValue = self->_dateValue;
    if (dateValue && v8)
    {
      v10 = [(NSDate *)dateValue compare:v8];
LABEL_68:

      goto LABEL_69;
    }

    v11 = [v4 timeZoneValue];
    timeZoneValue = self->_timeZoneValue;
    if (timeZoneValue && v11)
    {
      v13 = [(NSTimeZone *)timeZoneValue secondsFromGMT];
      if (v13 > [v11 secondsFromGMT])
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_67;
    }

    v14 = [v4 eventDateInfoValue];
    eventDateInfoValue = self->_eventDateInfoValue;
    if (eventDateInfoValue && v14)
    {
      v16 = [(PKEventDateInfo *)eventDateInfoValue date];
      v17 = [v14 date];
      v18 = v17;
      if (v16)
      {
        if (v17)
        {
          v10 = [v16 compare:v17];
          if (!v10)
          {
            v62 = [(PKEventDateInfo *)self->_eventDateInfoValue timeZone];
            v57 = [v62 name];
            v19 = [v14 timeZone];
            v20 = [v19 name];
            v10 = __26__PKPassSemantic_compare___block_invoke(v20, v57, v20);
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

    v16 = [v4 numberValue];
    numberValue = self->_numberValue;
    if (numberValue && v16)
    {
      v10 = [(NSNumber *)numberValue compare:v16];
LABEL_66:

LABEL_67:
      goto LABEL_68;
    }

    v18 = [v4 locationValue];
    locationValue = self->_locationValue;
    if (locationValue && v18)
    {
      [(PKLocation *)locationValue coordinate];
      v24 = v23;
      [v18 coordinate];
      v26 = v25;
      [(PKLocation *)self->_locationValue coordinate];
      v28 = v27;
      [v18 coordinate];
      if (v24 == v26 && v28 == v29)
      {
        v10 = 0;
      }

      else
      {
        v44 = [(PKLocation *)self->_locationValue name];
        [v18 name];
        v45 = v64 = v18;
        v10 = __26__PKPassSemantic_compare___block_invoke(v45, v44, v45);

        v18 = v64;
        if (!v10)
        {
          v46 = [(PKLocation *)self->_locationValue relevantText];
          v47 = [v64 relevantText];
          v10 = __26__PKPassSemantic_compare___block_invoke(v47, v46, v47);

          v18 = v64;
        }
      }

      goto LABEL_65;
    }

    v30 = [v4 currencyAmountValue];
    currencyAmountValue = self->_currencyAmountValue;
    v63 = v18;
    if (currencyAmountValue && v30)
    {
      v32 = [(PKCurrencyAmount *)currencyAmountValue currency];
      [v30 currency];
      v33 = v58 = v30;
      v10 = __26__PKPassSemantic_compare___block_invoke(v33, v32, v33);

      v30 = v58;
      v18 = v63;
      if (!v10)
      {
        v34 = [(PKCurrencyAmount *)self->_currencyAmountValue amount];
        v35 = [v58 amount];
        v36 = v35;
        if (v34)
        {
          if (v35)
          {
            v10 = [v34 compare:v35];
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

        v30 = v58;
      }

      goto LABEL_64;
    }

    v37 = [v4 personNameComponentsValue];
    v56 = v37;
    if (self->_personNameComponentsValue)
    {
      v38 = v37;
      if (v37)
      {
        v59 = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __26__PKPassSemantic_compare___block_invoke_2;
        aBlock[3] = &unk_1E79D44E0;
        v66 = &__block_literal_global_100;
        v39 = _Block_copy(aBlock);
        v10 = v39[2](v39, self->_personNameComponentsValue, v38);
        if (!v10)
        {
          v40 = [(NSPersonNameComponents *)self->_personNameComponentsValue phoneticRepresentation];
          v41 = [v56 phoneticRepresentation];
          v42 = v41;
          if (v40)
          {
            v43 = v40;
            if (v41)
            {
              v10 = v39[2](v39, v40, v41);
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

        v30 = v59;
        v18 = v63;
        goto LABEL_63;
      }
    }

    v48 = [v4 stringsValue];
    v60 = [(NSArray *)self->_stringsValue count];
    v55 = v48;
    if (v60 <= [v48 count])
    {
      v49 = [(NSArray *)self->_stringsValue count];
      if (v49 >= [v55 count])
      {
        v61 = v30;
        v51 = [v4 dictionariesValue];
        v52 = [(NSArray *)self->_dictionariesValue count];
        if (v52 <= [v51 count])
        {
          v53 = [(NSArray *)self->_dictionariesValue count];
          if (v53 < [v51 count])
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

        v18 = v63;
        v50 = v55;

        v30 = v61;
        goto LABEL_59;
      }

      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    v18 = v63;
    v50 = v55;
LABEL_59:

LABEL_63:
LABEL_64:

LABEL_65:
    goto LABEL_66;
  }

  v10 = [(NSString *)stringValue compare:v5];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_fieldKey];
  [v3 safelyAddObject:self->_dateValue];
  [v3 safelyAddObject:self->_eventDateInfoValue];
  [v3 safelyAddObject:self->_numberValue];
  [v3 safelyAddObject:self->_semanticKey];
  [v3 safelyAddObject:self->_stringValue];
  [v3 safelyAddObject:self->_stringsValue];
  [v3 safelyAddObject:self->_locationValue];
  [v3 safelyAddObject:self->_dictionariesValue];
  [v3 safelyAddObject:self->_currencyAmountValue];
  [v3 safelyAddObject:self->_personNameComponentsValue];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

+ (BOOL)isSupportedDictionaryValueType:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() _supportedDictionaryValueTypes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PKPassSemantic_isSupportedDictionaryValueType___block_invoke;
  v7[3] = &unk_1E79D4508;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
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

+ (BOOL)isSupportedDictionaryKeyType:(id)a3
{
  v3 = a3;
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