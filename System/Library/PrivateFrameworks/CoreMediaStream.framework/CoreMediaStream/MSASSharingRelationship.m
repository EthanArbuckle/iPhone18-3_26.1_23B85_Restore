@interface MSASSharingRelationship
+ (id)MSASPSharingRelationshipFromProtocolDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharingRelationship:(id)a3;
- (MSASSharingRelationship)init;
- (MSASSharingRelationship)initWithCoder:(id)a3;
- (NSString)fullName;
- (id)_fullName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSASSharingRelationship

- (NSString)fullName
{
  v2 = self;
  objc_sync_enter(v2);
  fullName = v2->_fullName;
  if (fullName)
  {
    goto LABEL_2;
  }

  fullName = v2->_lastName;
  if (v2->_firstName)
  {
    if (fullName)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v2->_firstName, fullName];
      goto LABEL_3;
    }

    fullName = v2->_firstName;
LABEL_2:
    v4 = fullName;
LABEL_3:
    v5 = v4;
    goto LABEL_4;
  }

  if (fullName)
  {
    goto LABEL_2;
  }

  v5 = 0;
LABEL_4:
  objc_sync_exit(v2);

  return v5;
}

- (id)redactedDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v8.receiver = v2;
  v8.super_class = MSASSharingRelationship;
  v3 = [(MSASSharingRelationship *)&v8 description];
  v4 = [v3 mutableCopy];

  if (v2->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", v2->_GUID];
  }

  if (v2->_albumGUID)
  {
    [v4 appendFormat:@" Album GUID: %@", v2->_albumGUID];
  }

  if (v2->_personID)
  {
    [v4 appendFormat:@" PersonID: %@", v2->_personID];
  }

  if (v2->_subscriptionDate)
  {
    [v4 appendFormat:@" Subscription Date: %@", v2->_subscriptionDate];
  }

  state = v2->_state;
  if (state > 5)
  {
    v6 = @"undefined";
  }

  else
  {
    v6 = off_278E91BB0[state];
  }

  [v4 appendFormat:@" State: %@", v6];
  if (v2->_isMine)
  {
    [v4 appendString:@" IsMine"];
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v10.receiver = v2;
  v10.super_class = MSASSharingRelationship;
  v3 = [(MSASSharingRelationship *)&v10 description];
  v4 = [v3 mutableCopy];

  if (v2->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", v2->_GUID];
  }

  if (v2->_albumGUID)
  {
    [v4 appendFormat:@" Album GUID: %@", v2->_albumGUID];
  }

  if (v2->_email)
  {
    [v4 appendFormat:@" email: %@", v2->_email];
  }

  if (v2->_emails)
  {
    [v4 appendFormat:@" emails: %@", v2->_emails];
  }

  if (v2->_phones)
  {
    [v4 appendFormat:@" phones: %@", v2->_phones];
  }

  v5 = [(MSASSharingRelationship *)v2 fullName];
  v6 = v5;
  if (v5)
  {
    [v4 appendFormat:@" Full Name: %@", v5];
  }

  if (v2->_personID)
  {
    [v4 appendFormat:@" PersonID: %@", v2->_personID];
  }

  if (v2->_subscriptionDate)
  {
    [v4 appendFormat:@" Subscription Date: %@", v2->_subscriptionDate];
  }

  state = v2->_state;
  if (state > 5)
  {
    v8 = @"undefined";
  }

  else
  {
    v8 = off_278E91BB0[state];
  }

  [v4 appendFormat:@" State: %@", v8];
  if (v2->_isMine)
  {
    [v4 appendString:@" IsMine"];
  }

  objc_sync_exit(v2);

  return v4;
}

