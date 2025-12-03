@interface ICAttachment(SearchIndexable_UI)
- (id)dataForTypeIdentifier:()SearchIndexable_UI;
- (id)fileURLForTypeIdentifier:()SearchIndexable_UI;
@end

@implementation ICAttachment(SearchIndexable_UI)

- (id)fileURLForTypeIdentifier:()SearchIndexable_UI
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  managedObjectContext = [self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ICAttachment_SearchIndexable_UI__fileURLForTypeIdentifier___block_invoke;
  v9[3] = &unk_1E8469190;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)dataForTypeIdentifier:()SearchIndexable_UI
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  managedObjectContext = [self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ICAttachment_SearchIndexable_UI__dataForTypeIdentifier___block_invoke;
  v9[3] = &unk_1E8469190;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

@end