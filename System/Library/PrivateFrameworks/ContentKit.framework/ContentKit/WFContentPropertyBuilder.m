@interface WFContentPropertyBuilder
+ (id)block:(id)a3 name:(id)a4 class:(Class)a5;
+ (id)block:(id)a3 name:(id)a4 classes:(id)a5;
+ (id)block:(id)a3 setterBlock:(id)a4 name:(id)a5 class:(Class)a6;
+ (id)keyPath:(id)a3 name:(id)a4 class:(Class)a5;
+ (id)keyPath:(id)a3 name:(id)a4 classes:(id)a5;
+ (id)keyPath:(id)a3 setterBlock:(id)a4 name:(id)a5 class:(Class)a6;
- (id)appendable:(BOOL)a3;
- (id)build;
- (id)canLowercaseName:(BOOL)a3;
- (id)caseInsensitive:(BOOL)a3;
- (id)comparableUnits:(unint64_t)a3;
- (id)filterable:(BOOL)a3;
- (id)gettable:(BOOL)a3;
- (id)multipleValues:(BOOL)a3;
- (id)possibleValues:(id)a3;
- (id)possibleValuesAsynchronousGetter:(id)a3;
- (id)possibleValuesGetter:(id)a3;
- (id)primary:(BOOL)a3;
- (id)removable:(BOOL)a3;
- (id)sortable:(BOOL)a3;
- (id)tense:(unint64_t)a3;
- (id)timeUnits:(unint64_t)a3;
- (id)withLinkPropertyIdentifier:(id)a3;
@end

@implementation WFContentPropertyBuilder

