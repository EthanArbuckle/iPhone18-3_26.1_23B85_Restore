@interface WFContactContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)cachedContactGroups;
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (WFContact)contact;
- (id)changeTransaction;
- (id)defaultSourceForRepresentation:(id)representation;
- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error;
- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFContactContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Contacts (plural)", @"Contacts");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Contact (singular)", @"Contact");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [WFObjectType typeWithClass:objc_opt_class()];
  v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1EB8]];
  v10 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

id __49__WFContactContentItem_linkEntityCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = objc_alloc(MEMORY[0x277D23808]);
    v4 = [v2 contactIdentifier];
    v5 = [v3 initWithTypeIdentifier:@"ContactEntity" instanceIdentifier:v4];

    v6 = [objc_alloc(MEMORY[0x277D237F8]) initWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)coercions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [WFObjectType typeWithClassName:@"LNEntity" frameworkName:@"LinkMetadata" location:1];
  linkEntityCoercionHandler = [self linkEntityCoercionHandler];
  v5 = [WFCoercion coercionToType:v3 handler:linkEntityCoercionHandler];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  if ([instanceCopy conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else if ([instanceCopy conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WFContactContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, instanceCopy);
  }

  return v5;
}

+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler
{
  queryCopy = query;
  itemsCopy = items;
  requestorCopy = requestor;
  handlerCopy = handler;
  if ([itemsCopy count])
  {
    v19.receiver = self;
    v19.super_class = &OBJC_METACLASS___WFContactContentItem;
    objc_msgSendSuper2(&v19, sel_runQuery_withItems_permissionRequestor_completionHandler_, queryCopy, itemsCopy, requestorCopy, handlerCopy);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__WFContactContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke;
    v14[3] = &unk_278345F10;
    v15 = queryCopy;
    v16 = requestorCopy;
    v17 = handlerCopy;
    selfCopy = self;
    [v16 allowContactsAccessWithCompletionHandler:v14];
  }
}

void __81__WFContactContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allContactsWithSortOrder:0];
  v4 = [v3 if_map:&__block_literal_global_446];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8.receiver = *(a1 + 56);
  v8.super_class = &OBJC_METACLASS___WFContactContentItem;
  objc_msgSendSuper2(&v8, sel_runQuery_withItems_permissionRequestor_completionHandler_, v5, v4, v6, v7);
}

- (id)defaultSourceForRepresentation:(id)representation
{
  representationCopy = representation;
  wfType = [representationCopy wfType];
  v6 = [wfType conformsToClass:objc_opt_class()];

  if (v6)
  {
    object = [representationCopy object];

    cachingIdentifier = [(WFContentItem *)self cachingIdentifier];
    v9 = [object attributionSetWithCachingIdentifier:cachingIdentifier];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFContactContentItem;
    v9 = [(WFContentItem *)&v11 defaultSourceForRepresentation:representationCopy];
  }

  return v9;
}

- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error
{
  v6 = MEMORY[0x277D79F68];
  v7 = *MEMORY[0x277CE1EB8];
  typeCopy = type;
  v9 = [v6 typeWithUTType:v7];
  LODWORD(v7) = [typeCopy conformsToType:v9];

  if (v7)
  {
    contact = [(WFContactContentItem *)self contact];
    vCardRepresentation = [contact vCardRepresentation];
  }

  else
  {
    vCardRepresentation = 0;
  }

  return vCardRepresentation;
}

- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == class)
  {
    contact = [(WFContactContentItem *)self contact];
    imageData = [contact imageData];

    if (imageData)
    {
      uRLs = [MEMORY[0x277D79FC8] imageWithData:imageData];
      v11 = [WFObjectRepresentation object:uRLs];
      v33[0] = v11;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

LABEL_19:
      goto LABEL_20;
    }

    v7 = 0;
  }

  else
  {
    if (objc_opt_class() != class)
    {
      if (objc_opt_class() == class)
      {
        imageData = [(WFContactContentItem *)self contact];
        streetAddresses = [(WFProcessedContacts *)imageData streetAddresses];
      }

      else if (objc_opt_class() == class)
      {
        imageData = [(WFContactContentItem *)self contact];
        streetAddresses = [(WFProcessedContacts *)imageData phoneNumbers];
      }

      else
      {
        if (objc_opt_class() != class)
        {
          if (objc_opt_class() == class)
          {
            imageData = [(WFContactContentItem *)self contact];
            uRLs = [(WFProcessedContacts *)imageData URLs];
            v19 = [(WFContactContentItem *)self objectRepresentationsFromLabeledValues:uRLs];
          }

          else
          {
            if (objc_opt_class() != class)
            {
              if (objc_opt_class() == class)
              {
                v26 = [(WFContentItem *)self objectForClass:objc_opt_class()];
                if (v26)
                {
                  v27 = [WFObjectRepresentation object:v26];
                }

                else
                {
                  contact2 = [(WFContactContentItem *)self contact];
                  iNPersonRepresentation = [contact2 INPersonRepresentation];
                  v27 = [WFObjectRepresentation object:iNPersonRepresentation];
                }

                v30 = v27;
                v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
              }

              else
              {
                v7 = 0;
              }

              goto LABEL_21;
            }

            v21 = [WFProcessedContacts alloc];
            v22 = [WFContactFieldEntry alloc];
            contact3 = [(WFContactContentItem *)self contact];
            v24 = [(WFContactFieldEntry *)v22 initWithContact:contact3];
            v32 = v24;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
            imageData = [(WFProcessedContacts *)v21 initWithEntries:v25];

            uRLs = [WFObjectRepresentation object:imageData];
            v31 = uRLs;
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          }

          goto LABEL_18;
        }

        imageData = [(WFContactContentItem *)self contact];
        streetAddresses = [(WFProcessedContacts *)imageData emailAddresses];
      }

      uRLs = streetAddresses;
      v19 = [(WFContactContentItem *)self unnamedObjectRepresentationsFromLabeledValues:streetAddresses];
LABEL_18:
      v7 = v19;
      goto LABEL_19;
    }

    v12 = MEMORY[0x277CBEA60];
    imageData = [(WFContactContentItem *)self contact];
    birthday = [(WFProcessedContacts *)imageData birthday];
    v14 = [v12 arrayWithObjects:{birthday, 0}];
    contact4 = [(WFContactContentItem *)self contact];
    dates = [contact4 dates];
    v17 = [v14 arrayByAddingObjectsFromArray:dates];
    v7 = [(WFContactContentItem *)self objectRepresentationsFromLabeledValues:v17];
  }

LABEL_20:

LABEL_21:

  return v7;
}

id __70__WFContactContentItem_unnamedObjectRepresentationsFromLabeledValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [WFObjectRepresentation object:v2];

  return v3;
}

id __63__WFContactContentItem_objectRepresentationsFromLabeledValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v2 label];

  v5 = [WFObjectRepresentation object:v3 named:v4];

  return v5;
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact = [(WFContactContentItem *)self contact];
    hasImageData = [contact hasImageData];
LABEL_16:
    v7 = hasImageData;
LABEL_17:

    goto LABEL_18;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact = [(WFContactContentItem *)self contact];
    if ([contact hasValueForPropertyID:17])
    {
      v7 = 1;
    }

    else
    {
      contact2 = [(WFContactContentItem *)self contact];
      v7 = [contact2 hasValueForPropertyID:12];
    }

    goto LABEL_17;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact3 = [(WFContactContentItem *)self contact];
    contact = contact3;
    v9 = 22;
LABEL_15:
    hasImageData = [contact3 hasValueForPropertyID:v9];
    goto LABEL_16;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact3 = [(WFContactContentItem *)self contact];
    contact = contact3;
    v9 = 5;
    goto LABEL_15;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact3 = [(WFContactContentItem *)self contact];
    contact = contact3;
    v9 = 3;
    goto LABEL_15;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    contact3 = [(WFContactContentItem *)self contact];
    contact = contact3;
    v9 = 4;
    goto LABEL_15;
  }

  if ([typeCopy conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(typeCopy, "conformsToClass:", objc_opt_class()))
  {
    v7 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFContactContentItem;
    v7 = [(WFGenericFileContentItem *)&v12 canGenerateRepresentationForType:typeCopy];
  }

LABEL_18:

  return v7;
}

