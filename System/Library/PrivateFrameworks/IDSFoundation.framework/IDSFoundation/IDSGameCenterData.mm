@interface IDSGameCenterData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (IDSGameCenterData)initWithAssociationID:(id)d sharingState:(id)state lastUpdatedDate:(id)date;
- (IDSGameCenterData)initWithCoder:(id)coder;
- (id)compareAgainstData:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSGameCenterData

- (IDSGameCenterData)initWithAssociationID:(id)d sharingState:(id)state lastUpdatedDate:(id)date
{
  dCopy = d;
  stateCopy = state;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = IDSGameCenterData;
  v12 = [(IDSGameCenterData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactsAssociationID, d);
    objc_storeStrong(&v13->_contactsSharingState, state);
    objc_storeStrong(&v13->_contactsLastUpdatedDate, date);
  }

  return v13;
}

- (id)compareAgainstData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && ([(IDSGameCenterData *)dataCopy contactsLastUpdatedDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    contactsLastUpdatedDate = [(IDSGameCenterData *)self contactsLastUpdatedDate];

    selfCopy2 = v5;
    if (contactsLastUpdatedDate)
    {
      contactsLastUpdatedDate2 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
      contactsLastUpdatedDate3 = [(IDSGameCenterData *)v5 contactsLastUpdatedDate];
      v11 = [contactsLastUpdatedDate2 compare:contactsLastUpdatedDate3];

      if (v11 == -1)
      {
        selfCopy2 = v5;
      }

      else
      {
        selfCopy2 = self;
      }
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v12 = selfCopy2;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contactsAssociationID = [(IDSGameCenterData *)self contactsAssociationID];
  contactsSharingState = [(IDSGameCenterData *)self contactsSharingState];
  contactsLastUpdatedDate = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  v7 = [v3 stringWithFormat:@"<IDSGameCenterData: %p contactsAssociationID: %@ contactsSharingState: %@ contactsLastUpdatedDate: %@>", self, contactsAssociationID, contactsSharingState, contactsLastUpdatedDate];;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IDSGameCenterData *)self isEqualTo:equalCopy];

  return v5;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (!toCopy)
  {
    goto LABEL_30;
  }

  contactsAssociationID = [(IDSGameCenterData *)self contactsAssociationID];
  if (!contactsAssociationID)
  {
    contactsAssociationID2 = [toCopy contactsAssociationID];
    if (!contactsAssociationID2)
    {
      goto LABEL_13;
    }
  }

  contactsAssociationID3 = [(IDSGameCenterData *)self contactsAssociationID];
  if (!contactsAssociationID3)
  {
LABEL_10:
    if (!contactsAssociationID)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v8 = contactsAssociationID3;
  contactsAssociationID4 = [toCopy contactsAssociationID];
  if (!contactsAssociationID4)
  {

    goto LABEL_10;
  }

  v10 = contactsAssociationID4;
  contactsAssociationID5 = [(IDSGameCenterData *)self contactsAssociationID];
  contactsAssociationID6 = [toCopy contactsAssociationID];
  v13 = [contactsAssociationID5 isEqualToString:contactsAssociationID6];

  if (contactsAssociationID)
  {

    if (!v13)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_13:
  contactsAssociationID2 = [(IDSGameCenterData *)self contactsSharingState];
  if (contactsAssociationID2 || ([toCopy contactsSharingState], (contactsAssociationID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    contactsSharingState = [(IDSGameCenterData *)self contactsSharingState];
    if (contactsSharingState)
    {
      v16 = contactsSharingState;
      contactsSharingState2 = [toCopy contactsSharingState];
      if (contactsSharingState2)
      {
        v18 = contactsSharingState2;
        contactsSharingState3 = [(IDSGameCenterData *)self contactsSharingState];
        contactsSharingState4 = [toCopy contactsSharingState];
        v21 = [contactsSharingState3 isEqualToNumber:contactsSharingState4];

        if (contactsAssociationID2)
        {

          if (v21)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if (v21)
          {
            goto LABEL_19;
          }
        }

LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }
    }

    if (contactsAssociationID2)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

LABEL_11:
    v14 = 0;
    contactsAssociationID2 = contactsAssociationID;
    goto LABEL_28;
  }

LABEL_19:
  contactsAssociationID2 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  if (!contactsAssociationID2)
  {
    contactsAssociationID = [toCopy contactsLastUpdatedDate];
    if (!contactsAssociationID)
    {
      v14 = 1;
LABEL_36:

      goto LABEL_28;
    }
  }

  contactsLastUpdatedDate = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  if (!contactsLastUpdatedDate)
  {
    goto LABEL_33;
  }

  v23 = contactsLastUpdatedDate;
  contactsLastUpdatedDate2 = [toCopy contactsLastUpdatedDate];
  if (!contactsLastUpdatedDate2)
  {

LABEL_33:
    v14 = 0;
    if (!contactsAssociationID2)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v25 = contactsLastUpdatedDate2;
  contactsLastUpdatedDate3 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  contactsLastUpdatedDate4 = [toCopy contactsLastUpdatedDate];
  v14 = [contactsLastUpdatedDate3 isEqualToDate:contactsLastUpdatedDate4];

  if (!contactsAssociationID2)
  {
    goto LABEL_36;
  }

LABEL_28:

LABEL_31:
  return v14;
}

- (IDSGameCenterData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-association-id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-sharing-state"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-last-updated"];

  v8 = [(IDSGameCenterData *)self initWithAssociationID:v5 sharingState:v6 lastUpdatedDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contactsAssociationID = self->_contactsAssociationID;
  coderCopy = coder;
  [coderCopy encodeObject:contactsAssociationID forKey:@"gs-contacts-association-id"];
  [coderCopy encodeObject:self->_contactsSharingState forKey:@"gs-contacts-sharing-state"];
  [coderCopy encodeObject:self->_contactsLastUpdatedDate forKey:@"gs-contacts-last-updated"];
}

@end