@interface CLSPersonIdentity
+ (BOOL)isFamilyRelationship:(unint64_t)a3;
+ (id)_personRelationshipVocabularyByLocaleDictionary;
+ (id)descriptionForPersonRelationship:(unint64_t)a3;
+ (id)mePerson;
+ (id)person;
+ (id)personWithCNIdentifier:(id)a3;
+ (id)personWithGDIdentifier:(id)a3;
+ (id)personWithLocalIdentifier:(id)a3;
+ (id)personWithPHPerson:(id)a3;
+ (id)presentationStringForPeople:(id)a3 withScores:(id)a4;
+ (id)relationshipRegularExpressionForRelationship:(unint64_t)a3 locale:(id)a4;
- (BOOL)hasSameFamilyNameAsPerson:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPerson:(id)a3;
- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)a3 closeToAddressesOfType:(unint64_t)a4;
- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)a3 farAwayFromAddressesOfType:(unint64_t)a4;
- (BOOL)isSamePersonAs:(id)a3;
- (CLSPersonIdentity)init;
- (CLSPersonIdentity)initWithCoder:(id)a3;
- (NSString)inferredLastName;
- (id)_addressArrayFromAddressType:(unint64_t)a3;
- (id)_relationshipAsString;
- (id)description;
- (id)pluralPresentationString;
- (id)presentationString;
- (unint64_t)countOfAddressesOfType:(unint64_t)a3;
- (unint64_t)relationshipHintFromNameUsingLocales:(id)a3;
- (void)_enumerateAddresses:(id)a3 as:(id)a4 withBlock:(id)a5;
- (void)addAddresses:(id)a3 ofType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAddressesOfType:(unint64_t)a3 asCLLocationsWithBlock:(id)a4;
- (void)enumerateAddressesOfType:(unint64_t)a3 asPlacemarkWithBlock:(id)a4;
- (void)mergeWithPerson:(id)a3;
- (void)prefetchPersonAddressesIfNeededWithLocationCache:(id)a3;
- (void)setCompanyName:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setFullName:(id)a3;
- (void)setLastName:(id)a3;
- (void)setLocalizedShortName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setNickname:(id)a3;
- (void)setSourceService:(id)a3 andID:(id)a4;
@end

@implementation CLSPersonIdentity

- (unint64_t)relationshipHintFromNameUsingLocales:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(CLSPersonIdentity *)self _motherAndFatherRelationships];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    v29 = v6;
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
        v13 = [v12 languageCode];
        if (v13 && ([v5 containsObject:v13] & 1) == 0)
        {
          v27 = v11;
          v31 = v13;
          [v5 addObject:v13];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          obj = v6;
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

                v18 = [*(*(&v33 + 1) + 8 * i) unsignedIntegerValue];
                v19 = [objc_opt_class() relationshipRegularExpressionForRelationship:v18 locale:v12];
                if (v19)
                {
                  v20 = [(CLSPersonIdentity *)self fullName];
                  v21 = [(CLSPersonIdentity *)self fullName];
                  v22 = [v19 matchesInString:v20 options:0 range:{0, objc_msgSend(v21, "length")}];

                  v23 = [v22 count];
                  if (v23)
                  {

                    v6 = v29;
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

          v6 = v29;
          v5 = v30;
          v11 = v27;
          v7 = v28;
          v10 = v25;
          v9 = v26;
          v13 = v31;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      v18 = 0;
    }

    while (v9);
  }

  else
  {
    v18 = 0;
  }

LABEL_23:

  return v18;
}

- (NSString)inferredLastName
{
  inferredLastName = self->_inferredLastName;
  if (!inferredLastName)
  {
    v4 = [(CLSPersonIdentity *)self lastName];
    v5 = [(CLSPersonIdentity *)self fullName];
    if ([v4 length])
    {
      v6 = v4;
      v7 = self->_inferredLastName;
      self->_inferredLastName = v6;
    }

    else
    {
      if (![v5 length])
      {
LABEL_7:

        inferredLastName = self->_inferredLastName;
        goto LABEL_8;
      }

      v7 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v8 = [(NSString *)v7 personNameComponentsFromString:v5];
      v9 = [v8 familyName];
      v10 = self->_inferredLastName;
      self->_inferredLastName = v9;
    }

    goto LABEL_7;
  }

LABEL_8:

  return inferredLastName;
}

