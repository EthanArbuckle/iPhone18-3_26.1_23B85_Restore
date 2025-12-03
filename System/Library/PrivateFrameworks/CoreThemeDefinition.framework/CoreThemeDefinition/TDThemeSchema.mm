@interface TDThemeSchema
+ (BOOL)loadThemeConstantsForEntity:(id)entity inContext:(id)context;
- (BOOL)_renditionKey:(const _renditionkeytoken *)key isEqualToKeyIgnoringLook:(const _renditionkeytoken *)look;
- (TDThemeSchema)initWithThemeDocument:(id)document;
- (void)_addSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement;
- (void)_loadConstantForEntity:(id)entity withDescriptor:(const _themeconstant *)descriptor;
- (void)_sanityCheckColorNamesAndUpdateIfNecessary;
- (void)_sanityCheckEffectRenditionsAndUpdateIfNecessary;
- (void)_sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary;
- (void)_sanityCheckMicaRenditionsAndUpdateIfNecessary;
- (void)_sanityCheckObjectsWithEntityName:(id)name globalDescriptor:(void *)descriptor matchIdentifierOnly:(BOOL)only;
- (void)_sanityCheckSchemaAssets;
- (void)_sanityCheckSchemaCategoriesAndUpdateIfNecessary;
- (void)_sanityCheckSchemaDefinitionsAndUpdateIfNecessary;
- (void)_sanityCheckSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement;
- (void)dealloc;
- (void)loadBasicThemePart;
- (void)loadColorNames;
- (void)loadColorStatuses;
- (void)loadEffectConstants;
- (void)loadIterationTypes;
- (void)loadMetafontSelectors;
- (void)loadMetafontSizes;
- (void)loadRenditionSubtypes;
- (void)loadRenditionTypes;
- (void)loadSchemaCategories;
- (void)loadSchemaDefinitions;
- (void)loadStandardEffectDefinitions;
- (void)loadTemplateRenderingModeConstants;
- (void)loadTexturePixelFormats;
- (void)loadThemeCompressionTypes;
- (void)loadThemeDeploymentTargets;
- (void)loadThemeDirections;
- (void)loadThemeDisplayGamuts;
- (void)loadThemeDrawingLayers;
- (void)loadThemeElements;
- (void)loadThemeGraphicsFeatureSetClasses;
- (void)loadThemeIdioms;
- (void)loadThemeParts;
- (void)loadThemePresentationStates;
- (void)loadThemeSizes;
- (void)loadThemeStates;
- (void)loadThemeTextureFaces;
- (void)loadThemeTextureInterpretations;
- (void)loadThemeUISizeClasses;
- (void)loadThemeValues;
- (void)resetThemeConstants;
- (void)sanityCheckAndUpdateDocumentIfNecessary;
@end

@implementation TDThemeSchema

