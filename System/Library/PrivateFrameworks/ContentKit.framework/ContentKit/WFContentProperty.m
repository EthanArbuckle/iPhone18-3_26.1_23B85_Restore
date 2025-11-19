@interface WFContentProperty
+ (id)possibleLabelsForClass:(Class)a3 localized:(BOOL)a4;
- (BOOL)hasNegative;
- (BOOL)hasPropertyClass:(Class)a3;
- (BOOL)hasPropertyClassOfKind:(Class)a3;
- (BOOL)hasPropertyClassSubclassingClass:(Class)a3;
- (BOOL)isEquivalentToProperty:(id)a3;
- (BOOL)isLabeledValue;
- (Class)valueItemClass;
- (NSArray)possibleLabels;
- (NSSet)allowedTransactionModes;
- (NSString)localizedName;
- (NSString)localizedNegativeName;
- (NSString)localizedSingularItemName;
- (WFContentProperty)initWithKeyPath:(id)a3 block:(id)a4 setterBlock:(id)a5 name:(id)a6 propertyClasses:(id)a7 multipleValues:(BOOL)a8 filterable:(BOOL)a9 sortable:(BOOL)a10 gettable:(BOOL)a11 settable:(BOOL)a12 appendable:(BOOL)a13 removable:(BOOL)a14 primary:(BOOL)a15 allowedOperators:(id)a16 userInfo:(id)a17 possibleValues:(id)a18 caseInsensitive:(BOOL)a19 negativeName:(id)a20 singularItemName:(id)a21 irrational:(BOOL)a22 tense:(unint64_t)a23 timeUnits:(unint64_t)a24 comparableUnits:(unint64_t)a25 measurementUnitType:(id)a26 displayName:(id)a27 canLowercaseName:(BOOL)a28 linkPropertyIdentifier:(id)a29;
- (WFContentPropertyPossibleValuesGetter)possibleValues;
- (id)description;
- (id)localizedNameWithContext:(id)a3;
- (id)preferredTransactionModeWithCurrentMode:(id)a3;
- (unint64_t)equivalentHash;
- (void)getValueForObject:(id)a3 completionHandler:(id)a4;
- (void)getValuesForObject:(id)a3 completionHandler:(id)a4;
- (void)setPossibleValues:(id)a3;
- (void)updateWithValue:(id)a3 withTransaction:(id)a4 completion:(id)a5;
@end

@implementation WFContentProperty

