@interface WFCNContactStore
- (BOOL)addContact:(id)a3 error:(id *)a4;
- (WFCNContactStore)init;
- (WFCNContactStore)initWithContactStore:(id)a3;
- (id)allContactsWithSortOrder:(int64_t)a3 passingTest:(id)a4;
- (id)allUsedRelationLabels;
- (id)contactWithIdentifier:(id)a3;
- (id)contactsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)contactsWithName:(id)a3;
- (id)contactsWithName:(id)a3 keysToFetch:(id)a4;
- (id)currentUserContact;
- (id)firstContactWithEmailAddress:(id)a3;
- (id)firstContactWithPhoneNumber:(id)a3;
- (id)firstContactWithPredicate:(id)a3 propertyID:(int)a4 valueEqualityBlock:(id)a5;
@end

@implementation WFCNContactStore

- (id)allUsedRelationLabels
{
  v96 = *MEMORY[0x277D85DE8];
  cachedAllUsedLabels = self->_cachedAllUsedLabels;
  if (!cachedAllUsedLabels)
  {
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v4 = getCNLabelContactRelationMotherSymbolLoc_ptr;
    v93 = getCNLabelContactRelationMotherSymbolLoc_ptr;
    if (!getCNLabelContactRelationMotherSymbolLoc_ptr)
    {
      v85 = MEMORY[0x277D85DD0];
      v86 = 3221225472;
      v87 = __getCNLabelContactRelationMotherSymbolLoc_block_invoke;
      v88 = &unk_27834A178;
      v89 = &v90;
      v5 = ContactsLibrary_11559();
      v91[3] = dlsym(v5, "CNLabelContactRelationMother");
      getCNLabelContactRelationMotherSymbolLoc_ptr = *(v89[1] + 24);
      v4 = v91[3];
    }

    _Block_object_dispose(&v90, 8);
    if (v4)
    {
      v82 = *v4;
      v90 = 0;
      v91 = &v90;
      v92 = 0x2020000000;
      v6 = getCNLabelContactRelationFatherSymbolLoc_ptr;
      v93 = getCNLabelContactRelationFatherSymbolLoc_ptr;
      v94[0] = v82;
      if (!getCNLabelContactRelationFatherSymbolLoc_ptr)
      {
        v85 = MEMORY[0x277D85DD0];
        v86 = 3221225472;
        v87 = __getCNLabelContactRelationFatherSymbolLoc_block_invoke;
        v88 = &unk_27834A178;
        v89 = &v90;
        v7 = ContactsLibrary_11559();
        v91[3] = dlsym(v7, "CNLabelContactRelationFather");
        getCNLabelContactRelationFatherSymbolLoc_ptr = *(v89[1] + 24);
        v6 = v91[3];
      }

      _Block_object_dispose(&v90, 8);
      if (v6)
      {
        v81 = *v6;
        v94[1] = v81;
        v90 = 0;
        v91 = &v90;
        v92 = 0x2020000000;
        v8 = getCNLabelContactRelationParentSymbolLoc_ptr;
        v93 = getCNLabelContactRelationParentSymbolLoc_ptr;
        if (!getCNLabelContactRelationParentSymbolLoc_ptr)
        {
          v85 = MEMORY[0x277D85DD0];
          v86 = 3221225472;
          v87 = __getCNLabelContactRelationParentSymbolLoc_block_invoke;
          v88 = &unk_27834A178;
          v89 = &v90;
          v9 = ContactsLibrary_11559();
          v91[3] = dlsym(v9, "CNLabelContactRelationParent");
          getCNLabelContactRelationParentSymbolLoc_ptr = *(v89[1] + 24);
          v8 = v91[3];
        }

        _Block_object_dispose(&v90, 8);
        if (v8)
        {
          v80 = *v8;
          v94[2] = v80;
          v90 = 0;
          v91 = &v90;
          v92 = 0x2020000000;
          v10 = getCNLabelContactRelationBrotherSymbolLoc_ptr;
          v93 = getCNLabelContactRelationBrotherSymbolLoc_ptr;
          if (!getCNLabelContactRelationBrotherSymbolLoc_ptr)
          {
            v85 = MEMORY[0x277D85DD0];
            v86 = 3221225472;
            v87 = __getCNLabelContactRelationBrotherSymbolLoc_block_invoke;
            v88 = &unk_27834A178;
            v89 = &v90;
            v11 = ContactsLibrary_11559();
            v91[3] = dlsym(v11, "CNLabelContactRelationBrother");
            getCNLabelContactRelationBrotherSymbolLoc_ptr = *(v89[1] + 24);
            v10 = v91[3];
          }

          _Block_object_dispose(&v90, 8);
          if (v10)
          {
            v79 = *v10;
            v94[3] = v79;
            v90 = 0;
            v91 = &v90;
            v92 = 0x2020000000;
            v12 = getCNLabelContactRelationSisterSymbolLoc_ptr;
            v93 = getCNLabelContactRelationSisterSymbolLoc_ptr;
            if (!getCNLabelContactRelationSisterSymbolLoc_ptr)
            {
              v85 = MEMORY[0x277D85DD0];
              v86 = 3221225472;
              v87 = __getCNLabelContactRelationSisterSymbolLoc_block_invoke;
              v88 = &unk_27834A178;
              v89 = &v90;
              v13 = ContactsLibrary_11559();
              v91[3] = dlsym(v13, "CNLabelContactRelationSister");
              getCNLabelContactRelationSisterSymbolLoc_ptr = *(v89[1] + 24);
              v12 = v91[3];
            }

            _Block_object_dispose(&v90, 8);
            if (v12)
            {
              v78 = *v12;
              v94[4] = v78;
              v90 = 0;
              v91 = &v90;
              v92 = 0x2020000000;
              v14 = getCNLabelContactRelationSonSymbolLoc_ptr;
              v93 = getCNLabelContactRelationSonSymbolLoc_ptr;
              if (!getCNLabelContactRelationSonSymbolLoc_ptr)
              {
                v85 = MEMORY[0x277D85DD0];
                v86 = 3221225472;
                v87 = __getCNLabelContactRelationSonSymbolLoc_block_invoke;
                v88 = &unk_27834A178;
                v89 = &v90;
                v15 = ContactsLibrary_11559();
                v91[3] = dlsym(v15, "CNLabelContactRelationSon");
                getCNLabelContactRelationSonSymbolLoc_ptr = *(v89[1] + 24);
                v14 = v91[3];
              }

              _Block_object_dispose(&v90, 8);
              if (v14)
              {
                v77 = *v14;
                v94[5] = v77;
                v90 = 0;
                v91 = &v90;
                v92 = 0x2020000000;
                v16 = getCNLabelContactRelationDaughterSymbolLoc_ptr;
                v93 = getCNLabelContactRelationDaughterSymbolLoc_ptr;
                if (!getCNLabelContactRelationDaughterSymbolLoc_ptr)
                {
                  v85 = MEMORY[0x277D85DD0];
                  v86 = 3221225472;
                  v87 = __getCNLabelContactRelationDaughterSymbolLoc_block_invoke;
                  v88 = &unk_27834A178;
                  v89 = &v90;
                  v17 = ContactsLibrary_11559();
                  v91[3] = dlsym(v17, "CNLabelContactRelationDaughter");
                  getCNLabelContactRelationDaughterSymbolLoc_ptr = *(v89[1] + 24);
                  v16 = v91[3];
                }

                _Block_object_dispose(&v90, 8);
                if (v16)
                {
                  v18 = *v16;
                  v94[6] = v18;
                  v90 = 0;
                  v91 = &v90;
                  v92 = 0x2020000000;
                  v19 = getCNLabelContactRelationChildSymbolLoc_ptr;
                  v93 = getCNLabelContactRelationChildSymbolLoc_ptr;
                  if (!getCNLabelContactRelationChildSymbolLoc_ptr)
                  {
                    v85 = MEMORY[0x277D85DD0];
                    v86 = 3221225472;
                    v87 = __getCNLabelContactRelationChildSymbolLoc_block_invoke;
                    v88 = &unk_27834A178;
                    v89 = &v90;
                    v20 = ContactsLibrary_11559();
                    v91[3] = dlsym(v20, "CNLabelContactRelationChild");
                    getCNLabelContactRelationChildSymbolLoc_ptr = *(v89[1] + 24);
                    v19 = v91[3];
                  }

                  _Block_object_dispose(&v90, 8);
                  if (v19)
                  {
                    v21 = *v19;
                    v94[7] = v21;
                    v90 = 0;
                    v91 = &v90;
                    v92 = 0x2020000000;
                    v22 = getCNLabelContactRelationFriendSymbolLoc_ptr;
                    v93 = getCNLabelContactRelationFriendSymbolLoc_ptr;
                    if (!getCNLabelContactRelationFriendSymbolLoc_ptr)
                    {
                      v85 = MEMORY[0x277D85DD0];
                      v86 = 3221225472;
                      v87 = __getCNLabelContactRelationFriendSymbolLoc_block_invoke;
                      v88 = &unk_27834A178;
                      v89 = &v90;
                      v23 = ContactsLibrary_11559();
                      v91[3] = dlsym(v23, "CNLabelContactRelationFriend");
                      getCNLabelContactRelationFriendSymbolLoc_ptr = *(v89[1] + 24);
                      v22 = v91[3];
                    }

                    _Block_object_dispose(&v90, 8);
                    if (v22)
                    {
                      v24 = *v22;
                      v94[8] = v24;
                      v90 = 0;
                      v91 = &v90;
                      v92 = 0x2020000000;
                      v25 = getCNLabelContactRelationSpouseSymbolLoc_ptr;
                      v93 = getCNLabelContactRelationSpouseSymbolLoc_ptr;
                      if (!getCNLabelContactRelationSpouseSymbolLoc_ptr)
                      {
                        v85 = MEMORY[0x277D85DD0];
                        v86 = 3221225472;
                        v87 = __getCNLabelContactRelationSpouseSymbolLoc_block_invoke;
                        v88 = &unk_27834A178;
                        v89 = &v90;
                        v26 = ContactsLibrary_11559();
                        v91[3] = dlsym(v26, "CNLabelContactRelationSpouse");
                        getCNLabelContactRelationSpouseSymbolLoc_ptr = *(v89[1] + 24);
                        v25 = v91[3];
                      }

                      _Block_object_dispose(&v90, 8);
                      if (v25)
                      {
                        v27 = *v25;
                        v94[9] = v27;
                        v90 = 0;
                        v91 = &v90;
                        v92 = 0x2020000000;
                        v28 = getCNLabelContactRelationPartnerSymbolLoc_ptr;
                        v93 = getCNLabelContactRelationPartnerSymbolLoc_ptr;
                        if (!getCNLabelContactRelationPartnerSymbolLoc_ptr)
                        {
                          v85 = MEMORY[0x277D85DD0];
                          v86 = 3221225472;
                          v87 = __getCNLabelContactRelationPartnerSymbolLoc_block_invoke;
                          v88 = &unk_27834A178;
                          v89 = &v90;
                          v29 = ContactsLibrary_11559();
                          v91[3] = dlsym(v29, "CNLabelContactRelationPartner");
                          getCNLabelContactRelationPartnerSymbolLoc_ptr = *(v89[1] + 24);
                          v28 = v91[3];
                        }

                        _Block_object_dispose(&v90, 8);
                        if (v28)
                        {
                          v30 = *v28;
                          v94[10] = v30;
                          v90 = 0;
                          v91 = &v90;
                          v92 = 0x2020000000;
                          v31 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
                          v93 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
                          if (!getCNLabelContactRelationAssistantSymbolLoc_ptr)
                          {
                            v85 = MEMORY[0x277D85DD0];
                            v86 = 3221225472;
                            v87 = __getCNLabelContactRelationAssistantSymbolLoc_block_invoke;
                            v88 = &unk_27834A178;
                            v89 = &v90;
                            v32 = ContactsLibrary_11559();
                            v91[3] = dlsym(v32, "CNLabelContactRelationAssistant");
                            getCNLabelContactRelationAssistantSymbolLoc_ptr = *(v89[1] + 24);
                            v31 = v91[3];
                          }

                          _Block_object_dispose(&v90, 8);
                          if (v31)
                          {
                            v33 = *v31;
                            v94[11] = v33;
                            v90 = 0;
                            v91 = &v90;
                            v92 = 0x2020000000;
                            v34 = getCNLabelContactRelationManagerSymbolLoc_ptr;
                            v93 = getCNLabelContactRelationManagerSymbolLoc_ptr;
                            if (!getCNLabelContactRelationManagerSymbolLoc_ptr)
                            {
                              v85 = MEMORY[0x277D85DD0];
                              v86 = 3221225472;
                              v87 = __getCNLabelContactRelationManagerSymbolLoc_block_invoke;
                              v88 = &unk_27834A178;
                              v89 = &v90;
                              v35 = ContactsLibrary_11559();
                              v91[3] = dlsym(v35, "CNLabelContactRelationManager");
                              getCNLabelContactRelationManagerSymbolLoc_ptr = *(v89[1] + 24);
                              v34 = v91[3];
                            }

                            _Block_object_dispose(&v90, 8);
                            if (v34)
                            {
                              v95 = *v34;
                              v36 = MEMORY[0x277CBEA60];
                              v37 = v95;
                              v38 = [v36 arrayWithObjects:v94 count:13];

                              v39 = MEMORY[0x277CBEB40];
                              v40 = [v38 if_map:&__block_literal_global_79];
                              v41 = [v39 orderedSetWithArray:v40];

                              v42 = MEMORY[0x277CBEB70];
                              v43 = [(WFCNContactStore *)self allContactsWithSortOrder:0];
                              v83[0] = MEMORY[0x277D85DD0];
                              v83[1] = 3221225472;
                              v83[2] = __41__WFCNContactStore_allUsedRelationLabels__block_invoke_2;
                              v83[3] = &unk_2783471C0;
                              v84 = v41;
                              v44 = v41;
                              v45 = [v43 if_flatMap:v83];
                              v46 = [v42 orderedSetWithArray:v45];

                              v47 = [v46 array];
                              [v44 addObjectsFromArray:v47];

                              v48 = [v44 array];
                              v49 = self->_cachedAllUsedLabels;
                              self->_cachedAllUsedLabels = v48;

                              cachedAllUsedLabels = self->_cachedAllUsedLabels;
                              goto LABEL_42;
                            }

                            v75 = [MEMORY[0x277CCA890] currentHandler];
                            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationManager(void)"];
                            [v75 handleFailureInFunction:v76 file:@"WFCNContact.m" lineNumber:60 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                          }

                          else
                          {
                            v73 = [MEMORY[0x277CCA890] currentHandler];
                            v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationAssistant(void)"];
                            [v73 handleFailureInFunction:v74 file:@"WFCNContact.m" lineNumber:59 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                          }
                        }

                        else
                        {
                          v71 = [MEMORY[0x277CCA890] currentHandler];
                          v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationPartner(void)"];
                          [v71 handleFailureInFunction:v72 file:@"WFCNContact.m" lineNumber:58 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                        }
                      }

                      else
                      {
                        v69 = [MEMORY[0x277CCA890] currentHandler];
                        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationSpouse(void)"];
                        [v69 handleFailureInFunction:v70 file:@"WFCNContact.m" lineNumber:57 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                      }
                    }

                    else
                    {
                      v67 = [MEMORY[0x277CCA890] currentHandler];
                      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationFriend(void)"];
                      [v67 handleFailureInFunction:v68 file:@"WFCNContact.m" lineNumber:56 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                    }
                  }

                  else
                  {
                    v65 = [MEMORY[0x277CCA890] currentHandler];
                    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationChild(void)"];
                    [v65 handleFailureInFunction:v66 file:@"WFCNContact.m" lineNumber:55 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                  }
                }

                else
                {
                  v63 = [MEMORY[0x277CCA890] currentHandler];
                  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationDaughter(void)"];
                  [v63 handleFailureInFunction:v64 file:@"WFCNContact.m" lineNumber:54 description:{@"%s", dlerror(), v77, v78, v79, v80, v81, v82}];
                }
              }

              else
              {
                v61 = [MEMORY[0x277CCA890] currentHandler];
                v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationSon(void)"];
                [v61 handleFailureInFunction:v62 file:@"WFCNContact.m" lineNumber:53 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v59 = [MEMORY[0x277CCA890] currentHandler];
              v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationSister(void)"];
              [v59 handleFailureInFunction:v60 file:@"WFCNContact.m" lineNumber:52 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            v57 = [MEMORY[0x277CCA890] currentHandler];
            v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationBrother(void)"];
            [v57 handleFailureInFunction:v58 file:@"WFCNContact.m" lineNumber:51 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          v55 = [MEMORY[0x277CCA890] currentHandler];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationParent(void)"];
          [v55 handleFailureInFunction:v56 file:@"WFCNContact.m" lineNumber:50 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v53 = [MEMORY[0x277CCA890] currentHandler];
        v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationFather(void)"];
        [v53 handleFailureInFunction:v54 file:@"WFCNContact.m" lineNumber:49 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v51 = [MEMORY[0x277CCA890] currentHandler];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNLabelContactRelationMother(void)"];
      [v51 handleFailureInFunction:v52 file:@"WFCNContact.m" lineNumber:48 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_42:

  return cachedAllUsedLabels;
}

id __41__WFCNContactStore_allUsedRelationLabels__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 contactRelations];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__WFCNContactStore_allUsedRelationLabels__block_invoke_3;
  v6[3] = &unk_278347198;
  v7 = *(a1 + 32);
  v4 = [v3 if_compactMap:v6];

  return v4;
}

id __41__WFCNContactStore_allUsedRelationLabels__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id __41__WFCNContactStore_allUsedRelationLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [getCNLabeledValueClass() localizedStringForLabel:v2];

  return v3;
}

- (id)currentUserContact
{
  v31 = *MEMORY[0x277D85DE8];
  if (WFCNContactAuthorizationStatus() == 3)
  {
    currentUserWFCNContact = self->_currentUserWFCNContact;
    if (currentUserWFCNContact)
    {
LABEL_3:
      v4 = currentUserWFCNContact;
      goto LABEL_8;
    }

    v7 = [getCNContactClass() predicateForMeContact];
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = +[WFCNContact requiredKeysToFetch];
    v10 = [v8 initWithArray:v9];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v11 = getCNContactRelationsKeySymbolLoc_ptr;
    v27 = getCNContactRelationsKeySymbolLoc_ptr;
    if (!getCNContactRelationsKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCNContactRelationsKeySymbolLoc_block_invoke;
      v29 = &unk_27834A178;
      v30 = &v24;
      v12 = ContactsLibrary_11559();
      v13 = dlsym(v12, "CNContactRelationsKey");
      *(v30[1] + 24) = v13;
      getCNContactRelationsKeySymbolLoc_ptr = *(v30[1] + 24);
      v11 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v11)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactRelationsKey(void)"];
      [v21 handleFailureInFunction:v22 file:@"WFCNContact.m" lineNumber:44 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [v10 addObject:*v11];
    v14 = [(WFCNContactStore *)self contactStore];
    v23 = 0;
    v15 = [v14 unifiedContactsMatchingPredicate:v7 keysToFetch:v10 error:&v23];
    v16 = v23;

    if (v15)
    {
      if ([v15 count])
      {
        v17 = [v15 firstObject];
        v18 = [WFCNContact contactWithCNContact:v17];
        v19 = self->_currentUserWFCNContact;
        self->_currentUserWFCNContact = v18;

        currentUserWFCNContact = self->_currentUserWFCNContact;
        goto LABEL_3;
      }
    }

    else
    {
      v20 = getWFWFContactLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFCNContactStore currentUserContact]";
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_impl(&dword_21E1BD000, v20, OS_LOG_TYPE_ERROR, "%s Failed to fetch contacts for me predicate: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = getWFWFContactLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[WFCNContactStore currentUserContact]";
      _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEBUG, "%s WFCNContact is not authorized to access CNContactStore!", buf, 0xCu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (BOOL)addContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getCNSaveRequestClass_softClass;
  v17 = getCNSaveRequestClass_softClass;
  if (!getCNSaveRequestClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCNSaveRequestClass_block_invoke;
    v13[3] = &unk_27834A178;
    v13[4] = &v14;
    __getCNSaveRequestClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = objc_alloc_init(v7);
  [v9 addContact:v6 toContainerWithIdentifier:0];
  v10 = [(WFCNContactStore *)self contactStore];
  v11 = [v10 executeSaveRequest:v9 error:a4];

  return v11;
}

- (id)contactsMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFCNContactStore *)self contactStore];
  v8 = +[WFCNContact requiredKeysToFetch];
  v9 = [v7 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:a4];

  v10 = [v9 if_map:&__block_literal_global_75_11772];

  return v10;
}

- (id)contactWithIdentifier:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFCNContact.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifier"}];
  }

  if (WFCNContactAuthorizationStatus() == 3)
  {
    CNContactClass = getCNContactClass();
    v27[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v8 = [CNContactClass predicateForContactsWithIdentifiers:v7];

    v9 = [(WFCNContactStore *)self contactStore];
    v10 = +[WFCNContact requiredKeysToFetch];
    v20 = 0;
    v11 = [v9 unifiedContactsMatchingPredicate:v8 keysToFetch:v10 error:&v20];
    v12 = v20;

    if (v11)
    {
      if ([v11 count])
      {
        v13 = [v11 firstObject];
        v14 = [WFCNContact contactWithCNContact:v13];
LABEL_16:

        goto LABEL_17;
      }

      v13 = getWFWFContactLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[WFCNContactStore contactWithIdentifier:]";
        v15 = "%s No contacts found, returning nil!";
        v16 = v13;
        v17 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = getWFWFContactLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[WFCNContactStore contactWithIdentifier:]";
        v23 = 2114;
        v24 = v8;
        v25 = 2114;
        v26 = v12;
        v15 = "%s Failed to fetch contacts for predicate %{public}@: %{public}@";
        v16 = v13;
        v17 = 32;
LABEL_14:
        _os_log_impl(&dword_21E1BD000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v8 = getWFWFContactLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "[WFCNContactStore contactWithIdentifier:]";
    _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Not authorized to access contacts, returning nil!", buf, 0xCu);
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (id)firstContactWithPhoneNumber:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getCNPhoneNumberClass_softClass;
  v18 = getCNPhoneNumberClass_softClass;
  if (!getCNPhoneNumberClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getCNPhoneNumberClass_block_invoke;
    v14[3] = &unk_27834A178;
    v14[4] = &v15;
    __getCNPhoneNumberClass_block_invoke(v14);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [v4 string];
  v8 = [v5 phoneNumberWithStringValue:v7];

  if (v8)
  {
    v9 = [getCNContactClass() predicateForContactsMatchingPhoneNumber:v8 prefixHint:0 groupIdentifiers:0 limitToOneResult:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__WFCNContactStore_firstContactWithPhoneNumber___block_invoke;
    v12[3] = &unk_278347920;
    v13 = v8;
    v10 = [(WFCNContactStore *)self firstContactWithPredicate:v9 propertyID:3 valueEqualityBlock:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __48__WFCNContactStore_firstContactWithPhoneNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 isLikePhoneNumber:*(a1 + 32)];

  return v4;
}

- (id)firstContactWithEmailAddress:(id)a3
{
  v4 = a3;
  CNContactClass = getCNContactClass();
  v6 = [v4 address];
  v7 = [CNContactClass predicateForContactsMatchingEmailAddress:v6 groupIdentifiers:0 limitToOneResult:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WFCNContactStore_firstContactWithEmailAddress___block_invoke;
  v11[3] = &unk_278347920;
  v12 = v4;
  v8 = v4;
  v9 = [(WFCNContactStore *)self firstContactWithPredicate:v7 propertyID:4 valueEqualityBlock:v11];

  return v9;
}

uint64_t __49__WFCNContactStore_firstContactWithEmailAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)firstContactWithPredicate:(id)a3 propertyID:(int)a4 valueEqualityBlock:(id)a5
{
  v6 = *&a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (WFCNContactAuthorizationStatus() == 3)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v11 = [(WFCNContactStore *)self contactStore];
  v12 = +[WFCNContact requiredKeysToFetch];
  v25 = 0;
  v13 = [v11 unifiedContactsMatchingPredicate:v8 keysToFetch:v12 error:&v25];
  v14 = v25;

  if (v13)
  {
    v15 = [v13 firstObject];
    if (v15)
    {
      v16 = CNContactPropertyKeyFromWFContactPropertyID(v6);
      if ([v15 isKeyAvailable:v16])
      {
        v17 = [v15 valueForKey:v16];
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __76__WFCNContactStore_firstContactWithPredicate_propertyID_valueEqualityBlock___block_invoke;
        v23 = &unk_278347130;
        v24 = v9;
        v18 = [v17 indexOfObjectPassingTest:&v20];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0;
        }

        else
        {
          v10 = [WFCNContact contactWithCNContact:v15 propertyID:v6 multivalueIndex:v18, v20, v21, v22, v23];
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v15 = getWFWFContactLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[WFCNContactStore firstContactWithPredicate:propertyID:valueEqualityBlock:]";
      v28 = 2114;
      v29 = v8;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Failed to fetch contacts for predicate %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v10 = 0;
LABEL_15:

LABEL_16:

  return v10;
}

- (id)contactsWithName:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (WFCNContactAuthorizationStatus() == 3)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WFCNContactStore *)self contactStore];
    v10 = [getCNContactClass() predicateForContactsMatchingName:v6];
    v11 = [v9 unifiedContactsMatchingPredicate:v10 keysToFetch:v7 error:0];
    v8 = [v11 if_map:&__block_literal_global_59];
  }

  return v8;
}

- (id)contactsWithName:(id)a3
{
  v4 = a3;
  v5 = +[WFCNContact requiredKeysToFetch];
  v6 = [(WFCNContactStore *)self contactsWithName:v4 keysToFetch:v5];

  return v6;
}

- (id)allContactsWithSortOrder:(int64_t)a3 passingTest:(id)a4
{
  v6 = a4;
  if (WFCNContactAuthorizationStatus() == 3)
  {
    v7 = objc_alloc(getCNContactFetchRequestClass());
    v8 = +[WFCNContact requiredKeysToFetch];
    v9 = [v7 initWithKeysToFetch:v8];

    if ((a3 - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    [v9 setSortOrder:v10];
    v11 = objc_opt_new();
    v12 = [(WFCNContactStore *)self contactStore];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__WFCNContactStore_allContactsWithSortOrder_passingTest___block_invoke;
    v17[3] = &unk_2783470C8;
    v19 = v6;
    v13 = v11;
    v18 = v13;
    [v12 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v17];

    v14 = v18;
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __57__WFCNContactStore_allContactsWithSortOrder_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [WFCNContact contactWithCNContact:a2];
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (WFCNContactStore)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCNContactStore;
  v6 = [(WFContactStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

- (WFCNContactStore)init
{
  getCNContactStoreClass();
  v3 = objc_opt_new();
  v4 = [(WFCNContactStore *)self initWithContactStore:v3];

  return v4;
}

@end