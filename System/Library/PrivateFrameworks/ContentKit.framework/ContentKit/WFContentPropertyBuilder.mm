@interface WFContentPropertyBuilder
+ (id)block:(id)block name:(id)name class:(Class)class;
+ (id)block:(id)block name:(id)name classes:(id)classes;
+ (id)block:(id)block setterBlock:(id)setterBlock name:(id)name class:(Class)class;
+ (id)keyPath:(id)path name:(id)name class:(Class)class;
+ (id)keyPath:(id)path name:(id)name classes:(id)classes;
+ (id)keyPath:(id)path setterBlock:(id)block name:(id)name class:(Class)class;
- (id)appendable:(BOOL)appendable;
- (id)build;
- (id)canLowercaseName:(BOOL)name;
- (id)caseInsensitive:(BOOL)insensitive;
- (id)comparableUnits:(unint64_t)units;
- (id)filterable:(BOOL)filterable;
- (id)gettable:(BOOL)gettable;
- (id)multipleValues:(BOOL)values;
- (id)possibleValues:(id)values;
- (id)possibleValuesAsynchronousGetter:(id)getter;
- (id)possibleValuesGetter:(id)getter;
- (id)primary:(BOOL)primary;
- (id)removable:(BOOL)removable;
- (id)sortable:(BOOL)sortable;
- (id)tense:(unint64_t)tense;
- (id)timeUnits:(unint64_t)units;
- (id)withLinkPropertyIdentifier:(id)identifier;
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
  propertyClasses = [(WFContentPropertyBuilder *)self propertyClasses];
  v14 = [propertyClasses if_firstObjectPassingTest:&__block_literal_global_400];

  propertyClasses2 = [(WFContentPropertyBuilder *)self propertyClasses];
  v16 = [propertyClasses2 if_firstObjectPassingTest:&__block_literal_global_403];

  sortable = [(WFContentPropertyBuilder *)self sortable];
  if (sortable)
  {
    sortable2 = [(WFContentPropertyBuilder *)self sortable];
    bOOLValue = [sortable2 BOOLValue];
  }

  else
  {
    sortable2 = [(WFContentPropertyBuilder *)self multipleValues];
    if ([sortable2 BOOLValue])
    {
      bOOLValue = 0;
    }

    else if (!v14 || v16)
    {
      possibleValuesGetter = [(WFContentPropertyBuilder *)self possibleValuesGetter];
      bOOLValue = possibleValuesGetter != 0;
    }

    else
    {
      bOOLValue = 1;
    }
  }

  filterable = [(WFContentPropertyBuilder *)self filterable];
  if (filterable)
  {
    filterable2 = [(WFContentPropertyBuilder *)self filterable];
    bOOLValue2 = [filterable2 BOOLValue];
  }

  else
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __33__WFContentPropertyBuilder_build__block_invoke_3;
    v78[3] = &unk_278347F00;
    v78[4] = self;
    filterable2 = [v12 objectsPassingTest:v78];
    bOOLValue2 = [filterable2 count] != 0;
  }

  gettable = [(WFContentPropertyBuilder *)self gettable];
  if (gettable)
  {
    gettable2 = [(WFContentPropertyBuilder *)self gettable];
    bOOLValue3 = [gettable2 BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  setterBlock = [(WFContentPropertyBuilder *)self setterBlock];

  appendable = [(WFContentPropertyBuilder *)self appendable];
  if (appendable)
  {
    appendable2 = [(WFContentPropertyBuilder *)self appendable];
    bOOLValue4 = [appendable2 BOOLValue];
LABEL_19:

    goto LABEL_20;
  }

  if (setterBlock)
  {
    appendable2 = [(WFContentPropertyBuilder *)self multipleValues];
    bOOLValue4 = appendable2 != 0;
    goto LABEL_19;
  }

  bOOLValue4 = 0;
LABEL_20:

  propertyClasses3 = [(WFContentPropertyBuilder *)self propertyClasses];
  v28 = [propertyClasses3 if_firstObjectPassingTest:&__block_literal_global_406_16513];

  removable = [(WFContentPropertyBuilder *)self removable];
  if (removable)
  {
    removable2 = [(WFContentPropertyBuilder *)self removable];
    bOOLValue5 = [removable2 BOOLValue];
  }

  else
  {
    bOOLValue5 = v28 == 0;
  }

  canLowercaseName = [(WFContentPropertyBuilder *)self canLowercaseName];
  if (canLowercaseName)
  {
    canLowercaseName2 = [(WFContentPropertyBuilder *)self canLowercaseName];
    bOOLValue6 = [canLowercaseName2 BOOLValue];
  }

  else
  {
    bOOLValue6 = 1;
  }

  tense = [(WFContentPropertyBuilder *)self tense];
  if (tense)
  {
    tense2 = [(WFContentPropertyBuilder *)self tense];
    unsignedIntegerValue = [tense2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  timeUnits = [(WFContentPropertyBuilder *)self timeUnits];
  v75 = v12;
  if (timeUnits)
  {
    timeUnits2 = [(WFContentPropertyBuilder *)self timeUnits];
    unsignedIntegerValue2 = [timeUnits2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 8220;
  }

  v58 = setterBlock != 0;

  linkPropertyIdentifier = [(WFContentPropertyBuilder *)self linkPropertyIdentifier];
  v63 = [WFContentProperty alloc];
  keyPath = [(WFContentPropertyBuilder *)self keyPath];
  block = [(WFContentPropertyBuilder *)self block];
  setterBlock2 = [(WFContentPropertyBuilder *)self setterBlock];
  name = [(WFContentPropertyBuilder *)self name];
  propertyClasses4 = [(WFContentPropertyBuilder *)self propertyClasses];
  multipleValues = [(WFContentPropertyBuilder *)self multipleValues];
  bOOLValue7 = [multipleValues BOOLValue];
  primary = [(WFContentPropertyBuilder *)self primary];
  bOOLValue8 = [primary BOOLValue];
  allowedOperators = [(WFContentPropertyBuilder *)self allowedOperators];
  userInfo = [(WFContentPropertyBuilder *)self userInfo];
  possibleValuesGetter2 = [(WFContentPropertyBuilder *)self possibleValuesGetter];
  caseInsensitive = [(WFContentPropertyBuilder *)self caseInsensitive];
  bOOLValue9 = [caseInsensitive BOOLValue];
  negativeName = [(WFContentPropertyBuilder *)self negativeName];
  singularItemName = [(WFContentPropertyBuilder *)self singularItemName];
  isIrrational = [(WFContentPropertyBuilder *)self isIrrational];
  comparableUnits = [(WFContentPropertyBuilder *)self comparableUnits];
  unsignedIntegerValue3 = [comparableUnits unsignedIntegerValue];
  measurementUnitType = [(WFContentPropertyBuilder *)self measurementUnitType];
  displayName = [(WFContentPropertyBuilder *)self displayName];
  LOBYTE(v48) = bOOLValue6;
  LOBYTE(v47) = isIrrational;
  LOBYTE(v46) = bOOLValue9;
  BYTE6(v45) = bOOLValue8;
  BYTE5(v45) = bOOLValue5;
  BYTE4(v45) = bOOLValue4;
  BYTE3(v45) = v58;
  BYTE2(v45) = bOOLValue3;
  BYTE1(v45) = bOOLValue;
  LOBYTE(v45) = bOOLValue2;
  v73 = [WFContentProperty initWithKeyPath:v63 block:"initWithKeyPath:block:setterBlock:name:propertyClasses:multipleValues:filterable:sortable:gettable:settable:appendable:removable:primary:allowedOperators:userInfo:possibleValues:caseInsensitive:negativeName:singularItemName:irrational:tense:timeUnits:comparableUnits:measurementUnitType:displayName:canLowercaseName:linkPropertyIdentifier:" setterBlock:keyPath name:block propertyClasses:setterBlock2 multipleValues:name filterable:propertyClasses4 sortable:bOOLValue7 gettable:v45 settable:allowedOperators appendable:userInfo removable:possibleValuesGetter2 primary:v46 allowedOperators:negativeName userInfo:singularItemName possibleValues:v47 caseInsensitive:unsignedIntegerValue negativeName:unsignedIntegerValue2 singularItemName:unsignedIntegerValue3 irrational:measurementUnitType tense:displayName timeUnits:v48 comparableUnits:linkPropertyIdentifier measurementUnitType:? displayName:? canLowercaseName:? linkPropertyIdentifier:?];

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

- (id)withLinkPropertyIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(WFContentPropertyBuilder *)self setLinkPropertyIdentifier:v4];

  return self;
}

- (id)canLowercaseName:(BOOL)name
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:name];
  [(WFContentPropertyBuilder *)self setCanLowercaseName:v4];

  return self;
}

- (id)comparableUnits:(unint64_t)units
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:units];
  [(WFContentPropertyBuilder *)self setComparableUnits:v4];

  return self;
}