- (NSArray)possibleLabels
{
  if ([(WFContentProperty *)self isLabeledValue])
  {
    v3 = [(WFContentProperty *)self propertyClasses];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__WFContentProperty_CNLabeledValue__possibleLabels__block_invoke;
    v6[3] = &unk_2783457C8;
    v6[4] = self;
    v4 = [v3 if_flatMap:v6];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

uint64_t __51__WFContentProperty_CNLabeledValue__possibleLabels__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();

  return [v3 possibleLabelsForClass:a2 localized:0];
}

+ (id)possibleLabelsForClass:(Class)a3 localized:(BOOL)a4
{
  v72 = a4;
  v81 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v6 = getCNLabelHomeSymbolLoc_ptr;
  v76 = getCNLabelHomeSymbolLoc_ptr;
  if (!getCNLabelHomeSymbolLoc_ptr)
  {
    v7 = ContactsLibrary();
    v74[3] = dlsym(v7, "CNLabelHome");
    getCNLabelHomeSymbolLoc_ptr = v74[3];
    v6 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v6)
  {
    v48 = [MEMORY[0x277CCA890] currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelHome(void)"];
    [v48 handleFailureInFunction:v49 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:17 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  v8 = *v6;
  v79[0] = v8;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v9 = getCNLabelWorkSymbolLoc_ptr;
  v76 = getCNLabelWorkSymbolLoc_ptr;
  if (!getCNLabelWorkSymbolLoc_ptr)
  {
    v10 = ContactsLibrary();
    v74[3] = dlsym(v10, "CNLabelWork");
    getCNLabelWorkSymbolLoc_ptr = v74[3];
    v9 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v9)
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelWork(void)"];
    [v50 handleFailureInFunction:v51 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:18 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  v11 = *v9;
  v79[1] = v11;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v12 = getCNLabelSchoolSymbolLoc_ptr;
  v76 = getCNLabelSchoolSymbolLoc_ptr;
  if (!getCNLabelSchoolSymbolLoc_ptr)
  {
    v13 = ContactsLibrary();
    v74[3] = dlsym(v13, "CNLabelSchool");
    getCNLabelSchoolSymbolLoc_ptr = v74[3];
    v12 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v12)
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelSchool(void)"];
    [v52 handleFailureInFunction:v53 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:19 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  v80 = *v12;
  v14 = MEMORY[0x277CBEA60];
  v15 = v80;
  v16 = [v14 arrayWithObjects:v79 count:3];

  v17 = [v5 arrayWithArray:v16];

  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v18 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
    v76 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberiPhoneSymbolLoc_ptr)
    {
      v19 = ContactsLibrary();
      v74[3] = dlsym(v19, "CNLabelPhoneNumberiPhone");
      getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = v74[3];
      v18 = v74[3];
    }

    _Block_object_dispose(&v73, 8);
    if (v18)
    {
      v20 = *v18;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v21 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
      v76 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
      v77[0] = v20;
      if (!getCNLabelPhoneNumberMobileSymbolLoc_ptr)
      {
        v22 = ContactsLibrary();
        v74[3] = dlsym(v22, "CNLabelPhoneNumberMobile");
        getCNLabelPhoneNumberMobileSymbolLoc_ptr = v74[3];
        v21 = v74[3];
      }

      _Block_object_dispose(&v73, 8);
      if (v21)
      {
        v23 = *v21;
        v77[1] = v23;
        v73 = 0;
        v74 = &v73;
        v75 = 0x2020000000;
        v24 = getCNLabelPhoneNumberMainSymbolLoc_ptr;
        v76 = getCNLabelPhoneNumberMainSymbolLoc_ptr;
        if (!getCNLabelPhoneNumberMainSymbolLoc_ptr)
        {
          v25 = ContactsLibrary();
          v74[3] = dlsym(v25, "CNLabelPhoneNumberMain");
          getCNLabelPhoneNumberMainSymbolLoc_ptr = v74[3];
          v24 = v74[3];
        }

        _Block_object_dispose(&v73, 8);
        if (v24)
        {
          v26 = *v24;
          v77[2] = v26;
          v73 = 0;
          v74 = &v73;
          v75 = 0x2020000000;
          v27 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr;
          v76 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr;
          if (!getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr)
          {
            v28 = ContactsLibrary();
            v74[3] = dlsym(v28, "CNLabelPhoneNumberHomeFax");
            getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr = v74[3];
            v27 = v74[3];
          }

          _Block_object_dispose(&v73, 8);
          if (v27)
          {
            v29 = *v27;
            v77[3] = v29;
            v73 = 0;
            v74 = &v73;
            v75 = 0x2020000000;
            v30 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr;
            v76 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr;
            if (!getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr)
            {
              v31 = ContactsLibrary();
              v74[3] = dlsym(v31, "CNLabelPhoneNumberWorkFax");
              getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr = v74[3];
              v30 = v74[3];
            }

            _Block_object_dispose(&v73, 8);
            if (v30)
            {
              v32 = *v30;
              v77[4] = v32;
              v73 = 0;
              v74 = &v73;
              v75 = 0x2020000000;
              v33 = getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr;
              v76 = getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr;
              if (!getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr)
              {
                v34 = ContactsLibrary();
                v74[3] = dlsym(v34, "CNLabelPhoneNumberOtherFax");
                getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr = v74[3];
                v33 = v74[3];
              }

              _Block_object_dispose(&v73, 8);
              if (v33)
              {
                v35 = *v33;
                v77[5] = v35;
                v73 = 0;
                v74 = &v73;
                v75 = 0x2020000000;
                v36 = getCNLabelPhoneNumberPagerSymbolLoc_ptr;
                v76 = getCNLabelPhoneNumberPagerSymbolLoc_ptr;
                if (!getCNLabelPhoneNumberPagerSymbolLoc_ptr)
                {
                  v37 = ContactsLibrary();
                  v74[3] = dlsym(v37, "CNLabelPhoneNumberPager");
                  getCNLabelPhoneNumberPagerSymbolLoc_ptr = v74[3];
                  v36 = v74[3];
                }

                _Block_object_dispose(&v73, 8);
                if (v36)
                {
                  v78 = *v36;
                  v38 = MEMORY[0x277CBEA60];
                  v39 = v78;
                  v40 = [v38 arrayWithObjects:v77 count:7];

                  [v17 addObjectsFromArray:v40];
                  goto LABEL_38;
                }

                v68 = [MEMORY[0x277CCA890] currentHandler];
                v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberPager(void)"];
                [v68 handleFailureInFunction:v69 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:27 description:{@"%s", dlerror()}];
              }

              else
              {
                v66 = [MEMORY[0x277CCA890] currentHandler];
                v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberOtherFax(void)"];
                [v66 handleFailureInFunction:v67 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:21 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v64 = [MEMORY[0x277CCA890] currentHandler];
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberWorkFax(void)"];
              [v64 handleFailureInFunction:v65 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:26 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            v62 = [MEMORY[0x277CCA890] currentHandler];
            v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberHomeFax(void)"];
            [v62 handleFailureInFunction:v63 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:25 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          v60 = [MEMORY[0x277CCA890] currentHandler];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMain(void)"];
          [v60 handleFailureInFunction:v61 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:24 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v58 = [MEMORY[0x277CCA890] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMobile(void)"];
        [v58 handleFailureInFunction:v59 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:23 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v56 = [MEMORY[0x277CCA890] currentHandler];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberiPhone(void)"];
      [v56 handleFailureInFunction:v57 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:22 description:{@"%s", dlerror()}];
    }

LABEL_59:
    __break(1u);
  }

  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v41 = getCNLabelEmailiCloudSymbolLoc_ptr;
    v76 = getCNLabelEmailiCloudSymbolLoc_ptr;
    if (!getCNLabelEmailiCloudSymbolLoc_ptr)
    {
      v42 = ContactsLibrary();
      v74[3] = dlsym(v42, "CNLabelEmailiCloud");
      getCNLabelEmailiCloudSymbolLoc_ptr = v74[3];
      v41 = v74[3];
    }

    _Block_object_dispose(&v73, 8);
    if (!v41)
    {
      v70 = [MEMORY[0x277CCA890] currentHandler];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelEmailiCloud(void)"];
      [v70 handleFailureInFunction:v71 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:28 description:{@"%s", dlerror()}];

      goto LABEL_59;
    }

    [v17 addObject:*v41];
  }

LABEL_38:
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v43 = getCNLabelOtherSymbolLoc_ptr;
  v76 = getCNLabelOtherSymbolLoc_ptr;
  if (!getCNLabelOtherSymbolLoc_ptr)
  {
    v44 = ContactsLibrary();
    v74[3] = dlsym(v44, "CNLabelOther");
    getCNLabelOtherSymbolLoc_ptr = v74[3];
    v43 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v43)
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelOther(void)"];
    [v54 handleFailureInFunction:v55 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:20 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  [v17 addObject:*v43];
  if (v72)
  {
    v45 = [v17 if_map:&__block_literal_global_4290];
  }

  else
  {
    v45 = v17;
  }

  v46 = v45;

  return v46;
}

- (id)preferredTransactionModeWithCurrentMode:(id)a3
{
  v4 = a3;
  v5 = [(WFContentProperty *)self allowedTransactionModes];
  v6 = [v5 containsObject:v4];

  v7 = v4;
  if (v6 & 1) != 0 || !-[WFContentProperty multipleValues](self, "multipleValues") && -[__CFString isEqual:](v4, "isEqual:", @"RemoveAll") && (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v8 = objc_claimAutoreleasedReturnValue(), v7 = @"Remove", v9 = [v8 containsObject:@"Remove"], v8, (v9) || (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v10 = objc_claimAutoreleasedReturnValue(), v7 = @"Set", v11 = objc_msgSend(v10, "containsObject:", @"Set"), v10, (v11) || (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v12 = objc_claimAutoreleasedReturnValue(), v7 = @"Append", v13 = objc_msgSend(v12, "containsObject:", @"Append"), v12, v13))
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSSet)allowedTransactionModes
{
  if ([(WFContentProperty *)self isSettable])
  {
    v3 = objc_opt_new();
    if (![(WFContentProperty *)self isLabeledValue])
    {
      [v3 addObject:@"Set"];
    }

    if ([(WFContentProperty *)self isAppendable])
    {
      [v3 addObject:@"Append"];
    }

    if ([(WFContentProperty *)self isRemovable])
    {
      [v3 addObject:@"Remove"];
    }

    if ([(WFContentProperty *)self multipleValues])
    {
      [v3 addObject:@"RemoveAll"];
    }
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (unint64_t)equivalentHash
{
  v3 = [(WFContentProperty *)self name];
  v4 = [v3 hash];
  v5 = [objc_opt_class() hash] ^ v4;
  if ([(WFContentProperty *)self multipleValues])
  {
    v6 = 974800389;
  }

  else
  {
    v6 = 3199029539;
  }

  return v5 ^ v6;
}

- (BOOL)isEquivalentToProperty:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(WFContentProperty *)self propertyClasses];
    v7 = [v5 setWithArray:v6];
    v8 = MEMORY[0x277CBEB98];
    v13 = [(WFContentProperty *)v4 propertyClasses];
    v9 = [v8 setWithArray:v13];
    v10 = [v7 isEqualToSet:v9];

    v11 = [(WFContentProperty *)self name];
    v12 = [(WFContentProperty *)v4 name];
    LOBYTE(v13) = 0;
    if ([v11 isEqualToString:v12] && v10)
    {
      v14 = [(WFContentProperty *)self multipleValues];
      LODWORD(v13) = v14 ^ [(WFContentProperty *)v4 multipleValues]^ 1;
    }
  }

  return v13;
}

- (void)updateWithValue:(id)a3 withTransaction:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFContentProperty *)self setterBlock];

  if (v11)
  {
    v12 = v8;
    if ([(WFContentProperty *)self multipleValues]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (v12)
      {
        v18[0] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        goto LABEL_10;
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else if (![(WFContentProperty *)self multipleValues])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 firstObject];
LABEL_10:
        v14 = v13;

        v12 = v14;
      }
    }

    v15 = [v9 mode];
    if ([v15 isEqual:@"Remove"])
    {
      v16 = [(WFContentProperty *)self multipleValues];

      if (v16)
      {
LABEL_16:
        v17 = [(WFContentProperty *)self setterBlock];
        (v17)[2](v17, v9, v12);

        v10[2](v10, 1);
        goto LABEL_17;
      }

      v15 = v12;
      v12 = 0;
    }

    goto LABEL_16;
  }

  v10[2](v10, 0);
LABEL_17:
}

- (void)getValuesForObject:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__WFContentProperty_getValuesForObject_completionHandler___block_invoke;
    v8[3] = &unk_278347EB0;
    v8[4] = self;
    v9 = v6;
    [(WFContentProperty *)self getValueForObject:a3 completionHandler:v8];
  }
}

void __58__WFContentProperty_getValuesForObject_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v3 && ![*(a1 + 32) multipleValues])
  {
    v6[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)getValueForObject:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(WFContentProperty *)self block];

    if (v7)
    {
      v8 = [(WFContentProperty *)self block];
      v9 = [(WFContentProperty *)self userInfo];
      (v8)[2](v8, v13, v9, v6);
    }

    else
    {
      v10 = [(WFContentProperty *)self keyPath];

      if (v10)
      {
        v11 = [(WFContentProperty *)self keyPath];
        v12 = [v13 valueForKeyPath:v11];
        v6[2](v6, v12);
      }

      else
      {
        v6[2](v6, 0);
      }
    }
  }
}

- (Class)valueItemClass
{
  v3 = [(WFContentProperty *)self propertyClasses];
  v4 = [v3 if_firstObjectPassingTest:&__block_literal_global_215_16429];

  if (v4)
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([(WFContentProperty *)self hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v5 = objc_opt_class();
    goto LABEL_5;
  }

  v8 = +[WFContentItemRegistry sharedRegistry];
  v9 = [(WFContentProperty *)self propertyClasses];
  v10 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [v9 firstObject]);
  v6 = [v8 contentItemClassForType:v10];

LABEL_6:

  return v6;
}

uint64_t __35__WFContentProperty_valueItemClass__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isSubclassOfClass:v3];
}

- (BOOL)isLabeledValue
{
  if ([(WFContentProperty *)self hasPropertyClass:objc_opt_class()]|| [(WFContentProperty *)self hasPropertyClass:objc_opt_class()])
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [(WFContentProperty *)self hasPropertyClass:v4];
}

- (void)setPossibleValues:(id)a3
{
  v4 = a3;
  v5 = [WFContentPropertyPossibleValuesSynchronousGetter alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__WFContentProperty_setPossibleValues___block_invoke;
  v9[3] = &unk_278347E68;
  v10 = v4;
  v6 = v4;
  v7 = [(WFContentPropertyPossibleValuesSynchronousGetter *)v5 initWithSynchronousGetter:v9];
  possibleValues = self->_possibleValues;
  self->_possibleValues = v7;
}

id __39__WFContentProperty_setPossibleValues___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];

  return v1;
}

- (WFContentPropertyPossibleValuesGetter)possibleValues
{
  possibleValues = self->_possibleValues;
  if (possibleValues)
  {
    v3 = possibleValues;
  }

  else
  {
    v3 = [[WFContentPropertyPossibleValuesSynchronousGetter alloc] initWithSynchronousGetter:&__block_literal_global_209];
  }

  return v3;
}

id __35__WFContentProperty_possibleValues__block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

- (NSString)localizedSingularItemName
{
  v2 = [(WFContentProperty *)self singularItemName];
  v3 = WFLocalizedContentPropertyName(v2);

  return v3;
}

- (NSString)localizedNegativeName
{
  v3 = [(WFContentProperty *)self negativeName];
  if (v3)
  {
    v4 = [(WFContentProperty *)self negativeName];
    v5 = WFLocalizedContentPropertyName(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasPropertyClassSubclassingClass:(Class)a3
{
  v4 = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__WFContentProperty_hasPropertyClassSubclassingClass___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = a3;
  LOBYTE(a3) = [v4 if_firstObjectPassingTest:v6] != 0;

  return a3;
}

- (BOOL)hasPropertyClassOfKind:(Class)a3
{
  v4 = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WFContentProperty_hasPropertyClassOfKind___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = a3;
  LOBYTE(a3) = [v4 if_firstObjectPassingTest:v6] != 0;

  return a3;
}

- (BOOL)hasPropertyClass:(Class)a3
{
  v4 = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WFContentProperty_hasPropertyClass___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = a3;
  LOBYTE(a3) = [v4 if_firstObjectPassingTest:v6] != 0;

  return a3;
}

- (BOOL)hasNegative
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  LOBYTE(self) = [(WFContentProperty *)self hasPropertyClassOfKind:objc_opt_class()];

  return self;
}

- (id)localizedNameWithContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFContentProperty *)self displayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(WFContentProperty *)self name];
  }

  v8 = v7;

  v9 = [v4 locale];

  v10 = v8;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 stringResource];
    [v12 setLocale:v11];
    v13 = [v12 localize];
  }

  else
  {
    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "WFLocalizedContentPropertyNameWithLocale";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_DEBUG, "%s Content property name: %@ is unable to be localized in a specific locale.", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Content Property Name)", v10];
    v13 = WFLocalizedStringWithKey(v12, v10);
  }

  v15 = v13;

  return v15;
}