- (TDThemeSchema)initWithThemeDocument:(id)document
{
  v6.receiver = self;
  v6.super_class = TDThemeSchema;
  v4 = [(TDThemeSchema *)&v6 init];
  if (v4)
  {
    v4->_doc = document;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDThemeSchema;
  [(TDThemeSchema *)&v3 dealloc];
}

- (void)_sanityCheckObjectsWithEntityName:(id)name globalDescriptor:(void *)descriptor matchIdentifierOnly:(BOOL)only
{
  v122 = *MEMORY[0x277D85DE8];
  v94 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
  nameCopy = name;
  obj = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", name, [MEMORY[0x277CBEA60] arrayWithObject:?]);
  descriptorCopy = descriptor;
  v7 = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:descriptor];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nextConstantHelper = [v7 nextConstantHelper];
  v97 = v8;
  if (!nextConstantHelper)
  {
    goto LABEL_26;
  }

  nextConstantHelper2 = nextConstantHelper;
  v96 = v7;
  do
  {
    if (![objc_msgSend(nextConstantHelper2 "displayName")])
    {
      break;
    }

    if ([objc_msgSend(nextConstantHelper2 "label")])
    {
      goto LABEL_25;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v105 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    if (!v105)
    {
      goto LABEL_24;
    }

    v11 = 0;
    v103 = *v116;
    do
    {
      for (i = 0; i != v105; ++i)
      {
        if (*v116 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v115 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 valueForKey:{@"identifier", "integerValue"}];
        v15 = [v13 valueForKey:@"constantName"];
        v16 = [v13 valueForKey:@"displayName"];
        identifier = [nextConstantHelper2 identifier];
        label = [nextConstantHelper2 label];
        displayName = [nextConstantHelper2 displayName];
        if (v14 != identifier)
        {
          if (only || ([v15 isEqualToString:label] & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", displayName))
          {
            continue;
          }

          v92 = identifier;
          TDSchemaLog(&cfstr_UpdatingIdenti.isa, v20, v21, v22, v23, v24, v25, v26, label);
          [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", identifier), @"identifier"}];
        }

        if (([v15 isEqualToString:label] & 1) == 0)
        {
          v92 = v15;
          v93 = label;
          TDSchemaLog(&cfstr_UpdatingConsta.isa, v27, v28, v29, v30, v31, v32, v33, label);
          [v13 setValue:label forKey:@"constantName"];
        }

        ++v11;
        if (([v16 isEqualToString:displayName] & 1) == 0)
        {
          v92 = v16;
          v93 = displayName;
          TDSchemaLog(&cfstr_UpdatingDispla.isa, v34, v35, v36, v37, v38, v39, v40, label);
          [v13 setValue:displayName forKey:@"displayName"];
        }
      }

      v105 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    }

    while (v105);
    if (v11 >= 2)
    {
      NSLog(&cfstr_WarningDocumen.isa, [nextConstantHelper2 valueForKey:@"label"]);
      v7 = v96;
      v8 = v97;
      goto LABEL_25;
    }

    v7 = v96;
    v8 = v97;
    if (!v11)
    {
LABEL_24:
      [v8 addObject:nextConstantHelper2];
    }

LABEL_25:
    nextConstantHelper2 = [v7 nextConstantHelper];
  }

  while (nextConstantHelper2);
LABEL_26:
  if ([v8 count])
  {
    v92 = [v8 valueForKey:@"label"];
    TDSchemaLog(&cfstr_EntityHasMissi.isa, v41, v42, v43, v44, v45, v46, v47, nameCopy);
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v48 = [v8 countByEnumeratingWithState:&v111 objects:v120 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v112;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v112 != v50)
          {
            objc_enumerationMutation(v97);
          }

          v52 = *(*(&v111 + 1) + 8 * j);
          v53 = [(CoreThemeDocument *)self->_doc newObjectForEntity:nameCopy];
          [v53 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", objc_msgSend(v52, "identifier")), @"identifier"}];
          [v53 setValue:objc_msgSend(v52 forKey:{"label"), @"constantName"}];
          [v53 setValue:objc_msgSend(v52 forKey:{"displayName"), @"displayName"}];
        }

        v8 = v97;
        v49 = [v97 countByEnumeratingWithState:&v111 objects:v120 count:16];
      }

      while (v49);
    }

    [-[TDPersistentDocument managedObjectContext](self->_doc "managedObjectContext")];
  }

  v54 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", nameCopy, [MEMORY[0x277CBEA60] arrayWithObject:v94]);
  v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  obja = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:descriptorCopy];
  nextConstantHelper3 = [obja nextConstantHelper];
  if (nextConstantHelper3)
  {
    nextConstantHelper4 = nextConstantHelper3;
    v58 = 0;
    do
    {
      if (![objc_msgSend(nextConstantHelper4 "displayName")])
      {
        break;
      }

      identifier2 = [nextConstantHelper4 identifier];
      v60 = identifier2;
      if (identifier2 > v58)
      {
        v58 = identifier2;
      }

      v104 = v58;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v61 = [v54 countByEnumeratingWithState:&v107 objects:v119 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = 0;
        v64 = *v108;
        do
        {
          for (k = 0; k != v62; ++k)
          {
            if (*v108 != v64)
            {
              objc_enumerationMutation(v54);
            }

            v66 = *(*(&v107 + 1) + 8 * k);
            if (v60 == [objc_msgSend(v66 valueForKey:{@"identifier", "integerValue"}])
            {
              if (v63 < 1)
              {
                ++v63;
              }

              else
              {
                v106 = v63 + 1;
                v67 = [v66 valueForKey:@"constantName"];
                TDSchemaLog(&cfstr_FoundExtraThem.isa, v68, v69, v70, v71, v72, v73, v74, v67);
                v75 = [v54 objectAtIndex:{objc_msgSend(v54, "indexOfObject:", v66) - 1}];
                v76 = v64;
                v77 = v60;
                v78 = [objc_msgSend(objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
                v79 = MEMORY[0x277CCAC30];
                name = [v78 name];
                v80 = v79;
                v60 = v77;
                v64 = v76;
                if (-[CoreThemeDocument countForEntity:withPredicate:](self->_doc, "countForEntity:withPredicate:", @"RenditionKeySpec", [v80 predicateWithFormat:@"%K = %@", name, v75]) <= 0)
                {
                  v81 = v75;
                }

                else
                {
                  v81 = v66;
                }

                [v55 addObject:v81];
                v63 = v106;
              }
            }
          }

          v62 = [v54 countByEnumeratingWithState:&v107 objects:v119 count:16];
        }

        while (v62);
      }

      nextConstantHelper4 = [obja nextConstantHelper];
      v58 = v104;
    }

    while (nextConstantHelper4);
  }

  else
  {
    v58 = 0;
  }

  v82 = [v54 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier > %d", v58, v92, v93)}];
  if ([v82 count] && (objc_msgSend(nameCopy, "isEqualToString:", @"EffectType") & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", @"EffectParameterType") & 1) == 0)
  {
    [v82 valueForKey:@"constantName"];
    TDSchemaLog(&cfstr_RemovingExtraT.isa, v83, v84, v85, v86, v87, v88, v89, nameCopy);
    [v55 addObjectsFromArray:v82];
  }

  if ([v55 count])
  {
    [(CoreThemeDocument *)self->_doc deleteObjects:v55];
    [-[TDPersistentDocument managedObjectContext](self->_doc "managedObjectContext")];
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"controlSize.identifier" ascending:1];
  selfCopy = self;
  obj = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", @"MetafontSizeSelector", [MEMORY[0x277CBEA60] arrayWithObject:v3]);

  v4 = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:MEMORY[0x277D02750]];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = v4;
  nextConstantHelper = [v4 nextConstantHelper];
  if (nextConstantHelper)
  {
    nextConstantHelper2 = nextConstantHelper;
    v52 = v5;
    while (1)
    {
      if (![objc_msgSend(nextConstantHelper2 "displayName")])
      {
        goto LABEL_27;
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v57 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (!v57)
      {
        break;
      }

      v58 = 0;
      v56 = *v64;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v64 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v63 + 1) + 8 * i);
          v10 = [objc_msgSend(v9 "identifier")];
          v11 = [objc_msgSend(v9 "controlSize")];
          selectorName = [v9 selectorName];
          displayName = [v9 displayName];
          identifier = [nextConstantHelper2 identifier];
          label = [nextConstantHelper2 label];
          displayName2 = [nextConstantHelper2 displayName];
          if (identifier == v10 || ([selectorName isEqualToString:label] & 1) != 0 || objc_msgSend(displayName, "isEqualToString:", displayName2))
          {
            if ([objc_msgSend(v9 "identifier")] != identifier)
            {
              TDSchemaLog(&cfstr_UpdatingIdenti.isa, v17, v18, v19, v20, v21, v22, v23, v9);
              [v9 setIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", identifier)}];
            }

            if (identifier != v11)
            {
              TDSchemaLog(&cfstr_UpdatingContro.isa, v17, v18, v19, v20, v21, v22, v23, v9);
              [v9 setControlSize:{-[CoreThemeDocument sizeWithIdentifier:](selfCopy->_doc, "sizeWithIdentifier:", identifier)}];
            }

            if (([selectorName isEqualToString:label] & 1) == 0)
            {
              TDSchemaLog(&cfstr_UpdatingSelect.isa, v24, v25, v26, v27, v28, v29, v30, v9);
              [v9 setSelectorName:label];
            }

            ++v58;
            if (([displayName isEqualToString:displayName2] & 1) == 0)
            {
              TDSchemaLog(&cfstr_UpdatingDispla_0.isa, v31, v32, v33, v34, v35, v36, v37, v9);
              [v9 setDisplayName:displayName2];
            }
          }
        }

        v57 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v57);
      if (v58 < 2)
      {
        v5 = v52;
        if (!v58)
        {
          break;
        }
      }

      else
      {
        NSLog(&cfstr_WarningDocumen.isa, nextConstantHelper2);
        v5 = v52;
      }

LABEL_26:
      nextConstantHelper2 = [v53 nextConstantHelper];
      if (!nextConstantHelper2)
      {
        goto LABEL_27;
      }
    }

    [v5 addObject:nextConstantHelper2];
    goto LABEL_26;
  }

LABEL_27:
  if ([v5 count])
  {
    TDSchemaLog(&cfstr_EntityMetafont.isa, v38, v39, v40, v41, v42, v43, v44, v5);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = [v5 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v60;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(v5);
          }

          v49 = *(*(&v59 + 1) + 8 * j);
          v50 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"MetafontSizeSelector"];
          [v50 setControlSize:{-[CoreThemeDocument sizeWithIdentifier:](selfCopy->_doc, "sizeWithIdentifier:", objc_msgSend(v49, "identifier"))}];
          [v50 setSelectorName:{objc_msgSend(v49, "label")}];
          [v50 setDisplayName:{objc_msgSend(v49, "displayName")}];
        }

        v46 = [v5 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v46);
    }

    [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckColorNamesAndUpdateIfNecessary
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"ColorName" withSortDescriptors:0];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = MEMORY[0x277D02730];
  if (*(MEMORY[0x277D02730] + 16))
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v10 += [v7 isEqualToString:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "valueForKey:", @"displayName"}];
        }

        v9 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
      v5 = MEMORY[0x277D02730];
      if (!v10)
      {
LABEL_11:
        [v4 addIndex:v6];
      }

      v13 = v5 + 40 * v6++;
    }

    while (*(v13 + 56));
  }

  if ([v4 count])
  {
    firstIndex = [v4 firstIndex];
    selfCopy = self;
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = firstIndex; j != 0x7FFFFFFFFFFFFFFFLL; j = [v4 indexGreaterThanIndex:j])
      {
        v17 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"ColorName"];
        v18 = MEMORY[0x277D02730] + 40 * j;
        [v17 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", *(v18 + 16)), @"displayName"}];
        [v17 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", *(v18 + 24)), @"selector"}];
      }
    }

    [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement
{
  v111 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  withElementCopy = withElement;
  parts = [withElement parts];
  v86 = v7;
  v9 = [parts sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v7)}];
  selfCopy = self;
  v11 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  v12 = [v11 partDefinitionCountForElementDefinition:element];
  v13 = malloc_type_malloc(440 * v12, 0xBC29AAC7uLL);
  memcpy(v13, element->var4, 440 * v12);
  qsort_b(v13, v12, 0x1B8uLL, &__block_literal_global_5);
  v88 = v12;
  obj = [MEMORY[0x277CBEB18] array];
  v87 = v13;
  if (v12)
  {
    v14 = 0;
    do
    {
      v15 = &v13[440 * v14];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v15];
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v17 = [v9 countByEnumeratingWithState:&v103 objects:v110 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v104;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v104 != v19)
            {
              objc_enumerationMutation(v9);
            }

            v21 = *(*(&v103 + 1) + 8 * i);
            if ([v16 isEqualToString:{objc_msgSend(v21, "name")}])
            {
              v22 = [v11 widgetNameForPartDefinition:v15];
              v13 = v87;
              if (([v22 isEqualToString:{objc_msgSend(v21, "widgetID")}] & 1) == 0)
              {
                name = [withElementCopy name];
                [v21 name];
                [v21 widgetID];
                TDSchemaLog(&cfstr_UpdatingWidget.isa, v24, v25, v26, v27, v28, v29, v30, name);
                [v21 setWidgetID:v22];
              }

              goto LABEL_16;
            }

            if ([v16 compare:{objc_msgSend(v21, "name")}] == -1)
            {
              [obj addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v15, 8, 0)}];
              v13 = v87;
              goto LABEL_16;
            }
          }

          v18 = [v9 countByEnumeratingWithState:&v103 objects:v110 count:16];
          v13 = v87;
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [obj addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v15, 8, 0)}];
LABEL_16:

      ++v14;
    }

    while (v14 != v88);
  }

  if ([obj count])
  {
    name2 = [withElementCopy name];
    TDSchemaLog(&cfstr_ElementWasMiss.isa, v32, v33, v34, v35, v36, v37, v38, name2);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v39 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v100;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v100 != v41)
        {
          objc_enumerationMutation(obj);
        }

        bytes = [*(*(&v99 + 1) + 8 * j) bytes];
        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*bytes];
        v45 = [v11 widgetNameForPartDefinition:bytes];
        TDSchemaLog(&cfstr_AddingPart.isa, v46, v47, v48, v49, v50, v51, v52, v44);
        v53 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"SchemaPartDefinition"];
        [v53 setName:v44];
        [v53 setWidgetID:v45];
        [v53 setElement:withElementCopy];
        [v53 updateDerivedRenditionData];
      }

      v40 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
    }

    while (v40);
  }

  array = [MEMORY[0x277CBEB18] array];
  parts2 = [withElementCopy parts];
  v56 = [parts2 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v86)}];

  if ([v56 count] > v88)
  {
    name3 = [withElementCopy name];
    TDSchemaLog(&cfstr_DocumentContai.isa, v58, v59, v60, v61, v62, v63, v64, name3);
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v65 = [v56 countByEnumeratingWithState:&v95 objects:v108 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v68 = *v96;
LABEL_29:
      v69 = 0;
      while (1)
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(v56);
        }

        if (v67 > v88)
        {
          break;
        }

        v70 = *(*(&v95 + 1) + 8 * v69);
        v71 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*&v87[440 * v67]];
        if ([v71 isEqualToString:{objc_msgSend(v70, "name")}])
        {
          ++v67;
        }

        else
        {
          [array addObject:v70];
        }

        if (v66 == ++v69)
        {
          v66 = [v56 countByEnumeratingWithState:&v95 objects:v108 count:16];
          if (v66)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v72 = [array countByEnumeratingWithState:&v91 objects:v107 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v92;
      do
      {
        for (k = 0; k != v73; ++k)
        {
          if (*v92 != v74)
          {
            objc_enumerationMutation(array);
          }

          v76 = *(*(&v91 + 1) + 8 * k);
          name4 = [v76 name];
          TDSchemaLog(&cfstr_DeletingPart.isa, v78, v79, v80, v81, v82, v83, v84, name4);
          [withElementCopy removePartsObject:v76];
          [(CoreThemeDocument *)selfCopy->_doc deleteObject:v76];
        }

        v73 = [array countByEnumeratingWithState:&v91 objects:v107 count:16];
      }

      while (v73);
    }
  }

  if (v87)
  {
    free(v87);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)_addSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement
{
  v7 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  if (element->var4[0].var3)
  {
    v8 = v7;
    do
    {
      if (element->var4[0].var0)
      {
        v9 = [(CoreThemeDocument *)self->_doc newObjectForEntity:@"SchemaPartDefinition"];
        v10 = [v8 widgetNameForPartDefinition:element->var4];
        [v9 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", element->var4[0].var0, 4)}];
        [v9 setElement:withElement];
        [v9 setWidgetID:v10];
        [v9 updateDerivedRenditionData];
      }

      var3 = element->var4[1].var3;
      element = (element + 440);
    }

    while (var3);
  }
}

- (void)_sanityCheckSchemaCategoriesAndUpdateIfNecessary
{
  v75 = *MEMORY[0x277D85DE8];
  TDSchemaLog(&cfstr_SynchronizingS.isa, a2, v2, v3, v4, v5, v6, v7, v61);
  v9 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaCategory" withSortDescriptors:0];
  selfCopy = self;
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  elementCategoryCount = [v10 elementCategoryCount];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v9;
  v12 = [v9 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v70;
    do
    {
      v15 = 0;
      do
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v69 + 1) + 8 * v15);
        if (elementCategoryCount)
        {
          v17 = 0;
          while (1)
          {
            v18 = [v10 elementCategoryAtIndex:v17];
            if ([objc_msgSend(v16 "constantName")])
            {
              break;
            }

            if (elementCategoryCount == ++v17)
            {
              goto LABEL_10;
            }
          }

          if (*v18 != [v16 identifier])
          {
            constantName = [v16 constantName];
            v62 = *v18;
            TDSchemaLog(&cfstr_UpdatingIdenti_0.isa, v36, v37, v38, v39, v40, v41, v42, constantName);
            [v16 setIdentifier:*v18];
          }
        }

        else
        {
LABEL_10:
          displayName = [v16 displayName];
          TDSchemaLog(&cfstr_RemovingRelati.isa, v20, v21, v22, v23, v24, v25, v26, displayName);
          [v16 removeElements:{objc_msgSend(v16, "elements")}];
          displayName2 = [v16 displayName];
          TDSchemaLog(&cfstr_DeletingCatego.isa, v28, v29, v30, v31, v32, v33, v34, displayName2);
          [(CoreThemeDocument *)self->_doc deleteObject:v16];
        }

        ++v15;
      }

      while (v15 != v13);
      v43 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      v13 = v43;
    }

    while (v43);
  }

  if (elementCategoryCount)
  {
    for (i = 0; i != elementCategoryCount; ++i)
    {
      v45 = [v10 elementCategoryAtIndex:i];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v45 + 1)];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v47 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v66;
