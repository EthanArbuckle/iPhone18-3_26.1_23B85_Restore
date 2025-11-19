@interface IDSGameCenterData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (IDSGameCenterData)initWithAssociationID:(id)a3 sharingState:(id)a4 lastUpdatedDate:(id)a5;
- (IDSGameCenterData)initWithCoder:(id)a3;
- (id)compareAgainstData:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSGameCenterData

- (IDSGameCenterData)initWithAssociationID:(id)a3 sharingState:(id)a4 lastUpdatedDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSGameCenterData;
  v12 = [(IDSGameCenterData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactsAssociationID, a3);
    objc_storeStrong(&v13->_contactsSharingState, a4);
    objc_storeStrong(&v13->_contactsLastUpdatedDate, a5);
  }

  return v13;
}

- (id)compareAgainstData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([(IDSGameCenterData *)v4 contactsLastUpdatedDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(IDSGameCenterData *)self contactsLastUpdatedDate];

    v8 = v5;
    if (v7)
    {
      v9 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
      v10 = [(IDSGameCenterData *)v5 contactsLastUpdatedDate];
      v11 = [v9 compare:v10];

      if (v11 == -1)
      {
        v8 = v5;
      }

      else
      {
        v8 = self;
      }
    }
  }

  else
  {
    v8 = self;
  }

  v12 = v8;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSGameCenterData *)self contactsAssociationID];
  v5 = [(IDSGameCenterData *)self contactsSharingState];
  v6 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  v7 = [v3 stringWithFormat:@"<IDSGameCenterData: %p contactsAssociationID: %@ contactsSharingState: %@ contactsLastUpdatedDate: %@>", self, v4, v5, v6];;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IDSGameCenterData *)self isEqualTo:v4];

  return v5;
}

- (BOOL)isEqualTo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [(IDSGameCenterData *)self contactsAssociationID];
  if (!v6)
  {
    v3 = [v5 contactsAssociationID];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v7 = [(IDSGameCenterData *)self contactsAssociationID];
  if (!v7)
  {
LABEL_10:
    if (!v6)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v5 contactsAssociationID];
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(IDSGameCenterData *)self contactsAssociationID];
  v12 = [v5 contactsAssociationID];
  v13 = [v11 isEqualToString:v12];

  if (v6)
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
  v3 = [(IDSGameCenterData *)self contactsSharingState];
  if (v3 || ([v5 contactsSharingState], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = [(IDSGameCenterData *)self contactsSharingState];
    if (v15)
    {
      v16 = v15;
      v17 = [v5 contactsSharingState];
      if (v17)
      {
        v18 = v17;
        v19 = [(IDSGameCenterData *)self contactsSharingState];
        v20 = [v5 contactsSharingState];
        v21 = [v19 isEqualToNumber:v20];

        if (v3)
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

    if (v3)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

LABEL_11:
    v14 = 0;
    v3 = v6;
    goto LABEL_28;
  }

LABEL_19:
  v3 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  if (!v3)
  {
    v6 = [v5 contactsLastUpdatedDate];
    if (!v6)
    {
      v14 = 1;
LABEL_36:

      goto LABEL_28;
    }
  }

  v22 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  if (!v22)
  {
    goto LABEL_33;
  }

  v23 = v22;
  v24 = [v5 contactsLastUpdatedDate];
  if (!v24)
  {

LABEL_33:
    v14 = 0;
    if (!v3)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v25 = v24;
  v26 = [(IDSGameCenterData *)self contactsLastUpdatedDate];
  v27 = [v5 contactsLastUpdatedDate];
  v14 = [v26 isEqualToDate:v27];

  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_28:

LABEL_31:
  return v14;
}

- (IDSGameCenterData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-association-id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-sharing-state"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gs-contacts-last-updated"];

  v8 = [(IDSGameCenterData *)self initWithAssociationID:v5 sharingState:v6 lastUpdatedDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contactsAssociationID = self->_contactsAssociationID;
  v5 = a3;
  [v5 encodeObject:contactsAssociationID forKey:@"gs-contacts-association-id"];
  [v5 encodeObject:self->_contactsSharingState forKey:@"gs-contacts-sharing-state"];
  [v5 encodeObject:self->_contactsLastUpdatedDate forKey:@"gs-contacts-last-updated"];
}

@end