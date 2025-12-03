@interface KMMapper_SAPerson
- (BOOL)_addLabeledFieldsForEmails:(id)emails error:(id *)error;
- (BOOL)_addLabeledFieldsForPhones:(id)phones error:(id *)error;
- (BOOL)_addLabeledFieldsForPostalAddresses:(id)addresses error:(id *)error;
- (BOOL)_addLabeledFieldsForRelatedNames:(id)names error:(id *)error;
- (KMMapper_SAPerson)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_SAPerson

- (BOOL)_addLabeledFieldsForRelatedNames:(id)names error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  namesCopy = names;
  v7 = [namesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(namesCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        label = [v11 label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          builder = self->_builder;
          name = [v11 name];
          v15 = [(KVItemBuilder *)builder addFieldWithType:63 label:label value:name error:error];

          if (!v15)
          {

            v16 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [namesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_addLabeledFieldsForPostalAddresses:(id)addresses error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  addressesCopy = addresses;
  v7 = [addressesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(addressesCopy);
        }

        label = [*(*(&v16 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:59 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [addressesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_addLabeledFieldsForEmails:(id)emails error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  emailsCopy = emails;
  v7 = [emailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(emailsCopy);
        }

        label = [*(*(&v16 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:58 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [emailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_addLabeledFieldsForPhones:(id)phones error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  phonesCopy = phones;
  v7 = [phonesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(phonesCopy);
        }

        label = [*(*(&v16 + 1) + 8 * i) label];
        if ((_isDefaultLabel(label) & 1) == 0)
        {
          v12 = [(KVItemBuilder *)self->_builder addFieldWithType:57 label:label value:0 error:error];

          if (!v12)
          {

            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [phonesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v86[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_sharedUserIdKey];
  builder = self->_builder;
  internalGUID = [objectCopy internalGUID];
  v85 = 0;
  v12 = [(KVItemBuilder *)builder setItemType:2 itemId:internalGUID error:&v85];
  v13 = v85;
  if (v12)
  {
    v14 = self->_builder;
    [objectCopy prefix];
    v82 = v84[14] = v13;
    v15 = [KVItemBuilder addFieldWithType:v14 value:"addFieldWithType:value:error:" error:55];
    v16 = v13;

    if (v15)
    {
      v17 = self->_builder;
      [objectCopy firstName];
      v81 = v84[13] = v16;
      v18 = [KVItemBuilder addFieldWithType:v17 value:"addFieldWithType:value:error:" error:50];
      v19 = v16;

      v80 = v18;
      if (v18)
      {
        v20 = self->_builder;
        [objectCopy middleName];
        v79 = v84[12] = v19;
        v21 = [KVItemBuilder addFieldWithType:v20 value:"addFieldWithType:value:error:" error:51];
        v22 = v19;

        v78 = v21;
        if (v21)
        {
          v23 = self->_builder;
          [objectCopy lastName];
          v77 = v84[11] = v22;
          v24 = [KVItemBuilder addFieldWithType:v23 value:"addFieldWithType:value:error:" error:52];
          v25 = v22;

          v76 = v24;
          if (v24)
          {
            v26 = self->_builder;
            [objectCopy suffix];
            v75 = v84[10] = v25;
            v27 = [KVItemBuilder addFieldWithType:v26 value:"addFieldWithType:value:error:" error:56];
            v28 = v25;

            v74 = v27;
            if (v27)
            {
              v29 = self->_builder;
              [objectCopy nickName];
              v73 = v84[9] = v28;
              v30 = [KVItemBuilder addFieldWithType:v29 value:"addFieldWithType:value:error:" error:54];
              v31 = v28;

              v72 = v30;
              if (v30)
              {
                v32 = self->_builder;
                [objectCopy company];
                v71 = v84[8] = v31;
                v33 = [KVItemBuilder addFieldWithType:v32 value:"addFieldWithType:value:error:" error:64];
                v34 = v31;

                v70 = v33;
                if (v33)
                {
                  v35 = self->_builder;
                  [objectCopy firstNamePhonetic];
                  v69 = v84[7] = v34;
                  v36 = [KVItemBuilder addFieldWithType:v35 value:"addFieldWithType:value:error:" error:67];
                  v37 = v34;

                  v68 = v36;
                  if (v36)
                  {
                    v38 = self->_builder;
                    [objectCopy lastNamePhonetic];
                    v67 = v84[6] = v37;
                    v39 = [KVItemBuilder addFieldWithType:v38 value:"addFieldWithType:value:error:" error:69];
                    v40 = v37;

                    v66 = v39;
                    if (v39)
                    {
                      v41 = self->_builder;
                      [objectCopy companyPhonetic];
                      v65 = v84[5] = v40;
                      v42 = [KVItemBuilder addFieldWithType:v41 value:"addFieldWithType:value:error:" error:70];
                      v43 = v40;

                      v64 = v42;
                      if (v42)
                      {
                        [objectCopy phones];
                        v63 = v84[4] = v43;
                        v44 = [KMMapper_SAPerson _addLabeledFieldsForPhones:"_addLabeledFieldsForPhones:error:" error:?];
                        v45 = v43;

                        if (v44)
                        {
                          [objectCopy emails];
                          v62 = v84[3] = v45;
                          v46 = [KMMapper_SAPerson _addLabeledFieldsForEmails:"_addLabeledFieldsForEmails:error:" error:?];
                          v43 = v45;

                          if (v46)
                          {
                            [objectCopy addresses];
                            v61 = v84[2] = v43;
                            v47 = [KMMapper_SAPerson _addLabeledFieldsForPostalAddresses:"_addLabeledFieldsForPostalAddresses:error:" error:?];
                            v59 = v43;

                            errorCopy13 = error;
                            if (v47)
                            {
                              [objectCopy relatedNames];
                              v58 = v84[1] = v59;
                              v49 = [KMMapper_SAPerson _addLabeledFieldsForRelatedNames:"_addLabeledFieldsForRelatedNames:error:" error:?];
                              v43 = v59;

                              if (v49)
                              {
                                v50 = self->_builder;
                                v84[0] = v43;
                                v51 = [(KVItemBuilder *)v50 addFieldWithType:71 value:v9 error:v84];
                                v60 = v84[0];

                                v52 = v51 == 0;
                                v43 = v60;
                              }

                              else
                              {
                                v52 = 1;
                              }
                            }

                            else
                            {
                              v52 = 1;
                              v43 = v59;
                            }
                          }

                          else
                          {
                            errorCopy13 = error;
                            v52 = 1;
                          }
                        }

                        else
                        {
                          v43 = v45;
                          errorCopy13 = error;
                          v52 = 1;
                        }
                      }

                      else
                      {
                        errorCopy13 = error;
                        v52 = 1;
                      }

                      v40 = v43;
                    }

                    else
                    {
                      errorCopy13 = error;
                      v52 = 1;
                    }

                    v37 = v40;
                  }

                  else
                  {
                    errorCopy13 = error;
                    v52 = 1;
                  }

                  v34 = v37;
                }

                else
                {
                  errorCopy13 = error;
                  v52 = 1;
                }

                v31 = v34;
              }

              else
              {
                errorCopy13 = error;
                v52 = 1;
              }

              v28 = v31;
            }

            else
            {
              errorCopy13 = error;
              v52 = 1;
            }

            v25 = v28;
          }

          else
          {
            errorCopy13 = error;
            v52 = 1;
          }

          v22 = v25;
        }

        else
        {
          errorCopy13 = error;
          v52 = 1;
        }

        v19 = v22;
      }

      else
      {
        errorCopy13 = error;
        v52 = 1;
      }

      v16 = v19;
    }

    else
    {
      errorCopy13 = error;
      v52 = 1;
    }

    if (!v52)
    {
      v54 = self->_builder;
      v83 = v16;
      v55 = [(KVItemBuilder *)v54 buildItemWithError:&v83];
      v13 = v83;

      if (v55)
      {
        v86[0] = v55;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
      }

      else
      {
        KMMapperSetBuilderError(errorCopy13, v13);
        v53 = 0;
      }

      goto LABEL_52;
    }

    v13 = v16;
    error = errorCopy13;
  }

  else
  {
  }

  KMMapperSetBuilderError(error, v13);
  v53 = 0;
LABEL_52:

  v56 = *MEMORY[0x277D85DE8];

  return v53;
}

- (KMMapper_SAPerson)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_SAPerson;
  v2 = [(KMMapper_SAPerson *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVFieldTypeToNumber();
    sharedUserIdKey = v2->_sharedUserIdKey;
    v2->_sharedUserIdKey = v5;
  }

  return v2;
}

@end