@interface GDVisualIdentifierView
- (GDVisualIdentifierView)initWithAccessAssertion:(id)a3 database:(id)a4;
- (id)personForIdentifier:(id)a3;
- (void)enumeratePeopleMatchingName:(id)a3 block:(id)a4;
- (void)enumeratePeopleWithBlock:(id)a3;
- (void)linkEntitiesForPerson:(id)a3;
@end

@implementation GDVisualIdentifierView

- (void)enumeratePeopleMatchingName:(id)a3 block:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = a4;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B98];
  v7 = objc_opt_new();
  v29 = v6;
  v8 = [GDFTSTokenize ftsTokenize:v6];
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
          v31[2](v31, v27, &v32);
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

- (void)enumeratePeopleWithBlock:(id)a3
{
  v4 = a3;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B78];
  personRetriever = self->_personRetriever;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1ABF0B738;
  v7[3] = &unk_1E79623B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GDSQLGraphObjectRetriever *)personRetriever enumerateObjectsWithBlock:v7];
}

- (id)personForIdentifier:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1B58];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF0B9C4;
  v22 = sub_1ABF0B9D4;
  v23 = 0;
  v5 = [(GDSQLGraphObjectRetriever *)self->_personRetriever objectForIdentifier:v4];
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
    v24[0] = v4;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v9 setObjects:v10];

    personRetriever = self->_personRetriever;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1ABF0B9DC;
    v14[3] = &unk_1E7962390;
    v15 = v4;
    v16 = self;
    v17 = &v18;
    [(GDSQLGraphObjectRetriever *)personRetriever enumerateObjectsWithQuery:v9 block:v14];
    v8 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)linkEntitiesForPerson:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = v4;
  v5 = [v4 postalAddressLinks];
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        locationRetriever = self->_locationRetriever;
        v12 = [v10 locationEntityIdentifier];
        v13 = [v12 stringValue];
        v14 = [(GDSQLGraphObjectRetriever *)locationRetriever objectForIdentifier:v13];

        if (v14)
        {
          v15 = [v10 label];
          [v14 setLabel:v15];

          [v38 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
  v18 = [v36 softwareLinks];
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        v24 = [v23 conversationIdentifier];

        if (v24)
        {
          v25 = [v23 conversationIdentifier];
          [v17 addObject:v25];
        }

        softwareRetriever = self->_softwareRetriever;
        v27 = [v23 softwareEntityIdentifier];
        v28 = [v27 stringValue];
        v29 = [(GDSQLGraphObjectRetriever *)softwareRetriever objectForIdentifier:v28];

        if (v29)
        {
          v30 = [v29 bundleIdentifiers];

          if (v30)
          {
            v31 = [v29 bundleIdentifiers];
            [v37 addObjectsFromArray:v31];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v20);
  }

  v32 = [v37 allObjects];
  v33 = [v32 copy];
  [v36 setBundleIdentifiers:v33];

  v34 = [v17 copy];
  [v36 setConversationIdentifiers:v34];

  v35 = *MEMORY[0x1E69E9840];
}

- (GDVisualIdentifierView)initWithAccessAssertion:(id)a3 database:(id)a4
{
  v8 = a3;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = GDVisualIdentifierView;
  v10 = [(GDVisualIdentifierView *)&v30 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accessAssertion, a3);
    objc_storeStrong(&v11->_db, a4);
    v12 = [v8 viewArtifactTableName];
    if (!v12)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:v11 file:@"GDVisualIdentifierView.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
    }

    v13 = [GDSQLGraphObjectRetriever alloc];
    db = v11->_db;
    v15 = objc_opt_class();
    v16 = sub_1ABF078B4(&v13->super.isa, db, v12, @"SB104", 2, v15);
    personRetriever = v11->_personRetriever;
    v11->_personRetriever = v16;

    v18 = [GDSQLGraphObjectRetriever alloc];
    v19 = v11->_db;
    v20 = objc_opt_class();
    v21 = sub_1ABF078B4(&v18->super.isa, v19, v12, @"SB152", 3, v20);
    locationRetriever = v11->_locationRetriever;
    v11->_locationRetriever = v21;

    v23 = [GDSQLGraphObjectRetriever alloc];
    v24 = v11->_db;
    v25 = objc_opt_class();
    v26 = sub_1ABF078B4(&v23->super.isa, v24, v12, @"SB144", 0xA, v25);
    softwareRetriever = v11->_softwareRetriever;
    v11->_softwareRetriever = v26;
  }

  return v11;
}

@end