@interface _CardDAVActionsContactsHandler
+ (OS_os_log)os_log;
- (_CardDAVActionsContactsHandler)initWithContactStore:(id)a3;
- (id)localItemForExternalURL:(id)a3 forContainer:(id)a4 withStoreURL:(id)a5;
- (id)matchingContactForExternalID:(id)a3;
- (id)matchingGroupForExternalID:(id)a3 inContainer:(id)a4;
@end

@implementation _CardDAVActionsContactsHandler

+ (OS_os_log)os_log
{
  if (qword_46F98 != -1)
  {
    sub_25DA4();
  }

  v3 = qword_46FA0;

  return v3;
}

- (_CardDAVActionsContactsHandler)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsHandler;
  v6 = [(_CardDAVActionsContactsHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)localItemForExternalURL:(id)a3 forContainer:(id)a4 withStoreURL:(id)a5
{
  v8 = a4;
  v9 = [a3 da_leastInfoStringRepresentationRelativeToParentURL:a5];
  v10 = [(_CardDAVActionsContactsHandler *)self matchingContactForExternalID:v9];
  if (!v10)
  {
    v11 = [(_CardDAVActionsContactsHandler *)self matchingGroupForExternalID:v9 inContainer:v8];
  }

  return v10;
}

- (id)matchingContactForExternalID:(id)a3
{
  v4 = a3;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  [v6 setSortOrder:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_23BE4;
  v22 = sub_23BF4;
  v23 = 0;
  v7 = [(_CardDAVActionsContactsHandler *)self contactStore];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_23BFC;
  v15 = &unk_3CF18;
  v8 = v4;
  v16 = v8;
  v17 = &v18;
  [v7 enumerateContactsWithFetchRequest:v6 error:0 usingBlock:&v12];

  if (v19[5])
  {
    v9 = [DAContactsContact alloc];
    v10 = [(DAContactsContact *)v9 initWithContact:v19[5], v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)matchingGroupForExternalID:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = [a4 asContainer];
  v8 = [v7 identifier];
  v9 = [CNGroup predicateForGroupsInContainerWithIdentifier:v8];

  v10 = [(_CardDAVActionsContactsHandler *)self contactStore];
  v26 = 0;
  v11 = [v10 groupsMatchingPredicate:v9 error:&v26];
  v12 = v26;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = *v23;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      v18 = [v17 externalIdentifier];
      v19 = [v18 isEqualToString:v6];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = v17;

    if (v20)
    {
      v14 = [[DAContactsGroup alloc] initWithGroup:v20];
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
LABEL_9:
    v20 = v13;
LABEL_12:
  }

  return v14;
}

@end