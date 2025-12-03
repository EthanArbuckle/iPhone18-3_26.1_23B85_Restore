@interface IDSFrequentURISuggester
- (BOOL)checkContactsForDestination:(id)destination;
- (IDSFrequentURISuggester)init;
- (id)matchingContactsForURI:(id)i;
- (id)predicateForURI:(id)i;
@end

@implementation IDSFrequentURISuggester

- (IDSFrequentURISuggester)init
{
  v3.receiver = self;
  v3.super_class = IDSFrequentURISuggester;
  return [(IDSFrequentURISuggester *)&v3 init];
}

- (id)predicateForURI:(id)i
{
  v3 = [i _stripPotentialTokenURIWithToken:0];
  _FZIDType = [v3 _FZIDType];
  v5 = IMWeakLinkClass();
  if (_FZIDType)
  {
    v6 = 0;
    if (_FZIDType != 1)
    {
      goto LABEL_6;
    }

    _stripFZIDPrefix = [v3 _stripFZIDPrefix];
    v8 = [v5 predicateForContactsMatchingEmailAddress:_stripFZIDPrefix];
  }

  else
  {
    v9 = IMWeakLinkClass();
    _stripFZIDPrefix2 = [v3 _stripFZIDPrefix];
    _stripFZIDPrefix = [v9 phoneNumberWithStringValue:_stripFZIDPrefix2];

    v8 = [v5 predicateForContactsMatchingPhoneNumber:_stripFZIDPrefix];
  }

  v6 = v8;

LABEL_6:

  return v6;
}

- (id)matchingContactsForURI:(id)i
{
  iCopy = i;
  v5 = [(IDSFrequentURISuggester *)self predicateForURI:iCopy];
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10000A8A8;
    v18 = sub_10000BBD4;
    v19 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033C874;
    block[3] = &unk_100BD7928;
    block[4] = &v14;
    if (qword_100CBCE38 != -1)
    {
      dispatch_once(&qword_100CBCE38, block);
    }

    v6 = objc_alloc_init(IMWeakLinkClass());
    v22 = v15[5];
    v7 = [NSArray arrayWithObjects:&v22 count:1];
    v12 = 0;
    v8 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = +[IDSFoundationLog opportunistic];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error retrieving contacts {error: %@}", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)checkContactsForDestination:(id)destination
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  destinationURIs = [destination destinationURIs];
  v5 = [destinationURIs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v9 = [(IDSFrequentURISuggester *)self matchingContactsForURI:*(*(&v13 + 1) + 8 * i)];
        v10 = v9;
        if (!v9 || ![v9 count])
        {

          v11 = 0;
          goto LABEL_13;
        }
      }

      v6 = [destinationURIs countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_13:

  return v11;
}

@end