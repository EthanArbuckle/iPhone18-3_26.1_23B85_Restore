@interface DEAnnotatedGroup
- (DEAnnotatedGroup)initWithCoder:(id)a3;
- (DEAnnotatedGroup)initWithDisplayName:(id)a3 localizedDescription:(id)a4 iconType:(id)a5 additionalInfo:(id)a6 attachmentItems:(id)a7;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEAnnotatedGroup

- (DEAnnotatedGroup)initWithDisplayName:(id)a3 localizedDescription:(id)a4 iconType:(id)a5 additionalInfo:(id)a6 attachmentItems:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = DEAnnotatedGroup;
  v17 = [(DEAnnotatedGroup *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayName, a3);
    objc_storeStrong(&v18->_localizedDescription, a4);
    objc_storeStrong(&v18->_iconType, a5);
    objc_storeStrong(&v18->_additionalInfo, a6);
    objc_storeStrong(&v18->_items, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DEAnnotatedGroup *)self displayName];
  v7 = [(DEAnnotatedGroup *)self items];
  v8 = [v3 stringWithFormat:@"[%@] %@ with %lu items", v5, v6, objc_msgSend(v7, "count")];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DEAnnotatedGroup *)self displayName];
  v7 = [(DEAnnotatedGroup *)self localizedDescription];
  v8 = [(DEAnnotatedGroup *)self iconType];
  v9 = [(DEAnnotatedGroup *)self additionalInfo];
  v10 = [(DEAnnotatedGroup *)self items];
  v11 = [v3 stringWithFormat:@"%@\nDisplay Name: %@ \nDescription: %@ \nIcon Type: %@ \nAdditional Info: %@ \nItems:\n%@", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(DEAnnotatedGroup *)self displayName];
  [v11 encodeObject:v4 forKey:@"displayName"];

  v5 = [(DEAnnotatedGroup *)self localizedDescription];
  [v11 encodeObject:v5 forKey:@"localizedDescription"];

  v6 = [(DEAnnotatedGroup *)self iconType];

  if (v6)
  {
    v7 = [(DEAnnotatedGroup *)self iconType];
    [v11 encodeObject:v7 forKey:@"iconType"];
  }

  v8 = [(DEAnnotatedGroup *)self additionalInfo];

  if (v8)
  {
    v9 = [(DEAnnotatedGroup *)self additionalInfo];
    [v11 encodeObject:v9 forKey:@"additionalInfo"];
  }

  v10 = [(DEAnnotatedGroup *)self items];
  [v11 encodeObject:v10 forKey:@"items"];
}

- (DEAnnotatedGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEAnnotatedGroup *)self init];
  v6 = [v4 decodeObjectForKey:@"displayName"];
  displayName = v5->_displayName;
  v5->_displayName = v6;

  v8 = [v4 decodeObjectForKey:@"localizedDescription"];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v8;

  v10 = [v4 decodeObjectForKey:@"iconType"];
  iconType = v5->_iconType;
  v5->_iconType = v10;

  v12 = [v4 decodeObjectForKey:@"additionalInfo"];
  additionalInfo = v5->_additionalInfo;
  v5->_additionalInfo = v12;

  v14 = [v4 decodeObjectForKey:@"items"];

  items = v5->_items;
  v5->_items = v14;

  return v5;
}

@end