LABEL_20:
        v50 = 0;
        while (1)
        {
          if (*v66 != v49)
          {
            objc_enumerationMutation(obj);
          }

          if ([objc_msgSend(*(*(&v65 + 1) + 8 * v50) "constantName")])
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v48)
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        v51 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"SchemaCategory"];
        [v51 setIdentifier:*v45];
        [v51 setDisplayName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v45 + 2))}];
        [v51 setConstantName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v45 + 1))}];
        displayName3 = [v51 displayName];
        TDSchemaLog(&cfstr_AddedMissingCa.isa, v53, v54, v55, v56, v57, v58, v59, displayName3);
      }
    }
  }

  [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  [(CoreThemeDocument *)selfCopy->_doc recacheThemeConstant:@"SchemaCategory"];
  v60 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckSchemaDefinitionsAndUpdateIfNecessary
{
  v131 = *MEMORY[0x277D85DE8];
  TDSchemaLog(&cfstr_SynchronizingS_0.isa, a2, v2, v3, v4, v5, v6, v7, v93);
  v94 = @"SchemaEffectDefinition";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:@"SchemaElementDefinition"];
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = v9;
  v98 = [v9 countByEnumeratingWithState:&v122 objects:v130 count:16];
  if (v98)
  {
    v97 = *v123;
    v102 = v10;
    do
    {
      v11 = 0;
      do
      {
        if (*v123 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v100 = v11;
        v12 = *(*(&v122 + 1) + 8 * v11);
        v99 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
        v13 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", v12, [MEMORY[0x277CBEA60] arrayWithObject:?]);
        array = [MEMORY[0x277CBEB18] array];
        v103 = NSClassFromString([objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")]);
        v105 = [(objc_class *)v103 elementDefinitionCountWithSchema:v10];
        if (v105)
        {
          for (i = 0; i != v105; ++i)
          {
            v104 = [(objc_class *)v103 sortedElementDefinitionAtIndex:i withSchema:v10];
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v104];
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v17 = [v13 countByEnumeratingWithState:&v118 objects:v129 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v119;
              while (2)
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v119 != v19)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v21 = *(*(&v118 + 1) + 8 * j);
                  if ([v16 isEqualToString:{objc_msgSend(v21, "name")}])
                  {
                    [(TDThemeSchema *)self _sanityCheckSchemaPartDefinitionsForStandardElement:v104 withElement:v21];
                    v10 = v102;
                    v22 = [v102 categoryForElementDefinition:v104];
                    v101 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22[1]];
                    if (([v101 isEqualToString:{objc_msgSend(objc_msgSend(v21, "category"), "constantName")}] & 1) == 0)
                    {
                      v23 = [(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:*v22];
                      name = [v21 name];
                      [objc_msgSend(v21 "category")];
                      TDSchemaLog(&cfstr_UpdatingCatego.isa, v25, v26, v27, v28, v29, v30, v31, name);
                      [v21 setCategory:v23];
                    }

                    if (*(v104 + 16) != [v21 published])
                    {
                      [v21 published];
                      v95 = *(v104 + 16);
                      TDSchemaLog(&cfstr_UpdatingPublis.isa, v32, v33, v34, v35, v36, v37, v38, v21);
                      [v21 setPublished:*(v104 + 16)];
                    }

                    goto LABEL_23;
                  }

                  if ([v16 compare:{objc_msgSend(v21, "name")}] == -1)
                  {
                    [array addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v104, 8, 0)}];
                    v10 = v102;
                    goto LABEL_23;
                  }
                }

                v18 = [v13 countByEnumeratingWithState:&v118 objects:v129 count:16];
                v10 = v102;
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            [array addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v104, 8, 0)}];
LABEL_23:
          }
        }

        if ([array count])
        {
          TDSchemaLog(&cfstr_DocumentIsMiss.isa, v39, v40, v41, v42, v43, v44, v45, v94);
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v46 = [array countByEnumeratingWithState:&v114 objects:v128 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v115;
          do
          {
            for (k = 0; k != v47; ++k)
            {
              if (*v115 != v48)
              {
                objc_enumerationMutation(array);
              }

              bytes = [*(*(&v114 + 1) + 8 * k) bytes];
              v51 = [(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:*(bytes + 24)];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:*bytes];
              constantName = [v51 constantName];
              TDSchemaLog(&stru_2859A0D98.isa, v54, v55, v56, v57, v58, v59, v60, constantName);
              v61 = [(CoreThemeDocument *)self->_doc newObjectForEntity:v12];
              [v61 setName:v52];
              [v61 setPublished:*(bytes + 16)];
              [v61 setCategory:v51];
              [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:bytes withElement:v61];
            }

            v47 = [array countByEnumeratingWithState:&v114 objects:v128 count:16];
          }

          while (v47);
        }

        v62 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", v12, [MEMORY[0x277CBEA60] arrayWithObject:v99]);

        v10 = v102;
        if ([v62 count] > v105)
        {
          TDSchemaLog(&cfstr_DocumentContai_0.isa, v63, v64, v65, v66, v67, v68, v69, v94);
          array2 = [MEMORY[0x277CBEB18] array];
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v71 = [v62 countByEnumeratingWithState:&v110 objects:v127 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = 0;
            v74 = *v111;
            do
            {
              for (m = 0; m != v72; ++m)
              {
                if (*v111 != v74)
                {
                  objc_enumerationMutation(v62);
                }

                v76 = *(*(&v110 + 1) + 8 * m);
                if (v73 >= v105)
                {
                  [array2 addObject:*(*(&v110 + 1) + 8 * m)];
                }

                else
                {
                  v77 = [v102 sortedElementDefinitionAtIndex:v73];
                  if (*v77)
                  {
                    v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v77];
                    if ([v78 isEqualToString:{objc_msgSend(v76, "name")}])
                    {
                      ++v73;
                    }

                    else
                    {
                      [array2 addObject:v76];
                    }
                  }
                }
              }

              v72 = [v62 countByEnumeratingWithState:&v110 objects:v127 count:16];
            }

            while (v72);
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v79 = [array2 countByEnumeratingWithState:&v106 objects:v126 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v107;
            do
            {
              for (n = 0; n != v80; ++n)
              {
                if (*v107 != v81)
                {
                  objc_enumerationMutation(array2);
                }

                v83 = *(*(&v106 + 1) + 8 * n);
                name2 = [v83 name];
                TDSchemaLog(&cfstr_DeletingElemen.isa, v85, v86, v87, v88, v89, v90, v91, name2);
                [(CoreThemeDocument *)self->_doc deleteObject:v83];
              }

              v80 = [array2 countByEnumeratingWithState:&v106 objects:v126 count:16];
            }

            while (v80);
          }
        }

        v11 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
    }

    while (v98);
  }

  v92 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckEffectRenditionsAndUpdateIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  targetPlatform = [(CoreThemeDocument *)self->_doc targetPlatform];
  if (targetPlatform <= 5 && ((1 << targetPlatform) & 0x3A) != 0)
  {
    v5 = [(CoreThemeDocument *)self->_doc metadatumForKey:@"PreviousCoreThemeDefinitionDataModelKey"];
    if (v5)
    {
      if ([v5 intValue] <= 43)
      {
        v6 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"EffectRenditionSpec" withSortDescriptors:0];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v14 + 1) + 8 * i);
              [objc_msgSend(v11 "effectScale")];
              if (*&v12 < 2.0)
              {
                LODWORD(v12) = 2.0;
                [v11 setEffectScale:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v12)}];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v8);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sanityCheckMicaRenditionsAndUpdateIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"MicaElementProduction" withSortDescriptors:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v9 "asset")] >= 2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(CoreThemeDocument *)self->_doc deleteProductions:v3 shouldDeleteAssetFiles:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_renditionKey:(const _renditionkeytoken *)key isEqualToKeyIgnoringLook:(const _renditionkeytoken *)look
{
  CUISystemThemeRenditionKeyFormat();

  return CUIEqualRenditionKeys();
}

