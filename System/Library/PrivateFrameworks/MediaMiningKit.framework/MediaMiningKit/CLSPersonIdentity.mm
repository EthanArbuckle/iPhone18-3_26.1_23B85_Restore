@interface CLSPersonIdentity
+ (BOOL)isFamilyRelationship:(unint64_t)relationship;
+ (id)_personRelationshipVocabularyByLocaleDictionary;
+ (id)descriptionForPersonRelationship:(unint64_t)relationship;
+ (id)mePerson;
+ (id)person;
+ (id)personWithCNIdentifier:(id)identifier;
+ (id)personWithGDIdentifier:(id)identifier;
+ (id)personWithLocalIdentifier:(id)identifier;
+ (id)personWithPHPerson:(id)person;
+ (id)presentationStringForPeople:(id)people withScores:(id)scores;
+ (id)relationshipRegularExpressionForRelationship:(unint64_t)relationship locale:(id)locale;
- (BOOL)hasSameFamilyNameAsPerson:(id)person;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPerson:(id)person;
- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)coordinate closeToAddressesOfType:(unint64_t)type;
- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)coordinate farAwayFromAddressesOfType:(unint64_t)type;
- (BOOL)isSamePersonAs:(id)as;
- (CLSPersonIdentity)init;
- (CLSPersonIdentity)initWithCoder:(id)coder;
- (NSString)inferredLastName;
- (id)_addressArrayFromAddressType:(unint64_t)type;
- (id)_relationshipAsString;
- (id)description;
- (id)pluralPresentationString;
- (id)presentationString;
- (unint64_t)countOfAddressesOfType:(unint64_t)type;
- (unint64_t)relationshipHintFromNameUsingLocales:(id)locales;
- (void)_enumerateAddresses:(id)addresses as:(id)as withBlock:(id)block;
- (void)addAddresses:(id)addresses ofType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAddressesOfType:(unint64_t)type asCLLocationsWithBlock:(id)block;
- (void)enumerateAddressesOfType:(unint64_t)type asPlacemarkWithBlock:(id)block;
- (void)mergeWithPerson:(id)person;
- (void)prefetchPersonAddressesIfNeededWithLocationCache:(id)cache;
- (void)setCompanyName:(id)name;
- (void)setFirstName:(id)name;
- (void)setFullName:(id)name;
- (void)setLastName:(id)name;
- (void)setLocalizedShortName:(id)name;
- (void)setMiddleName:(id)name;
- (void)setNickname:(id)nickname;
- (void)setSourceService:(id)service andID:(id)d;
@end

@implementation CLSPersonIdentity

- (unint64_t)relationshipHintFromNameUsingLocales:(id)locales
{
  v43 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v5 = [MEMORY[0x277CBEB58] set];
  _motherAndFatherRelationships = [(CLSPersonIdentity *)self _motherAndFatherRelationships];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = localesCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    v29 = _motherAndFatherRelationships;
    v30 = v5;
    v28 = v7;
    v25 = *v38;
    do
    {
      v11 = 0;
      v26 = v9;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        languageCode = [v12 languageCode];
        if (languageCode && ([v5 containsObject:languageCode] & 1) == 0)
        {
          v27 = v11;
          v31 = languageCode;
          [v5 addObject:languageCode];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          obj = _motherAndFatherRelationships;
          v14 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v34;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                unsignedIntegerValue = [*(*(&v33 + 1) + 8 * i) unsignedIntegerValue];
                v19 = [objc_opt_class() relationshipRegularExpressionForRelationship:unsignedIntegerValue locale:v12];
                if (v19)
                {
                  fullName = [(CLSPersonIdentity *)self fullName];
                  fullName2 = [(CLSPersonIdentity *)self fullName];
                  v22 = [v19 matchesInString:fullName options:0 range:{0, objc_msgSend(fullName2, "length")}];

                  v23 = [v22 count];
                  if (v23)
                  {

                    _motherAndFatherRelationships = v29;
                    v5 = v30;
                    v7 = v28;
                    goto LABEL_23;
                  }
                }
              }

              v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          _motherAndFatherRelationships = v29;
          v5 = v30;
          v11 = v27;
          v7 = v28;
          v10 = v25;
          v9 = v26;
          languageCode = v31;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      unsignedIntegerValue = 0;
    }

    while (v9);
  }

  else
  {
    unsignedIntegerValue = 0;
  }

LABEL_23:

  return unsignedIntegerValue;
}

- (NSString)inferredLastName
{
  inferredLastName = self->_inferredLastName;
  if (!inferredLastName)
  {
    lastName = [(CLSPersonIdentity *)self lastName];
    fullName = [(CLSPersonIdentity *)self fullName];
    if ([lastName length])
    {
      v6 = lastName;
      v7 = self->_inferredLastName;
      self->_inferredLastName = v6;
    }

    else
    {
      if (![fullName length])
      {
LABEL_7:

        inferredLastName = self->_inferredLastName;
        goto LABEL_8;
      }

      v7 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v8 = [(NSString *)v7 personNameComponentsFromString:fullName];
      familyName = [v8 familyName];
      v10 = self->_inferredLastName;
      self->_inferredLastName = familyName;
    }

    goto LABEL_7;
  }

LABEL_8:

  return inferredLastName;
}

