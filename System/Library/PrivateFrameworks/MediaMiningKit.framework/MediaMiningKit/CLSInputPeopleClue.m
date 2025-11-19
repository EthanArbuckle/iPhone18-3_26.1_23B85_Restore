@interface CLSInputPeopleClue
+ (id)clueWithConsolidatedPersonLocalIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5;
+ (id)clueWithPeople:(id)a3 serviceManager:(id)a4;
+ (id)clueWithPersonContactIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5;
+ (id)clueWithPersonLocalIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5;
+ (id)cluesWithConsolidatedPersonLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5;
+ (id)cluesWithPeoples:(id)a3 serviceManager:(id)a4;
+ (id)cluesWithPersonLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5;
- (CLSPersonIdentity)person;
- (PHPhotoLibrary)photoLibrary;
- (id)description;
- (id)name;
- (void)_prepareWithProgressBlock:(id)a3;
@end

@implementation CLSInputPeopleClue

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)_prepareWithProgressBlock:(id)a3
{
  if (!self->_person)
  {
    v4 = [(CLSClue *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      serviceManager = self->_serviceManager;
      v7 = [(CLSClue *)self value];
      v8 = [(CLSInputPeopleClue *)self photoLibrary];
      v9 = [(CLSServiceManager *)serviceManager personResultForName:v7 inPhotoLibrary:v8];

      v10 = [v9 person];
      if ([v10 isMe])
      {
        v11 = [v10 localIdentifier];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [(CLSServiceManager *)self->_serviceManager mePerson];
          v14 = [v13 localIdentifier];
          v15 = [v14 length];

          if (!v15)
          {
            v16 = [v10 localIdentifier];
            [v13 setLocalIdentifier:v16];
          }
        }
      }

      if (v9)
      {
        objc_storeStrong(&self->_person, v10);
        [v9 confidence];
        [(CLSClue *)self setConfidence:v17];
      }

      else
      {
        person = self->_person;
        self->_person = 0;
      }

      goto LABEL_15;
    }

    v18 = [(CLSClue *)self value];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v20 = [(CLSClue *)self value];
      v21 = self->_person;
      self->_person = v20;

      if ([(CLSPersonIdentity *)self->_person isMe])
      {
        v9 = [(CLSServiceManager *)self->_serviceManager mePerson];
        [(CLSPersonIdentity *)self->_person mergeWithPerson:v9];
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

  v6 = [(CLSInputPeopleClue *)self name];
  [v5 appendFormat:@"\n\tname:[%@]", v6];

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

+ (id)cluesWithConsolidatedPersonLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
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

        v16 = [objc_opt_class() clueWithConsolidatedPersonLocalIdentifier:*(*(&v18 + 1) + 8 * i) inPhotoLibrary:v8 serviceManager:{v9, v18}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)cluesWithPersonLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
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

        v16 = [objc_opt_class() clueWithPersonLocalIdentifier:*(*(&v18 + 1) + 8 * i) inPhotoLibrary:v8 serviceManager:{v9, v18}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)clueWithConsolidatedPersonLocalIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5
{
  v5 = [a1 clueWithPersonLocalIdentifier:a3 inPhotoLibrary:a4 serviceManager:a5];
  [v5 setIncludeMergeCandidates:1];

  return v5;
}

+ (id)clueWithPersonContactIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:a3 forKey:@"Global People"];
  [v9 setPhotoLibrary:v8];

  v10 = v9[14];
  v9[14] = v7;

  return v9;
}

+ (id)clueWithPersonLocalIdentifier:(id)a3 inPhotoLibrary:(id)a4 serviceManager:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:a3 forKey:@"Global People"];
  [v9 setPhotoLibrary:v8];

  v10 = v9[14];
  v9[14] = v7;

  return v9;
}

+ (id)cluesWithPeoples:(id)a3 serviceManager:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
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

        v13 = [objc_opt_class() clueWithPeople:*(*(&v15 + 1) + 8 * i) serviceManager:{v6, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)clueWithPeople:(id)a3 serviceManager:(id)a4
{
  v5 = a4;
  v6 = [(CLSClue *)CLSInputPeopleClue _clueWithValue:a3 forKey:@"Global People"];
  v7 = v6[14];
  v6[14] = v5;

  return v6;
}

@end