- (void)_sanityCheckSchemaAssets
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaElementProduction" withSortDescriptors:0];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v3;
  v43 = [v3 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v43)
  {
    v42 = *v66;
    do
    {
      v4 = 0;
      do
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v4;
        v5 = *(*(&v65 + 1) + 8 * v4);
        v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v5 "renditions")];
        partDefinition = [v5 partDefinition];
        renditionGroups = [partDefinition renditionGroups];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v8 = [renditionGroups countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v62;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v62 != v10)
              {
                objc_enumerationMutation(renditionGroups);
              }

              v12 = *(*(&v61 + 1) + 8 * i);
              if (-[TDThemeSchema _renditionKey:isEqualToKeyIgnoringLook:](self, "_renditionKey:isEqualToKeyIgnoringLook:", [objc_msgSend(v12 "baseKey")], objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "key")))
              {
                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                v14 = [(CoreThemeDocument *)self->_doc defaultPathComponentsForPartDefinition:partDefinition];
                v15 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](self->_doc, "folderNameFromRenditionKey:forPartDefinition:", [v12 baseKey], partDefinition);
                v46 = [v14 stringByAppendingPathComponent:v15];
                if (([objc_msgSend(v5 "folderName")] & 1) == 0)
                {
                  [v5 setFolderName:v15];
                }

                v16 = [objc_msgSend(objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](self->_doc, "rootPathForProductionData")), "URLByAppendingPathComponent:", v6), "URLByAppendingPathComponent:", v46}];
                if (![objc_msgSend(v16 "path")])
                {
                  [(TDThemeSchema *)a2 _sanityCheckSchemaAssets];
                }

                v47 = v16;
                v48 = defaultManager;
                if (([defaultManager fileExistsAtPath:{objc_msgSend(v16, "path")}] & 1) != 0 || objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v16, 1, 0, 0))
                {
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  renditions = [v5 renditions];
                  v51 = [renditions countByEnumeratingWithState:&v57 objects:v70 count:16];
                  if (v51)
                  {
                    v50 = *v58;
                    while (1)
                    {
                      for (j = 0; j != v51; ++j)
                      {
                        if (*v58 != v50)
                        {
                          objc_enumerationMutation(renditions);
                        }

                        v18 = *(*(&v57 + 1) + 8 * j);
                        v53 = 0u;
                        v54 = 0u;
                        v55 = 0u;
                        v56 = 0u;
                        v19 = v12;
                        renditions2 = [v12 renditions];
                        v21 = [renditions2 countByEnumeratingWithState:&v53 objects:v69 count:16];
                        if (!v21)
                        {
                          goto LABEL_48;
                        }

                        v22 = v21;
                        v23 = *v54;
                        while (2)
                        {
                          for (k = 0; k != v22; ++k)
                          {
                            if (*v54 != v23)
                            {
                              objc_enumerationMutation(renditions2);
                            }

                            v25 = *(*(&v53 + 1) + 8 * k);
                            if (-[TDThemeSchema _renditionKey:isEqualToKeyIgnoringLook:](self, "_renditionKey:isEqualToKeyIgnoringLook:", [v25 key], objc_msgSend(objc_msgSend(v18, "keySpec"), "key")))
                            {
                              v26 = [(CoreThemeDocument *)self->_doc defaultPNGFileNameForSchemaRendition:v25 withPartDefinition:partDefinition];
                              v27 = [v48 fileExistsAtPath:{objc_msgSend(objc_msgSend(v47, "path"), "stringByAppendingPathComponent:", v26)}];
                              asset = [v18 asset];
                              if (v27)
                              {
                                if ([objc_msgSend(asset "category")])
                                {
                                  goto LABEL_48;
                                }

LABEL_47:
                                [objc_msgSend(v18 "asset")];
                                [objc_msgSend(v18 "asset")];
                                goto LABEL_48;
                              }

                              v29 = [asset fileURLWithDocument:self->_doc];
                              if ([v29 isEqual:{objc_msgSend(v47, "URLByAppendingPathComponent:", v26)}])
                              {
                                NSLog(&cfstr_MissingAsset.isa, [v29 path]);
                                goto LABEL_48;
                              }

                              v52 = 0uLL;
                              if ([v48 fileExistsAtPath:{objc_msgSend(v29, "path")}])
                              {
                                [v48 copyItemAtURL:v29 toURL:objc_msgSend(v47 error:{"URLByAppendingPathComponent:", v26), &v52 + 8}];
                                if (!*(&v52 + 1))
                                {
                                  v30 = @"copied existing file to %@";
                                  goto LABEL_45;
                                }
                              }

                              else
                              {
                                [(CoreThemeDocument *)self->_doc createReferencePNGForSchemaRendition:v25 withPartDefinition:partDefinition atLocation:v47 error:&v52];
                                if (!v52)
                                {
                                  v30 = @"wrote new reference file to %@";
LABEL_45:
                                  v31 = [objc_msgSend(v47 URLByAppendingPathComponent:{v26), "path"}];
                                  TDSchemaLog(&v30->isa, v32, v33, v34, v35, v36, v37, v38, v31);
                                }
                              }

                              if (v52 != 0)
                              {
                                goto LABEL_48;
                              }

                              goto LABEL_47;
                            }
                          }

                          v22 = [renditions2 countByEnumeratingWithState:&v53 objects:v69 count:16];
                          if (v22)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_48:
                        v12 = v19;
                      }

                      v51 = [renditions countByEnumeratingWithState:&v57 objects:v70 count:16];
                      if (!v51)
                      {
                        goto LABEL_50;
                      }
                    }
                  }
                }

                goto LABEL_50;
              }
            }

            v9 = [renditionGroups countByEnumeratingWithState:&v61 objects:v71 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_50:
        v4 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v43);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)sanityCheckAndUpdateDocumentIfNecessary
{
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeElement" globalDescriptor:MEMORY[0x277D02798] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemePart" globalDescriptor:MEMORY[0x277D027B8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeSize" globalDescriptor:MEMORY[0x277D027C8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDirection" globalDescriptor:MEMORY[0x277D02778] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeValue" globalDescriptor:MEMORY[0x277D02800] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeState" globalDescriptor:MEMORY[0x277D027D0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemePresentationState" globalDescriptor:MEMORY[0x277D027C0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeIdiom" globalDescriptor:MEMORY[0x277D027B0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDisplayGamut" globalDescriptor:MEMORY[0x277D02780] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDeploymentTarget" globalDescriptor:MEMORY[0x277D02770] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TexturePixelFormat" globalDescriptor:MEMORY[0x277D027F0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TextureFace" globalDescriptor:MEMORY[0x277D027E0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TextureInterpretation" globalDescriptor:MEMORY[0x277D027E8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeCompressionType" globalDescriptor:MEMORY[0x277D02768] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGraphicsFeatureSetClass" globalDescriptor:MEMORY[0x277D027A0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeUISizeClass" globalDescriptor:MEMORY[0x277D027F8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenderingMode" globalDescriptor:MEMORY[0x277D027D8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"IterationType" globalDescriptor:gThemeIterationTypes matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenditionType" globalDescriptor:MEMORY[0x277D02760] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenditionSubtype" globalDescriptor:MEMORY[0x277D02758] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ColorStatus" globalDescriptor:MEMORY[0x277D02728] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"MetafontSelector" globalDescriptor:MEMORY[0x277D02748] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"EffectType" globalDescriptor:MEMORY[0x277D02740] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"EffectParameterType" globalDescriptor:MEMORY[0x277D02738] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGlyphSize" globalDescriptor:MEMORY[0x277D02810] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGlyphWeight" globalDescriptor:MEMORY[0x277D02818] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"VectorGlyphRenderingMode" globalDescriptor:MEMORY[0x277D02808] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckSchemaCategoriesAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckSchemaDefinitionsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckSchemaAssets];
  [(TDThemeSchema *)self _sanityCheckColorNamesAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckEffectRenditionsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckMicaRenditionsAndUpdateIfNecessary];
  doc = self->_doc;

  [(CoreThemeDocument *)doc checkVersionsAndUpdateIfNecessary];
}

- (void)loadThemeSizes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027C8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027C8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeSize alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeValues
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02800] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02800];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeValue alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeElements
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02798] + 48);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02798] + 40;
    do
    {
      v8 = *v7;
      if (!*v7)
      {
        break;
      }

      v9 = strlen(kObsoletePrefix);
      if (strncmp(kObsoletePrefix, v8, v9))
      {
        v10 = [[TDThemeElement alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
        [(TDThemeConstant *)v10 setIdentifier:*(v7 - 8)];
        -[TDThemeConstant setDisplayName:](v10, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
        -[TDThemeConstant setConstantName:](v10, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      }

      v5 = *(v7 + 40);
      v7 += 32;
    }

    while (v5);
  }
}

- (void)loadThemeParts
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027B8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027B8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = strlen(kObsoletePrefix);
      if (strncmp(kObsoletePrefix, v8, v9))
      {
        v10 = [[TDThemePart alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
        [(TDThemeConstant *)v10 setIdentifier:*v7];
        -[TDThemeConstant setDisplayName:](v10, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
        -[TDThemeConstant setConstantName:](v10, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      }

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadBasicThemePart
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *MEMORY[0x277D027B8];
  v6 = *(MEMORY[0x277D027B8] + 8);
  v7 = *(MEMORY[0x277D027B8] + 16);
  v8 = [[TDThemePart alloc] initWithEntity:v4 insertIntoManagedObjectContext:managedObjectContext];
  [(TDThemeConstant *)v8 setIdentifier:v5];
  -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:1]);
  -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1]);
}

- (void)loadThemeStates
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027D0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027D0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeState alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

+ (BOOL)loadThemeConstantsForEntity:(id)entity inContext:(id)context
{
  if (loadThemeConstantsForEntity_inContext__onceToken != -1)
  {
    +[TDThemeSchema loadThemeConstantsForEntity:inContext:];
  }

  v6 = [objc_msgSend(loadThemeConstantsForEntity_inContext__constantMappings objectForKey:{objc_msgSend(entity, "name")), "pointerValue"}];
  if (*(v6 + 16))
  {
    v7 = v6;
    do
    {
      if (!v7[1])
      {
        break;
      }

      v8 = [[TDThemeConstant alloc] initWithEntity:entity insertIntoManagedObjectContext:context];
      -[TDThemeConstant setValue:forKey:](v8, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:*v7], @"identifier");
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7[2] encoding:1]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v7[1] encoding:1]);

      v9 = v7[5];
      v7 += 3;
    }

    while (v9);
  }

  return 1;
}