- (BOOL)hasSameFamilyNameAsPerson:(id)person
{
  personCopy = person;
  inferredLastName = [(CLSPersonIdentity *)self inferredLastName];
  inferredLastName2 = [personCopy inferredLastName];

  if ([inferredLastName length])
  {
    lowercaseString = [inferredLastName lowercaseString];
    lowercaseString2 = [inferredLastName2 lowercaseString];
    v9 = [lowercaseString isEqualToString:lowercaseString2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)coordinate farAwayFromAddressesOfType:(unint64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CLSPersonIdentity_isLocationCoordinate_farAwayFromAddressesOfType___block_invoke;
  v6[3] = &unk_2788A7080;
  coordinateCopy = coordinate;
  v6[4] = &v8;
  [(CLSPersonIdentity *)self enumerateAddressesOfType:type asCLLocationsWithBlock:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL __69__CLSPersonIdentity_isLocationCoordinate_farAwayFromAddressesOfType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 coordinate];
  result = [CLSNewLocationInformant location:*(a1 + 40) isFarFromLocation:*(a1 + 48), v5, v6];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)coordinate closeToAddressesOfType:(unint64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CLSPersonIdentity_isLocationCoordinate_closeToAddressesOfType___block_invoke;
  v6[3] = &unk_2788A7080;
  coordinateCopy = coordinate;
  v6[4] = &v8;
  [(CLSPersonIdentity *)self enumerateAddressesOfType:type asCLLocationsWithBlock:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL __65__CLSPersonIdentity_isLocationCoordinate_closeToAddressesOfType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 coordinate];
  result = [CLSNewLocationInformant location:*(a1 + 40) isCloseToLocation:*(a1 + 48), v5, v6];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isEqualToPerson:(id)person
{
  personCopy = person;
  fullName = self->_fullName;
  fullName = [personCopy fullName];
  if (fullName != fullName)
  {
    v9 = self->_fullName;
    fullName2 = [personCopy fullName];
    if (![(NSString *)v9 isEqualToString:fullName2])
    {
      v10 = 0;
LABEL_70:

      goto LABEL_71;
    }
  }

  firstName = self->_firstName;
  firstName = [personCopy firstName];
  if (firstName == firstName || (v13 = self->_firstName, [personCopy firstName], v4 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v13, "isEqualToString:", v4)))
  {
    lastName = self->_lastName;
    lastName = [personCopy lastName];
    v91 = lastName;
    if (lastName != lastName)
    {
      v16 = self->_lastName;
      lastName2 = [personCopy lastName];
      v18 = v16;
      v19 = lastName2;
      if (![(NSString *)v18 isEqualToString:lastName2])
      {
        v10 = 0;
LABEL_66:

LABEL_67:
        if (firstName == firstName)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      v87 = v19;
    }

    middleName = self->_middleName;
    middleName = [personCopy middleName];
    v88 = middleName;
    v89 = firstName;
    v90 = v4;
    if (middleName != middleName)
    {
      v21 = self->_middleName;
      middleName2 = [personCopy middleName];
      if (![(NSString *)v21 isEqualToString:?])
      {
        v10 = 0;
        firstName = v89;
LABEL_64:

LABEL_65:
        v19 = v87;
        if (v91 == lastName)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    nickname = self->_nickname;
    nickname = [personCopy nickname];
    v85 = nickname;
    if (nickname != nickname)
    {
      v24 = self->_nickname;
      nickname2 = [personCopy nickname];
      if (![(NSString *)v24 isEqualToString:?])
      {
        v10 = 0;
        v25 = middleName;
LABEL_62:

LABEL_63:
        v57 = v25 == middleName;
        firstName = v89;
        v4 = v90;
        if (v57)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    birthdayDate = self->_birthdayDate;
    birthdayDate = [personCopy birthdayDate];
    v82 = birthdayDate;
    if (birthdayDate != birthdayDate)
    {
      v27 = self->_birthdayDate;
      birthdayDate2 = [personCopy birthdayDate];
      if (![(NSDate *)v27 isEqualToDate:?])
      {
        v10 = 0;
        v25 = middleName;
        v28 = birthdayDate;
LABEL_60:

LABEL_61:
        if (v85 == nickname)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    potentialBirthdayDate = self->_potentialBirthdayDate;
    potentialBirthdayDate = [personCopy potentialBirthdayDate];
    v79 = potentialBirthdayDate;
    if (potentialBirthdayDate != potentialBirthdayDate)
    {
      v30 = self->_potentialBirthdayDate;
      potentialBirthdayDate2 = [personCopy potentialBirthdayDate];
      if (![(NSDate *)v30 isEqualToDate:?])
      {
        v31 = nickname;
        v32 = potentialBirthdayDate;
        v33 = v82;
        v10 = 0;
LABEL_58:

LABEL_59:
        v28 = birthdayDate;
        v57 = v33 == birthdayDate;
        nickname = v31;
        v25 = v88;
        if (v57)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    anniversaryDate = self->_anniversaryDate;
    anniversaryDate = [personCopy anniversaryDate];
    v76 = anniversaryDate;
    if (anniversaryDate != anniversaryDate)
    {
      v35 = self->_anniversaryDate;
      anniversaryDate2 = [personCopy anniversaryDate];
      if (![(NSDate *)v35 isEqualToDate:?])
      {
        v31 = nickname;
        v10 = 0;
        v36 = anniversaryDate;
        goto LABEL_55;
      }
    }

    companyName = self->_companyName;
    companyName = [personCopy companyName];
    v73 = companyName;
    if (companyName != companyName)
    {
      v38 = self->_companyName;
      companyName2 = [personCopy companyName];
      if (![(NSString *)v38 isEqualToString:?])
      {
        v10 = 0;
        v39 = companyName;
        goto LABEL_52;
      }
    }

    socialProfiles = self->_socialProfiles;
    socialProfiles = [personCopy socialProfiles];
    v42 = socialProfiles;
    v70 = socialProfiles;
    if (socialProfiles != socialProfiles)
    {
      v43 = socialProfiles;
      v44 = self->_socialProfiles;
      socialProfiles2 = [personCopy socialProfiles];
      if (![(NSMutableDictionary *)v44 isEqualToDictionary:?])
      {
        v10 = 0;
        v48 = v43;
LABEL_50:

LABEL_51:
        v39 = companyName;
        if (v73 == companyName)
        {
          v31 = nickname;
LABEL_54:

          v36 = anniversaryDate;
          if (v76 == anniversaryDate)
          {
            v33 = v82;
LABEL_57:

            v32 = potentialBirthdayDate;
            if (v79 == potentialBirthdayDate)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

LABEL_55:
          v33 = v82;

          goto LABEL_57;
        }

LABEL_52:
        v31 = nickname;

        goto LABEL_54;
      }

      v42 = v43;
    }

    emailAddresses = self->_emailAddresses;
    [personCopy emailAddresses];
    v71 = v68 = emailAddresses;
    if (emailAddresses != v71)
    {
      v46 = v42;
      v47 = self->_emailAddresses;
      emailAddresses = [personCopy emailAddresses];
      if (![(NSSet *)v47 isEqualToSet:?])
      {
        v10 = 0;
        v48 = v46;
LABEL_48:

LABEL_49:
        if (v70 == v48)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v42 = v46;
    }

    v67 = v42;
    phoneNumbers = self->_phoneNumbers;
    phoneNumbers = [personCopy phoneNumbers];
    v65 = phoneNumbers;
    if (phoneNumbers != phoneNumbers)
    {
      v51 = self->_phoneNumbers;
      phoneNumbers2 = [personCopy phoneNumbers];
      if (![(NSSet *)v51 isEqualToSet:?])
      {
        v10 = 0;
        v48 = v67;
        goto LABEL_46;
      }
    }

    relationship = self->_relationship;
    if (relationship != [personCopy relationship] || (sex = self->_sex, sex != objc_msgSend(personCopy, "sex")))
    {
      v10 = 0;
      v48 = v67;
      if (v65 == phoneNumbers)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    sourceURLs = self->_sourceURLs;
    [personCopy sourceURLs];
    v63 = v62 = sourceURLs;
    if (sourceURLs == v63 || (v55 = self->_sourceURLs, [personCopy sourceURLs], v61 = objc_claimAutoreleasedReturnValue(), -[NSArray isEqualToArray:](v55, "isEqualToArray:")))
    {
      hasContactProfilePicture = self->_hasContactProfilePicture;
      if (hasContactProfilePicture == [personCopy hasContactProfilePicture])
      {
        hasPhoneNumber = self->_hasPhoneNumber;
        v10 = hasPhoneNumber == [personCopy hasPhoneNumber];
      }

      else
      {
        v10 = 0;
      }

      v48 = v67;
      v56 = v61;
      if (v62 == v63)
      {

LABEL_78:
        if (v65 == phoneNumbers)
        {
LABEL_47:

          if (v68 == v71)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v10 = 0;
      v48 = v67;
      v56 = v61;
    }

    goto LABEL_78;
  }

  v10 = 0;
LABEL_68:

LABEL_69:
  if (fullName != fullName)
  {
    goto LABEL_70;
  }

LABEL_71:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CLSPersonIdentity *)self isSamePersonAs:equalCopy];

  return v5;
}

- (void)setSourceService:(id)service andID:(id)d
{
  v17[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  if ([(NSArray *)self->_sourceURLs count])
  {
    __assert_rtn("[CLSPersonIdentity setSourceService:andID:]", "CLSPersonIdentity.m", 691, "_sourceURLs.count == 0");
  }

  objc_storeStrong(&self->_sourceService, service);
  v9 = objc_opt_new();
  [v9 setScheme:serviceCopy];
  [v9 setPath:dCopy];
  v10 = [v9 URL];
  v11 = v10;
  if (v10)
  {
    v17[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    p_super = &self->_sourceURLs->super;
    self->_sourceURLs = v12;
  }

  else
  {
    v14 = +[CLSLogging sharedLogging];
    p_super = [v14 loggingConnection];

    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = serviceCopy;
      _os_log_error_impl(&dword_22F907000, p_super, OS_LOG_TYPE_ERROR, "Trying to set a nil url for source service %@", &v15, 0xCu);
    }
  }
}

- (id)pluralPresentationString
{
  v2 = @"my coworkers";
  switch(self->_relationship)
  {
    case 1uLL:
      break;
    case 2uLL:
    case 3uLL:
      v2 = @"my friends";
      break;
    case 4uLL:
    case 0xDuLL:
      nickname = self->_nickname;
      if (nickname)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    case 5uLL:
      v2 = @"my children";
      break;
    case 6uLL:
      v2 = @"my daughters";
      break;
    case 7uLL:
      v2 = @"my sons";
      break;
    case 8uLL:
      v2 = @"my parents";
      break;
    case 9uLL:
      v2 = @"mom";
      break;
    case 0xAuLL:
      v2 = @"dad";
      break;
    case 0xBuLL:
      v2 = @"my brothers";
      break;
    case 0xCuLL:
      v2 = @"my sisters";
      break;
    case 0xEuLL:
      v2 = @"myself";
      break;
    default:
LABEL_4:
      nickname = self->_firstName;
LABEL_5:
      v2 = nickname;
      break;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_284489518;
  }

  v5 = v4;

  return v4;
}

- (id)presentationString
{
  relationship = self->_relationship;
  if (relationship <= 7)
  {
    if (relationship > 4)
    {
      if (relationship == 5)
      {
        v4 = @"my child";
      }

      else if (relationship == 6)
      {
        v4 = @"my daughter";
      }

      else
      {
        v4 = @"my son";
      }

      goto LABEL_24;
    }

    if ((relationship - 2) >= 3)
    {
      if (relationship != 1)
      {
        goto LABEL_5;
      }

      firstName = self->_firstName;
    }

    else
    {
      firstName = self->_nickname;
      if (!firstName)
      {
LABEL_5:
        firstName = self->_firstName;
        if (!firstName)
        {
          firstName = self->_lastName;
          if (!firstName)
          {
            v4 = 0;
            goto LABEL_24;
          }
        }
      }
    }

    v4 = firstName;
    goto LABEL_24;
  }

  if (relationship <= 10)
  {
    if (relationship == 8)
    {
      v4 = @"my parents";
    }

    else if (relationship == 9)
    {
      v4 = @"mom";
    }

    else
    {
      v4 = @"dad";
    }

    goto LABEL_24;
  }

  if (relationship <= 12)
  {
    if (relationship == 11)
    {
      v4 = @"my brother";
    }

    else
    {
      v4 = @"my sister";
    }

    goto LABEL_24;
  }

  if (relationship != 13)
  {
    if (relationship == 14)
    {
      v4 = @"myself";
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  v4 = @"my partner";
LABEL_24:
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_284489518;
  }

  v6 = v5;

  return v5;
}

- (id)_relationshipAsString
{
  v2 = self->_relationship - 1;
  if (v2 > 0x10)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788A7140[v2];
  }
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"[Person]"];
  if (self->_fullName)
  {
    [string appendFormat:@" fullname:[%@]", self->_fullName];
  }

  if (self->_nickname)
  {
    [string appendFormat:@" nickname:[%@]", self->_nickname];
  }

  _relationshipAsString = [(CLSPersonIdentity *)self _relationshipAsString];
  [string appendFormat:@" relationship:[%@]", _relationshipAsString];

  if (self->_birthdayDate)
  {
    [string appendFormat:@" birthday:[%@]", self->_birthdayDate];
  }

  if (self->_potentialBirthdayDate)
  {
    [string appendFormat:@" potential birthday:[%@]", self->_potentialBirthdayDate];
  }

  if (self->_anniversaryDate)
  {
    [string appendFormat:@" anniversary:[%@]", self->_anniversaryDate];
  }

  if (self->_companyName)
  {
    [string appendFormat:@" companyName:[%@]", self->_companyName];
  }

  if (self->_localIdentifier)
  {
    [string appendFormat:@" localIdentifier:[%@]", self->_localIdentifier];
  }

  if (self->_CNIdentifier)
  {
    [string appendFormat:@" CNIdentifier:[%@]", self->_CNIdentifier];
  }

  if (self->_GDIdentifier)
  {
    [string appendFormat:@" GDIdentifier:[%@]", self->_GDIdentifier];
  }

  return string;
}

- (void)enumerateAddressesOfType:(unint64_t)type asPlacemarkWithBlock:(id)block
{
  blockCopy = block;
  v7 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:type];
  [(CLSPersonIdentity *)self _enumerateAddresses:v7 as:@"Placemark" withBlock:blockCopy];
}

- (void)enumerateAddressesOfType:(unint64_t)type asCLLocationsWithBlock:(id)block
{
  blockCopy = block;
  v7 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:type];
  [(CLSPersonIdentity *)self _enumerateAddresses:v7 as:@"CLLocation" withBlock:blockCopy];
}

- (unint64_t)countOfAddressesOfType:(unint64_t)type
{
  v3 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:type];
  v4 = [v3 count];

  return v4;
}

- (void)prefetchPersonAddressesIfNeededWithLocationCache:(id)cache
{
  cacheCopy = cache;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CLSPersonIdentity_prefetchPersonAddressesIfNeededWithLocationCache___block_invoke;
  aBlock[3] = &unk_2788A7058;
  v5 = cacheCopy;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  v7 = self->_homeAddresses;
  objc_sync_enter(v7);
  v6[2](v6, self->_homeAddresses);
  objc_sync_exit(v7);

  v8 = self->_workAddresses;
  objc_sync_enter(v8);
  v6[2](v6, self->_workAddresses);
  objc_sync_exit(v8);
}

void __70__CLSPersonIdentity_prefetchPersonAddressesIfNeededWithLocationCache___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v5 = 0;
    *&v4 = 138412290;
    v17 = v4;
    v18 = a1;
    while (1)
    {
      v6 = [v3 objectAtIndexedSubscript:{v5, v17}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_16;
      }

      v7 = [MEMORY[0x277CBEB68] null];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        goto LABEL_16;
      }

      v9 = [CLSCachedGeocoderOperation operationWithLocation:v6];
      v10 = *(a1 + 32);
      v19 = 0;
      v11 = [v9 performSynchronouslyWithLocationCache:v10 error:&v19];
      v12 = v19;
      v13 = v12;
      if (v11)
      {
        break;
      }

      if (v12)
      {
        v14 = +[CLSLogging sharedLogging];
        v15 = [v14 loggingConnection];

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v21 = v13;
          _os_log_impl(&dword_22F907000, v15, OS_LOG_TYPE_DEFAULT, "Failed to prefetch person address error:%@", buf, 0xCu);
        }

        v16 = [MEMORY[0x277CBEB68] null];
        a1 = v18;
        goto LABEL_14;
      }

LABEL_15:

LABEL_16:
      if (++v5 >= [v3 count])
      {
        goto LABEL_17;
      }
    }

    if ([v11 count])
    {
      [v11 lastObject];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v16 = ;
LABEL_14:
    [v3 setObject:v16 atIndexedSubscript:v5];

    goto LABEL_15;
  }

LABEL_17:
}

- (void)_enumerateAddresses:(id)addresses as:(id)as withBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  asCopy = as;
  blockCopy = block;
  v10 = addressesCopy;
  objc_sync_enter(v10);
  v29 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v14 = *v26;
    *&v13 = 138477827;
    v24 = v13;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        null = [MEMORY[0x277CBEB68] null];
        v18 = [v16 isEqual:null];

        if (v18)
        {
          goto LABEL_18;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = +[CLSLogging sharedLogging];
          loggingConnection = [v20 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v31 = v16;
            _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "You should call prefetch before accessing the person addresses: %{private}@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        if (asCopy == @"CLLocation")
        {
          location = [v16 location];
        }

        else
        {
          if (asCopy != @"Placemark")
          {
            v19 = 0;
            goto LABEL_17;
          }

          location = v16;
        }

        v19 = location;
LABEL_17:
        blockCopy[2](blockCopy, v19, &v29);
        v23 = v29;

        if (v23)
        {
          goto LABEL_20;
        }

LABEL_18:
        ++v15;
      }

      while (v12 != v15);
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v12);
  }

LABEL_20:

  objc_sync_exit(v11);
}

- (void)addAddresses:(id)addresses ofType:(unint64_t)type
{
  addressesCopy = addresses;
  v6 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:type];
  objc_sync_enter(v6);
  [v6 addObjectsFromArray:addressesCopy];
  objc_sync_exit(v6);
}

- (id)_addressArrayFromAddressType:(unint64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (type == 1)
  {
    p_workAddresses = &selfCopy->_workAddresses;
    workAddresses = selfCopy->_workAddresses;
    if (!workAddresses)
    {
LABEL_6:
      array = [MEMORY[0x277CBEB18] array];
      v8 = *p_workAddresses;
      *p_workAddresses = array;

      workAddresses = *p_workAddresses;
    }

LABEL_7:
    v9 = workAddresses;
    goto LABEL_9;
  }

  if (!type)
  {
    p_workAddresses = &selfCopy->_homeAddresses;
    workAddresses = selfCopy->_homeAddresses;
    if (!workAddresses)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)mergeWithPerson:(id)person
{
  personCopy = person;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!personCopy)
  {
    goto LABEL_43;
  }

  if (!selfCopy->_localIdentifier)
  {
    localIdentifier = [personCopy localIdentifier];
    localIdentifier = selfCopy->_localIdentifier;
    selfCopy->_localIdentifier = localIdentifier;
  }

  if (!selfCopy->_CNIdentifier)
  {
    cNIdentifier = [personCopy CNIdentifier];
    CNIdentifier = selfCopy->_CNIdentifier;
    selfCopy->_CNIdentifier = cNIdentifier;
  }

  if (!selfCopy->_fullName)
  {
    fullName = [personCopy fullName];
    fullName = selfCopy->_fullName;
    selfCopy->_fullName = fullName;
  }

  if (!selfCopy->_firstName)
  {
    firstName = [personCopy firstName];
    firstName = selfCopy->_firstName;
    selfCopy->_firstName = firstName;
  }

  if (!selfCopy->_localizedShortName)
  {
    localizedShortName = [personCopy localizedShortName];
    localizedShortName = selfCopy->_localizedShortName;
    selfCopy->_localizedShortName = localizedShortName;
  }

  if (!selfCopy->_middleName)
  {
    middleName = [personCopy middleName];
    middleName = selfCopy->_middleName;
    selfCopy->_middleName = middleName;
  }

  if (!selfCopy->_lastName)
  {
    lastName = [personCopy lastName];
    lastName = selfCopy->_lastName;
    selfCopy->_lastName = lastName;
  }

  if (!selfCopy->_nickname)
  {
    nickname = [personCopy nickname];
    nickname = selfCopy->_nickname;
    selfCopy->_nickname = nickname;
  }

  if (!selfCopy->_birthdayDate)
  {
    birthdayDate = [personCopy birthdayDate];
    birthdayDate = selfCopy->_birthdayDate;
    selfCopy->_birthdayDate = birthdayDate;
  }

  if (!selfCopy->_potentialBirthdayDate)
  {
    potentialBirthdayDate = [personCopy potentialBirthdayDate];
    potentialBirthdayDate = selfCopy->_potentialBirthdayDate;
    selfCopy->_potentialBirthdayDate = potentialBirthdayDate;
  }

  if (!selfCopy->_anniversaryDate)
  {
    anniversaryDate = [personCopy anniversaryDate];
    anniversaryDate = selfCopy->_anniversaryDate;
    selfCopy->_anniversaryDate = anniversaryDate;
  }

  if (!selfCopy->_companyName)
  {
    companyName = [personCopy companyName];
    companyName = selfCopy->_companyName;
    selfCopy->_companyName = companyName;
  }

  [(CLSPersonIdentity *)selfCopy addAddresses:personCopy[1] ofType:0];
  [(CLSPersonIdentity *)selfCopy addAddresses:personCopy[2] ofType:1];
  if ([personCopy[20] count])
  {
    v29 = [personCopy[20] setByAddingObjectsFromSet:selfCopy->_emailAddresses];
    emailAddresses = selfCopy->_emailAddresses;
    selfCopy->_emailAddresses = v29;
  }

  if ([personCopy[21] count])
  {
    v31 = [personCopy[21] setByAddingObjectsFromSet:selfCopy->_phoneNumbers];
    phoneNumbers = selfCopy->_phoneNumbers;
    selfCopy->_phoneNumbers = v31;
  }

  v33 = [personCopy sex];
  sex = selfCopy->_sex;
  if (sex)
  {
    if (!v33 || sex == v33)
    {
      goto LABEL_35;
    }

    v33 = 0;
  }

  selfCopy->_sex = v33;
LABEL_35:
  socialProfiles = [personCopy socialProfiles];
  v36 = [socialProfiles count];

  if (v36)
  {
    socialProfiles2 = [personCopy socialProfiles];
    v38 = [socialProfiles2 mutableCopy];

    [(NSMutableDictionary *)v38 addEntriesFromDictionary:selfCopy->_socialProfiles];
    socialProfiles = selfCopy->_socialProfiles;
    selfCopy->_socialProfiles = v38;
  }

  relationship = selfCopy->_relationship;
  if (relationship < [personCopy relationship])
  {
    selfCopy->_relationship = [personCopy relationship];
  }

  sourceURLs = selfCopy->_sourceURLs;
  sourceURLs = [personCopy sourceURLs];
  v43 = [(NSArray *)sourceURLs arrayByAddingObjectsFromArray:sourceURLs];
  v44 = selfCopy->_sourceURLs;
  selfCopy->_sourceURLs = v43;

  selfCopy->_hasContactProfilePicture |= [personCopy hasContactProfilePicture];
  if (!selfCopy->_hasPhoneNumber)
  {
    selfCopy->_hasPhoneNumber = [personCopy hasPhoneNumber];
  }

  if (!selfCopy->_shareParticipantLocalIdentifier)
  {
    shareParticipantLocalIdentifier = [personCopy shareParticipantLocalIdentifier];
    shareParticipantLocalIdentifier = selfCopy->_shareParticipantLocalIdentifier;
    selfCopy->_shareParticipantLocalIdentifier = shareParticipantLocalIdentifier;
  }

LABEL_43:
  objc_sync_exit(selfCopy);
}

- (BOOL)isSamePersonAs:(id)as
{
  asCopy = as;
  v5 = asCopy;
  localIdentifier = self->_localIdentifier;
  if (localIdentifier)
  {
    localIdentifier = [asCopy localIdentifier];
    v8 = [(NSString *)localIdentifier compare:localIdentifier options:385];

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  CNIdentifier = self->_CNIdentifier;
  if (CNIdentifier)
  {
    cNIdentifier = [v5 CNIdentifier];
    v11 = [(NSString *)CNIdentifier compare:cNIdentifier options:385];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  fullName = self->_fullName;
  if (fullName)
  {
    fullName = [v5 fullName];
    v14 = [(NSString *)fullName compare:fullName options:385];

    if (!v14)
    {
      goto LABEL_13;
    }
  }

  firstName = self->_firstName;
  if (!firstName || !self->_lastName)
  {
    goto LABEL_12;
  }

  firstName = [v5 firstName];
  if ([(NSString *)firstName compare:firstName options:385]== NSOrderedSame)
  {
    lastName = self->_lastName;
    lastName = [v5 lastName];
    v19 = [(NSString *)lastName compare:lastName options:385];

    if (v19)
    {
      goto LABEL_12;
    }

LABEL_13:
    v22 = 1;
    goto LABEL_14;
  }

LABEL_12:
  emailAddresses = self->_emailAddresses;
  emailAddresses = [v5 emailAddresses];
  v22 = [(NSSet *)emailAddresses intersectsSet:emailAddresses];

LABEL_14:
  return v22;
}

- (void)setCompanyName:(id)name
{
  self->_companyName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setNickname:(id)nickname
{
  self->_nickname = [nickname decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setLastName:(id)name
{
  self->_lastName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setMiddleName:(id)name
{
  self->_middleName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setLocalizedShortName:(id)name
{
  self->_localizedShortName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setFirstName:(id)name
{
  self->_firstName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setFullName:(id)name
{
  self->_fullName = [name decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (CLSPersonIdentity)init
{
  v6.receiver = self;
  v6.super_class = CLSPersonIdentity;
  v2 = [(CLSPersonIdentity *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sourceURLs = v2->_sourceURLs;
    v2->_sourceURLs = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (CLSPersonIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v70.receiver = self;
  v70.super_class = CLSPersonIdentity;
  v5 = [(CLSPersonIdentity *)&v70 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CNIdentifier"];
    CNIdentifier = v5->_CNIdentifier;
    v5->_CNIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShareParticipantLocalIdentifier"];
    shareParticipantLocalIdentifier = v5->_shareParticipantLocalIdentifier;
    v5->_shareParticipantLocalIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortName"];
    localizedShortName = v5->_localizedShortName;
    v5->_localizedShortName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
    middleName = v5->_middleName;
    v5->_middleName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    nickname = v5->_nickname;
    v5->_nickname = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"birthdayDate"];
    birthdayDate = v5->_birthdayDate;
    v5->_birthdayDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"potentialBirthdayDate"];
    potentialBirthdayDate = v5->_potentialBirthdayDate;
    v5->_potentialBirthdayDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anniversaryDate"];
    anniversaryDate = v5->_anniversaryDate;
    v5->_anniversaryDate = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companyName"];
    companyName = v5->_companyName;
    v5->_companyName = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"socialProfiles"];
    socialProfiles = v5->_socialProfiles;
    v5->_socialProfiles = v36;

    v38 = MEMORY[0x277CBEB98];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"emailAddresses"];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v44 setWithObjects:{v45, v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"phoneNumbers"];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v48;

    v5->_relationship = [coderCopy decodeIntegerForKey:@"relationship"];
    v5->_sex = [coderCopy decodeIntegerForKey:@"sex"];
    v5->_ageCategory = [coderCopy decodeIntegerForKey:@"ageCategory"];
    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"sourceURLs"];
    sourceURLs = v5->_sourceURLs;
    v5->_sourceURLs = v53;

    v5->_hasContactProfilePicture = [coderCopy decodeBoolForKey:@"hasContactProfilePicture"];
    v5->_hasPhoneNumber = [coderCopy decodeBoolForKey:@"hasPhoneNumber"];
    v55 = MEMORY[0x277CBEB98];
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = [v55 setWithObjects:{v56, v57, v58, objc_opt_class(), 0}];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"homeAddresses"];
    homeAddresses = v5->_homeAddresses;
    v5->_homeAddresses = v60;

    v62 = MEMORY[0x277CBEB98];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = [v62 setWithObjects:{v63, v64, v65, objc_opt_class(), 0}];
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"workAddresses"];
    workAddresses = v5->_workAddresses;
    v5->_workAddresses = v67;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localIdentifier = self->_localIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:localIdentifier forKey:@"PHIdentifier"];
  [coderCopy encodeObject:self->_CNIdentifier forKey:@"CNIdentifier"];
  [coderCopy encodeObject:self->_shareParticipantLocalIdentifier forKey:@"ShareParticipantLocalIdentifier"];
  [coderCopy encodeObject:self->_fullName forKey:@"fullName"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_localizedShortName forKey:@"localizedShortName"];
  [coderCopy encodeObject:self->_middleName forKey:@"middleName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_nickname forKey:@"nickname"];
  [coderCopy encodeObject:self->_birthdayDate forKey:@"birthdayDate"];
  [coderCopy encodeObject:self->_potentialBirthdayDate forKey:@"potentialBirthdayDate"];
  [coderCopy encodeObject:self->_anniversaryDate forKey:@"anniversaryDate"];
  [coderCopy encodeObject:self->_companyName forKey:@"companyName"];
  [coderCopy encodeObject:self->_socialProfiles forKey:@"socialProfiles"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [coderCopy encodeInteger:self->_relationship forKey:@"relationship"];
  [coderCopy encodeInteger:self->_sex forKey:@"sex"];
  [coderCopy encodeInteger:self->_ageCategory forKey:@"ageCategory"];
  [coderCopy encodeObject:self->_sourceURLs forKey:@"sourceURLs"];
  [coderCopy encodeObject:self->_homeAddresses forKey:@"homeAddresses"];
  [coderCopy encodeObject:self->_workAddresses forKey:@"workAddresses"];
  [coderCopy encodeBool:self->_hasContactProfilePicture forKey:@"hasContactProfilePicture"];
  [coderCopy encodeBool:self->_hasPhoneNumber forKey:@"hasPhoneNumber"];
}

+ (id)descriptionForPersonRelationship:(unint64_t)relationship
{
  v3 = @"father";
  if (relationship != 10)
  {
    v3 = 0;
  }

  if (relationship == 9)
  {
    return @"mother";
  }

  else
  {
    return v3;
  }
}

+ (id)relationshipRegularExpressionForRelationship:(unint64_t)relationship locale:(id)locale
{
  languageCode = [locale languageCode];
  if (relationshipRegularExpressionForRelationship_locale__onceToken != -1)
  {
    dispatch_once(&relationshipRegularExpressionForRelationship_locale__onceToken, &__block_literal_global_922);
  }

  v7 = [relationshipRegularExpressionForRelationship_locale__cachedRegularExpressionByRelationshipByLocale objectForKey:languageCode];
  if (!v7)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _personRelationshipVocabularyByLocaleDictionary = [objc_opt_class() _personRelationshipVocabularyByLocaleDictionary];
    v10 = [_personRelationshipVocabularyByLocaleDictionary objectForKeyedSubscript:languageCode];
    if (v10)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __73__CLSPersonIdentity_relationshipRegularExpressionForRelationship_locale___block_invoke_2;
      v19 = &unk_2788A8788;
      v11 = dictionary;
      v20 = v11;
      v12 = languageCode;
      v21 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:&v16];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v11, v16, v17, v18, v19}];
      [relationshipRegularExpressionForRelationship_locale__cachedRegularExpressionByRelationshipByLocale setObject:v7 forKey:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = [self descriptionForPersonRelationship:relationship];
  if (v13)
  {
    v14 = [v7 objectForKeyedSubscript:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __73__CLSPersonIdentity_relationshipRegularExpressionForRelationship_locale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [a3 componentsJoinedByString:@"|"];
  v8 = [v5 stringWithFormat:@"^(%@)$", v7];

  v11 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:1 error:&v11];
  v10 = v11;
  if (v10)
  {
    NSLog(&cfstr_ErrorCreatingR.isa, *(a1 + 40), v6);
  }

  else
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
  }
}

uint64_t __73__CLSPersonIdentity_relationshipRegularExpressionForRelationship_locale___block_invoke()
{
  relationshipRegularExpressionForRelationship_locale__cachedRegularExpressionByRelationshipByLocale = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)_personRelationshipVocabularyByLocaleDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CLSPersonIdentity__personRelationshipVocabularyByLocaleDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_personRelationshipVocabularyByLocaleDictionary_onceToken != -1)
  {
    dispatch_once(&_personRelationshipVocabularyByLocaleDictionary_onceToken, block);
  }

  v2 = _personRelationshipVocabularyByLocaleDictionary_sPersonRelationshipVocabularyByLocaleDictionary;

  return v2;
}

void __68__CLSPersonIdentity__personRelationshipVocabularyByLocaleDictionary__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 URLForResource:@"personRelationshipVocabulary" withExtension:@"plist"];

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v2 = _personRelationshipVocabularyByLocaleDictionary_sPersonRelationshipVocabularyByLocaleDictionary;
  _personRelationshipVocabularyByLocaleDictionary_sPersonRelationshipVocabularyByLocaleDictionary = v1;
}

+ (BOOL)isFamilyRelationship:(unint64_t)relationship
{
  if (relationship == 4 || ([self isSiblingRelationship:?] & 1) != 0 || (objc_msgSend(self, "isChildRelationship:", relationship) & 1) != 0)
  {
    return 1;
  }

  return [self isParentRelationship:relationship];
}

+ (id)presentationStringForPeople:(id)people withScores:(id)scores
{
  peopleCopy = people;
  scoresCopy = scores;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__925;
  v33 = __Block_byref_object_dispose__926;
  v34 = 0;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v12 = _sortedPeopleByScores(peopleCopy, scoresCopy);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke;
  v23[3] = &unk_2788A7120;
  v13 = array2;
  v24 = v13;
  v27 = &v29;
  selfCopy = self;
  v14 = array;
  v25 = v14;
  v15 = array3;
  v26 = v15;
  [v12 enumerateObjectsUsingBlock:v23];
  if (v30[5])
  {
    [array4 addObject:@"my wife"];
  }

  if ([v14 count] > 4 || objc_msgSend(v14, "count") && objc_msgSend(peopleCopy, "count") >= 9)
  {
    [array4 addObject:@"my family"];
  }

  else
  {
    v16 = _familyPresentationStringsForPersons(v14);
    [array4 addObjectsFromArray:v16];
  }

  if ([v13 count] > 4 || objc_msgSend(v13, "count") && objc_msgSend(peopleCopy, "count") >= 9)
  {
    [array4 addObject:@"my friends"];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_2;
    v21[3] = &unk_2788A70A8;
    v22 = array4;
    [v13 enumerateObjectsUsingBlock:v21];
  }

  if ([v15 count] > 4 || objc_msgSend(v15, "count") && objc_msgSend(peopleCopy, "count") >= 9)
  {
    [array4 addObject:@"my coworkers"];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_3;
    v19[3] = &unk_2788A70A8;
    v20 = array4;
    [v15 enumerateObjectsUsingBlock:v19];
  }

  v17 = _flattenPresentationStringFromTokens(array4);

  _Block_object_dispose(&v29, 8);

  return v17;
}

void __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 relationship] == 2)
  {
    v4 = *(a1 + 32);
LABEL_3:
    [v4 addObject:v5];
    goto LABEL_6;
  }

  if ([v5 relationship] == 13)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  else
  {
    if ([*(a1 + 64) isFamilyRelationship:{objc_msgSend(v5, "relationship")}])
    {
      v4 = *(a1 + 40);
      goto LABEL_3;
    }

    if ([v5 relationship] == 1)
    {
      v4 = *(a1 + 48);
      goto LABEL_3;
    }
  }

LABEL_6:
}

void __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 presentationString];
  [v2 addObject:v3];
}

void __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 presentationString];
  [v2 addObject:v3];
}

+ (id)personWithGDIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setGDIdentifier:identifierCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating person with GDIdentifier: %@", &v6, 0xCu);
  }

  return v4;
}

