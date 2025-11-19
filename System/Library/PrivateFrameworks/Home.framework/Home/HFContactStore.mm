@interface HFContactStore
+ (HFContactStore)defaultStore;
- (HFContactStore)init;
- (id)_fallbackContactWithEmailAddress:(id)a3 phoneNumber:(id)a4;
- (id)_meContactWithEmailAddress:(id)a3 keys:(id)a4;
- (id)contactForEmailAddress:(id)a3 withKeys:(id)a4;
- (id)contactForPhoneNumber:(id)a3 withKeys:(id)a4;
- (id)contactForUserHandle:(id)a3 withKeys:(id)a4;
@end

@implementation HFContactStore

+ (HFContactStore)defaultStore
{
  if (_MergedGlobals_223 != -1)
  {
    dispatch_once(&_MergedGlobals_223, &__block_literal_global_3_2);
  }

  v3 = qword_280E02C88;

  return v3;
}

void __30__HFContactStore_defaultStore__block_invoke_2()
{
  v0 = objc_alloc_init(HFContactStore);
  v1 = qword_280E02C88;
  qword_280E02C88 = v0;
}

- (HFContactStore)init
{
  v6.receiver = self;
  v6.super_class = HFContactStore;
  v2 = [(HFContactStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;
  }

  return v2;
}

- (id)contactForUserHandle:(id)a3 withKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 type];
    if (v8 == 1)
    {
      v9 = [v6 userID];
      v10 = [(HFContactStore *)self contactForEmailAddress:v9 withKeys:v7];
      goto LABEL_9;
    }

    if (!v8)
    {
      v9 = [v6 userID];
      v10 = [(HFContactStore *)self _meContactWithEmailAddress:v9 keys:v7];
LABEL_9:
      v12 = v10;

      goto LABEL_10;
    }
  }

  v11 = HFLogForCategory(0x4CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Cannot create contact because HFUserHandle is nil.", v14, 2u);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_meContactWithEmailAddress:(id)a3 keys:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 arrayByAddingObject:*MEMORY[0x277CBCFC0]];

    v10 = [(HFContactStore *)self contactStore];
    v21 = 0;
    v11 = [v10 unifiedMeContactMatchingEmailAddress:v6 keysToFetch:v9 error:&v21];
    v12 = v21;

    v8 = v9;
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_8:
      v16 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Error fetching me contact: %@", buf, 0xCu);
      }

      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    v9 = v7;
  }

  v14 = [(HFContactStore *)self contactStore];
  v20 = v12;
  v11 = [v14 _ios_meContactWithKeysToFetch:v8 error:&v20];
  v15 = v20;

  v12 = v15;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v11)
  {
LABEL_5:
    v13 = v11;
    goto LABEL_12;
  }

LABEL_11:
  v13 = [(HFContactStore *)self _fallbackContactWithEmailAddress:v6 phoneNumber:0];
LABEL_12:
  v17 = v13;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)contactForEmailAddress:(id)a3 withKeys:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v6];
    v9 = [(HFContactStore *)self contactStore];
    v21 = 0;
    v10 = [v9 unifiedContactsMatchingPredicate:v8 keysToFetch:v7 error:&v21];
    v11 = v21;
    v12 = [v10 firstObject];

    if (v11)
    {
      v13 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v11;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Error fetching contact with email %@: %@", buf, 0x16u);
      }

      v14 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
        *buf = 134217984;
        v23 = v20;
        _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Contact Store access: %ld", buf, 0xCu);
      }
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = [(HFContactStore *)self _fallbackContactWithEmailAddress:v6 phoneNumber:0];
    }

    v17 = v15;
  }

  else
  {
    v16 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Email address for user is nil!", buf, 2u);
    }

    v17 = [(HFContactStore *)self _fallbackContactWithEmailAddress:0 phoneNumber:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)contactForPhoneNumber:(id)a3 withKeys:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HFContactStore.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"phoneNumberString"}];
  }

  v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v7];
  v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v9];
  v11 = [(HFContactStore *)self contactStore];
  v23 = 0;
  v12 = [v11 unifiedContactsMatchingPredicate:v10 keysToFetch:v8 error:&v23];
  v13 = v23;
  v14 = [v12 firstObject];

  if (v13)
  {
    v15 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v13;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Error fetching contact with phone number %@: %@", buf, 0x16u);
    }

    v16 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
      *buf = 134217984;
      v25 = v21;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Contact Store access: %ld", buf, 0xCu);
    }
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = [(HFContactStore *)self _fallbackContactWithEmailAddress:0 phoneNumber:v9];
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_fallbackContactWithEmailAddress:(id)a3 phoneNumber:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v8 = v7;
  if (v5)
  {
    [v7 setGivenName:v5];
    v9 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v5];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 setEmailAddresses:v10];
  }

  else
  {
    v9 = [v6 stringValue];
    [v8 setGivenName:v9];
  }

  if (v6)
  {
    v11 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v6];
    v16 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v8 setPhoneNumbers:v12];
  }

  v13 = [v8 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end