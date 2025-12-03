@interface ASCollection
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASCollection)init;
- (id)description;
- (int)sniffableTypeForAccount:(id)account;
- (int64_t)dataclass;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setChangedItems:(id)items;
- (void)setCollectionId:(id)id;
- (void)setDataclassString:(id)string;
- (void)setMoreAvailable:(id)available;
- (void)setResponseItems:(id)items;
- (void)setStatus:(id)status;
- (void)setSyncKey:(id)key;
@end

@implementation ASCollection

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_23 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_23;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_23 = v2;
    acceptsTopLevelLeaves___haveChecked_23 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_23 == 1)
  {
    v2 = parsingLeafNode___result_23;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_23 = v2;
    parsingLeafNode___haveChecked_23 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_23 == 1)
  {
    v2 = parsingWithSubItems___result_23;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_23 = v2;
    parsingWithSubItems___haveChecked_23 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_23 == 1)
  {
    v2 = frontingBasicTypes___result_23;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_23 = v2;
    frontingBasicTypes___haveChecked_23 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_23 == 1)
  {
    v2 = notifyOfUnknownTokens___result_23;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_23 = v2;
    notifyOfUnknownTokens___haveChecked_23 = 1;
  }

  return v2 & 1;
}

- (ASCollection)init
{
  v3.receiver = self;
  v3.super_class = ASCollection;
  result = [(ASItem *)&v3 init];
  if (result)
  {
    result->_sniffableType = 0;
    result->_checkedShouldSniffInvites = 0;
  }

  return result;
}

- (int64_t)dataclass
{
  if (!self->_dataclass)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentResponse);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_parentResponse);
      self->_dataclass = [v4 dataclass];
    }

    else
    {
      parent = [(ASItem *)self parent];
      if (!parent)
      {
        return self->_dataclass;
      }

      v4 = parent;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dataclass = [v4 dataclass];
          self->_dataclass = dataclass;
          if (dataclass)
          {
            break;
          }
        }

        parent2 = [v4 parent];

        v4 = parent2;
      }

      while (parent2);
    }
  }

  return self->_dataclass;
}

- (void)setDataclassString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Email"])
  {
    v4 = 1;
LABEL_9:
    self->_dataclass = v4;
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:@"Contacts"])
  {
    v4 = 2;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"Tasks"])
  {
    v4 = 16;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"Calendar"])
  {
    v4 = 4;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"Notes"])
  {
    v4 = 32;
    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (void)setChangedItems:(id)items
{
  itemsCopy = items;
  if (self->_changedItems != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_changedItems, items);
    itemsCopy = v6;
  }
}