+ (id)personWithPHPerson:(id)person
{
  personCopy = person;
  localIdentifier = [personCopy localIdentifier];
  v5 = [CLSPersonIdentity personWithLocalIdentifier:localIdentifier];

  name = [personCopy name];
  [v5 setFullName:name];

  personUri = [personCopy personUri];
  [v5 setCNIdentifier:personUri];

  [v5 setIsUserCreated:{objc_msgSend(personCopy, "isVerified")}];
  [v5 setIsFavorite:{objc_msgSend(personCopy, "type") == 1}];
  [v5 setIsHidden:{objc_msgSend(personCopy, "type") == -1}];
  localIdentifier2 = [personCopy localIdentifier];

  [v5 setSourceService:@"photoskit" andID:localIdentifier2];

  return v5;
}

+ (id)personWithLocalIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setLocalIdentifier:identifierCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating person with localIdentifier: %@", &v6, 0xCu);
  }

  return v4;
}

+ (id)personWithCNIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setCNIdentifier:identifierCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating person with CNIdentifier: %@", &v6, 0xCu);
  }

  return v4;
}

+ (id)mePerson
{
  v2 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v2 setRelationship:14];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating blank me person", v4, 2u);
  }

  return v2;
}

+ (id)person
{
  cls_generateUUID = [MEMORY[0x277CCACA8] cls_generateUUID];
  v4 = [self personWithLocalIdentifier:cls_generateUUID];

  return v4;
}

@end