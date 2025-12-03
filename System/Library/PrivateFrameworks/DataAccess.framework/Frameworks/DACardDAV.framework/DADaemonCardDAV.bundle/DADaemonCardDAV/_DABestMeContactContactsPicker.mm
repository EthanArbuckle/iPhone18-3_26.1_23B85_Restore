@interface _DABestMeContactContactsPicker
- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email;
- (_DABestMeContactContactsPicker)initWithContactStore:(id)store;
@end

@implementation _DABestMeContactContactsPicker

- (_DABestMeContactContactsPicker)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DABestMeContactContactsPicker;
  v6 = [(_DABestMeContactContactsPicker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email
{
  emailCopy = email;
  familyNameCopy = familyName;
  nameCopy = name;
  v10 = [CNContactFetchRequest alloc];
  v11 = +[CNContactKeyVector keyVector];
  v58 = v11;
  v12 = [NSArray arrayWithObjects:&v58 count:1];
  v13 = [v10 initWithKeysToFetch:v12];

  v14 = [CNContact predicateForContactsMatchingName:nameCopy options:1];

  [v13 setPredicate:v14];
  v44 = v13;
  [v13 setUnifyResults:0];
  v15 = [CNContactFetchRequest alloc];
  v16 = +[CNContactKeyVector keyVector];
  v57 = v16;
  v17 = [NSArray arrayWithObjects:&v57 count:1];
  v18 = [v15 initWithKeysToFetch:v17];

  v19 = [CNContact predicateForContactsMatchingName:familyNameCopy options:1];

  [v18 setPredicate:v19];
  [v18 setUnifyResults:0];
  v20 = [CNContactFetchRequest alloc];
  v21 = +[CNContactKeyVector keyVector];
  v56 = v21;
  v22 = [NSArray arrayWithObjects:&v56 count:1];
  v23 = [v20 initWithKeysToFetch:v22];

  v24 = [CNContact predicateForContactsMatchingEmailAddress:emailCopy];

  [v23 setPredicate:v24];
  [v23 setUnifyResults:0];
  v25 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v27 = +[NSMutableArray array];
  contactStore = [(_DABestMeContactContactsPicker *)self contactStore];
  v55 = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1569C;
  v53[3] = &unk_3CC08;
  v54 = v25;
  v29 = v25;
  [contactStore enumerateContactsWithFetchRequest:v13 error:&v55 usingBlock:v53];
  v30 = v55;

  contactStore2 = [(_DABestMeContactContactsPicker *)self contactStore];
  v51 = v26;
  v52 = v30;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_156A8;
  v50[3] = &unk_3CC08;
  v32 = v26;
  [contactStore2 enumerateContactsWithFetchRequest:v18 error:&v52 usingBlock:v50];
  v33 = v52;

  contactStore3 = [(_DABestMeContactContactsPicker *)self contactStore];
  v48 = v27;
  v49 = v33;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_156B4;
  v47[3] = &unk_3CC08;
  v35 = v27;
  [contactStore3 enumerateContactsWithFetchRequest:v23 error:&v49 usingBlock:v47];
  v36 = v49;

  v37 = [NSMutableSet setWithArray:v29];
  v38 = [NSSet setWithArray:v32];
  [v37 intersectSet:v38];

  v39 = [NSSet setWithArray:v35];
  [v37 intersectSet:v39];

  anyObject = [v37 anyObject];
  contactStore4 = [(_DABestMeContactContactsPicker *)self contactStore];
  v46 = 0;
  v42 = [contactStore4 setMeContact:anyObject error:&v46];

  return v42;
}

@end