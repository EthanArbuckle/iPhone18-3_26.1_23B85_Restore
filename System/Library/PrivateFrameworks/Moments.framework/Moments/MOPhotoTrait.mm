@interface MOPhotoTrait
- (MOPhotoTrait)initWithCoder:(id)a3;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 meaningIdentifier:(id)a7 relevantAssetUUIDs:(id)a8 associatedPersonLocalIdentifiers:(id)a9;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 relevantAssetUUIDs:(id)a7;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 relevantAssetUUIDs:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPhotoTrait

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 relevantAssetUUIDs:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 copy];
  v11 = [(MOPhotoTrait *)self initWithIdentifier:v9 name:v8 labelType:0 holidayIdentifier:0 meaningIdentifier:0 relevantAssetUUIDs:v10 associatedPersonLocalIdentifiers:0];

  return v11;
}

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 relevantAssetUUIDs:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [a7 copy];
  v17 = [(MOPhotoTrait *)self initWithIdentifier:v15 name:v14 labelType:v13 holidayIdentifier:v12 meaningIdentifier:0 relevantAssetUUIDs:v16 associatedPersonLocalIdentifiers:0];

  return v17;
}

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 meaningIdentifier:(id)a7 relevantAssetUUIDs:(id)a8 associatedPersonLocalIdentifiers:(id)a9
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v30.receiver = self;
  v30.super_class = MOPhotoTrait;
  v19 = [(MOPhotoTrait *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_name, a4);
    objc_storeStrong(&v20->_labelType, a5);
    objc_storeStrong(&v20->_holidayIdentifier, a6);
    objc_storeStrong(&v20->_meaningIdentifier, a7);
    v21 = [v17 copy];
    relevantAssetUUIDs = v20->_relevantAssetUUIDs;
    v20->_relevantAssetUUIDs = v21;

    v23 = [v18 copy];
    associatedPersonLocalIdentifiers = v20->_associatedPersonLocalIdentifiers;
    v20->_associatedPersonLocalIdentifiers = v23;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOPhotoTrait *)self identifier];
  v5 = [(MOPhotoTrait *)self name];
  v6 = [(MOPhotoTrait *)self labelType];
  v7 = [(MOPhotoTrait *)self holidayIdentifier];
  v8 = [(MOPhotoTrait *)self meaningIdentifier];
  v9 = [(MOPhotoTrait *)self relevantAssetUUIDs];
  v10 = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v11 = [v3 stringWithFormat:@"<MOPhotoTrait localIdentifier, %@, name, %@, labelType, %@, holidayIdentifier, %@, meaningIdentifier, %@, relevantAssetUUIDs, %@, associatedPersonLocalIdentifiers, %@, >", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_labelType forKey:@"labelType"];
  [v5 encodeObject:self->_holidayIdentifier forKey:@"holidayIdentifier"];
  [v5 encodeObject:self->_meaningIdentifier forKey:@"meaningIdentifier"];
  [v5 encodeObject:self->_relevantAssetUUIDs forKey:@"relevantAssetUUIDs"];
  [v5 encodeObject:self->_associatedPersonLocalIdentifiers forKey:@"associatedPersonLocalIdentifiers"];
}

- (MOPhotoTrait)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"labelType"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"holidayIdentifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"meaningIdentifier"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"relevantAssetUUIDs"];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"associatedPersonLocalIdentifiers"];

  v16 = [(MOPhotoTrait *)self initWithIdentifier:v18 name:v4 labelType:v5 holidayIdentifier:v6 meaningIdentifier:v7 relevantAssetUUIDs:v11 associatedPersonLocalIdentifiers:v15];
  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = [MOPhotoTrait alloc];
  v20 = [(MOPhotoTrait *)self identifier];
  v4 = [v20 copy];
  v19 = [(MOPhotoTrait *)self name];
  v5 = [v19 copy];
  v18 = [(MOPhotoTrait *)self labelType];
  v6 = [v18 copy];
  v17 = [(MOPhotoTrait *)self holidayIdentifier];
  v7 = [v17 copy];
  v8 = [(MOPhotoTrait *)self meaningIdentifier];
  v9 = [v8 copy];
  v10 = [(MOPhotoTrait *)self relevantAssetUUIDs];
  v11 = [v10 copy];
  v12 = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v13 = [v12 copy];
  v16 = [(MOPhotoTrait *)v15 initWithIdentifier:v4 name:v5 labelType:v6 holidayIdentifier:v7 meaningIdentifier:v9 relevantAssetUUIDs:v11 associatedPersonLocalIdentifiers:v13];

  return v16;
}

@end