- (MSASSharingRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MSASSharingRelationship;
  v5 = [(MSASSharingRelationship *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"albumGUID"];
    albumGUID = v5->_albumGUID;
    v5->_albumGUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"emails"];
    emails = v5->_emails;
    v5->_emails = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"phones"];
    phones = v5->_phones;
    v5->_phones = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionDate"];
    subscriptionDate = v5->_subscriptionDate;
    v5->_subscriptionDate = v30;

    v5->_state = [v4 decodeIntForKey:@"state"];
    v5->_isMine = [v4 decodeBoolForKey:@"isMine"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  GUID = v4->_GUID;
  if (GUID)
  {
    [v15 encodeObject:GUID forKey:@"GUID"];
  }

  albumGUID = v4->_albumGUID;
  if (albumGUID)
  {
    [v15 encodeObject:albumGUID forKey:@"albumGUID"];
  }

  email = v4->_email;
  if (email)
  {
    [v15 encodeObject:email forKey:@"email"];
  }

  emails = v4->_emails;
  if (emails)
  {
    [v15 encodeObject:emails forKey:@"emails"];
  }

  phones = v4->_phones;
  if (phones)
  {
    [v15 encodeObject:phones forKey:@"phones"];
  }

  firstName = v4->_firstName;
  if (firstName)
  {
    [v15 encodeObject:firstName forKey:@"firstName"];
  }

  lastName = v4->_lastName;
  if (lastName)
  {
    [v15 encodeObject:lastName forKey:@"lastName"];
  }

  fullName = v4->_fullName;
  if (fullName)
  {
    [v15 encodeObject:fullName forKey:@"fullName"];
  }

  personID = v4->_personID;
  if (personID)
  {
    [v15 encodeObject:personID forKey:@"personID"];
  }

  subscriptionDate = v4->_subscriptionDate;
  if (subscriptionDate)
  {
    [v15 encodeObject:subscriptionDate forKey:@"subscriptionDate"];
  }

  [v15 encodeInt:v4->_state forKey:@"state"];
  [v15 encodeBool:v4->_isMine forKey:@"isMine"];
  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MSASSharingRelationship);
  v5 = [(MSASSharingRelationship *)self GUID];
  [(MSASSharingRelationship *)v4 setGUID:v5];

  v6 = [(MSASSharingRelationship *)self albumGUID];
  [(MSASSharingRelationship *)v4 setAlbumGUID:v6];

  v7 = [(MSASSharingRelationship *)self email];
  [(MSASSharingRelationship *)v4 setEmail:v7];

  v8 = [(MSASSharingRelationship *)self emails];
  [(MSASSharingRelationship *)v4 setEmails:v8];

  v9 = [(MSASSharingRelationship *)self phones];
  [(MSASSharingRelationship *)v4 setPhones:v9];

  v10 = [(MSASSharingRelationship *)self _fullName];
  [(MSASSharingRelationship *)v4 setFullName:v10];

  v11 = [(MSASSharingRelationship *)self firstName];
  [(MSASSharingRelationship *)v4 setFirstName:v11];

  v12 = [(MSASSharingRelationship *)self lastName];
  [(MSASSharingRelationship *)v4 setLastName:v12];

  v13 = [(MSASSharingRelationship *)self personID];
  [(MSASSharingRelationship *)v4 setPersonID:v13];

  v14 = [(MSASSharingRelationship *)self subscriptionDate];
  [(MSASSharingRelationship *)v4 setSubscriptionDate:v14];

  [(MSASSharingRelationship *)v4 setState:[(MSASSharingRelationship *)self state]];
  [(MSASSharingRelationship *)v4 setIsMine:[(MSASSharingRelationship *)self isMine]];
  return v4;
}

- (BOOL)isEqualToSharingRelationship:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSASSharingRelationship *)v5 GUID];
  v7 = [v4 GUID];
  if (MSObjectsAreEquivalent(v6, v7))
  {
    v8 = [(MSASSharingRelationship *)v5 albumGUID];
    v9 = [v4 albumGUID];
    if (MSObjectsAreEquivalent(v8, v9))
    {
      v10 = [(MSASSharingRelationship *)v5 email];
      v11 = [v4 email];
      if (MSObjectsAreEquivalent(v10, v11))
      {
        v29 = [(MSASSharingRelationship *)v5 emails];
        v12 = [v4 emails];
        if (MSObjectsAreEquivalent(v29, v12))
        {
          v28 = [(MSASSharingRelationship *)v5 phones];
          v27 = [v4 phones];
          if (MSObjectsAreEquivalent(v28, v27))
          {
            v26 = [(MSASSharingRelationship *)v5 firstName];
            v25 = [v4 firstName];
            if (MSObjectsAreEquivalent(v26, v25))
            {
              v24 = [(MSASSharingRelationship *)v5 lastName];
              v23 = [v4 lastName];
              if (MSObjectsAreEquivalent(v24, v23))
              {
                v22 = [(MSASSharingRelationship *)v5 _fullName];
                v21 = [v4 _fullName];
                if (MSObjectsAreEquivalent(v22, v21))
                {
                  v20 = [(MSASSharingRelationship *)v5 personID];
                  v19 = [v4 personID];
                  if (MSObjectsAreEquivalent(v20, v19))
                  {
                    v18 = [(MSASSharingRelationship *)v5 subscriptionDate];
                    v17 = [v4 subscriptionDate];
                    if (MSObjectsAreEquivalent(v18, v17) && (v13 = -[MSASSharingRelationship state](v5, "state"), v13 == [v4 state]))
                    {
                      v14 = [(MSASSharingRelationship *)v5 isMine];
                      v15 = v14 ^ [v4 isMine] ^ 1;
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

  objc_sync_exit(v5);
  return v15;
}

- (id)_fullName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fullName;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MSASSharingRelationship *)v5 GUID];
    v7 = [v4 GUID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v10.receiver = v5;
    v10.super_class = MSASSharingRelationship;
    v8 = [(MSASSharingRelationship *)&v10 isEqual:v4];
  }

  objc_sync_exit(v5);

  return v8;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_GUID hash];
  objc_sync_exit(v2);

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

+ (id)MSASPSharingRelationshipFromProtocolDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSASSharingRelationship);
  v5 = _setFieldsInSharingRelationship(v4, v3);

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