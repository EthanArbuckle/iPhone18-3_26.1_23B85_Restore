@interface MOPhotoTrait
- (MOPhotoTrait)initWithCoder:(id)coder;
- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name labelType:(id)type holidayIdentifier:(id)holidayIdentifier meaningIdentifier:(id)meaningIdentifier relevantAssetUUIDs:(id)ds associatedPersonLocalIdentifiers:(id)identifiers;
- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name labelType:(id)type holidayIdentifier:(id)holidayIdentifier relevantAssetUUIDs:(id)ds;
- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name relevantAssetUUIDs:(id)ds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPhotoTrait

- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name relevantAssetUUIDs:(id)ds
{
  nameCopy = name;
  identifierCopy = identifier;
  v10 = [ds copy];
  v11 = [(MOPhotoTrait *)self initWithIdentifier:identifierCopy name:nameCopy labelType:0 holidayIdentifier:0 meaningIdentifier:0 relevantAssetUUIDs:v10 associatedPersonLocalIdentifiers:0];

  return v11;
}

- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name labelType:(id)type holidayIdentifier:(id)holidayIdentifier relevantAssetUUIDs:(id)ds
{
  holidayIdentifierCopy = holidayIdentifier;
  typeCopy = type;
  nameCopy = name;
  identifierCopy = identifier;
  v16 = [ds copy];
  v17 = [(MOPhotoTrait *)self initWithIdentifier:identifierCopy name:nameCopy labelType:typeCopy holidayIdentifier:holidayIdentifierCopy meaningIdentifier:0 relevantAssetUUIDs:v16 associatedPersonLocalIdentifiers:0];

  return v17;
}

- (MOPhotoTrait)initWithIdentifier:(id)identifier name:(id)name labelType:(id)type holidayIdentifier:(id)holidayIdentifier meaningIdentifier:(id)meaningIdentifier relevantAssetUUIDs:(id)ds associatedPersonLocalIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  holidayIdentifierCopy = holidayIdentifier;
  meaningIdentifierCopy = meaningIdentifier;
  dsCopy = ds;
  identifiersCopy = identifiers;
  v30.receiver = self;
  v30.super_class = MOPhotoTrait;
  v19 = [(MOPhotoTrait *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_name, name);
    objc_storeStrong(&v20->_labelType, type);
    objc_storeStrong(&v20->_holidayIdentifier, holidayIdentifier);
    objc_storeStrong(&v20->_meaningIdentifier, meaningIdentifier);
    v21 = [dsCopy copy];
    relevantAssetUUIDs = v20->_relevantAssetUUIDs;
    v20->_relevantAssetUUIDs = v21;

    v23 = [identifiersCopy copy];
    associatedPersonLocalIdentifiers = v20->_associatedPersonLocalIdentifiers;
    v20->_associatedPersonLocalIdentifiers = v23;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(MOPhotoTrait *)self identifier];
  name = [(MOPhotoTrait *)self name];
  labelType = [(MOPhotoTrait *)self labelType];
  holidayIdentifier = [(MOPhotoTrait *)self holidayIdentifier];
  meaningIdentifier = [(MOPhotoTrait *)self meaningIdentifier];
  relevantAssetUUIDs = [(MOPhotoTrait *)self relevantAssetUUIDs];
  associatedPersonLocalIdentifiers = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v11 = [v3 stringWithFormat:@"<MOPhotoTrait localIdentifier, %@, name, %@, labelType, %@, holidayIdentifier, %@, meaningIdentifier, %@, relevantAssetUUIDs, %@, associatedPersonLocalIdentifiers, %@, >", identifier, name, labelType, holidayIdentifier, meaningIdentifier, relevantAssetUUIDs, associatedPersonLocalIdentifiers];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_labelType forKey:@"labelType"];
  [coderCopy encodeObject:self->_holidayIdentifier forKey:@"holidayIdentifier"];
  [coderCopy encodeObject:self->_meaningIdentifier forKey:@"meaningIdentifier"];
  [coderCopy encodeObject:self->_relevantAssetUUIDs forKey:@"relevantAssetUUIDs"];
  [coderCopy encodeObject:self->_associatedPersonLocalIdentifiers forKey:@"associatedPersonLocalIdentifiers"];
}

- (MOPhotoTrait)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"holidayIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meaningIdentifier"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"relevantAssetUUIDs"];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"associatedPersonLocalIdentifiers"];

  v16 = [(MOPhotoTrait *)self initWithIdentifier:v18 name:v4 labelType:v5 holidayIdentifier:v6 meaningIdentifier:v7 relevantAssetUUIDs:v11 associatedPersonLocalIdentifiers:v15];
  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = [MOPhotoTrait alloc];
  identifier = [(MOPhotoTrait *)self identifier];
  v4 = [identifier copy];
  name = [(MOPhotoTrait *)self name];
  v5 = [name copy];
  labelType = [(MOPhotoTrait *)self labelType];
  v6 = [labelType copy];
  holidayIdentifier = [(MOPhotoTrait *)self holidayIdentifier];
  v7 = [holidayIdentifier copy];
  meaningIdentifier = [(MOPhotoTrait *)self meaningIdentifier];
  v9 = [meaningIdentifier copy];
  relevantAssetUUIDs = [(MOPhotoTrait *)self relevantAssetUUIDs];
  v11 = [relevantAssetUUIDs copy];
  associatedPersonLocalIdentifiers = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v13 = [associatedPersonLocalIdentifiers copy];
  v16 = [(MOPhotoTrait *)v15 initWithIdentifier:v4 name:v5 labelType:v6 holidayIdentifier:v7 meaningIdentifier:v9 relevantAssetUUIDs:v11 associatedPersonLocalIdentifiers:v13];

  return v16;
}

@end