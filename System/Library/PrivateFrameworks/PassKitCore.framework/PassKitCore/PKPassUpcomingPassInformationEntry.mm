@interface PKPassUpcomingPassInformationEntry
+ (id)createFromDictionary:(id)a3 bundle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntry:(id)a3;
- (BOOL)isEquivalentToEntry:(id)a3;
- (PKPassUpcomingPassInformationEntry)initWithCoder:(id)a3;
- (id)_initWithMetadata:(id)a3 content:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationEntry

+ (id)createFromDictionary:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [PKPassUpcomingPassInformationEntryMetadata createFromDictionary:v5 bundle:v6];
    v10 = v9;
    if (v9)
    {
      v11 = +[PKPassUpcomingPassInformationEntryContent createFromDictionary:bundle:withEntryType:](PKPassUpcomingPassInformationEntryContent, "createFromDictionary:bundle:withEntryType:", v5, v7, [v9 type]);
      if (v11)
      {
        v12 = [[PKPassUpcomingPassInformationEntry alloc] _initWithMetadata:v10 content:v11];
        v13 = v12;
        if (v12 && [v12 populateFromDictionary:v5 bundle:v7])
        {
          v8 = v13;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_initWithMetadata:(id)a3 content:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = PKPassUpcomingPassInformationEntry;
    v11 = [(PKPassUpcomingPassInformationEntry *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_metadata, a3);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPassUpcomingPassInformationEntry *)self isEqualToEntry:v4];
  }

  return v5;
}

- (BOOL)isEqualToEntry:(id)a3
{
  v4 = a3;
  metadata = self->_metadata;
  v6 = v4[2];
  if (metadata)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (metadata != v6)
    {
      goto LABEL_14;
    }
  }

  else if (![(PKPassUpcomingPassInformationEntryMetadata *)metadata isEqual:?])
  {
    goto LABEL_14;
  }

  content = self->_content;
  v9 = v4[3];
  if (!content || !v9)
  {
    if (content == v9)
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (![(PKPassUpcomingPassInformationEntryContent *)content isEqual:?])
  {
    goto LABEL_14;
  }

LABEL_12:
  v10 = self->_active == *(v4 + 8);
LABEL_15:

  return v10;
}

- (BOOL)isEquivalentToEntry:(id)a3
{
  metadata = self->_metadata;
  v4 = *(a3 + 2);
  if (metadata)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return metadata == v4;
  }

  else
  {
    return [(PKPassUpcomingPassInformationEntryMetadata *)metadata isEqual:?];
  }
}

- (PKPassUpcomingPassInformationEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassUpcomingPassInformationEntry;
  v5 = [(PKPassUpcomingPassInformationEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v8;

    v5->_active = [v4 decodeBoolForKey:@"isActive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  metadata = self->_metadata;
  v5 = a3;
  [v5 encodeObject:metadata forKey:@"metadata"];
  [v5 encodeObject:self->_content forKey:@"content"];
  [v5 encodeBool:self->_active forKey:@"isActive"];
}

@end