- (id)build
{
  v76 = MEMORY[0x277CBEB98];
  v74 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v76 setWithObjects:{v74, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [(WFContentPropertyBuilder *)self propertyClasses];
  v14 = [v13 if_firstObjectPassingTest:&__block_literal_global_400];

  v15 = [(WFContentPropertyBuilder *)self propertyClasses];
  v16 = [v15 if_firstObjectPassingTest:&__block_literal_global_403];

  v17 = [(WFContentPropertyBuilder *)self sortable];
  if (v17)
  {
    v18 = [(WFContentPropertyBuilder *)self sortable];
    v72 = [v18 BOOLValue];
  }

  else
  {
    v18 = [(WFContentPropertyBuilder *)self multipleValues];
    if ([v18 BOOLValue])
    {
      v72 = 0;
    }

    else if (!v14 || v16)
    {
      v19 = [(WFContentPropertyBuilder *)self possibleValuesGetter];
      v72 = v19 != 0;
    }

    else
    {
      v72 = 1;
    }
  }

  v20 = [(WFContentPropertyBuilder *)self filterable];
  if (v20)
  {
    v21 = [(WFContentPropertyBuilder *)self filterable];
    v71 = [v21 BOOLValue];
  }

  else
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __33__WFContentPropertyBuilder_build__block_invoke_3;
    v78[3] = &unk_278347F00;
    v78[4] = self;
    v21 = [v12 objectsPassingTest:v78];
    v71 = [v21 count] != 0;
  }

  v22 = [(WFContentPropertyBuilder *)self gettable];
  if (v22)
  {
    v23 = [(WFContentPropertyBuilder *)self gettable];
    v70 = [v23 BOOLValue];
  }

  else
  {
    v70 = 1;
  }

  v24 = [(WFContentPropertyBuilder *)self setterBlock];

  v25 = [(WFContentPropertyBuilder *)self appendable];
  if (v25)
  {
    v26 = [(WFContentPropertyBuilder *)self appendable];
    v69 = [v26 BOOLValue];
LABEL_19:

    goto LABEL_20;
  }

  if (v24)
  {
    v26 = [(WFContentPropertyBuilder *)self multipleValues];
    v69 = v26 != 0;
    goto LABEL_19;
  }

  v69 = 0;
LABEL_20:

  v27 = [(WFContentPropertyBuilder *)self propertyClasses];
  v28 = [v27 if_firstObjectPassingTest:&__block_literal_global_406_16513];

  v29 = [(WFContentPropertyBuilder *)self removable];
  if (v29)
  {
    v30 = [(WFContentPropertyBuilder *)self removable];
    v68 = [v30 BOOLValue];
  }

  else
  {
    v68 = v28 == 0;
  }

  v31 = [(WFContentPropertyBuilder *)self canLowercaseName];
  if (v31)
  {
    v32 = [(WFContentPropertyBuilder *)self canLowercaseName];
    v67 = [v32 BOOLValue];
  }

  else
  {
    v67 = 1;
  }

  v33 = [(WFContentPropertyBuilder *)self tense];
  if (v33)
  {
    v34 = [(WFContentPropertyBuilder *)self tense];
    v66 = [v34 unsignedIntegerValue];
  }

  else
  {
    v66 = 3;
  }

  v35 = [(WFContentPropertyBuilder *)self timeUnits];
  v75 = v12;
  if (v35)
  {
    v36 = [(WFContentPropertyBuilder *)self timeUnits];
    v61 = [v36 unsignedIntegerValue];
  }

  else
  {
    v61 = 8220;
  }

  v58 = v24 != 0;

  v77 = [(WFContentPropertyBuilder *)self linkPropertyIdentifier];
  v63 = [WFContentProperty alloc];
  v62 = [(WFContentPropertyBuilder *)self keyPath];
  v60 = [(WFContentPropertyBuilder *)self block];
  v59 = [(WFContentPropertyBuilder *)self setterBlock];
  v57 = [(WFContentPropertyBuilder *)self name];
  v56 = [(WFContentPropertyBuilder *)self propertyClasses];
  v65 = [(WFContentPropertyBuilder *)self multipleValues];
  v55 = [v65 BOOLValue];
  v64 = [(WFContentPropertyBuilder *)self primary];
  v53 = [v64 BOOLValue];
  v51 = [(WFContentPropertyBuilder *)self allowedOperators];
  v50 = [(WFContentPropertyBuilder *)self userInfo];
  v52 = [(WFContentPropertyBuilder *)self possibleValuesGetter];
  v54 = [(WFContentPropertyBuilder *)self caseInsensitive];
  v37 = [v54 BOOLValue];
  v49 = [(WFContentPropertyBuilder *)self negativeName];
  v38 = [(WFContentPropertyBuilder *)self singularItemName];
  v39 = [(WFContentPropertyBuilder *)self isIrrational];
  v40 = [(WFContentPropertyBuilder *)self comparableUnits];
  v41 = [v40 unsignedIntegerValue];
  v42 = [(WFContentPropertyBuilder *)self measurementUnitType];
  v43 = [(WFContentPropertyBuilder *)self displayName];
  LOBYTE(v48) = v67;
  LOBYTE(v47) = v39;
  LOBYTE(v46) = v37;
  BYTE6(v45) = v53;
  BYTE5(v45) = v68;
  BYTE4(v45) = v69;
  BYTE3(v45) = v58;
  BYTE2(v45) = v70;
  BYTE1(v45) = v72;
  LOBYTE(v45) = v71;
  v73 = [WFContentProperty initWithKeyPath:v63 block:"initWithKeyPath:block:setterBlock:name:propertyClasses:multipleValues:filterable:sortable:gettable:settable:appendable:removable:primary:allowedOperators:userInfo:possibleValues:caseInsensitive:negativeName:singularItemName:irrational:tense:timeUnits:comparableUnits:measurementUnitType:displayName:canLowercaseName:linkPropertyIdentifier:" setterBlock:v62 name:v60 propertyClasses:v59 multipleValues:v57 filterable:v56 sortable:v55 gettable:v45 settable:v51 appendable:v50 removable:v52 primary:v46 allowedOperators:v49 userInfo:v38 possibleValues:v47 caseInsensitive:v66 negativeName:v61 singularItemName:v41 irrational:v42 tense:v43 timeUnits:v48 comparableUnits:v77 measurementUnitType:? displayName:? canLowercaseName:? linkPropertyIdentifier:?];

  return v73;
}

BOOL __33__WFContentPropertyBuilder_build__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) propertyClasses];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__WFContentPropertyBuilder_build__block_invoke_4;
  v8[3] = &unk_278347ED8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 if_firstObjectPassingTest:v8] != 0;

  return v6;
}

BOOL __33__WFContentPropertyBuilder_build__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = objc_opt_class() == a2;

  return v4;
}

