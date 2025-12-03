@interface KMMapper_CNContact
- (KMMapper_CNContact)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_CNContact

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v115[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_alternativeItemIdKey];
  v10 = v9;
  if (v9)
  {
    identifier = v9;
  }

  else
  {
    identifier = [objectCopy identifier];
  }

  v12 = identifier;
  builder = self->_builder;
  v114 = 0;
  v14 = [(KVItemBuilder *)builder setItemType:2 itemId:v12 error:&v114];
  v15 = v114;
  if (!v14)
  {
LABEL_61:
    v19 = v15;
    goto LABEL_62;
  }

  v16 = self->_builder;
  namePrefix = [objectCopy namePrefix];
  v113 = v15;
  v18 = [(KVItemBuilder *)v16 addFieldWithType:55 value:namePrefix error:&v113];
  v19 = v113;

  if (v18)
  {
    errorCopy = error;
    v20 = self->_builder;
    [objectCopy givenName];
    v108 = v112[19] = v19;
    v21 = [KVItemBuilder addFieldWithType:v20 value:"addFieldWithType:value:error:" error:50];
    v15 = v19;

    v107 = v21;
    v109 = v18;
    if (v21)
    {
      v22 = self->_builder;
      [objectCopy middleName];
      v106 = v112[18] = v15;
      v23 = [KVItemBuilder addFieldWithType:v22 value:"addFieldWithType:value:error:" error:51];
      v24 = v15;

      v105 = v23;
      if (v23)
      {
        v25 = self->_builder;
        [objectCopy familyName];
        v104 = v112[17] = v24;
        v26 = [KVItemBuilder addFieldWithType:v25 value:"addFieldWithType:value:error:" error:52];
        v27 = v24;

        v103 = v26;
        if (v26)
        {
          v28 = self->_builder;
          [objectCopy previousFamilyName];
          v102 = v112[16] = v27;
          v29 = [KVItemBuilder addFieldWithType:v28 value:"addFieldWithType:value:error:" error:53];
          v30 = v27;

          v101 = v29;
          if (v29)
          {
            v31 = self->_builder;
            [objectCopy nameSuffix];
            v100 = v112[15] = v30;
            v32 = [KVItemBuilder addFieldWithType:v31 value:"addFieldWithType:value:error:" error:56];
            v33 = v30;

            v99 = v32;
            if (v32)
            {
              v34 = self->_builder;
              [objectCopy nickname];
              v98 = v112[14] = v33;
              v35 = [KVItemBuilder addFieldWithType:v34 value:"addFieldWithType:value:error:" error:54];
              v36 = v33;

              v97 = v35;
              if (v35)
              {
                v37 = self->_builder;
                [objectCopy organizationName];
                v96 = v112[13] = v36;
                v38 = [KVItemBuilder addFieldWithType:v37 value:"addFieldWithType:value:error:" error:64];
                v39 = v36;

                v95 = v38;
                if (v38)
                {
                  v40 = self->_builder;
                  [objectCopy departmentName];
                  v94 = v112[12] = v39;
                  v41 = [KVItemBuilder addFieldWithType:v40 value:"addFieldWithType:value:error:" error:65];
                  v42 = v39;

                  v93 = v41;
                  if (v41)
                  {
                    v43 = self->_builder;
                    [objectCopy jobTitle];
                    v92 = v112[11] = v42;
                    v44 = [KVItemBuilder addFieldWithType:v43 value:"addFieldWithType:value:error:" error:66];
                    v45 = v42;

                    v91 = v44;
                    if (v44)
                    {
                      v46 = self->_builder;
                      [objectCopy phoneticGivenName];
                      v90 = v112[10] = v45;
                      v47 = [KVItemBuilder addFieldWithType:v46 value:"addFieldWithType:value:error:" error:67];
                      v48 = v45;

                      v89 = v47;
                      if (v47)
                      {
                        v49 = self->_builder;
                        [objectCopy phoneticMiddleName];
                        v88 = v112[9] = v48;
                        v50 = [KVItemBuilder addFieldWithType:v49 value:"addFieldWithType:value:error:" error:68];
                        v51 = v48;

                        v87 = v50;
                        if (v50)
                        {
                          v52 = self->_builder;
                          [objectCopy phoneticFamilyName];
                          v86 = v112[8] = v51;
                          v53 = [KVItemBuilder addFieldWithType:v52 value:"addFieldWithType:value:error:" error:69];
                          v54 = v51;

                          v85 = v53;
                          if (v53)
                          {
                            v55 = self->_builder;
                            [objectCopy phoneticOrganizationName];
                            v84 = v112[7] = v54;
                            v56 = [KVItemBuilder addFieldWithType:v55 value:"addFieldWithType:value:error:" error:70];
                            v57 = v54;

                            v83 = v56;
                            if (v56)
                            {
                              [objectCopy phoneNumbers];
                              v112[6] = v57;
                              v82 = v58 = 1;
                              v59 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:57 labelOnly:? excludeDefault:? error:?];
                              v60 = v57;

                              if (v59)
                              {
                                [objectCopy emailAddresses];
                                v81 = v112[5] = v60;
                                v61 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:58 labelOnly:? excludeDefault:? error:?];
                                v57 = v60;

                                error = errorCopy;
                                if (v61)
                                {
                                  [objectCopy postalAddresses];
                                  v80 = v112[4] = v57;
                                  v62 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:59 labelOnly:? excludeDefault:? error:?];
                                  v78 = v57;

                                  if (v62)
                                  {
                                    [objectCopy urlAddresses];
                                    v77 = v112[3] = v78;
                                    v63 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:60 labelOnly:? excludeDefault:? error:?];
                                    v57 = v78;

                                    if (v63)
                                    {
                                      [objectCopy socialProfiles];
                                      v79 = v112[2] = v57;
                                      v64 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:61 labelOnly:? excludeDefault:? error:?];
                                      v65 = v57;

                                      if (v64)
                                      {
                                        [objectCopy instantMessageAddresses];
                                        v76 = v112[1] = v65;
                                        v66 = [KMMapper_CNContact _addLabeledFieldsOfType:"_addLabeledFieldsOfType:labeledValues:labelOnly:excludeDefault:error:" labeledValues:62 labelOnly:? excludeDefault:? error:?];
                                        v67 = v65;

                                        if (v66)
                                        {
                                          contactRelations = [objectCopy contactRelations];
                                          v112[0] = v67;
                                          v69 = [(KMMapper_CNContact *)self _addLabeledFieldsOfType:63 labeledValues:contactRelations labelOnly:0 excludeDefault:0 error:v112];
                                          v75 = v112[0];

                                          v58 = !v69;
                                          v67 = v75;
                                        }

                                        v65 = v67;
                                      }

                                      v57 = v65;
                                    }

                                    error = errorCopy;
                                  }

                                  else
                                  {
                                    v57 = v78;
                                  }
                                }
                              }

                              else
                              {
                                v57 = v60;
                                error = errorCopy;
                              }
                            }

                            else
                            {
                              v58 = 1;
                              error = errorCopy;
                            }

                            v54 = v57;
                          }

                          else
                          {
                            v58 = 1;
                            error = errorCopy;
                          }

                          v51 = v54;
                        }

                        else
                        {
                          v58 = 1;
                          error = errorCopy;
                        }

                        v48 = v51;
                      }

                      else
                      {
                        v58 = 1;
                        error = errorCopy;
                      }

                      v45 = v48;
                    }

                    else
                    {
                      v58 = 1;
                      error = errorCopy;
                    }

                    v42 = v45;
                  }

                  else
                  {
                    v58 = 1;
                    error = errorCopy;
                  }

                  v39 = v42;
                }

                else
                {
                  v58 = 1;
                  error = errorCopy;
                }

                v36 = v39;
              }

              else
              {
                v58 = 1;
                error = errorCopy;
              }

              v33 = v36;
            }

            else
            {
              v58 = 1;
              error = errorCopy;
            }

            v30 = v33;
          }

          else
          {
            v58 = 1;
            error = errorCopy;
          }

          v27 = v30;
        }

        else
        {
          v58 = 1;
          error = errorCopy;
        }

        v24 = v27;
      }

      else
      {
        v58 = 1;
        error = errorCopy;
      }

      v15 = v24;
    }

    else
    {
      v58 = 1;
      error = errorCopy;
    }

    if (!v58)
    {
      v73 = self->_builder;
      v111 = v15;
      v74 = [(KVItemBuilder *)v73 buildItemWithError:&v111];
      v19 = v111;

      if (v74)
      {
        v115[0] = v74;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:1];
      }

      else
      {
        KMMapperSetBuilderError(error, v19);
        v70 = 0;
      }

      goto LABEL_63;
    }

    goto LABEL_61;
  }

LABEL_62:
  KMMapperSetBuilderError(error, v19);
  v70 = 0;
LABEL_63:

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

- (KMMapper_CNContact)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_CNContact;
  v2 = [(KMMapper_CNContact *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v5;
  }

  return v2;
}

@end