uint64_t __55__TDThemeSchema_loadThemeConstantsForEntity_inContext___block_invoke()
{
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", MEMORY[0x277D027C0]), @"ThemePresentationState", 0}];
  loadThemeConstantsForEntity_inContext__constantMappings = result;
  return result;
}

- (void)loadThemePresentationStates
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027C0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027C0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemePresentationState alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDirections
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02778] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02778];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDirection alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDrawingLayers
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02788] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02788];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDrawingLayer alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeIdioms
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027B0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027B0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeIdiom alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDisplayGamuts
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02780] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02780];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDisplayGamut alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDeploymentTargets
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02770] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02770];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDeploymentTarget alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeCompressionTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02768] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02768];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeCompressionType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadTexturePixelFormats
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027F0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027F0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTexturePixelFormat alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeTextureFaces
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027E0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027E0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDisplayGamut alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeTextureInterpretations
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027E8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027E8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTextureInterpretation alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeGraphicsFeatureSetClasses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027A0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027A0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeGraphicsFeatureSetClass alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeUISizeClasses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027F8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027F8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeUISizeClass alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadIterationTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = "Iterate Values";
  if ("Iterate Values")
  {
    v6 = v4;
    v7 = gThemeIterationTypes;
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDIterationType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadRenditionTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02760] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02760];
    do
    {
      v8 = [[TDRenditionType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v8 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithUTF8String:*(v7 + 2)]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = *(v7 + 4);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadRenditionSubtypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02758] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02758];
    do
    {
      v8 = [[TDRenditionSubtype alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v8 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithUTF8String:*(v7 + 2)]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = *(v7 + 4);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadColorNames
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  if (*(MEMORY[0x277D02730] + 8))
  {
    v5 = v4;
    v6 = (MEMORY[0x277D02730] + 24);
    do
    {
      v7 = *(v6 - 1);
      if (!v7)
      {
        break;
      }

      v8 = [[TDColorName alloc] initWithEntity:v5 insertIntoManagedObjectContext:managedObjectContext];
      -[TDColorName setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:1]);
      -[TDColorName setSelector:](v8, "setSelector:", [MEMORY[0x277CCACA8] stringWithCString:*v6 encoding:1]);

      v9 = v6[3];
      v6 += 5;
    }

    while (v9);
  }
}

