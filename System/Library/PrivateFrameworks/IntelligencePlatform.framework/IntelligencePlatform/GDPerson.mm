@interface GDPerson
- (GDPerson)initWithTriplesIterator:(id)iterator;
- (id)dateComponentsFromJSONString:(id)string;
- (id)description;
@end

@implementation GDPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDPerson *)self entityIdentifier];
  nameComponents = [(GDPerson *)self nameComponents];
  v6 = nameComponents;
  if (nameComponents)
  {
    v7 = nameComponents;
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  dateOfBirth = [(GDPerson *)self dateOfBirth];
  v9 = dateOfBirth;
  if (dateOfBirth)
  {
    v10 = dateOfBirth;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  names = [(GDPerson *)self names];
  v12 = [names componentsJoinedByString:@"|"];
  v13 = [v3 stringWithFormat:@"<GDPerson %@, %@, dob:%@, ns:%@, f:%d, t:%td>", entityIdentifier, v7, v10, v12, -[GDPerson isFavorite](self, "isFavorite"), -[GDPerson type](self, "type")];

  return v13;
}

- (id)dateComponentsFromJSONString:(id)string
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [stringCopy dataUsingEncoding:4];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v28 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:1 error:&v28];
    v7 = v28;
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"calendar"];
      v9 = [v8 objectForKeyedSubscript:@"locale"];
      v10 = [v9 objectForKeyedSubscript:@"identifier"];

      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v10];
      }

      else
      {
        v11 = 0;
      }

      v13 = [v6 objectForKeyedSubscript:@"calendar"];
      v14 = [v13 objectForKeyedSubscript:@"timeZone"];
      v15 = [v14 objectForKeyedSubscript:@"identifier"];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v15];
      }

      else
      {
        v16 = 0;
      }

      v17 = [v6 objectForKeyedSubscript:@"calendar"];
      v18 = [v17 objectForKeyedSubscript:@"identifier"];

      v26 = v11;
      v27 = v7;
      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v18];
        v20 = v19;
        if (v16)
        {
          [v19 setTimeZone:v16];
        }

        if (v11)
        {
          [v20 setLocale:v11];
        }
      }

      else
      {
        v20 = 0;
      }

      v12 = objc_opt_new();
      [v12 setCalendar:v20];
      v21 = [v6 objectForKeyedSubscript:@"year"];
      [v12 setYear:{objc_msgSend(v21, "integerValue")}];

      v22 = [v6 objectForKeyedSubscript:@"month"];
      [v12 setMonth:{objc_msgSend(v22, "integerValue")}];

      v23 = [v6 objectForKeyedSubscript:@"day"];
      [v12 setDay:{objc_msgSend(v23, "integerValue")}];

      v7 = v27;
    }

    else
    {
      v10 = GDViewLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = stringCopy;
        _os_log_error_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_ERROR, "GDPerson: failed to decode date components string %@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = GDViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = stringCopy;
      _os_log_error_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_ERROR, "GDPerson: failed to decode date components string %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v12;
}

