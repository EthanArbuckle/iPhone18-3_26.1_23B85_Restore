@interface GDVisualIdentifierView
- (GDVisualIdentifierView)initWithAccessAssertion:(id)assertion database:(id)database;
- (id)personForIdentifier:(id)identifier;
- (void)enumeratePeopleMatchingName:(id)name block:(id)block;
- (void)enumeratePeopleWithBlock:(id)block;
- (void)linkEntitiesForPerson:(id)person;
@end

@implementation GDVisualIdentifierView

- (void)enumeratePeopleMatchingName:(id)name block:(id)block
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B98];
  v7 = objc_opt_new();
  v29 = nameCopy;
  v8 = [GDFTSTokenize ftsTokenize:nameCopy];
  [v7 setPredicates:&unk_1F20CF3D8];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v40;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@*", v14];
      [v7 setObjectFTSTerm:v16];

      [v7 setSubjects:v11];
      v17 = objc_opt_new();

      personRetriever = self->_personRetriever;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1ABF0B660;
      v37[3] = &unk_1E79623E0;
      v11 = v17;
      v38 = v11;
      [(GDSQLGraphObjectRetriever *)personRetriever enumerateIdentifiersWithQuery:v7 block:v37];
      v19 = [v11 count];

      objc_autoreleasePoolPop(v15);
      if (!v19)
      {
        break;
      }

      if (v10 == ++v13)
      {
        v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v27 = [(GDSQLGraphObjectRetriever *)self->_personRetriever objectForIdentifier:v25];
        if (v27)
        {
          [(GDVisualIdentifierView *)self linkEntitiesForPerson:v27];
          v32 = 0;
          blockCopy[2](blockCopy, v27, &v32);
          if (v32 == 1)
          {

            objc_autoreleasePoolPop(v26);
            goto LABEL_22;
          }
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)enumeratePeopleWithBlock:(id)block
{
  blockCopy = block;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B78];
  personRetriever = self->_personRetriever;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1ABF0B738;
  v7[3] = &unk_1E79623B8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(GDSQLGraphObjectRetriever *)personRetriever enumerateObjectsWithBlock:v7];
}

- (id)personForIdentifier:(id)identifier
{
  v24[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B58];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF0B9C4;
  v22 = sub_1ABF0B9D4;
  v23 = 0;
  v5 = [(GDSQLGraphObjectRetriever *)self->_personRetriever objectForIdentifier:identifierCopy];
  v6 = v19[5];
  v19[5] = v5;

  v7 = v19[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = objc_opt_new();
    v24[0] = identifierCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v9 setObjects:v10];

    personRetriever = self->_personRetriever;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1ABF0B9DC;
    v14[3] = &unk_1E7962390;
    v15 = identifierCopy;
    selfCopy = self;
    v17 = &v18;
    [(GDSQLGraphObjectRetriever *)personRetriever enumerateObjectsWithQuery:v9 block:v14];
    v8 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)linkEntitiesForPerson:(id)person
{
  v49 = *MEMORY[0x1E69E9840];
  personCopy = person;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = personCopy;
  postalAddressLinks = [personCopy postalAddressLinks];
  v6 = [postalAddressLinks countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(postalAddressLinks);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        locationRetriever = self->_locationRetriever;
        locationEntityIdentifier = [v10 locationEntityIdentifier];
        stringValue = [locationEntityIdentifier stringValue];
        v14 = [(GDSQLGraphObjectRetriever *)locationRetriever objectForIdentifier:stringValue];

        if (v14)
        {
          label = [v10 label];
          [v14 setLabel:label];

          [v38 addObject:v14];
        }
      }

      v7 = [postalAddressLinks countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v7);
  }

  v16 = [v38 copy];
  [v36 setLocations:v16];

  v37 = objc_opt_new();
  v17 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  softwareLinks = [v36 softwareLinks];
  v19 = [softwareLinks countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(softwareLinks);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        conversationIdentifier = [v23 conversationIdentifier];

        if (conversationIdentifier)
        {
          conversationIdentifier2 = [v23 conversationIdentifier];
          [v17 addObject:conversationIdentifier2];
        }

        softwareRetriever = self->_softwareRetriever;
        softwareEntityIdentifier = [v23 softwareEntityIdentifier];
        stringValue2 = [softwareEntityIdentifier stringValue];
        v29 = [(GDSQLGraphObjectRetriever *)softwareRetriever objectForIdentifier:stringValue2];

        if (v29)
        {
          bundleIdentifiers = [v29 bundleIdentifiers];

          if (bundleIdentifiers)
          {
            bundleIdentifiers2 = [v29 bundleIdentifiers];
            [v37 addObjectsFromArray:bundleIdentifiers2];
          }
        }
      }

      v20 = [softwareLinks countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v20);
  }

  allObjects = [v37 allObjects];
  v33 = [allObjects copy];
  [v36 setBundleIdentifiers:v33];

  v34 = [v17 copy];
  [v36 setConversationIdentifiers:v34];

  v35 = *MEMORY[0x1E69E9840];
}

- (GDVisualIdentifierView)initWithAccessAssertion:(id)assertion database:(id)database
{
  assertionCopy = assertion;
  databaseCopy = database;
  v30.receiver = self;
  v30.super_class = GDVisualIdentifierView;
  v10 = [(GDVisualIdentifierView *)&v30 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accessAssertion, assertion);
    objc_storeStrong(&v11->_db, database);
    viewArtifactTableName = [assertionCopy viewArtifactTableName];
    if (!viewArtifactTableName)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"GDVisualIdentifierView.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
    }

    v13 = [GDSQLGraphObjectRetriever alloc];
    db = v11->_db;
    v15 = objc_opt_class();
    v16 = sub_1ABF078B4(&v13->super.isa, db, viewArtifactTableName, @"SB104", 2, v15);
    personRetriever = v11->_personRetriever;
    v11->_personRetriever = v16;

    v18 = [GDSQLGraphObjectRetriever alloc];
    v19 = v11->_db;
    v20 = objc_opt_class();
    v21 = sub_1ABF078B4(&v18->super.isa, v19, viewArtifactTableName, @"SB152", 3, v20);
    locationRetriever = v11->_locationRetriever;
    v11->_locationRetriever = v21;

    v23 = [GDSQLGraphObjectRetriever alloc];
    v24 = v11->_db;
    v25 = objc_opt_class();
    v26 = sub_1ABF078B4(&v23->super.isa, v24, viewArtifactTableName, @"SB144", 0xA, v25);
    softwareRetriever = v11->_softwareRetriever;
    v11->_softwareRetriever = v26;
  }

  return v11;
}

@end