- (id)timeUnits:(unint64_t)units
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:units];
  [(WFContentPropertyBuilder *)self setTimeUnits:v4];

  return self;
}

- (id)tense:(unint64_t)tense
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:tense];
  [(WFContentPropertyBuilder *)self setTense:v4];

  return self;
}

- (id)caseInsensitive:(BOOL)insensitive
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:insensitive];
  [(WFContentPropertyBuilder *)self setCaseInsensitive:v4];

  return self;
}

- (id)possibleValuesAsynchronousGetter:(id)getter
{
  getterCopy = getter;
  v5 = [[WFContentPropertyPossibleValuesAsynchronousGetter alloc] initWithAsynchronousGetter:getterCopy];

  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v5];
  return self;
}

- (id)possibleValuesGetter:(id)getter
{
  getterCopy = getter;
  v5 = [[WFContentPropertyPossibleValuesSynchronousGetter alloc] initWithSynchronousGetter:getterCopy];

  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v5];
  return self;
}

- (id)possibleValues:(id)values
{
  valuesCopy = values;
  v5 = [WFContentPropertyPossibleValuesSynchronousGetter alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__WFContentPropertyBuilder_possibleValues___block_invoke;
  v9[3] = &unk_278347E68;
  v10 = valuesCopy;
  v6 = valuesCopy;
  v7 = [(WFContentPropertyPossibleValuesSynchronousGetter *)v5 initWithSynchronousGetter:v9];
  [(WFContentPropertyBuilder *)self setPossibleValuesGetter:v7];

  return self;
}

- (id)primary:(BOOL)primary
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:primary];
  [(WFContentPropertyBuilder *)self setPrimary:v4];

  return self;
}

