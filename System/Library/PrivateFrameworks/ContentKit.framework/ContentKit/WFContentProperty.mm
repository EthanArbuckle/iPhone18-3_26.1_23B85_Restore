@interface WFContentProperty
+ (id)possibleLabelsForClass:(Class)class localized:(BOOL)localized;
- (BOOL)hasNegative;
- (BOOL)hasPropertyClass:(Class)class;
- (BOOL)hasPropertyClassOfKind:(Class)kind;
- (BOOL)hasPropertyClassSubclassingClass:(Class)class;
- (BOOL)isEquivalentToProperty:(id)property;
- (BOOL)isLabeledValue;
- (Class)valueItemClass;
- (NSArray)possibleLabels;
- (NSSet)allowedTransactionModes;
- (NSString)localizedName;
- (NSString)localizedNegativeName;
- (NSString)localizedSingularItemName;
- (WFContentProperty)initWithKeyPath:(id)path block:(id)block setterBlock:(id)setterBlock name:(id)name propertyClasses:(id)classes multipleValues:(BOOL)values filterable:(BOOL)filterable sortable:(BOOL)self0 gettable:(BOOL)self1 settable:(BOOL)self2 appendable:(BOOL)self3 removable:(BOOL)self4 primary:(BOOL)self5 allowedOperators:(id)self6 userInfo:(id)self7 possibleValues:(id)self8 caseInsensitive:(BOOL)self9 negativeName:(id)negativeName singularItemName:(id)itemName irrational:(BOOL)irrational tense:(unint64_t)tense timeUnits:(unint64_t)units comparableUnits:(unint64_t)comparableUnits measurementUnitType:(id)type displayName:(id)displayName canLowercaseName:(BOOL)lowercaseName linkPropertyIdentifier:(id)identifier;
- (WFContentPropertyPossibleValuesGetter)possibleValues;
- (id)description;
- (id)localizedNameWithContext:(id)context;
- (id)preferredTransactionModeWithCurrentMode:(id)mode;
- (unint64_t)equivalentHash;
- (void)getValueForObject:(id)object completionHandler:(id)handler;
- (void)getValuesForObject:(id)object completionHandler:(id)handler;
- (void)setPossibleValues:(id)values;
- (void)updateWithValue:(id)value withTransaction:(id)transaction completion:(id)completion;
@end

@implementation WFContentProperty