- (NSString)localizedName
{
  v3 = [(WFContentProperty *)self displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFContentProperty *)self name];
  }

  v6 = v5;

  v7 = WFLocalizedContentPropertyName(v6);

  return v7;
}

- (id)description
{
  v3 = [(WFContentProperty *)self keyPath];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(WFContentProperty *)self keyPath];
    v34 = [v4 stringWithFormat:@", keyPath: %@", v5];
  }

  else
  {
    v34 = &stru_282F53518;
  }

  v6 = [(WFContentProperty *)self keyPath];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(WFContentProperty *)self block];
    v9 = _Block_copy(v8);
    v33 = [v7 stringWithFormat:@", block: %@", v9];
  }

  else
  {
    v33 = &stru_282F53518;
  }

  v10 = [(WFContentProperty *)self userInfo];
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(WFContentProperty *)self userInfo];
    v32 = [v11 stringWithFormat:@", userInfo: %@", v12];
  }

  else
  {
    v32 = &stru_282F53518;
  }

  v13 = [(WFContentProperty *)self possibleValues];
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(WFContentProperty *)self possibleValues];
    v31 = [v14 stringWithFormat:@", possibleValues: %@", v15];
  }

  else
  {
    v31 = &stru_282F53518;
  }

  v16 = [(WFContentProperty *)self negativeName];
  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(WFContentProperty *)self negativeName];
    v19 = [v17 stringWithFormat:@", negativeName: %@", v18];
  }

  else
  {
    v19 = &stru_282F53518;
  }

  v20 = [(WFContentProperty *)self propertyClasses];
  v29 = [v20 if_map:&__block_literal_global_16447];

  v30 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [(WFContentProperty *)self name];
  if ([(WFContentProperty *)self multipleValues])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  if ([(WFContentProperty *)self isFilterable])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  if ([(WFContentProperty *)self isSortable])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v27 = [v30 stringWithFormat:@"<%@: %p%@%@, name: %@, class: %@, multipleValues: %@, filterable: %@, sortable: %@%@%@%@>", v22, self, v34, v33, v23, v29, v24, v25, v26, v32, v31, v19];

  return v27;
}