- (id)changeTransaction
{
  v2 = [[WFContactContentItemChangeTransaction alloc] initWithContentItem:self];

  return v2;
}

- (WFContact)contact
{
  cachedContact = [(WFContactContentItem *)self cachedContact];

  if (cachedContact)
  {
    cachedContact2 = [(WFContactContentItem *)self cachedContact];
  }

  else
  {
    v5 = [(WFContentItem *)self objectForClass:objc_opt_class()];
    if (v5)
    {
      [WFContact cnContactWithINPerson:v5];
    }

    else
    {
      [(WFContentItem *)self objectForClass:objc_opt_class()];
    }
    cachedContact2 = ;
    [(WFContactContentItem *)self setCachedContact:cachedContact2];
  }

  return cachedContact2;
}

+ (id)stringConversionBehavior
{
  v2 = WFLocalizedString(@"Full Name");
  v3 = [WFContentItemStringConversionBehavior coercingToStringWithDescription:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v140[23] = *MEMORY[0x277D85DE8];
  v137 = objc_opt_new();
  v135 = WFLocalizedContentPropertyNameMarker(@"First Name");
  v134 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v135 class:objc_opt_class()];
  v133 = [v134 userInfo:&unk_282F7A018];
  v132 = [v133 setterBlock:&__block_literal_global_175];
  v140[0] = v132;
  v131 = WFLocalizedContentPropertyNameMarker(@"Middle Name");
  v130 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v131 class:objc_opt_class()];
  v129 = [v130 userInfo:&unk_282F7A030];
  v128 = [v129 setterBlock:&__block_literal_global_186];
  v140[1] = v128;
  v127 = WFLocalizedContentPropertyNameMarker(@"Last Name");
  v126 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v127 class:objc_opt_class()];
  v125 = [v126 userInfo:&unk_282F7A048];
  v124 = [v125 setterBlock:&__block_literal_global_194];
  v140[2] = v124;
  v123 = WFLocalizedContentPropertyNameMarker(@"Phone Numbers");
  v122 = [WFContentPropertyBuilder block:&__block_literal_global_197 name:v123 class:objc_opt_class()];
  v121 = [v122 userInfo:&unk_282F7A060];
  v120 = [v121 multipleValues:1];
  v119 = [v120 setterBlock:&__block_literal_global_210_6205];
  v118 = WFLocalizedContentPropertyNameMarker(@"Phone Number");
  v117 = [v119 singularItemName:v118];
  v140[3] = v117;
  v116 = WFLocalizedContentPropertyNameMarker(@"Email Addresses");
  v115 = [WFContentPropertyBuilder block:&__block_literal_global_216 name:v116 class:objc_opt_class()];
  v114 = [v115 userInfo:&unk_282F7A078];
  v113 = [v114 multipleValues:1];
  v112 = [v113 setterBlock:&__block_literal_global_225];
  v111 = WFLocalizedContentPropertyNameMarker(@"Email Address");
  v110 = [v112 singularItemName:v111];
  v140[4] = v110;
  v109 = WFLocalizedContentPropertyNameMarker(@"Street Addresses");
  v108 = [WFContentPropertyBuilder block:&__block_literal_global_231_6209 name:v109 class:objc_opt_class()];
  v107 = [v108 userInfo:&unk_282F7A090];
  v106 = [v107 multipleValues:1];
  v105 = [v106 setterBlock:&__block_literal_global_240];
  v104 = WFLocalizedContentPropertyNameMarker(@"Street Address");
  v103 = [v105 singularItemName:v104];
  v140[5] = v103;
  v102 = WFLocalizedContentPropertyNameMarker(@"URLs");
  v101 = [WFContentPropertyBuilder block:&__block_literal_global_246 name:v102 class:objc_opt_class()];
  v100 = [v101 userInfo:&unk_282F7A0A8];
  v99 = [v100 multipleValues:1];
  v98 = [v99 canLowercaseName:0];
  v97 = [v98 setterBlock:&__block_literal_global_255];
  v96 = WFLocalizedContentPropertyNameMarker(@"URL");
  v95 = [v97 singularItemName:v96];
  v140[6] = v95;
  v94 = WFLocalizedContentPropertyNameMarker(@"Birthday");
  v93 = [WFContentPropertyBuilder keyPath:@"contact.birthday.value" name:v94 class:objc_opt_class()];
  v92 = [v93 userInfo:&unk_282F7A0C0];
  v91 = [v92 timeUnits:8220];
  v90 = [v91 comparableUnits:24];
  v89 = [v90 setterBlock:&__block_literal_global_271];
  v140[7] = v89;
  v88 = WFLocalizedContentPropertyNameMarker(@"Relationship to Me");
  v87 = [WFContentPropertyBuilder block:&__block_literal_global_275 name:v88 class:objc_opt_class()];
  v85 = [v87 multipleValues:1];
  v86 = objc_opt_new();
  allUsedRelationLabels = [v86 allUsedRelationLabels];
  v83 = [v85 possibleValues:allUsedRelationLabels];
  v140[8] = v83;
  v82 = WFLocalizedContentPropertyNameMarker(@"Contact Photo");
  v81 = [WFContentPropertyBuilder block:&__block_literal_global_284 name:v82 class:objc_opt_class()];
  v80 = [v81 userInfo:&unk_282F7A0D8];
  v79 = [v80 setterBlock:&__block_literal_global_294];
  v140[9] = v79;
  v77 = WFLocalizedContentPropertyNameMarker(@"Has Photo");
  v78 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v76 = [WFContentPropertyBuilder block:&__block_literal_global_297 name:v77 class:objc_opt_class()];
  v75 = WFLocalizedContentPropertyNameMarker(@"Has No Photo");
  v74 = [v76 negativeName:v75];
  v73 = WFLocalizedString(@"Contact");
  v72 = [v74 singularItemName:v73];
  v71 = [v72 gettable:0];
  v70 = [v71 userInfo:&unk_282F7A0F0];
  v140[10] = v70;
  v69 = WFLocalizedContentPropertyNameMarker(@"Prefix");
  v68 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v69 class:objc_opt_class()];
  v67 = [v68 userInfo:&unk_282F7A108];
  v66 = [v67 setterBlock:&__block_literal_global_320];
  v140[11] = v66;
  v65 = WFLocalizedContentPropertyNameMarker(@"Suffix");
  v64 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v65 class:objc_opt_class()];
  v63 = [v64 userInfo:&unk_282F7A120];
  v62 = [v63 setterBlock:&__block_literal_global_328_6214];
  v140[12] = v62;
  v61 = WFLocalizedContentPropertyNameMarker(@"Nickname");
  v60 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v61 class:objc_opt_class()];
  v59 = [v60 userInfo:&unk_282F7A138];
  v58 = [v59 setterBlock:&__block_literal_global_336];
  v140[13] = v58;
  v57 = WFLocalizedContentPropertyNameMarker(@"Phonetic First Name");
  v56 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v57 class:objc_opt_class()];
  v55 = [v56 userInfo:&unk_282F7A150];
  v54 = [v55 setterBlock:&__block_literal_global_344];
  v140[14] = v54;
  v53 = WFLocalizedContentPropertyNameMarker(@"Phonetic Last Name");
  v52 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v53 class:objc_opt_class()];
  v51 = [v52 userInfo:&unk_282F7A168];
  v50 = [v51 setterBlock:&__block_literal_global_352];
  v140[15] = v50;
  v49 = WFLocalizedContentPropertyNameMarker(@"Phonetic Middle Name");
  v48 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v49 class:objc_opt_class()];
  v47 = [v48 userInfo:&unk_282F7A180];
  v46 = [v47 setterBlock:&__block_literal_global_360];
  v140[16] = v46;
  v45 = WFLocalizedContentPropertyNameMarker(@"Company");
  v44 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v45 class:objc_opt_class()];
  v43 = [v44 userInfo:&unk_282F7A198];
  v42 = [v43 setterBlock:&__block_literal_global_368];
  v140[17] = v42;
  v41 = WFLocalizedContentPropertyNameMarker(@"Job Title");
  v40 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v41 class:objc_opt_class()];
  v39 = [v40 userInfo:&unk_282F7A1B0];
  v38 = [v39 setterBlock:&__block_literal_global_376];
  v140[18] = v38;
  v37 = WFLocalizedContentPropertyNameMarker(@"Department");
  v36 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v37 class:objc_opt_class()];
  v35 = [v36 userInfo:&unk_282F7A1C8];
  v34 = [v35 setterBlock:&__block_literal_global_384];
  v140[19] = v34;
  v33 = WFLocalizedContentPropertyNameMarker(@"Notes");
  v32 = [WFContentPropertyBuilder block:&__block_literal_global_6199 name:v33 class:objc_opt_class()];
  v31 = [v32 userInfo:&unk_282F7A1E0];
  v30 = [v31 sortable:0];
  v29 = [v30 appendable:1];
  v28 = [v29 setterBlock:&__block_literal_global_392];
  v140[20] = v28;
  v27 = [WFContentPropertyBuilder keyPath:@"contact.creationDate" name:@"Creation Date" class:objc_opt_class()];
  v26 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v25 = [v27 displayName:v26];
  v2 = [v25 userInfo:@"WFFileCreationDate"];
  v3 = [v2 tense:1];
  v4 = [v3 timeUnits:8444];
  v140[21] = v4;
  v5 = [WFContentPropertyBuilder keyPath:@"contact.modificationDate" name:@"Last Modified Date" class:objc_opt_class()];
  v6 = WFLocalizedContentPropertyNameMarker(@"Date Modified");
  v7 = [v5 displayName:v6];
  v8 = [v7 userInfo:@"WFFileModificationDate"];
  v9 = [v8 tense:1];
  v10 = [v9 timeUnits:8444];
  v140[22] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:23];
  [v137 addObjectsFromArray:v11];

  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __40__WFContactContentItem_propertyBuilders__block_invoke_2_412;
  v139[3] = &__block_descriptor_40_e43_v32__0__WFContactContentItem_8_16___v____24l;
  v139[4] = self;
  v12 = WFLocalizedContentPropertyNameMarker(@"Group");
  v13 = [WFContentPropertyBuilder block:v139 name:v12 class:objc_opt_class()];
  v14 = [v13 multipleValues:1];
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __40__WFContactContentItem_propertyBuilders__block_invoke_4_418;
  v138[3] = &__block_descriptor_40_e14___NSArray_8__0l;
  v138[4] = self;
  v15 = [v14 possibleValuesGetter:v138];
  v16 = [v15 userInfo:@"WFContactItemGroupProperty"];
  v17 = [v16 gettable:0];
  v18 = [v17 setterBlock:&__block_literal_global_428];
  [v137 insertObject:v18 atIndex:0];

  v19 = WFLocalizedContentPropertyNameMarker(@"File Size");
  v20 = [WFContentPropertyBuilder block:&__block_literal_global_431 name:v19 class:objc_opt_class()];
  v21 = [v20 userInfo:@"WFFileSizeProperty"];
  v22 = [v21 filterable:0];
  v23 = [v22 sortable:0];
  [v137 addObject:v23];

  return v137;
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_412(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = [v7 cachedContactGroups];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__WFContactContentItem_propertyBuilders__block_invoke_3_413;
  v12[3] = &unk_278345E88;
  v13 = v6;
  v10 = v6;
  v11 = [v9 if_compactMap:v12];
  (a4)[2](v8, v11);
}

