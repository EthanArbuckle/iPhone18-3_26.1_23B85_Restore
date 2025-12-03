@interface MSASSharingRelationship
+ (id)MSASPSharingRelationshipFromProtocolDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharingRelationship:(id)relationship;
- (MSASSharingRelationship)init;
- (MSASSharingRelationship)initWithCoder:(id)coder;
- (NSString)fullName;
- (id)_fullName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSASSharingRelationship

- (NSString)fullName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fullName = selfCopy->_fullName;
  if (fullName)
  {
    goto LABEL_2;
  }

  fullName = selfCopy->_lastName;
  if (selfCopy->_firstName)
  {
    if (fullName)
    {
      fullName = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", selfCopy->_firstName, fullName];
      goto LABEL_3;
    }

    fullName = selfCopy->_firstName;
LABEL_2:
    fullName = fullName;
LABEL_3:
    v5 = fullName;
    goto LABEL_4;
  }

  if (fullName)
  {
    goto LABEL_2;
  }

  v5 = 0;
LABEL_4:
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)redactedDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = MSASSharingRelationship;
  v3 = [(MSASSharingRelationship *)&v8 description];
  v4 = [v3 mutableCopy];

  if (selfCopy->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", selfCopy->_GUID];
  }

  if (selfCopy->_albumGUID)
  {
    [v4 appendFormat:@" Album GUID: %@", selfCopy->_albumGUID];
  }

  if (selfCopy->_personID)
  {
    [v4 appendFormat:@" PersonID: %@", selfCopy->_personID];
  }

  if (selfCopy->_subscriptionDate)
  {
    [v4 appendFormat:@" Subscription Date: %@", selfCopy->_subscriptionDate];
  }

  state = selfCopy->_state;
  if (state > 5)
  {
    v6 = @"undefined";
  }

  else
  {
    v6 = off_278E91BB0[state];
  }

  [v4 appendFormat:@" State: %@", v6];
  if (selfCopy->_isMine)
  {
    [v4 appendString:@" IsMine"];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = MSASSharingRelationship;
  v3 = [(MSASSharingRelationship *)&v10 description];
  v4 = [v3 mutableCopy];

  if (selfCopy->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", selfCopy->_GUID];
  }

  if (selfCopy->_albumGUID)
  {
    [v4 appendFormat:@" Album GUID: %@", selfCopy->_albumGUID];
  }

  if (selfCopy->_email)
  {
    [v4 appendFormat:@" email: %@", selfCopy->_email];
  }

  if (selfCopy->_emails)
  {
    [v4 appendFormat:@" emails: %@", selfCopy->_emails];
  }

  if (selfCopy->_phones)
  {
    [v4 appendFormat:@" phones: %@", selfCopy->_phones];
  }

  fullName = [(MSASSharingRelationship *)selfCopy fullName];
  v6 = fullName;
  if (fullName)
  {
    [v4 appendFormat:@" Full Name: %@", fullName];
  }

  if (selfCopy->_personID)
  {
    [v4 appendFormat:@" PersonID: %@", selfCopy->_personID];
  }

  if (selfCopy->_subscriptionDate)
  {
    [v4 appendFormat:@" Subscription Date: %@", selfCopy->_subscriptionDate];
  }

  state = selfCopy->_state;
  if (state > 5)
  {
    v8 = @"undefined";
  }

  else
  {
    v8 = off_278E91BB0[state];
  }

  [v4 appendFormat:@" State: %@", v8];
  if (selfCopy->_isMine)
  {
    [v4 appendString:@" IsMine"];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (MSASSharingRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = MSASSharingRelationship;
  v5 = [(MSASSharingRelationship *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"albumGUID"];
    albumGUID = v5->_albumGUID;
    v5->_albumGUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"emails"];
    emails = v5->_emails;
    v5->_emails = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"phones"];
    phones = v5->_phones;
    v5->_phones = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionDate"];
    subscriptionDate = v5->_subscriptionDate;
    v5->_subscriptionDate = v30;

    v5->_state = [coderCopy decodeIntForKey:@"state"];
    v5->_isMine = [coderCopy decodeBoolForKey:@"isMine"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  GUID = selfCopy->_GUID;
  if (GUID)
  {
    [coderCopy encodeObject:GUID forKey:@"GUID"];
  }

  albumGUID = selfCopy->_albumGUID;
  if (albumGUID)
  {
    [coderCopy encodeObject:albumGUID forKey:@"albumGUID"];
  }

  email = selfCopy->_email;
  if (email)
  {
    [coderCopy encodeObject:email forKey:@"email"];
  }

  emails = selfCopy->_emails;
  if (emails)
  {
    [coderCopy encodeObject:emails forKey:@"emails"];
  }

  phones = selfCopy->_phones;
  if (phones)
  {
    [coderCopy encodeObject:phones forKey:@"phones"];
  }

  firstName = selfCopy->_firstName;
  if (firstName)
  {
    [coderCopy encodeObject:firstName forKey:@"firstName"];
  }

  lastName = selfCopy->_lastName;
  if (lastName)
  {
    [coderCopy encodeObject:lastName forKey:@"lastName"];
  }

  fullName = selfCopy->_fullName;
  if (fullName)
  {
    [coderCopy encodeObject:fullName forKey:@"fullName"];
  }

  personID = selfCopy->_personID;
  if (personID)
  {
    [coderCopy encodeObject:personID forKey:@"personID"];
  }

  subscriptionDate = selfCopy->_subscriptionDate;
  if (subscriptionDate)
  {
    [coderCopy encodeObject:subscriptionDate forKey:@"subscriptionDate"];
  }

  [coderCopy encodeInt:selfCopy->_state forKey:@"state"];
  [coderCopy encodeBool:selfCopy->_isMine forKey:@"isMine"];
  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MSASSharingRelationship);
  gUID = [(MSASSharingRelationship *)self GUID];
  [(MSASSharingRelationship *)v4 setGUID:gUID];

  albumGUID = [(MSASSharingRelationship *)self albumGUID];
  [(MSASSharingRelationship *)v4 setAlbumGUID:albumGUID];

  email = [(MSASSharingRelationship *)self email];
  [(MSASSharingRelationship *)v4 setEmail:email];

  emails = [(MSASSharingRelationship *)self emails];
  [(MSASSharingRelationship *)v4 setEmails:emails];

  phones = [(MSASSharingRelationship *)self phones];
  [(MSASSharingRelationship *)v4 setPhones:phones];

  _fullName = [(MSASSharingRelationship *)self _fullName];
  [(MSASSharingRelationship *)v4 setFullName:_fullName];

  firstName = [(MSASSharingRelationship *)self firstName];
  [(MSASSharingRelationship *)v4 setFirstName:firstName];

  lastName = [(MSASSharingRelationship *)self lastName];
  [(MSASSharingRelationship *)v4 setLastName:lastName];

  personID = [(MSASSharingRelationship *)self personID];
  [(MSASSharingRelationship *)v4 setPersonID:personID];

  subscriptionDate = [(MSASSharingRelationship *)self subscriptionDate];
  [(MSASSharingRelationship *)v4 setSubscriptionDate:subscriptionDate];

  [(MSASSharingRelationship *)v4 setState:[(MSASSharingRelationship *)self state]];
  [(MSASSharingRelationship *)v4 setIsMine:[(MSASSharingRelationship *)self isMine]];
  return v4;
}

- (BOOL)isEqualToSharingRelationship:(id)relationship
{
  relationshipCopy = relationship;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  gUID = [(MSASSharingRelationship *)selfCopy GUID];
  gUID2 = [relationshipCopy GUID];
  if (MSObjectsAreEquivalent(gUID, gUID2))
  {
    albumGUID = [(MSASSharingRelationship *)selfCopy albumGUID];
    albumGUID2 = [relationshipCopy albumGUID];
    if (MSObjectsAreEquivalent(albumGUID, albumGUID2))
    {
      email = [(MSASSharingRelationship *)selfCopy email];
      email2 = [relationshipCopy email];
      if (MSObjectsAreEquivalent(email, email2))
      {
        emails = [(MSASSharingRelationship *)selfCopy emails];
        emails2 = [relationshipCopy emails];
        if (MSObjectsAreEquivalent(emails, emails2))
        {
          phones = [(MSASSharingRelationship *)selfCopy phones];
          phones2 = [relationshipCopy phones];
          if (MSObjectsAreEquivalent(phones, phones2))
          {
            firstName = [(MSASSharingRelationship *)selfCopy firstName];
            firstName2 = [relationshipCopy firstName];
            if (MSObjectsAreEquivalent(firstName, firstName2))
            {
              lastName = [(MSASSharingRelationship *)selfCopy lastName];
              lastName2 = [relationshipCopy lastName];
              if (MSObjectsAreEquivalent(lastName, lastName2))
              {
                _fullName = [(MSASSharingRelationship *)selfCopy _fullName];
                _fullName2 = [relationshipCopy _fullName];
                if (MSObjectsAreEquivalent(_fullName, _fullName2))
                {
                  personID = [(MSASSharingRelationship *)selfCopy personID];
                  personID2 = [relationshipCopy personID];
                  if (MSObjectsAreEquivalent(personID, personID2))
                  {
                    subscriptionDate = [(MSASSharingRelationship *)selfCopy subscriptionDate];
                    subscriptionDate2 = [relationshipCopy subscriptionDate];
                    if (MSObjectsAreEquivalent(subscriptionDate, subscriptionDate2) && (v13 = -[MSASSharingRelationship state](selfCopy, "state"), v13 == [relationshipCopy state]))
                    {
                      isMine = [(MSASSharingRelationship *)selfCopy isMine];
                      v15 = isMine ^ [relationshipCopy isMine] ^ 1;
                    }

                    else
                    {
                      LOBYTE(v15) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v15) = 0;
                  }
                }

                else
                {
                  LOBYTE(v15) = 0;
                }
              }

              else
              {
                LOBYTE(v15) = 0;
              }
            }

            else
            {
              LOBYTE(v15) = 0;
            }
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  objc_sync_exit(selfCopy);
  return v15;
}

- (id)_fullName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fullName;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gUID = [(MSASSharingRelationship *)selfCopy GUID];
    gUID2 = [equalCopy GUID];
    v8 = [gUID isEqual:gUID2];
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = MSASSharingRelationship;
    v8 = [(MSASSharingRelationship *)&v10 isEqual:equalCopy];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_GUID hash];
  objc_sync_exit(selfCopy);

  return v3;
}

- (MSASSharingRelationship)init
{
  v3.receiver = self;
  v3.super_class = MSASSharingRelationship;
  result = [(MSASSharingRelationship *)&v3 init];
  if (result)
  {
    result->_isMine = 0;
  }

  return result;
}

+ (id)MSASPSharingRelationshipFromProtocolDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MSASSharingRelationship);
  v5 = _setFieldsInSharingRelationship(v4, dictionaryCopy);

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end