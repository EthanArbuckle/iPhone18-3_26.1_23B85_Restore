@interface DEAnnotatedGroup
- (DEAnnotatedGroup)initWithCoder:(id)coder;
- (DEAnnotatedGroup)initWithDisplayName:(id)name localizedDescription:(id)description iconType:(id)type additionalInfo:(id)info attachmentItems:(id)items;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEAnnotatedGroup

- (DEAnnotatedGroup)initWithDisplayName:(id)name localizedDescription:(id)description iconType:(id)type additionalInfo:(id)info attachmentItems:(id)items
{
  nameCopy = name;
  descriptionCopy = description;
  typeCopy = type;
  infoCopy = info;
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = DEAnnotatedGroup;
  v17 = [(DEAnnotatedGroup *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayName, name);
    objc_storeStrong(&v18->_localizedDescription, description);
    objc_storeStrong(&v18->_iconType, type);
    objc_storeStrong(&v18->_additionalInfo, info);
    objc_storeStrong(&v18->_items, items);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(DEAnnotatedGroup *)self displayName];
  items = [(DEAnnotatedGroup *)self items];
  v8 = [v3 stringWithFormat:@"[%@] %@ with %lu items", v5, displayName, objc_msgSend(items, "count")];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(DEAnnotatedGroup *)self displayName];
  localizedDescription = [(DEAnnotatedGroup *)self localizedDescription];
  iconType = [(DEAnnotatedGroup *)self iconType];
  additionalInfo = [(DEAnnotatedGroup *)self additionalInfo];
  items = [(DEAnnotatedGroup *)self items];
  v11 = [v3 stringWithFormat:@"%@\nDisplay Name: %@ \nDescription: %@ \nIcon Type: %@ \nAdditional Info: %@ \nItems:\n%@", v5, displayName, localizedDescription, iconType, additionalInfo, items];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DEAnnotatedGroup *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  localizedDescription = [(DEAnnotatedGroup *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  iconType = [(DEAnnotatedGroup *)self iconType];

  if (iconType)
  {
    iconType2 = [(DEAnnotatedGroup *)self iconType];
    [coderCopy encodeObject:iconType2 forKey:@"iconType"];
  }

  additionalInfo = [(DEAnnotatedGroup *)self additionalInfo];

  if (additionalInfo)
  {
    additionalInfo2 = [(DEAnnotatedGroup *)self additionalInfo];
    [coderCopy encodeObject:additionalInfo2 forKey:@"additionalInfo"];
  }

  items = [(DEAnnotatedGroup *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (DEAnnotatedGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DEAnnotatedGroup *)self init];
  v6 = [coderCopy decodeObjectForKey:@"displayName"];
  displayName = v5->_displayName;
  v5->_displayName = v6;

  v8 = [coderCopy decodeObjectForKey:@"localizedDescription"];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v8;

  v10 = [coderCopy decodeObjectForKey:@"iconType"];
  iconType = v5->_iconType;
  v5->_iconType = v10;

  v12 = [coderCopy decodeObjectForKey:@"additionalInfo"];
  additionalInfo = v5->_additionalInfo;
  v5->_additionalInfo = v12;

  v14 = [coderCopy decodeObjectForKey:@"items"];

  items = v5->_items;
  v5->_items = v14;

  return v5;
}

@end