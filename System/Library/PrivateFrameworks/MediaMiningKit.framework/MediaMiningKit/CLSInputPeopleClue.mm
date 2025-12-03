@interface CLSInputPeopleClue
+ (id)clueWithConsolidatedPersonLocalIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager;
+ (id)clueWithPeople:(id)people serviceManager:(id)manager;
+ (id)clueWithPersonContactIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager;
+ (id)clueWithPersonLocalIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager;
+ (id)cluesWithConsolidatedPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager;
+ (id)cluesWithPeoples:(id)peoples serviceManager:(id)manager;
+ (id)cluesWithPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager;
- (CLSPersonIdentity)person;
- (PHPhotoLibrary)photoLibrary;
- (id)description;
- (id)name;
- (void)_prepareWithProgressBlock:(id)block;
@end

@implementation CLSInputPeopleClue

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)_prepareWithProgressBlock:(id)block
{
  if (!self->_person)
  {
    value = [(CLSClue *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      serviceManager = self->_serviceManager;
      value2 = [(CLSClue *)self value];
      photoLibrary = [(CLSInputPeopleClue *)self photoLibrary];
      mePerson2 = [(CLSServiceManager *)serviceManager personResultForName:value2 inPhotoLibrary:photoLibrary];

      person = [mePerson2 person];
      if ([person isMe])
      {
        localIdentifier = [person localIdentifier];
        v12 = [localIdentifier length];

        if (v12)
        {
          mePerson = [(CLSServiceManager *)self->_serviceManager mePerson];
          localIdentifier2 = [mePerson localIdentifier];
          v15 = [localIdentifier2 length];

          if (!v15)
          {
            localIdentifier3 = [person localIdentifier];
            [mePerson setLocalIdentifier:localIdentifier3];
          }
        }
      }

      if (mePerson2)
      {
        objc_storeStrong(&self->_person, person);
        [mePerson2 confidence];
        [(CLSClue *)self setConfidence:v17];
      }

      else
      {
        person = self->_person;
        self->_person = 0;
      }

      goto LABEL_15;
    }

    value3 = [(CLSClue *)self value];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      value4 = [(CLSClue *)self value];
      v21 = self->_person;
      self->_person = value4;

      if ([(CLSPersonIdentity *)self->_person isMe])
      {
        mePerson2 = [(CLSServiceManager *)self->_serviceManager mePerson];
        [(CLSPersonIdentity *)self->_person mergeWithPerson:mePerson2];
LABEL_15:
      }
    }
  }

  self->super._needsPreparation = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = CLSInputPeopleClue;
  v4 = [(CLSClue *)&v8 description];
  v5 = [v3 stringWithString:v4];

  name = [(CLSInputPeopleClue *)self name];
  [v5 appendFormat:@"\n\tname:[%@]", name];

  return v5;
}

- (CLSPersonIdentity)person
{
  [(CLSInputClue *)self prepareIfNeeded];
  person = self->_person;

  return person;
}

- (id)name
{
  [(CLSInputClue *)self prepareIfNeeded];
  person = self->_person;
  if (person)
  {
    [(CLSPersonIdentity *)person fullName];
  }

  else
  {
    [(CLSClue *)self value];
  }
  v4 = ;

  return v4;
}

+ (id)cluesWithConsolidatedPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  libraryCopy = library;
  managerCopy = manager;
  v10 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_opt_class() clueWithConsolidatedPersonLocalIdentifier:*(*(&v18 + 1) + 8 * i) inPhotoLibrary:libraryCopy serviceManager:{managerCopy, v18}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)cluesWithPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  libraryCopy = library;
  managerCopy = manager;
  v10 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_opt_class() clueWithPersonLocalIdentifier:*(*(&v18 + 1) + 8 * i) inPhotoLibrary:libraryCopy serviceManager:{managerCopy, v18}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)clueWithConsolidatedPersonLocalIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager
{
  v5 = [self clueWithPersonLocalIdentifier:identifier inPhotoLibrary:library serviceManager:manager];
  [v5 setIncludeMergeCandidates:1];

  return v5;
}

+ (id)clueWithPersonContactIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager
{
  managerCopy = manager;
  libraryCopy = library;
  v9 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:identifier forKey:@"Global People"];
  [v9 setPhotoLibrary:libraryCopy];

  v10 = v9[14];
  v9[14] = managerCopy;

  return v9;
}

+ (id)clueWithPersonLocalIdentifier:(id)identifier inPhotoLibrary:(id)library serviceManager:(id)manager
{
  managerCopy = manager;
  libraryCopy = library;
  v9 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:identifier forKey:@"Global People"];
  [v9 setPhotoLibrary:libraryCopy];

  v10 = v9[14];
  v9[14] = managerCopy;

  return v9;
}

+ (id)cluesWithPeoples:(id)peoples serviceManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  peoplesCopy = peoples;
  managerCopy = manager;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = peoplesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_opt_class() clueWithPeople:*(*(&v15 + 1) + 8 * i) serviceManager:{managerCopy, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)clueWithPeople:(id)people serviceManager:(id)manager
{
  managerCopy = manager;
  v6 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:people forKey:@"Global People"];
  v7 = v6[14];
  v6[14] = managerCopy;

  return v6;
}

@end