- (void)loadColorStatuses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02728] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = (MEMORY[0x277D02728] + 32);
    do
    {
      v8 = *(v7 - 2);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:*(v7 - 4)], @"identifier");
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1], @"displayName");
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1], @"constantName");

      v10 = *v7;
      v7 += 3;
      v5 = v10;
    }

    while (v10);
  }
}

- (void)loadMetafontSelectors
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02748] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02748];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadMetafontSizes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02750] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02750];
    do
    {
      v8 = v7[1];
      if (!v8)
      {
        break;
      }

      v9 = *v7;
      v10 = [(CoreThemeDocument *)self->_doc sizeWithIdentifier:*v7];
      v11 = [[TDMetafontSizeSelector alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      -[TDMetafontSizeSelector setIdentifier:](v11, "setIdentifier:", [MEMORY[0x277CCABB0] numberWithInteger:v9]);
      [(TDMetafontSizeSelector *)v11 setControlSize:v10];
      -[TDMetafontSizeSelector setSelectorName:](v11, "setSelectorName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      -[TDMetafontSizeSelector setDisplayName:](v11, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = v7[5];
      v7 += 3;
    }

    while (v5);
  }
}

- (void)loadEffectConstants
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02740] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02740];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }

  v10 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v11 = *(MEMORY[0x277D02738] + 16);
  if (v11)
  {
    v12 = v10;
    v13 = MEMORY[0x277D02738];
    do
    {
      v14 = *(v13 + 1);
      if (!v14)
      {
        break;
      }

      v15 = [[TDThemeConstant alloc] initWithEntity:v12 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v15 setIdentifier:*v13];
      -[TDThemeConstant setDisplayName:](v15, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:1]);
      -[TDThemeConstant setConstantName:](v15, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:1]);

      v11 = *(v13 + 5);
      v13 += 6;
    }

    while (v11);
  }
}