- (GDPerson)initWithTriplesIterator:(id)iterator
{
  v106 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v104.receiver = self;
  v104.super_class = GDPerson;
  v5 = [(GDPerson *)&v104 init];
  if (!v5)
  {
    goto LABEL_82;
  }

  v91 = objc_opt_new();
  v90 = objc_opt_new();
  v89 = objc_opt_new();
  v96 = objc_opt_new();
  v95 = objc_opt_new();
  v94 = objc_opt_new();
  v93 = objc_opt_new();
  v92 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v88 = iteratorCopy;
  obj = iteratorCopy;
  v98 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
  if (!v98)
  {
    goto LABEL_79;
  }

  v97 = *v101;
  do
  {
    v9 = 0;
    do
    {
      v10 = v7;
      if (*v101 != v97)
      {
        objc_enumerationMutation(obj);
      }

      v11 = v8;
      v12 = v6;
      v13 = *(*(&v100 + 1) + 8 * v9);
      if (!v5->_entityIdentifier)
      {
        v14 = [GDEntityIdentifier alloc];
        subject = [v13 subject];
        v16 = [(GDEntityIdentifier *)v14 initWithString:subject];
        entityIdentifier = v5->_entityIdentifier;
        v5->_entityIdentifier = v16;
      }

      predicate = [v13 predicate];
      if ([predicate isEqual:@"PS225"])
      {
        relationshipPredicate = [v13 relationshipPredicate];
        if ([relationshipPredicate isEqual:@"PS1"])
        {
          object = [v13 object];
          v21 = [object isEqual:@"CS29"];

          if (v21)
          {
            v22 = [GDLocationLink alloc];
            relationshipIdIterator = [obj relationshipIdIterator];
            prefixes = [(GDLocationLink *)v22 initWithRelationshipIdTriplesIterator:relationshipIdIterator];

            if (prefixes)
            {
              v25 = v96;
LABEL_26:
              [v25 addObject:prefixes];
              goto LABEL_27;
            }

            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      if ([predicate isEqual:@"nm_hasSoftware"])
      {
        relationshipPredicate2 = [v13 relationshipPredicate];
        if ([relationshipPredicate2 isEqual:@"PS1"])
        {
          object2 = [v13 object];
          v28 = [object2 isEqual:@"nm_softwareRelationshipType"];

          if (v28)
          {
            v29 = [GDSoftwareLink alloc];
            relationshipIdIterator2 = [obj relationshipIdIterator];
            prefixes = [(GDSoftwareLink *)v29 initWithRelationshipIdTriplesIterator:relationshipIdIterator2];

            if (prefixes)
            {
              v25 = v95;
              goto LABEL_26;
            }

LABEL_27:
            v6 = v12;
LABEL_41:
            v7 = v10;
            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      if ([predicate isEqual:@"PS598"])
      {
        relationshipPredicate3 = [v13 relationshipPredicate];
        if ([relationshipPredicate3 isEqual:@"PS1"])
        {
          object3 = [v13 object];
          v33 = [object3 isEqual:@"CS168"];

          if (v33)
          {
            v34 = [GDPersonLink alloc];
            relationshipIdIterator3 = [obj relationshipIdIterator];
            prefixes = [(GDPersonLink *)v34 initWithRelationshipIdTriplesIterator:relationshipIdIterator3];

            if (prefixes)
            {
              v25 = v94;
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      if ([predicate isEqual:@"PS72"])
      {
        relationshipPredicate4 = [v13 relationshipPredicate];
        if ([relationshipPredicate4 isEqual:@"PS1"])
        {
          object4 = [v13 object];
          v38 = [object4 isEqual:@"CS22"];

          if (v38)
          {
            v39 = [GDPersonIdentifier alloc];
            relationshipIdIterator4 = [obj relationshipIdIterator];
            prefixes = [(GDPersonIdentifier *)v39 initWithRelationshipIdTriplesIterator:relationshipIdIterator4];

            if (prefixes)
            {
              type = [(GDLocationLink *)prefixes type];
              v42 = [type isEqual:@"CNContact"];

              v43 = v93;
              v6 = v12;
              if ((v42 & 1) != 0 || (-[GDLocationLink type](prefixes, "type"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 isEqual:@"INPerson"], v44, v43 = v92, v45))
              {
                identifier = [(GDLocationLink *)prefixes identifier];
                [v43 addObject:identifier];
              }

              goto LABEL_41;
            }

            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      if ([predicate isEqual:@"nm_hasVisualIdentifier"])
      {
        v47 = [GDVisualIdentifier alloc];
        relationshipIdIterator5 = [obj relationshipIdIterator];
        prefixes = [(GDVisualIdentifier *)v47 initWithRelationshipIdTriplesIterator:relationshipIdIterator5];

        v6 = v12;
        if (prefixes)
        {
          visualIdentifier = [(GDLocationLink *)prefixes visualIdentifier];
          [v12 addObject:visualIdentifier];

          v7 = v10;
          v50 = v10;
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      v6 = v12;
      v8 = v11;
      if ([predicate isEqual:@"PS545"])
      {
        prefixes = [v11 prefixes];
        object5 = [v13 object];
        [(GDLocationLink *)prefixes addObject:object5];

        v7 = v10;
        goto LABEL_43;
      }

      v7 = v10;
      if ([predicate isEqual:@"PS312"])
      {
        givenNames = [v11 givenNames];
LABEL_58:
        prefixes = givenNames;
        object6 = [v13 object];
        [(GDLocationLink *)prefixes addObject:object6];

        goto LABEL_43;
      }

      if ([predicate isEqual:@"PS546"])
      {
        givenNames = [v11 middleNames];
        goto LABEL_58;
      }

      if ([predicate isEqual:@"PS441"])
      {
        givenNames = [v11 familyNames];
        goto LABEL_58;
      }

      if ([predicate isEqual:@"PS547"])
      {
        givenNames = [v11 suffixes];
        goto LABEL_58;
      }

      if ([predicate isEqual:@"PS89"])
      {
        givenNames = [v11 nicknames];
        goto LABEL_58;
      }

      if ([predicate isEqual:@"PS33"])
      {
        prefixes = [v13 object];
        [v91 addObject:prefixes];
        goto LABEL_43;
      }

      if ([predicate isEqual:@"PS37"])
      {
        prefixes = [v13 object];
        v54 = [(GDPerson *)v5 dateComponentsFromJSONString:prefixes];
        dateOfBirth = v5->_dateOfBirth;
        v5->_dateOfBirth = v54;
LABEL_67:

        goto LABEL_43;
      }

      if ([predicate isEqual:@"nm_nonGregorianBirthday"])
      {
        prefixes = [v13 object];
        v56 = [(GDPerson *)v5 dateComponentsFromJSONString:prefixes];
        dateOfBirth = v5->_nonGregorianDateOfBirth;
        v5->_nonGregorianDateOfBirth = v56;
        goto LABEL_67;
      }

      if ([predicate isEqual:@"nm_anniversary"])
      {
        prefixes = [v13 object];
        v57 = [(GDPerson *)v5 dateComponentsFromJSONString:prefixes];
        dateOfBirth = v5->_anniversary;
        v5->_anniversary = v57;
        goto LABEL_67;
      }

      if (([predicate isEqual:@"PS407"] & 1) != 0 || (objc_msgSend(v13, "relationshipPredicate"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqual:", @"PS407"), v58, v59))
      {
        prefixes = [v13 object];
        v50 = v90;
        goto LABEL_40;
      }

      if (([predicate isEqual:@"PS406"] & 1) != 0 || (objc_msgSend(v13, "relationshipPredicate"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqual:", @"PS406"), v60, v61))
      {
        prefixes = [v13 object];
        v50 = v89;
LABEL_40:
        [v50 addObject:prefixes];
LABEL_42:
        v8 = v11;
LABEL_43:

        goto LABEL_44;
      }

      if ([predicate isEqual:@"nm_personType"])
      {
        prefixes = [v13 object];
        v5->_type = [(GDLocationLink *)prefixes integerValue];
        goto LABEL_42;
      }

      v8 = v11;
      if ([predicate isEqual:@"nm_isFavorite"])
      {
        prefixes = [v13 object];
        v5->_isFavorite = [(GDLocationLink *)prefixes integerValue]!= 0;
        goto LABEL_43;
      }

LABEL_44:

      ++v9;
    }

    while (v98 != v9);
    v62 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
    v98 = v62;
  }

  while (v62);
LABEL_79:

  v63 = v5->_entityIdentifier;
  if (v63)
  {
    v64 = [v91 copy];
    names = v5->_names;
    v5->_names = v64;

    v66 = [[GDPersonNameComponents alloc] initWithNameComponentsBuilder:v8];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v66;

    v68 = [v90 copy];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v68;

    v70 = [v89 copy];
    emails = v5->_emails;
    v5->_emails = v70;

    v72 = [v96 copy];
    postalAddressLinks = v5->_postalAddressLinks;
    v5->_postalAddressLinks = v72;

    v74 = [v95 copy];
    softwareLinks = v5->_softwareLinks;
    v5->_softwareLinks = v74;

    v76 = [v94 copy];
    relatedPeople = v5->_relatedPeople;
    v5->_relatedPeople = v76;

    v78 = [v93 copy];
    contactIdentifiers = v5->_contactIdentifiers;
    v5->_contactIdentifiers = v78;

    v80 = [v92 copy];
    customIdentifiers = v5->_customIdentifiers;
    v5->_customIdentifiers = v80;

    v82 = [v6 copy];
    visualIdentifiers = v5->_visualIdentifiers;
    v5->_visualIdentifiers = v82;

    v84 = [v7 copy];
    visualIdentifierObjects = v5->_visualIdentifierObjects;
    v5->_visualIdentifierObjects = v84;
  }

  iteratorCopy = v88;
  if (v63)
  {
LABEL_82:
    v63 = v5;
  }

  v86 = *MEMORY[0x1E69E9840];
  return v63;
}

@end