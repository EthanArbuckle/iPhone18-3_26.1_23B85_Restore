@interface EDName
+ (id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEDName:(id)name;
- (BOOL)isEqualToString:(id)string;
- (BOOL)isInternalFunction;
- (EDName)init;
- (NSString)internalFunctionName;
- (OITSUPointerKeyDictionary)maxWorksheetReferences;
- (id)description;
- (unint64_t)hash;
- (void)setFormula:(id)formula workbook:(id)workbook;
- (void)setFormulaString:(id)string workbook:(id)workbook;
@end

@implementation EDName

- (EDName)init
{
  v3.receiver = self;
  v3.super_class = EDName;
  result = [(EDName *)&v3 init];
  if (result)
  {
    result->_sheetIndex = 0;
  }

  return result;
}

+ (id)name
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)isEqualToEDName:(id)name
{
  nameCopy = name;
  nameString = [(EDName *)self nameString];
  nameString2 = [nameCopy nameString];
  if (nameString != nameString2)
  {
    nameString3 = [(EDName *)self nameString];
    nameString4 = [nameCopy nameString];
    if (![nameString3 isEqual:nameString4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  sheetIndex = [(EDName *)self sheetIndex];
  v9 = sheetIndex == [nameCopy sheetIndex];
  if (nameString != nameString2)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  nameString = [(EDName *)self nameString];
  v6 = [nameString isEqualToString:stringCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(EDName *)self isEqualToString:v5];
LABEL_8:
        v7 = v6;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(EDName *)self isEqualToEDName:v5];
        goto LABEL_8;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  sheetIndex = self->_sheetIndex;
  v4 = ([(EDString *)self->_nameString hash]<< 8) + (sheetIndex << 16);
  return v4 + [(NSString *)self->_formulaString hash];
}

- (BOOL)isInternalFunction
{
  nameString = [(EDName *)self nameString];
  string = [nameString string];
  v4 = [string hasPrefix:@"_xlfn."];

  return v4;
}

- (NSString)internalFunctionName
{
  isInternalFunction = [(EDName *)self isInternalFunction];
  nameString = [(EDName *)self nameString];
  [nameString string];
  if (isInternalFunction)
    v5 = {;
    v6 = [v5 substringFromIndex:{objc_msgSend(@"_xlfn.", "length")}];
  }

  else
    v6 = {;
  }

  return v6;
}

- (void)setFormula:(id)formula workbook:(id)workbook
{
  formulaCopy = formula;
  workbookCopy = workbook;
  if (self->_formula != formulaCopy)
  {
    objc_storeStrong(&self->_formula, formula);
    processors = [workbookCopy processors];
    [processors markObject:self processor:objc_opt_class()];
  }
}

- (OITSUPointerKeyDictionary)maxWorksheetReferences
{
  maxWorksheetReferences = self->_maxWorksheetReferences;
  if (!maxWorksheetReferences)
  {
    v4 = objc_alloc_init(OITSUPointerKeyDictionary);
    v5 = self->_maxWorksheetReferences;
    self->_maxWorksheetReferences = v4;

    maxWorksheetReferences = self->_maxWorksheetReferences;
  }

  return maxWorksheetReferences;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDName;
  v2 = [(EDName *)&v4 description];

  return v2;
}

- (void)setFormulaString:(id)string workbook:(id)workbook
{
  stringCopy = string;
  workbookCopy = workbook;
  if (self->_formulaString != stringCopy)
  {
    objc_storeStrong(&self->_formulaString, string);
    if (self->_formulaString)
    {
      processors = [workbookCopy processors];
      [processors markObject:self processor:objc_opt_class()];
    }
  }
}

@end