- (void)_loadConstantForEntity:(id)entity withDescriptor:(const _themeconstant *)descriptor
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v8 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  if (descriptor->var2)
  {
    v9 = v8;
    do
    {
      if (!descriptor->var1)
      {
        break;
      }

      v10 = [objc_alloc(NSClassFromString(objc_msgSend(v9 "managedObjectClassName")))];
      [v10 setIdentifier:LODWORD(descriptor->var0)];
      [v10 setDisplayName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", descriptor->var2, 1)}];
      [v10 setConstantName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", descriptor->var1, 1)}];

      var2 = descriptor[1].var2;
      ++descriptor;
    }

    while (var2);
  }
}

- (void)loadTemplateRenderingModeConstants
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027D8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027D8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTemplateRenderingMode alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadStandardEffectDefinitions
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaEffectDefinition" withSortDescriptors:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v23 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        parts = [v5 parts];
        v7 = [parts countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(parts);
              }

              v11 = *(*(&v24 + 1) + 8 * j);
              [(CoreThemeDocument *)self->_doc createEffectStyleProductionForPartDefinition:v11];
              name = [v5 name];
              [v11 name];
              TDSchemaLog(&cfstr_CreatingCustom.isa, v13, v14, v15, v16, v17, v18, v19, name);
            }

            v8 = [parts countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v8);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)loadSchemaCategories
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")), "elementCategoryCount"}];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")), "elementCategoryAtIndex:", i}];
      v9 = [[TDSchemaCategory alloc] initWithEntity:v4 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v8];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:*(v8 + 2) encoding:4]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:*(v8 + 1) encoding:4]);
    }
  }
}

