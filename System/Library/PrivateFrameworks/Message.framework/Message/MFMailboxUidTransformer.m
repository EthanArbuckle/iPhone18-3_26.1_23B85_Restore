@interface MFMailboxUidTransformer
+ (BOOL)isMailbox:(id)a3 equalTo:(id)a4 uidToMailboxMap:(id)a5;
- (MFMailboxUidTransformer)init;
- (id)_transformMailboxUid:(void *)a3 parent:(void *)a4 uidToMailboxMap:(void *)a5 objectIDToUidMap:;
- (id)transformMailboxUid:(id)a3 uidToMailboxMap:(id)a4 objectIDToUidMap:(id)a5;
@end

@implementation MFMailboxUidTransformer

- (MFMailboxUidTransformer)init
{
  v3.receiver = self;
  v3.super_class = MFMailboxUidTransformer;
  return [(MFMailboxUidTransformer *)&v3 init];
}

+ (BOOL)isMailbox:(id)a3 equalTo:(id)a4 uidToMailboxMap:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 name];
  v14 = [v11 displayNameUsingSpecialNames];
  if (![v13 isEqual:v14])
  {
    v16 = 0;
    goto LABEL_17;
  }

  v26 = [v10 objectID];
  v15 = [v26 url];
  if (v15 || ([v11 URL], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [v10 objectID];
    v7 = [v6 url];
    v5 = [v11 URL];
    if (([v7 isEqual:v5] & 1) == 0)
    {

      v16 = 0;
      goto LABEL_14;
    }

    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v17 = [v10 type];
  if (v17 == [v11 type] && (v18 = objc_msgSend(v10, "canContainMessages"), v18 == objc_msgSend(v11, "isStore")))
  {
    if (v12)
    {
      v20 = [v10 parent];
      v23 = [v11 parent];
      v21 = [v12 objectForKey:v23];
      v22 = v20;
      v16 = v20 == v21;

      if (!v25)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (v25)
  {
LABEL_13:
  }

LABEL_14:
  if (!v15)
  {
  }

LABEL_17:
  return v16;
}

- (id)transformMailboxUid:(id)a3 uidToMailboxMap:(id)a4 objectIDToUidMap:(id)a5
{
  v5 = [(MFMailboxUidTransformer *)self _transformMailboxUid:a3 parent:0 uidToMailboxMap:a4 objectIDToUidMap:a5];

  return v5;
}

- (id)_transformMailboxUid:(void *)a3 parent:(void *)a4 uidToMailboxMap:(void *)a5 objectIDToUidMap:
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v32 = a3;
  v37 = a4;
  v10 = a5;
  v36 = v9;
  if (a1)
  {
    v33 = [v9 displayNameUsingSpecialNames];
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = [v9 children];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count") + 1}];

    v14 = objc_alloc(MEMORY[0x1E699AE08]);
    v15 = [v9 representedAccount];
    v16 = [v15 identifier];
    v34 = [v14 initWithRepresentedObjectID:v16];

    v35 = [v9 objectID];
    if (v35)
    {
      v17 = objc_alloc(MEMORY[0x1E699AD18]);
      v18 = [v9 type];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __88__MFMailboxUidTransformer__transformMailboxUid_parent_uidToMailboxMap_objectIDToUidMap___block_invoke;
      v42[3] = &unk_1E7AA6238;
      v19 = v9;
      v43 = v19;
      v44 = v32;
      v20 = [v17 initWithObjectID:v35 repository:0 name:v33 accountIdentifier:v34 type:v18 builder:v42];
      if (v37)
      {
        [v37 setObject:v20 forKey:v19];
      }

      if (v10)
      {
        v21 = [v20 objectID];
        [v10 setObject:v19 forKey:v21];
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = [v19 children];
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v23)
      {
        v24 = *v39;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v38 + 1) + 8 * i);
            v27 = objc_autoreleasePoolPush();
            v28 = [(MFMailboxUidTransformer *)a1 _transformMailboxUid:v26 parent:v20 uidToMailboxMap:v37 objectIDToUidMap:v10];
            [v13 addObjectsFromArray:v28];

            objc_autoreleasePoolPop(v27);
          }

          v23 = [v22 countByEnumeratingWithState:&v38 objects:v45 count:16];
        }

        while (v23);
      }

      [v13 addObject:v20];
      v29 = [v13 copy];
    }

    else
    {
      v29 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void __88__MFMailboxUidTransformer__transformMailboxUid_parent_uidToMailboxMap_objectIDToUidMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCanContainMessages:{objc_msgSend(*(a1 + 32), "isStore")}];
  [v3 setParent:*(a1 + 40)];
}

@end