- (WFContentProperty)initWithKeyPath:(id)a3 block:(id)a4 setterBlock:(id)a5 name:(id)a6 propertyClasses:(id)a7 multipleValues:(BOOL)a8 filterable:(BOOL)a9 sortable:(BOOL)a10 gettable:(BOOL)a11 settable:(BOOL)a12 appendable:(BOOL)a13 removable:(BOOL)a14 primary:(BOOL)a15 allowedOperators:(id)a16 userInfo:(id)a17 possibleValues:(id)a18 caseInsensitive:(BOOL)a19 negativeName:(id)a20 singularItemName:(id)a21 irrational:(BOOL)a22 tense:(unint64_t)a23 timeUnits:(unint64_t)a24 comparableUnits:(unint64_t)a25 measurementUnitType:(id)a26 displayName:(id)a27 canLowercaseName:(BOOL)a28 linkPropertyIdentifier:(id)a29
{
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  obj = a7;
  v77 = a7;
  v38 = a16;
  v76 = a17;
  v75 = a18;
  v39 = a20;
  v40 = a21;
  v74 = a26;
  v41 = a27;
  v42 = a29;
  v43 = v34;
  if (v34 | v35)
  {
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = v42;
    v64 = [MEMORY[0x277CCA890] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"block || keyPath"}];

    v42 = v71;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  v72 = v42;
  v65 = [MEMORY[0x277CCA890] currentHandler];
  [v65 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  v42 = v72;
LABEL_3:
  if (!v77)
  {
    v73 = v42;
    v66 = [MEMORY[0x277CCA890] currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

    v42 = v73;
    if (!self)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self)
  {
LABEL_5:
    v70 = v42;
    v44 = [v43 copy];
    keyPath = self->_keyPath;
    self->_keyPath = v44;

    v46 = [v35 copy];
    block = self->_block;
    self->_block = v46;

    v48 = [v36 copy];
    setterBlock = self->_setterBlock;
    self->_setterBlock = v48;

    v50 = [v37 copy];
    name = self->_name;
    self->_name = v50;

    objc_storeStrong(&self->_propertyClasses, obj);
    self->_multipleValues = a8;
    self->_filterable = a9;
    self->_sortable = a10;
    self->_gettable = a11;
    self->_settable = a12;
    self->_appendable = a13;
    self->_removable = a14;
    self->_primary = a15;
    v52 = [v38 copy];
    allowedOperators = self->_allowedOperators;
    self->_allowedOperators = v52;

    objc_storeStrong(&self->_userInfo, a17);
    objc_storeStrong(&self->_possibleValues, a18);
    self->_caseInsensitive = a19;
    v54 = [v39 copy];
    negativeName = self->_negativeName;
    self->_negativeName = v54;

    v56 = [v40 copy];
    singularItemName = self->_singularItemName;
    self->_singularItemName = v56;

    self->_irrational = a22;
    self->_tense = a23;
    self->_timeUnits = a24;
    self->_comparableUnits = a25;
    objc_storeStrong(&self->_measurementUnitType, a26);
    v58 = [v41 copy];
    displayName = self->_displayName;
    self->_displayName = v58;

    self->_canLowercaseName = a28;
    v60 = [v70 copy];
    linkPropertyIdentifier = self->_linkPropertyIdentifier;
    self->_linkPropertyIdentifier = v60;

    v62 = self;
    v42 = v70;
  }

LABEL_6:

  return self;
}

@end