- (void)loadSchemaDefinitions
{
  context = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v5 = [MEMORY[0x277CBE408] entityForName:@"SchemaElementDefinition" inManagedObjectContext:managedObjectContext];
  elementDefinitionCount = [v3 elementDefinitionCount];
  if (elementDefinitionCount)
  {
    v7 = elementDefinitionCount;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v3 elementDefinitionAtIndex:i];
      if (*v9)
      {
        v10 = v9;
        v11 = [[TDSchemaElementDefinition alloc] initWithEntity:v5 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaElementDefinition setName:](v11, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v10 encoding:4]);
        [(TDSchemaElementDefinition *)v11 setPublished:*(v10 + 16)];
        [(TDSchemaElementDefinition *)v11 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v10[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v10 withElement:v11];
      }
    }
  }

  v12 = [MEMORY[0x277CBE408] entityForName:@"SchemaEffectDefinition" inManagedObjectContext:managedObjectContext];
  effectDefinitionCount = [v3 effectDefinitionCount];
  if (effectDefinitionCount)
  {
    v14 = effectDefinitionCount;
    for (j = 0; j != v14; ++j)
    {
      v16 = [v3 effectDefinitionAtIndex:j];
      if (*v16)
      {
        v17 = v16;
        v18 = [[TDSchemaEffectDefinition alloc] initWithEntity:v12 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaEffectDefinition setName:](v18, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v17 encoding:4]);
        [(TDSchemaEffectDefinition *)v18 setPublished:*(v17 + 16)];
        [(TDSchemaEffectDefinition *)v18 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v17[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v17 withElement:v18];
      }
    }
  }

  v19 = [MEMORY[0x277CBE408] entityForName:@"SchemaMaterialDefinition" inManagedObjectContext:managedObjectContext];
  materialDefinitionCount = [v3 materialDefinitionCount];
  if (materialDefinitionCount)
  {
    v21 = materialDefinitionCount;
    for (k = 0; k != v21; ++k)
    {
      v23 = [v3 materialDefinitionAtIndex:k];
      if (*v23)
      {
        v24 = v23;
        v25 = [[TDSchemaMaterialDefinition alloc] initWithEntity:v19 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaMaterialDefinition setName:](v25, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v24 encoding:4]);
        [(TDSchemaMaterialDefinition *)v25 setPublished:*(v24 + 16)];
        [(TDSchemaMaterialDefinition *)v25 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v24[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v24 withElement:v25];
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)resetThemeConstants
{
  v3 = objc_autoreleasePoolPush();
  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeSize" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeSizes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeValue" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeValues];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeElement" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeElements];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemePart" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeParts];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeState" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeStates];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemePresentationState" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemePresentationStates];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDirection" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDirections];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDrawingLayer" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDrawingLayers];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeIdiom" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeIdioms];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDisplayGamut" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDisplayGamuts];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDeploymentTarget" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDeploymentTargets];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeCompressionType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeCompressionTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TexturePixelFormat" withPredicate:0])
  {
    [(TDThemeSchema *)self loadTexturePixelFormats];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TextureFace" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeTextureFaces];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TextureInterpretation" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeTextureInterpretations];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGraphicsFeatureSetClass" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeGraphicsFeatureSetClasses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeUISizeClass" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeUISizeClasses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"IterationType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadIterationTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenditionType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadRenditionTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenditionSubtype" withPredicate:0])
  {
    [(TDThemeSchema *)self loadRenditionSubtypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ColorStatus" withPredicate:0])
  {
    [(TDThemeSchema *)self loadColorStatuses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"MetafontSelector" withPredicate:0])
  {
    [(TDThemeSchema *)self loadMetafontSelectors];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"MetafontSizeSelector" withPredicate:0])
  {
    [(TDThemeSchema *)self loadMetafontSizes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ColorName" withPredicate:0])
  {
    [(TDThemeSchema *)self loadColorNames];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"SchemaCategory" withPredicate:0])
  {
    [(TDThemeSchema *)self loadSchemaCategories];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"SchemaElementDefinition" withPredicate:0])
  {
    [(TDThemeSchema *)self loadSchemaDefinitions];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"EffectType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadEffectConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenderingMode" withPredicate:0])
  {
    [(TDThemeSchema *)self loadTemplateRenderingModeConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGlyphSize" withPredicate:0])
  {
    [(TDThemeSchema *)self loadGlyphSizeConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGlyphWeight" withPredicate:0])
  {
    [(TDThemeSchema *)self loadGlyphWeightConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"VectorGlyphRenderingMode" withPredicate:0])
  {
    [(TDThemeSchema *)self loadVectorGlyphRenderingModeConstants];
  }

  objc_autoreleasePoolPop(v3);
}

@end