id __40__WFContactContentItem_propertyBuilders__block_invoke_4_418(uint64_t a1)
{
  v1 = [*(a1 + 32) cachedContactGroups];
  v2 = [v1 valueForKey:@"name"];

  return v2;
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WFContactContentItem_propertyBuilders__block_invoke_7;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

id __40__WFContactContentItem_propertyBuilders__block_invoke_3_413(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contact];
  if ([v3 containsContact:v4])
  {
    v5 = [v3 name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_390(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v4 = a3;
  v5 = [v12 mode];
  v6 = [v5 isEqual:@"Append"];

  if (v6)
  {
    v7 = [v12 mutableContact];
    v8 = [v7 note];
    v9 = [(__CFString *)v8 stringByAppendingAsNewLine:v4];

    v10 = [v12 mutableContact];
    [v10 setNote:v9];

    v4 = v8;
  }

  else
  {
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = &stru_282F53518;
    }

    v7 = [v12 mutableContact];
    [v7 setNote:v11];
  }
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_382(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setDepartmentName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_374(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setJobTitle:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_366(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setOrganizationName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_358(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setPhoneticMiddleName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_350(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setPhoneticFamilyName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_342(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setPhoneticGivenName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_334(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setNickname:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_326(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setNameSuffix:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_318(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setNamePrefix:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_295(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v9 = [a2 contact];
  v8 = [v6 numberWithBool:{objc_msgSend(v9, "hasImageData")}];
  (a4)[2](v7, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_291(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = [a3 PNGRepresentation];
  v5 = [v4 mutableContact];
  [v5 setImageData:v7];

  v6 = [v4 mutableContact];

  [v6 setThumbnailImageData:v7];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277D79FC8];
  v7 = a4;
  v10 = [a2 contact];
  v8 = [v10 imageData];
  v9 = [v6 imageWithData:v8];
  (a4)[2](v7, v9);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_272(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v9 = [a2 contact];
  v7 = [v9 relationsWithMeContact];
  v8 = [v7 if_compactMap:&__block_literal_global_278];
  (a4)[2](v6, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_268(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableContact];
  [v5 setBirthday:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_244(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v9 = [a2 contact];
  v7 = [v9 URLs];
  v8 = [v7 valueForKey:@"value"];
  (a4)[2](v6, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_229(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v9 = [a2 contact];
  v7 = [v9 streetAddresses];
  v8 = [v7 valueForKey:@"value"];
  (a4)[2](v6, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2_214(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v9 = [a2 contact];
  v7 = [v9 emailAddresses];
  v8 = [v7 valueForKey:@"value"];
  (a4)[2](v6, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v9 = [a2 contact];
  v7 = [v9 phoneNumbers];
  v8 = [v7 valueForKey:@"value"];
  (a4)[2](v6, v8);
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_192(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setFamilyName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_184(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setMiddleName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke_172(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableContact];
  [v6 setGivenName:v4];
}

void __40__WFContactContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void))
{
  v7 = a4;
  v8 = a3;
  v11 = [a2 contact];
  v9 = [v8 unsignedIntValue];

  v10 = [v11 valueForPropertyID:v9];
  (a4)[2](v7, v10);
}

+ (id)cachedContactGroups
{
  v2 = cachedContactGroups_contactGroups;
  if (!cachedContactGroups_contactGroups)
  {
    v3 = +[WFContactGroup allContactGroups];
    v4 = cachedContactGroups_contactGroups;
    cachedContactGroups_contactGroups = v3;

    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__6285;
    v13 = __Block_byref_object_dispose__6286;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__WFContactContentItem_cachedContactGroups__block_invoke;
    v8[3] = &unk_27834A178;
    v8[4] = &v9;
    v5 = [WFContact addContactsChangeObserver:v8];
    v6 = v10[5];
    v10[5] = v5;

    _Block_object_dispose(&v9, 8);
    v2 = cachedContactGroups_contactGroups;
  }

  return v2;
}

uint64_t __43__WFContactContentItem_cachedContactGroups__block_invoke(uint64_t a1)
{
  v2 = cachedContactGroups_contactGroups;
  cachedContactGroups_contactGroups = 0;

  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [WFContact removeContactsChangeObserver:v3];
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v49[1] = *MEMORY[0x277D85DE8];
  thumbnailCopy = thumbnail;
  contact = [(WFContactContentItem *)self contact];
  if (![contact hasImageData] || (objc_msgSend(contact, "thumbnailImageData"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = 0;
      goto LABEL_22;
    }

    if (thumbnailCopy)
    {
      v8Contact = [contact contact];
      currentDevice = [MEMORY[0x277D79F18] currentDevice];
      [currentDevice screenScale];
      v27 = v26;

      v28 = +[WFApplicationContext sharedContext];
      shouldReverseLayoutDirection = [v28 shouldReverseLayoutDirection];

      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v30 = getCNAvatarImageRenderingScopeClass_softClass;
      v46 = getCNAvatarImageRenderingScopeClass_softClass;
      if (!getCNAvatarImageRenderingScopeClass_softClass)
      {
        *&v42.a = MEMORY[0x277D85DD0];
        *&v42.b = 3221225472;
        *&v42.c = __getCNAvatarImageRenderingScopeClass_block_invoke;
        *&v42.d = &unk_27834A178;
        *&v42.tx = &v43;
        __getCNAvatarImageRenderingScopeClass_block_invoke(&v42);
        v30 = v44[3];
      }

      v31 = v30;
      _Block_object_dispose(&v43, 8);
      v23 = [v30 scopeWithPointSize:shouldReverseLayoutDirection scale:0 rightToLeft:width style:{height, v27}];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v32 = getCNAvatarImageRendererSettingsClass_softClass;
      v46 = getCNAvatarImageRendererSettingsClass_softClass;
      if (!getCNAvatarImageRendererSettingsClass_softClass)
      {
        *&v42.a = MEMORY[0x277D85DD0];
        *&v42.b = 3221225472;
        *&v42.c = __getCNAvatarImageRendererSettingsClass_block_invoke;
        *&v42.d = &unk_27834A178;
        *&v42.tx = &v43;
        __getCNAvatarImageRendererSettingsClass_block_invoke(&v42);
        v32 = v44[3];
      }

      v33 = v32;
      _Block_object_dispose(&v43, 8);
      defaultSettings = [v32 defaultSettings];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v35 = getCNAvatarImageRendererClass_softClass;
      v46 = getCNAvatarImageRendererClass_softClass;
      if (!getCNAvatarImageRendererClass_softClass)
      {
        *&v42.a = MEMORY[0x277D85DD0];
        *&v42.b = 3221225472;
        *&v42.c = __getCNAvatarImageRendererClass_block_invoke;
        *&v42.d = &unk_27834A178;
        *&v42.tx = &v43;
        __getCNAvatarImageRendererClass_block_invoke(&v42);
        v35 = v44[3];
      }

      v36 = v35;
      _Block_object_dispose(&v43, 8);
      v37 = [[v35 alloc] initWithSettings:defaultSettings];
      v47 = v8Contact;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v39 = [v37 avatarImageForContacts:v38 scope:v23];

      v24 = v39 != 0;
      if (v39)
      {
        v40 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v39];
        thumbnailCopy[2](thumbnailCopy, v40, 0);
      }

      goto LABEL_19;
    }

LABEL_21:
    v24 = 1;
    goto LABEL_22;
  }

  if (!thumbnailCopy)
  {
    goto LABEL_21;
  }

  v10 = MEMORY[0x277D79FC8];
  thumbnailImageData = [contact thumbnailImageData];
  v8Contact = [v10 imageWithData:thumbnailImageData];

  currentDevice2 = [MEMORY[0x277D79F18] currentDevice];
  [currentDevice2 screenScale];
  v15 = v14;

  CGAffineTransformMakeScale(&v42, v15, v15);
  a = v42.a;
  b = v42.b;
  c = v42.c;
  d = v42.d;
  [v8Contact sizeInPixels];
  if (v20 > height * c + a * width)
  {
    [v8Contact sizeInPixels];
    if (v21 > height * d + b * width)
    {
      v22 = [v8Contact resizedImageWithSizeInPoints:width scale:{height, v15}];

      v8Contact = v22;
    }
  }

  v48 = *MEMORY[0x277D7A398];
  v49[0] = &unk_282F7A2D0;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  (thumbnailCopy)[2](thumbnailCopy, v8Contact, v23);
  v24 = 1;
LABEL_19:

LABEL_22:
  return v24;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    contact = [(WFContactContentItem *)self contact];
    organization = [contact organization];
    (*(subtitle + 2))(subtitleCopy, organization);
  }

  contact2 = [(WFContactContentItem *)self contact];
  organization2 = [contact2 organization];
  v10 = organization2 != 0;

  return v10;
}

@end