- (void)setResponseItems:(id)items
{
  itemsCopy = items;
  if (self->_responseItems != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_responseItems, items);
    itemsCopy = v6;
  }
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v35 = MEMORY[0x277CBEAC0];
    v132 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_setDataclassString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v131 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v130 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:11 objectClass:objc_opt_class() setterMethod:sel_setSyncKey_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v129 = [MEMORY[0x277CCABB0] numberWithInt:11];
    v128 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:18 objectClass:objc_opt_class() setterMethod:sel_setCollectionId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v127 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v126 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:0 token:14 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v125 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v124 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:20 objectClass:objc_opt_class() setterMethod:sel_setMoreAvailable_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v123 = [MEMORY[0x277CCABB0] numberWithInt:20];
    v79 = [ASParseRule alloc];
    v77 = objc_opt_class();
    v74 = MEMORY[0x277CBEAC0];
    v122 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v121 = [MEMORY[0x277CCABB0] numberWithInt:131079];
    v120 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v119 = [MEMORY[0x277CCABB0] numberWithInt:131080];
    v118 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v117 = [MEMORY[0x277CCABB0] numberWithInt:131081];
    v116 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v115 = [MEMORY[0x277CCABB0] numberWithInt:131105];
    v113 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v114 = [MEMORY[0x277CCABB0] numberWithInt:131082];
    v111 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    aClass = self;
    v112 = [MEMORY[0x277CCABB0] numberWithInt:262151];
    v110 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v109 = [MEMORY[0x277CCABB0] numberWithInt:262152];
    v108 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v107 = [MEMORY[0x277CCABB0] numberWithInt:262153];
    v106 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v105 = [MEMORY[0x277CCABB0] numberWithInt:262177];
    v104 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v103 = [MEMORY[0x277CCABB0] numberWithInt:262154];
    v102 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v101 = [MEMORY[0x277CCABB0] numberWithInt:65543];
    v100 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v99 = [MEMORY[0x277CCABB0] numberWithInt:65544];
    v98 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v97 = [MEMORY[0x277CCABB0] numberWithInt:65545];
    v96 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v95 = [MEMORY[0x277CCABB0] numberWithInt:65569];
    v94 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v93 = [MEMORY[0x277CCABB0] numberWithInt:65546];
    v92 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v91 = [MEMORY[0x277CCABB0] numberWithInt:1048583];
    v90 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v89 = [MEMORY[0x277CCABB0] numberWithInt:1048584];
    v88 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v87 = [MEMORY[0x277CCABB0] numberWithInt:1048585];
    v86 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v85 = [MEMORY[0x277CCABB0] numberWithInt:1048609];
    v84 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v83 = [MEMORY[0x277CCABB0] numberWithInt:1048586];
    v82 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v81 = [MEMORY[0x277CCABB0] numberWithInt:2097159];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:2097160];
    v32 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:2097161];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:2097185];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:2097162];
    v26 = [v74 dictionaryWithObjectsAndKeys:{v122, v121, v120, v119, v118, v117, v116, v115, v113, v114, v111, v112, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85, v84, v83, v82, v81, v34, v33, v32, v31, v30, v29, v28, v27, 0}];
    v80 = [(ASParseRule *)v79 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:22 objectClass:v77 setterMethod:sel_setChangedItems_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v26];
    v78 = [MEMORY[0x277CCABB0] numberWithInt:22];
    v25 = [ASParseRule alloc];
    v24 = objc_opt_class();
    v23 = MEMORY[0x277CBEAC0];
    v76 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v75 = [MEMORY[0x277CCABB0] numberWithInt:131079];
    v73 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v70 = [MEMORY[0x277CCABB0] numberWithInt:131080];
    v72 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v71 = [MEMORY[0x277CCABB0] numberWithInt:131081];
    v67 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v69 = [MEMORY[0x277CCABB0] numberWithInt:131105];
    v68 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:2 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:131082];
    v66 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v65 = [MEMORY[0x277CCABB0] numberWithInt:262151];
    v61 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v63 = [MEMORY[0x277CCABB0] numberWithInt:262152];
    v62 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v58 = [MEMORY[0x277CCABB0] numberWithInt:262153];
    v60 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v59 = [MEMORY[0x277CCABB0] numberWithInt:262177];
    v55 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:4 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v57 = [MEMORY[0x277CCABB0] numberWithInt:262154];
    v56 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v53 = [MEMORY[0x277CCABB0] numberWithInt:65543];
    v52 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v54 = [MEMORY[0x277CCABB0] numberWithInt:65544];
    v50 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v49 = [MEMORY[0x277CCABB0] numberWithInt:65545];
    v51 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v47 = [MEMORY[0x277CCABB0] numberWithInt:65569];
    v46 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:1 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v48 = [MEMORY[0x277CCABB0] numberWithInt:65546];
    v45 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v43 = [MEMORY[0x277CCABB0] numberWithInt:1048583];
    v22 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v44 = [MEMORY[0x277CCABB0] numberWithInt:1048584];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v42 = [MEMORY[0x277CCABB0] numberWithInt:1048585];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v41 = [MEMORY[0x277CCABB0] numberWithInt:1048609];
    v40 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:16 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v39 = [MEMORY[0x277CCABB0] numberWithInt:1048586];
    v38 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v37 = [MEMORY[0x277CCABB0] numberWithInt:2097159];
    v19 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:2097160];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:2097161];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:33 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:2097185];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:32 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2097162];
    v9 = [v23 dictionaryWithObjectsAndKeys:{v76, v75, v73, v70, v72, v71, v67, v69, v68, v64, v66, v65, v61, v63, v62, v58, v60, v59, v55, v57, v56, v53, v52, v54, v50, v49, v51, v47, v46, v48, v45, v43, v22, v44, v21, v42, v20, v41, v40, v39, v38, v37, v19, v18, v6, v17, v16, v15, v7, v8, 0}];
    v10 = [(ASParseRule *)v25 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:6 objectClass:v24 setterMethod:sel_setResponseItems_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v5 = [v35 dictionaryWithObjectsAndKeys:{v132, v131, v130, v129, v128, v127, v126, v125, v124, v123, v80, v78, v10, v11, 0}];

    v12 = +[ASItem parseRuleCache];
    v13 = NSStringFromClass(aClass);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ASCollection;
  [(ASItem *)&v17 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      status = [(ASCollection *)self status];
      intValue = [status intValue];

      if (intValue == 1)
      {
        syncKey = [(ASCollection *)self syncKey];

        if (!syncKey)
        {
          self->super._parsingState = 3;
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v14, v15))
          {
            syncKey2 = [(ASCollection *)self syncKey];
            *buf = 67109378;
            v19 = 1;
            v20 = 2112;
            v21 = syncKey2;
            _os_log_impl(&dword_24A0AC000, v14, v15, "We received a happy value for status (%d), but syncKey %@ is missing", buf, 0x12u);
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int)sniffableTypeForAccount:(id)account
{
  if (!self->_checkedShouldSniffInvites)
  {
    collectionId = self->_collectionId;
    accountCopy = account;
    v6 = [accountCopy folderWithId:collectionId];
    v7 = [accountCopy sniffableTypeForFolder:v6];

    self->_sniffableType = v7;
    self->_checkedShouldSniffInvites = 1;
  }

  return self->_sniffableType;
}

- (void)setSyncKey:(id)key
{
  keyCopy = key;
  if (self->_syncKey != keyCopy)
  {
    v6 = keyCopy;
    objc_storeStrong(&self->_syncKey, key);
    keyCopy = v6;
  }
}

- (void)setCollectionId:(id)id
{
  idCopy = id;
  if (self->_collectionId != idCopy)
  {
    v6 = idCopy;
    objc_storeStrong(&self->_collectionId, id);
    idCopy = v6;
  }
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  if (self->_status != statusCopy)
  {
    v6 = statusCopy;
    objc_storeStrong(&self->_status, status);
    statusCopy = v6;
  }
}

- (void)setMoreAvailable:(id)available
{
  availableCopy = available;
  if (self->_moreAvailable != availableCopy)
  {
    v6 = availableCopy;
    objc_storeStrong(&self->_moreAvailable, available);
    availableCopy = v6;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  changedItems = self->_changedItems;
  v7 = [v3 stringWithFormat:@"<%@: Dataclass: %ld SyncKey: %@ CollectionID: %@ Status: %@ MoreAvailable: %@ ChangedItems: %@ ResponseItems: %@>", v5, self->_dataclass, self->_syncKey, self->_collectionId, self->_status, self->_moreAvailable, changedItems, self->_responseItems];

  return v7;
}

@end