- (BOOL)hasSameFamilyNameAsPerson:(id)a3
{
  v4 = a3;
  v5 = [(CLSPersonIdentity *)self inferredLastName];
  v6 = [v4 inferredLastName];

  if ([v5 length])
  {
    v7 = [v5 lowercaseString];
    v8 = [v6 lowercaseString];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)a3 farAwayFromAddressesOfType:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CLSPersonIdentity_isLocationCoordinate_farAwayFromAddressesOfType___block_invoke;
  v6[3] = &unk_2788A7080;
  v7 = a3;
  v6[4] = &v8;
  [(CLSPersonIdentity *)self enumerateAddressesOfType:a4 asCLLocationsWithBlock:v6];
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

- (BOOL)isLocationCoordinate:(CLLocationCoordinate2D)a3 closeToAddressesOfType:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CLSPersonIdentity_isLocationCoordinate_closeToAddressesOfType___block_invoke;
  v6[3] = &unk_2788A7080;
  v7 = a3;
  v6[4] = &v8;
  [(CLSPersonIdentity *)self enumerateAddressesOfType:a4 asCLLocationsWithBlock:v6];
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

- (BOOL)isEqualToPerson:(id)a3
{
  v6 = a3;
  fullName = self->_fullName;
  v8 = [v6 fullName];
  if (fullName != v8)
  {
    v9 = self->_fullName;
    v3 = [v6 fullName];
    if (![(NSString *)v9 isEqualToString:v3])
    {
      v10 = 0;
LABEL_70:

      goto LABEL_71;
    }
  }

  firstName = self->_firstName;
  v12 = [v6 firstName];
  if (firstName == v12 || (v13 = self->_firstName, [v6 firstName], v4 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v13, "isEqualToString:", v4)))
  {
    lastName = self->_lastName;
    v15 = [v6 lastName];
    v91 = lastName;
    if (lastName != v15)
    {
      v16 = self->_lastName;
      v17 = [v6 lastName];
      v18 = v16;
      v19 = v17;
      if (![(NSString *)v18 isEqualToString:v17])
      {
        v10 = 0;
LABEL_66:

LABEL_67:
        if (firstName == v12)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      v87 = v19;
    }

    middleName = self->_middleName;
    v92 = [v6 middleName];
    v88 = middleName;
    v89 = firstName;
    v90 = v4;
    if (middleName != v92)
    {
      v21 = self->_middleName;
      v86 = [v6 middleName];
      if (![(NSString *)v21 isEqualToString:?])
      {
        v10 = 0;
        firstName = v89;
LABEL_64:

LABEL_65:
        v19 = v87;
        if (v91 == v15)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    nickname = self->_nickname;
    v23 = [v6 nickname];
    v85 = nickname;
    if (nickname != v23)
    {
      v24 = self->_nickname;
      v83 = [v6 nickname];
      if (![(NSString *)v24 isEqualToString:?])
      {
        v10 = 0;
        v25 = middleName;
LABEL_62:

LABEL_63:
        v57 = v25 == v92;
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
    v84 = [v6 birthdayDate];
    v82 = birthdayDate;
    if (birthdayDate != v84)
    {
      v27 = self->_birthdayDate;
      v80 = [v6 birthdayDate];
      if (![(NSDate *)v27 isEqualToDate:?])
      {
        v10 = 0;
        v25 = middleName;
        v28 = v84;
LABEL_60:

LABEL_61:
        if (v85 == v23)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    potentialBirthdayDate = self->_potentialBirthdayDate;
    v81 = [v6 potentialBirthdayDate];
    v79 = potentialBirthdayDate;
    if (potentialBirthdayDate != v81)
    {
      v30 = self->_potentialBirthdayDate;
      v77 = [v6 potentialBirthdayDate];
      if (![(NSDate *)v30 isEqualToDate:?])
      {
        v31 = v23;
        v32 = v81;
        v33 = v82;
        v10 = 0;
LABEL_58:

LABEL_59:
        v28 = v84;
        v57 = v33 == v84;
        v23 = v31;
        v25 = v88;
        if (v57)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    anniversaryDate = self->_anniversaryDate;
    v78 = [v6 anniversaryDate];
    v76 = anniversaryDate;
    if (anniversaryDate != v78)
    {
      v35 = self->_anniversaryDate;
      v74 = [v6 anniversaryDate];
      if (![(NSDate *)v35 isEqualToDate:?])
      {
        v31 = v23;
        v10 = 0;
        v36 = v78;
        goto LABEL_55;
      }
    }

    companyName = self->_companyName;
    v75 = [v6 companyName];
    v73 = companyName;
    if (companyName != v75)
    {
      v38 = self->_companyName;
      v72 = [v6 companyName];
      if (![(NSString *)v38 isEqualToString:?])
      {
        v10 = 0;
        v39 = v75;
        goto LABEL_52;
      }
    }

    socialProfiles = self->_socialProfiles;
    v41 = [v6 socialProfiles];
    v42 = v41;
    v70 = socialProfiles;
    if (socialProfiles != v41)
    {
      v43 = v41;
      v44 = self->_socialProfiles;
      v69 = [v6 socialProfiles];
      if (![(NSMutableDictionary *)v44 isEqualToDictionary:?])
      {
        v10 = 0;
        v48 = v43;
LABEL_50:

LABEL_51:
        v39 = v75;
        if (v73 == v75)
        {
          v31 = v23;
LABEL_54:

          v36 = v78;
          if (v76 == v78)
          {
            v33 = v82;
LABEL_57:

            v32 = v81;
            if (v79 == v81)
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
        v31 = v23;

        goto LABEL_54;
      }

      v42 = v43;
    }

    emailAddresses = self->_emailAddresses;
    [v6 emailAddresses];
    v71 = v68 = emailAddresses;
    if (emailAddresses != v71)
    {
      v46 = v42;
      v47 = self->_emailAddresses;
      v66 = [v6 emailAddresses];
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
    v50 = [v6 phoneNumbers];
    v65 = phoneNumbers;
    if (phoneNumbers != v50)
    {
      v51 = self->_phoneNumbers;
      v64 = [v6 phoneNumbers];
      if (![(NSSet *)v51 isEqualToSet:?])
      {
        v10 = 0;
        v48 = v67;
        goto LABEL_46;
      }
    }

    relationship = self->_relationship;
    if (relationship != [v6 relationship] || (sex = self->_sex, sex != objc_msgSend(v6, "sex")))
    {
      v10 = 0;
      v48 = v67;
      if (v65 == v50)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    sourceURLs = self->_sourceURLs;
    [v6 sourceURLs];
    v63 = v62 = sourceURLs;
    if (sourceURLs == v63 || (v55 = self->_sourceURLs, [v6 sourceURLs], v61 = objc_claimAutoreleasedReturnValue(), -[NSArray isEqualToArray:](v55, "isEqualToArray:")))
    {
      hasContactProfilePicture = self->_hasContactProfilePicture;
      if (hasContactProfilePicture == [v6 hasContactProfilePicture])
      {
        hasPhoneNumber = self->_hasPhoneNumber;
        v10 = hasPhoneNumber == [v6 hasPhoneNumber];
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
        if (v65 == v50)
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
  if (fullName != v8)
  {
    goto LABEL_70;
  }

LABEL_71:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CLSPersonIdentity *)self isSamePersonAs:v4];

  return v5;
}

- (void)setSourceService:(id)a3 andID:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(NSArray *)self->_sourceURLs count])
  {
    __assert_rtn("[CLSPersonIdentity setSourceService:andID:]", "CLSPersonIdentity.m", 691, "_sourceURLs.count == 0");
  }

  objc_storeStrong(&self->_sourceService, a3);
  v9 = objc_opt_new();
  [v9 setScheme:v7];
  [v9 setPath:v8];
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
      v16 = v7;
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
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendString:@"[Person]"];
  if (self->_fullName)
  {
    [v3 appendFormat:@" fullname:[%@]", self->_fullName];
  }

  if (self->_nickname)
  {
    [v3 appendFormat:@" nickname:[%@]", self->_nickname];
  }

  v4 = [(CLSPersonIdentity *)self _relationshipAsString];
  [v3 appendFormat:@" relationship:[%@]", v4];

  if (self->_birthdayDate)
  {
    [v3 appendFormat:@" birthday:[%@]", self->_birthdayDate];
  }

  if (self->_potentialBirthdayDate)
  {
    [v3 appendFormat:@" potential birthday:[%@]", self->_potentialBirthdayDate];
  }

  if (self->_anniversaryDate)
  {
    [v3 appendFormat:@" anniversary:[%@]", self->_anniversaryDate];
  }

  if (self->_companyName)
  {
    [v3 appendFormat:@" companyName:[%@]", self->_companyName];
  }

  if (self->_localIdentifier)
  {
    [v3 appendFormat:@" localIdentifier:[%@]", self->_localIdentifier];
  }

  if (self->_CNIdentifier)
  {
    [v3 appendFormat:@" CNIdentifier:[%@]", self->_CNIdentifier];
  }

  if (self->_GDIdentifier)
  {
    [v3 appendFormat:@" GDIdentifier:[%@]", self->_GDIdentifier];
  }

  return v3;
}

- (void)enumerateAddressesOfType:(unint64_t)a3 asPlacemarkWithBlock:(id)a4
{
  v6 = a4;
  v7 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:a3];
  [(CLSPersonIdentity *)self _enumerateAddresses:v7 as:@"Placemark" withBlock:v6];
}

- (void)enumerateAddressesOfType:(unint64_t)a3 asCLLocationsWithBlock:(id)a4
{
  v6 = a4;
  v7 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:a3];
  [(CLSPersonIdentity *)self _enumerateAddresses:v7 as:@"CLLocation" withBlock:v6];
}

- (unint64_t)countOfAddressesOfType:(unint64_t)a3
{
  v3 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:a3];
  v4 = [v3 count];

  return v4;
}

- (void)prefetchPersonAddressesIfNeededWithLocationCache:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CLSPersonIdentity_prefetchPersonAddressesIfNeededWithLocationCache___block_invoke;
  aBlock[3] = &unk_2788A7058;
  v5 = v4;
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

- (void)_enumerateAddresses:(id)a3 as:(id)a4 withBlock:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
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
        v17 = [MEMORY[0x277CBEB68] null];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          goto LABEL_18;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = +[CLSLogging sharedLogging];
          v21 = [v20 loggingConnection];

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v31 = v16;
            _os_log_error_impl(&dword_22F907000, v21, OS_LOG_TYPE_ERROR, "You should call prefetch before accessing the person addresses: %{private}@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        if (v8 == @"CLLocation")
        {
          v22 = [v16 location];
        }

        else
        {
          if (v8 != @"Placemark")
          {
            v19 = 0;
            goto LABEL_17;
          }

          v22 = v16;
        }

        v19 = v22;
LABEL_17:
        v9[2](v9, v19, &v29);
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

- (void)addAddresses:(id)a3 ofType:(unint64_t)a4
{
  v7 = a3;
  v6 = [(CLSPersonIdentity *)self _addressArrayFromAddressType:a4];
  objc_sync_enter(v6);
  [v6 addObjectsFromArray:v7];
  objc_sync_exit(v6);
}

- (id)_addressArrayFromAddressType:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (a3 == 1)
  {
    p_workAddresses = &v4->_workAddresses;
    workAddresses = v4->_workAddresses;
    if (!workAddresses)
    {
LABEL_6:
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = *p_workAddresses;
      *p_workAddresses = v7;

      workAddresses = *p_workAddresses;
    }

LABEL_7:
    v9 = workAddresses;
    goto LABEL_9;
  }

  if (!a3)
  {
    p_workAddresses = &v4->_homeAddresses;
    workAddresses = v4->_homeAddresses;
    if (!workAddresses)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:
  objc_sync_exit(v4);

  return v9;
}

- (void)mergeWithPerson:(id)a3
{
  v47 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v47)
  {
    goto LABEL_43;
  }

  if (!v4->_localIdentifier)
  {
    v5 = [v47 localIdentifier];
    localIdentifier = v4->_localIdentifier;
    v4->_localIdentifier = v5;
  }

  if (!v4->_CNIdentifier)
  {
    v7 = [v47 CNIdentifier];
    CNIdentifier = v4->_CNIdentifier;
    v4->_CNIdentifier = v7;
  }

  if (!v4->_fullName)
  {
    v9 = [v47 fullName];
    fullName = v4->_fullName;
    v4->_fullName = v9;
  }

  if (!v4->_firstName)
  {
    v11 = [v47 firstName];
    firstName = v4->_firstName;
    v4->_firstName = v11;
  }

  if (!v4->_localizedShortName)
  {
    v13 = [v47 localizedShortName];
    localizedShortName = v4->_localizedShortName;
    v4->_localizedShortName = v13;
  }

  if (!v4->_middleName)
  {
    v15 = [v47 middleName];
    middleName = v4->_middleName;
    v4->_middleName = v15;
  }

  if (!v4->_lastName)
  {
    v17 = [v47 lastName];
    lastName = v4->_lastName;
    v4->_lastName = v17;
  }

  if (!v4->_nickname)
  {
    v19 = [v47 nickname];
    nickname = v4->_nickname;
    v4->_nickname = v19;
  }

  if (!v4->_birthdayDate)
  {
    v21 = [v47 birthdayDate];
    birthdayDate = v4->_birthdayDate;
    v4->_birthdayDate = v21;
  }

  if (!v4->_potentialBirthdayDate)
  {
    v23 = [v47 potentialBirthdayDate];
    potentialBirthdayDate = v4->_potentialBirthdayDate;
    v4->_potentialBirthdayDate = v23;
  }

  if (!v4->_anniversaryDate)
  {
    v25 = [v47 anniversaryDate];
    anniversaryDate = v4->_anniversaryDate;
    v4->_anniversaryDate = v25;
  }

  if (!v4->_companyName)
  {
    v27 = [v47 companyName];
    companyName = v4->_companyName;
    v4->_companyName = v27;
  }

  [(CLSPersonIdentity *)v4 addAddresses:v47[1] ofType:0];
  [(CLSPersonIdentity *)v4 addAddresses:v47[2] ofType:1];
  if ([v47[20] count])
  {
    v29 = [v47[20] setByAddingObjectsFromSet:v4->_emailAddresses];
    emailAddresses = v4->_emailAddresses;
    v4->_emailAddresses = v29;
  }

  if ([v47[21] count])
  {
    v31 = [v47[21] setByAddingObjectsFromSet:v4->_phoneNumbers];
    phoneNumbers = v4->_phoneNumbers;
    v4->_phoneNumbers = v31;
  }

  v33 = [v47 sex];
  sex = v4->_sex;
  if (sex)
  {
    if (!v33 || sex == v33)
    {
      goto LABEL_35;
    }

    v33 = 0;
  }

  v4->_sex = v33;
LABEL_35:
  v35 = [v47 socialProfiles];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [v47 socialProfiles];
    v38 = [v37 mutableCopy];

    [(NSMutableDictionary *)v38 addEntriesFromDictionary:v4->_socialProfiles];
    socialProfiles = v4->_socialProfiles;
    v4->_socialProfiles = v38;
  }

  relationship = v4->_relationship;
  if (relationship < [v47 relationship])
  {
    v4->_relationship = [v47 relationship];
  }

  sourceURLs = v4->_sourceURLs;
  v42 = [v47 sourceURLs];
  v43 = [(NSArray *)sourceURLs arrayByAddingObjectsFromArray:v42];
  v44 = v4->_sourceURLs;
  v4->_sourceURLs = v43;

  v4->_hasContactProfilePicture |= [v47 hasContactProfilePicture];
  if (!v4->_hasPhoneNumber)
  {
    v4->_hasPhoneNumber = [v47 hasPhoneNumber];
  }

  if (!v4->_shareParticipantLocalIdentifier)
  {
    v45 = [v47 shareParticipantLocalIdentifier];
    shareParticipantLocalIdentifier = v4->_shareParticipantLocalIdentifier;
    v4->_shareParticipantLocalIdentifier = v45;
  }

LABEL_43:
  objc_sync_exit(v4);
}

- (BOOL)isSamePersonAs:(id)a3
{
  v4 = a3;
  v5 = v4;
  localIdentifier = self->_localIdentifier;
  if (localIdentifier)
  {
    v7 = [v4 localIdentifier];
    v8 = [(NSString *)localIdentifier compare:v7 options:385];

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  CNIdentifier = self->_CNIdentifier;
  if (CNIdentifier)
  {
    v10 = [v5 CNIdentifier];
    v11 = [(NSString *)CNIdentifier compare:v10 options:385];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  fullName = self->_fullName;
  if (fullName)
  {
    v13 = [v5 fullName];
    v14 = [(NSString *)fullName compare:v13 options:385];

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

  v16 = [v5 firstName];
  if ([(NSString *)firstName compare:v16 options:385]== NSOrderedSame)
  {
    lastName = self->_lastName;
    v18 = [v5 lastName];
    v19 = [(NSString *)lastName compare:v18 options:385];

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
  v21 = [v5 emailAddresses];
  v22 = [(NSSet *)emailAddresses intersectsSet:v21];

LABEL_14:
  return v22;
}

- (void)setCompanyName:(id)a3
{
  self->_companyName = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setNickname:(id)a3
{
  self->_nickname = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setLastName:(id)a3
{
  self->_lastName = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setMiddleName:(id)a3
{
  self->_middleName = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setLocalizedShortName:(id)a3
{
  self->_localizedShortName = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setFirstName:(id)a3
{
  self->_firstName = [a3 decomposedStringWithCanonicalMapping];

  MEMORY[0x2821F96F8]();
}

- (void)setFullName:(id)a3
{
  self->_fullName = [a3 decomposedStringWithCanonicalMapping];

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

- (CLSPersonIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = CLSPersonIdentity;
  v5 = [(CLSPersonIdentity *)&v70 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CNIdentifier"];
    CNIdentifier = v5->_CNIdentifier;
    v5->_CNIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShareParticipantLocalIdentifier"];
    shareParticipantLocalIdentifier = v5->_shareParticipantLocalIdentifier;
    v5->_shareParticipantLocalIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortName"];
    localizedShortName = v5->_localizedShortName;
    v5->_localizedShortName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
    middleName = v5->_middleName;
    v5->_middleName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    nickname = v5->_nickname;
    v5->_nickname = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthdayDate"];
    birthdayDate = v5->_birthdayDate;
    v5->_birthdayDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"potentialBirthdayDate"];
    potentialBirthdayDate = v5->_potentialBirthdayDate;
    v5->_potentialBirthdayDate = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anniversaryDate"];
    anniversaryDate = v5->_anniversaryDate;
    v5->_anniversaryDate = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companyName"];
    companyName = v5->_companyName;
    v5->_companyName = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"socialProfiles"];
    socialProfiles = v5->_socialProfiles;
    v5->_socialProfiles = v36;

    v38 = MEMORY[0x277CBEB98];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"emailAddresses"];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v44 setWithObjects:{v45, v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"phoneNumbers"];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v48;

    v5->_relationship = [v4 decodeIntegerForKey:@"relationship"];
    v5->_sex = [v4 decodeIntegerForKey:@"sex"];
    v5->_ageCategory = [v4 decodeIntegerForKey:@"ageCategory"];
    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"sourceURLs"];
    sourceURLs = v5->_sourceURLs;
    v5->_sourceURLs = v53;

    v5->_hasContactProfilePicture = [v4 decodeBoolForKey:@"hasContactProfilePicture"];
    v5->_hasPhoneNumber = [v4 decodeBoolForKey:@"hasPhoneNumber"];
    v55 = MEMORY[0x277CBEB98];
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = [v55 setWithObjects:{v56, v57, v58, objc_opt_class(), 0}];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"homeAddresses"];
    homeAddresses = v5->_homeAddresses;
    v5->_homeAddresses = v60;

    v62 = MEMORY[0x277CBEB98];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = [v62 setWithObjects:{v63, v64, v65, objc_opt_class(), 0}];
    v67 = [v4 decodeObjectOfClasses:v66 forKey:@"workAddresses"];
    workAddresses = v5->_workAddresses;
    v5->_workAddresses = v67;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localIdentifier = self->_localIdentifier;
  v5 = a3;
  [v5 encodeObject:localIdentifier forKey:@"PHIdentifier"];
  [v5 encodeObject:self->_CNIdentifier forKey:@"CNIdentifier"];
  [v5 encodeObject:self->_shareParticipantLocalIdentifier forKey:@"ShareParticipantLocalIdentifier"];
  [v5 encodeObject:self->_fullName forKey:@"fullName"];
  [v5 encodeObject:self->_firstName forKey:@"firstName"];
  [v5 encodeObject:self->_localizedShortName forKey:@"localizedShortName"];
  [v5 encodeObject:self->_middleName forKey:@"middleName"];
  [v5 encodeObject:self->_lastName forKey:@"lastName"];
  [v5 encodeObject:self->_nickname forKey:@"nickname"];
  [v5 encodeObject:self->_birthdayDate forKey:@"birthdayDate"];
  [v5 encodeObject:self->_potentialBirthdayDate forKey:@"potentialBirthdayDate"];
  [v5 encodeObject:self->_anniversaryDate forKey:@"anniversaryDate"];
  [v5 encodeObject:self->_companyName forKey:@"companyName"];
  [v5 encodeObject:self->_socialProfiles forKey:@"socialProfiles"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [v5 encodeInteger:self->_relationship forKey:@"relationship"];
  [v5 encodeInteger:self->_sex forKey:@"sex"];
  [v5 encodeInteger:self->_ageCategory forKey:@"ageCategory"];
  [v5 encodeObject:self->_sourceURLs forKey:@"sourceURLs"];
  [v5 encodeObject:self->_homeAddresses forKey:@"homeAddresses"];
  [v5 encodeObject:self->_workAddresses forKey:@"workAddresses"];
  [v5 encodeBool:self->_hasContactProfilePicture forKey:@"hasContactProfilePicture"];
  [v5 encodeBool:self->_hasPhoneNumber forKey:@"hasPhoneNumber"];
}

+ (id)descriptionForPersonRelationship:(unint64_t)a3
{
  v3 = @"father";
  if (a3 != 10)
  {
    v3 = 0;
  }

  if (a3 == 9)
  {
    return @"mother";
  }

  else
  {
    return v3;
  }
}

+ (id)relationshipRegularExpressionForRelationship:(unint64_t)a3 locale:(id)a4
{
  v6 = [a4 languageCode];
  if (relationshipRegularExpressionForRelationship_locale__onceToken != -1)
  {
    dispatch_once(&relationshipRegularExpressionForRelationship_locale__onceToken, &__block_literal_global_922);
  }

  v7 = [relationshipRegularExpressionForRelationship_locale__cachedRegularExpressionByRelationshipByLocale objectForKey:v6];
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [objc_opt_class() _personRelationshipVocabularyByLocaleDictionary];
    v10 = [v9 objectForKeyedSubscript:v6];
    if (v10)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __73__CLSPersonIdentity_relationshipRegularExpressionForRelationship_locale___block_invoke_2;
      v19 = &unk_2788A8788;
      v11 = v8;
      v20 = v11;
      v12 = v6;
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

  v13 = [a1 descriptionForPersonRelationship:a3];
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
  block[4] = a1;
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

+ (BOOL)isFamilyRelationship:(unint64_t)a3
{
  if (a3 == 4 || ([a1 isSiblingRelationship:?] & 1) != 0 || (objc_msgSend(a1, "isChildRelationship:", a3) & 1) != 0)
  {
    return 1;
  }

  return [a1 isParentRelationship:a3];
}

+ (id)presentationStringForPeople:(id)a3 withScores:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__925;
  v33 = __Block_byref_object_dispose__926;
  v34 = 0;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = _sortedPeopleByScores(v6, v7);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke;
  v23[3] = &unk_2788A7120;
  v13 = v9;
  v24 = v13;
  v27 = &v29;
  v28 = a1;
  v14 = v8;
  v25 = v14;
  v15 = v10;
  v26 = v15;
  [v12 enumerateObjectsUsingBlock:v23];
  if (v30[5])
  {
    [v11 addObject:@"my wife"];
  }

  if ([v14 count] > 4 || objc_msgSend(v14, "count") && objc_msgSend(v6, "count") >= 9)
  {
    [v11 addObject:@"my family"];
  }

  else
  {
    v16 = _familyPresentationStringsForPersons(v14);
    [v11 addObjectsFromArray:v16];
  }

  if ([v13 count] > 4 || objc_msgSend(v13, "count") && objc_msgSend(v6, "count") >= 9)
  {
    [v11 addObject:@"my friends"];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_2;
    v21[3] = &unk_2788A70A8;
    v22 = v11;
    [v13 enumerateObjectsUsingBlock:v21];
  }

  if ([v15 count] > 4 || objc_msgSend(v15, "count") && objc_msgSend(v6, "count") >= 9)
  {
    [v11 addObject:@"my coworkers"];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__CLSPersonIdentity_presentationStringForPeople_withScores___block_invoke_3;
    v19[3] = &unk_2788A70A8;
    v20 = v11;
    [v15 enumerateObjectsUsingBlock:v19];
  }

  v17 = _flattenPresentationStringFromTokens(v11);

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

+ (id)personWithGDIdentifier:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setGDIdentifier:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating person with GDIdentifier: %@", &v6, 0xCu);
  }

  return v4;
}

+ (id)personWithPHPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 localIdentifier];
  v5 = [CLSPersonIdentity personWithLocalIdentifier:v4];

  v6 = [v3 name];
  [v5 setFullName:v6];

  v7 = [v3 personUri];
  [v5 setCNIdentifier:v7];

  [v5 setIsUserCreated:{objc_msgSend(v3, "isVerified")}];
  [v5 setIsFavorite:{objc_msgSend(v3, "type") == 1}];
  [v5 setIsHidden:{objc_msgSend(v3, "type") == -1}];
  v8 = [v3 localIdentifier];

  [v5 setSourceService:@"photoskit" andID:v8];

  return v5;
}

+ (id)personWithLocalIdentifier:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setLocalIdentifier:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Creating person with localIdentifier: %@", &v6, 0xCu);
  }

  return v4;
}

+ (id)personWithCNIdentifier:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CLSPersonIdentity);
  [(CLSPersonIdentity *)v4 setCNIdentifier:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
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
  v3 = [MEMORY[0x277CCACA8] cls_generateUUID];
  v4 = [a1 personWithLocalIdentifier:v3];

  return v4;
}

@end