- (NSArray)possibleLabels
{
  if ([(WFContentProperty *)self isLabeledValue])
  {
    propertyClasses = [(WFContentProperty *)self propertyClasses];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__WFContentProperty_CNLabeledValue__possibleLabels__block_invoke;
    v6[3] = &unk_2783457C8;
    v6[4] = self;
    v4 = [propertyClasses if_flatMap:v6];
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

+ (id)possibleLabelsForClass:(Class)class localized:(BOOL)localized
{
  localizedCopy = localized;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelHome(void)"];
    [currentHandler handleFailureInFunction:v49 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:17 description:{@"%s", dlerror()}];

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
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelWork(void)"];
    [currentHandler2 handleFailureInFunction:v51 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:18 description:{@"%s", dlerror()}];

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
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelSchool(void)"];
    [currentHandler3 handleFailureInFunction:v53 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:19 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  v80 = *v12;
  v14 = MEMORY[0x277CBEA60];
  v15 = v80;
  v16 = [v14 arrayWithObjects:v79 count:3];

  v17 = [v5 arrayWithArray:v16];

  if ([(objc_class *)class isEqual:objc_opt_class()])
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

                currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
                v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberPager(void)"];
                [currentHandler4 handleFailureInFunction:v69 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:27 description:{@"%s", dlerror()}];
              }

              else
              {
                currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
                v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberOtherFax(void)"];
                [currentHandler5 handleFailureInFunction:v67 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:21 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberWorkFax(void)"];
              [currentHandler6 handleFailureInFunction:v65 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:26 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
            v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberHomeFax(void)"];
            [currentHandler7 handleFailureInFunction:v63 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:25 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMain(void)"];
          [currentHandler8 handleFailureInFunction:v61 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:24 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMobile(void)"];
        [currentHandler9 handleFailureInFunction:v59 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:23 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberiPhone(void)"];
      [currentHandler10 handleFailureInFunction:v57 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:22 description:{@"%s", dlerror()}];
    }

LABEL_59:
    __break(1u);
  }

  if ([(objc_class *)class isEqual:objc_opt_class()])
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
      currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelEmailiCloud(void)"];
      [currentHandler11 handleFailureInFunction:v71 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:28 description:{@"%s", dlerror()}];

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
    currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelOther(void)"];
    [currentHandler12 handleFailureInFunction:v55 file:@"WFContentProperty+CNLabeledValue.m" lineNumber:20 description:{@"%s", dlerror()}];

    goto LABEL_59;
  }

  [v17 addObject:*v43];
  if (localizedCopy)
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

- (id)preferredTransactionModeWithCurrentMode:(id)mode
{
  modeCopy = mode;
  allowedTransactionModes = [(WFContentProperty *)self allowedTransactionModes];
  v6 = [allowedTransactionModes containsObject:modeCopy];

  v7 = modeCopy;
  if (v6 & 1) != 0 || !-[WFContentProperty multipleValues](self, "multipleValues") && -[__CFString isEqual:](modeCopy, "isEqual:", @"RemoveAll") && (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v8 = objc_claimAutoreleasedReturnValue(), v7 = @"Remove", v9 = [v8 containsObject:@"Remove"], v8, (v9) || (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v10 = objc_claimAutoreleasedReturnValue(), v7 = @"Set", v11 = objc_msgSend(v10, "containsObject:", @"Set"), v10, (v11) || (-[WFContentProperty allowedTransactionModes](self, "allowedTransactionModes"), v12 = objc_claimAutoreleasedReturnValue(), v7 = @"Append", v13 = objc_msgSend(v12, "containsObject:", @"Append"), v12, v13))
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
  name = [(WFContentProperty *)self name];
  v4 = [name hash];
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

- (BOOL)isEquivalentToProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy == self)
  {
    LOBYTE(propertyClasses2) = 1;
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    propertyClasses = [(WFContentProperty *)self propertyClasses];
    v7 = [v5 setWithArray:propertyClasses];
    v8 = MEMORY[0x277CBEB98];
    propertyClasses2 = [(WFContentProperty *)propertyCopy propertyClasses];
    v9 = [v8 setWithArray:propertyClasses2];
    v10 = [v7 isEqualToSet:v9];

    name = [(WFContentProperty *)self name];
    name2 = [(WFContentProperty *)propertyCopy name];
    LOBYTE(propertyClasses2) = 0;
    if ([name isEqualToString:name2] && v10)
    {
      multipleValues = [(WFContentProperty *)self multipleValues];
      LODWORD(propertyClasses2) = multipleValues ^ [(WFContentProperty *)propertyCopy multipleValues]^ 1;
    }
  }

  return propertyClasses2;
}

- (void)updateWithValue:(id)value withTransaction:(id)transaction completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  transactionCopy = transaction;
  completionCopy = completion;
  setterBlock = [(WFContentProperty *)self setterBlock];

  if (setterBlock)
  {
    v12 = valueCopy;
    if ([(WFContentProperty *)self multipleValues]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (v12)
      {
        v18[0] = v12;
        firstObject = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        goto LABEL_10;
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else if (![(WFContentProperty *)self multipleValues])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject = [v12 firstObject];
LABEL_10:
        v14 = firstObject;

        v12 = v14;
      }
    }

    mode = [transactionCopy mode];
    if ([mode isEqual:@"Remove"])
    {
      multipleValues = [(WFContentProperty *)self multipleValues];

      if (multipleValues)
      {
LABEL_16:
        setterBlock2 = [(WFContentProperty *)self setterBlock];
        (setterBlock2)[2](setterBlock2, transactionCopy, v12);

        completionCopy[2](completionCopy, 1);
        goto LABEL_17;
      }

      mode = v12;
      v12 = 0;
    }

    goto LABEL_16;
  }

  completionCopy[2](completionCopy, 0);
LABEL_17:
}

- (void)getValuesForObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__WFContentProperty_getValuesForObject_completionHandler___block_invoke;
    v8[3] = &unk_278347EB0;
    v8[4] = self;
    v9 = handlerCopy;
    [(WFContentProperty *)self getValueForObject:object completionHandler:v8];
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

- (void)getValueForObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  if (handlerCopy)
  {
    block = [(WFContentProperty *)self block];

    if (block)
    {
      block2 = [(WFContentProperty *)self block];
      userInfo = [(WFContentProperty *)self userInfo];
      (block2)[2](block2, objectCopy, userInfo, handlerCopy);
    }

    else
    {
      keyPath = [(WFContentProperty *)self keyPath];

      if (keyPath)
      {
        keyPath2 = [(WFContentProperty *)self keyPath];
        v12 = [objectCopy valueForKeyPath:keyPath2];
        handlerCopy[2](handlerCopy, v12);
      }

      else
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }
}

- (Class)valueItemClass
{
  propertyClasses = [(WFContentProperty *)self propertyClasses];
  v4 = [propertyClasses if_firstObjectPassingTest:&__block_literal_global_215_16429];

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
  propertyClasses2 = [(WFContentProperty *)self propertyClasses];
  v10 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [propertyClasses2 firstObject]);
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

- (void)setPossibleValues:(id)values
{
  valuesCopy = values;
  v5 = [WFContentPropertyPossibleValuesSynchronousGetter alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__WFContentProperty_setPossibleValues___block_invoke;
  v9[3] = &unk_278347E68;
  v10 = valuesCopy;
  v6 = valuesCopy;
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
  singularItemName = [(WFContentProperty *)self singularItemName];
  v3 = WFLocalizedContentPropertyName(singularItemName);

  return v3;
}

- (NSString)localizedNegativeName
{
  negativeName = [(WFContentProperty *)self negativeName];
  if (negativeName)
  {
    negativeName2 = [(WFContentProperty *)self negativeName];
    v5 = WFLocalizedContentPropertyName(negativeName2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasPropertyClassSubclassingClass:(Class)class
{
  propertyClasses = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__WFContentProperty_hasPropertyClassSubclassingClass___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = class;
  LOBYTE(class) = [propertyClasses if_firstObjectPassingTest:v6] != 0;

  return class;
}

- (BOOL)hasPropertyClassOfKind:(Class)kind
{
  propertyClasses = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WFContentProperty_hasPropertyClassOfKind___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = kind;
  LOBYTE(kind) = [propertyClasses if_firstObjectPassingTest:v6] != 0;

  return kind;
}

- (BOOL)hasPropertyClass:(Class)class
{
  propertyClasses = [(WFContentProperty *)self propertyClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WFContentProperty_hasPropertyClass___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = class;
  LOBYTE(class) = [propertyClasses if_firstObjectPassingTest:v6] != 0;

  return class;
}

- (BOOL)hasNegative
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  LOBYTE(self) = [(WFContentProperty *)self hasPropertyClassOfKind:objc_opt_class()];

  return self;
}

- (id)localizedNameWithContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  displayName = [(WFContentProperty *)self displayName];
  v6 = displayName;
  if (displayName)
  {
    name = displayName;
  }

  else
  {
    name = [(WFContentProperty *)self name];
  }

  v8 = name;

  locale = [contextCopy locale];

  v10 = v8;
  v11 = locale;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringResource = [v10 stringResource];
    [stringResource setLocale:v11];
    localize = [stringResource localize];
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

    stringResource = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Content Property Name)", v10];
    localize = WFLocalizedStringWithKey(stringResource, v10);
  }

  v15 = localize;

  return v15;
}

- (NSString)localizedName
{
  displayName = [(WFContentProperty *)self displayName];
  v4 = displayName;
  if (displayName)
  {
    name = displayName;
  }

  else
  {
    name = [(WFContentProperty *)self name];
  }

  v6 = name;

  v7 = WFLocalizedContentPropertyName(v6);

  return v7;
}

- (id)description
{
  keyPath = [(WFContentProperty *)self keyPath];
  if (keyPath)
  {
    v4 = MEMORY[0x277CCACA8];
    keyPath2 = [(WFContentProperty *)self keyPath];
    v34 = [v4 stringWithFormat:@", keyPath: %@", keyPath2];
  }

  else
  {
    v34 = &stru_282F53518;
  }

  keyPath3 = [(WFContentProperty *)self keyPath];
  if (keyPath3)
  {
    v7 = MEMORY[0x277CCACA8];
    block = [(WFContentProperty *)self block];
    v9 = _Block_copy(block);
    v33 = [v7 stringWithFormat:@", block: %@", v9];
  }

  else
  {
    v33 = &stru_282F53518;
  }

  userInfo = [(WFContentProperty *)self userInfo];
  if (userInfo)
  {
    v11 = MEMORY[0x277CCACA8];
    userInfo2 = [(WFContentProperty *)self userInfo];
    v32 = [v11 stringWithFormat:@", userInfo: %@", userInfo2];
  }

  else
  {
    v32 = &stru_282F53518;
  }

  possibleValues = [(WFContentProperty *)self possibleValues];
  if (possibleValues)
  {
    v14 = MEMORY[0x277CCACA8];
    possibleValues2 = [(WFContentProperty *)self possibleValues];
    v31 = [v14 stringWithFormat:@", possibleValues: %@", possibleValues2];
  }

  else
  {
    v31 = &stru_282F53518;
  }

  negativeName = [(WFContentProperty *)self negativeName];
  if (negativeName)
  {
    v17 = MEMORY[0x277CCACA8];
    negativeName2 = [(WFContentProperty *)self negativeName];
    v19 = [v17 stringWithFormat:@", negativeName: %@", negativeName2];
  }

  else
  {
    v19 = &stru_282F53518;
  }

  propertyClasses = [(WFContentProperty *)self propertyClasses];
  v29 = [propertyClasses if_map:&__block_literal_global_16447];

  v30 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  name = [(WFContentProperty *)self name];
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

  v27 = [v30 stringWithFormat:@"<%@: %p%@%@, name: %@, class: %@, multipleValues: %@, filterable: %@, sortable: %@%@%@%@>", v22, self, v34, v33, name, v29, v24, v25, v26, v32, v31, v19];

  return v27;
}

- (WFContentProperty)initWithKeyPath:(id)path block:(id)block setterBlock:(id)setterBlock name:(id)name propertyClasses:(id)classes multipleValues:(BOOL)values filterable:(BOOL)filterable sortable:(BOOL)self0 gettable:(BOOL)self1 settable:(BOOL)self2 appendable:(BOOL)self3 removable:(BOOL)self4 primary:(BOOL)self5 allowedOperators:(id)self6 userInfo:(id)self7 possibleValues:(id)self8 caseInsensitive:(BOOL)self9 negativeName:(id)negativeName singularItemName:(id)itemName irrational:(BOOL)irrational tense:(unint64_t)tense timeUnits:(unint64_t)units comparableUnits:(unint64_t)comparableUnits measurementUnitType:(id)type displayName:(id)displayName canLowercaseName:(BOOL)lowercaseName linkPropertyIdentifier:(id)identifier
{
  pathCopy = path;
  blockCopy = block;
  setterBlockCopy = setterBlock;
  nameCopy = name;
  obj = classes;
  classesCopy = classes;
  operatorsCopy = operators;
  infoCopy = info;
  possibleValuesCopy = possibleValues;
  negativeNameCopy = negativeName;
  itemNameCopy = itemName;
  typeCopy = type;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  v43 = pathCopy;
  if (pathCopy | blockCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = identifierCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"block || keyPath"}];

    identifierCopy = v71;
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  v72 = identifierCopy;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  identifierCopy = v72;
LABEL_3:
  if (!classesCopy)
  {
    v73 = identifierCopy;
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

    identifierCopy = v73;
    if (!self)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self)
  {
LABEL_5:
    v70 = identifierCopy;
    v44 = [v43 copy];
    keyPath = self->_keyPath;
    self->_keyPath = v44;

    v46 = [blockCopy copy];
    block = self->_block;
    self->_block = v46;

    v48 = [setterBlockCopy copy];
    setterBlock = self->_setterBlock;
    self->_setterBlock = v48;

    v50 = [nameCopy copy];
    name = self->_name;
    self->_name = v50;

    objc_storeStrong(&self->_propertyClasses, obj);
    self->_multipleValues = values;
    self->_filterable = filterable;
    self->_sortable = sortable;
    self->_gettable = gettable;
    self->_settable = settable;
    self->_appendable = appendable;
    self->_removable = removable;
    self->_primary = primary;
    v52 = [operatorsCopy copy];
    allowedOperators = self->_allowedOperators;
    self->_allowedOperators = v52;

    objc_storeStrong(&self->_userInfo, info);
    objc_storeStrong(&self->_possibleValues, possibleValues);
    self->_caseInsensitive = insensitive;
    v54 = [negativeNameCopy copy];
    negativeName = self->_negativeName;
    self->_negativeName = v54;

    v56 = [itemNameCopy copy];
    singularItemName = self->_singularItemName;
    self->_singularItemName = v56;

    self->_irrational = irrational;
    self->_tense = tense;
    self->_timeUnits = units;
    self->_comparableUnits = comparableUnits;
    objc_storeStrong(&self->_measurementUnitType, type);
    v58 = [displayNameCopy copy];
    displayName = self->_displayName;
    self->_displayName = v58;

    self->_canLowercaseName = lowercaseName;
    v60 = [v70 copy];
    linkPropertyIdentifier = self->_linkPropertyIdentifier;
    self->_linkPropertyIdentifier = v60;

    selfCopy = self;
    identifierCopy = v70;
  }

LABEL_6:

  return self;
}

@end