uint64_t __33__WFContentPropertyBuilder_build__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [a2 isSubclassOfClass:objc_opt_class()];

  return v4;
}

- (id)withLinkPropertyIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(WFContentPropertyBuilder *)self setLinkPropertyIdentifier:v4];

  return self;
}

- (id)canLowercaseName:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setCanLowercaseName:v4];

  return self;
}

- (id)comparableUnits:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(WFContentPropertyBuilder *)self setComparableUnits:v4];

  return self;
}

- (id)timeUnits:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(WFContentPropertyBuilder *)self setTimeUnits:v4];

  return self;
}

- (id)tense:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(WFContentPropertyBuilder *)self setTense:v4];

  return self;
}

- (id)caseInsensitive:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setCaseInsensitive:v4];

  return self;
}

- (id)possibleValuesAsynchronousGetter:(id)a3
{
  v4 = a3;
  v5 = [[WFContentPropertyPossibleValuesAsynchronousGetter alloc] initWithAsynchronousGetter:v4];

  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v5];
  return self;
}

- (id)possibleValuesGetter:(id)a3
{
  v4 = a3;
  v5 = [[WFContentPropertyPossibleValuesSynchronousGetter alloc] initWithSynchronousGetter:v4];

  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v5];
  return self;
}

- (id)possibleValues:(id)a3
{
  v4 = a3;
  v5 = [WFContentPropertyPossibleValuesSynchronousGetter alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__WFContentPropertyBuilder_possibleValues___block_invoke;
  v9[3] = &unk_278347E68;
  v10 = v4;
  v6 = v4;
  v7 = [(WFContentPropertyPossibleValuesSynchronousGetter *)v5 initWithSynchronousGetter:v9];
  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v7];

  return self;
}

- (id)primary:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setPrimary:v4];

  return self;
}

- (id)removable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setRemovable:v4];

  return self;
}

- (id)appendable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setAppendable:v4];

  return self;
}

- (id)gettable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setGettable:v4];

  return self;
}

- (id)filterable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setFilterable:v4];

  return self;
}

- (id)sortable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setSortable:v4];

  return self;
}

- (id)multipleValues:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(WFContentPropertyBuilder *)self setMultipleValues:v4];

  return self;
}

+ (id)block:(id)a3 setterBlock:(id)a4 name:(id)a5 class:(Class)a6
{
  v10 = a4;
  v11 = [a1 block:a3 name:a5 class:a6];
  v12 = v11;
  if (v11)
  {
    [v11 setSetterBlock:v10];
    v13 = v12;
  }

  return v12;
}

+ (id)block:(id)a3 name:(id)a4 class:(Class)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v13 count:1];
  v11 = [a1 block:v9 name:v8 classes:{v10, v13, v14}];

  return v11;
}

+ (id)block:(id)a3 name:(id)a4 classes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"block"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

LABEL_4:
  v12 = objc_alloc_init(WFContentPropertyBuilder);
  [(WFContentPropertyBuilder *)v12 setBlock:v9];
  [(WFContentPropertyBuilder *)v12 setName:v10];
  [(WFContentPropertyBuilder *)v12 setPropertyClasses:v11];

  return v12;
}

+ (id)keyPath:(id)a3 setterBlock:(id)a4 name:(id)a5 class:(Class)a6
{
  v10 = a4;
  v11 = [a1 keyPath:a3 name:a5 class:a6];
  v12 = v11;
  if (v11)
  {
    [v11 setSetterBlock:v10];
    v13 = v12;
  }

  return v12;
}

+ (id)keyPath:(id)a3 name:(id)a4 class:(Class)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v13 count:1];
  v11 = [a1 keyPath:v9 name:v8 classes:{v10, v13, v14}];

  return v11;
}

+ (id)keyPath:(id)a3 name:(id)a4 classes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"WFContentProperty.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

LABEL_4:
  v12 = objc_alloc_init(WFContentPropertyBuilder);
  [(WFContentPropertyBuilder *)v12 setKeyPath:v9];
  [(WFContentPropertyBuilder *)v12 setName:v10];
  [(WFContentPropertyBuilder *)v12 setPropertyClasses:v11];

  return v12;
}

@end