- (id)removable:(BOOL)removable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:removable];
  [(WFContentPropertyBuilder *)self setRemovable:v4];

  return self;
}

- (id)appendable:(BOOL)appendable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:appendable];
  [(WFContentPropertyBuilder *)self setAppendable:v4];

  return self;
}

- (id)gettable:(BOOL)gettable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:gettable];
  [(WFContentPropertyBuilder *)self setGettable:v4];

  return self;
}

- (id)filterable:(BOOL)filterable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:filterable];
  [(WFContentPropertyBuilder *)self setFilterable:v4];

  return self;
}

- (id)sortable:(BOOL)sortable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:sortable];
  [(WFContentPropertyBuilder *)self setSortable:v4];

  return self;
}

- (id)multipleValues:(BOOL)values
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:values];
  [(WFContentPropertyBuilder *)self setMultipleValues:v4];

  return self;
}

+ (id)block:(id)block setterBlock:(id)setterBlock name:(id)name class:(Class)class
{
  setterBlockCopy = setterBlock;
  v11 = [self block:block name:name class:class];
  v12 = v11;
  if (v11)
  {
    [v11 setSetterBlock:setterBlockCopy];
    v13 = v12;
  }

  return v12;
}

+ (id)block:(id)block name:(id)name class:(Class)class
{
  v14 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v7 = MEMORY[0x277CBEA60];
  nameCopy = name;
  blockCopy = block;
  v10 = [v7 arrayWithObjects:&classCopy count:1];
  v11 = [self block:blockCopy name:nameCopy classes:{v10, classCopy, v14}];

  return v11;
}

+ (id)block:(id)block name:(id)name classes:(id)classes
{
  blockCopy = block;
  nameCopy = name;
  classesCopy = classes;
  if (blockCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (classesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"block"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (classesCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

LABEL_4:
  v12 = objc_alloc_init(WFContentPropertyBuilder);
  [(WFContentPropertyBuilder *)v12 setBlock:blockCopy];
  [(WFContentPropertyBuilder *)v12 setName:nameCopy];
  [(WFContentPropertyBuilder *)v12 setPropertyClasses:classesCopy];

  return v12;
}

+ (id)keyPath:(id)path setterBlock:(id)block name:(id)name class:(Class)class
{
  blockCopy = block;
  v11 = [self keyPath:path name:name class:class];
  v12 = v11;
  if (v11)
  {
    [v11 setSetterBlock:blockCopy];
    v13 = v12;
  }

  return v12;
}

+ (id)keyPath:(id)path name:(id)name class:(Class)class
{
  v14 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v7 = MEMORY[0x277CBEA60];
  nameCopy = name;
  pathCopy = path;
  v10 = [v7 arrayWithObjects:&classCopy count:1];
  v11 = [self keyPath:pathCopy name:nameCopy classes:{v10, classCopy, v14}];

  return v11;
}

+ (id)keyPath:(id)path name:(id)name classes:(id)classes
{
  pathCopy = path;
  nameCopy = name;
  classesCopy = classes;
  if (pathCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (classesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (classesCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFContentProperty.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"propertyClasses"}];

LABEL_4:
  v12 = objc_alloc_init(WFContentPropertyBuilder);
  [(WFContentPropertyBuilder *)v12 setKeyPath:pathCopy];
  [(WFContentPropertyBuilder *)v12 setName:nameCopy];
  [(WFContentPropertyBuilder *)v12 setPropertyClasses:classesCopy];

  return v12;
}

@end