@interface EDName
+ (id)name;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEDName:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (BOOL)isInternalFunction;
- (EDName)init;
- (NSString)internalFunctionName;
- (OITSUPointerKeyDictionary)maxWorksheetReferences;
- (id)description;
- (unint64_t)hash;
- (void)setFormula:(id)a3 workbook:(id)a4;
- (void)setFormulaString:(id)a3 workbook:(id)a4;
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

- (BOOL)isEqualToEDName:(id)a3
{
  v6 = a3;
  v7 = [(EDName *)self nameString];
  v8 = [v6 nameString];
  if (v7 != v8)
  {
    v3 = [(EDName *)self nameString];
    v4 = [v6 nameString];
    if (![v3 isEqual:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(EDName *)self sheetIndex];
  v9 = v10 == [v6 sheetIndex];
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (BOOL)isEqualToString:(id)a3
{
  v4 = a3;
  v5 = [(EDName *)self nameString];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    if (v4)
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
  v2 = [(EDName *)self nameString];
  v3 = [v2 string];
  v4 = [v3 hasPrefix:@"_xlfn."];

  return v4;
}

- (NSString)internalFunctionName
{
  v3 = [(EDName *)self isInternalFunction];
  v4 = [(EDName *)self nameString];
  [v4 string];
  if (v3)
    v5 = {;
    v6 = [v5 substringFromIndex:{objc_msgSend(@"_xlfn.", "length")}];
  }

  else
    v6 = {;
  }

  return v6;
}

- (void)setFormula:(id)a3 workbook:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_formula != v9)
  {
    objc_storeStrong(&self->_formula, a3);
    v8 = [v7 processors];
    [v8 markObject:self processor:objc_opt_class()];
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

- (void)setFormulaString:(id)a3 workbook:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_formulaString != v9)
  {
    objc_storeStrong(&self->_formulaString, a3);
    if (self->_formulaString)
    {
      v8 = [v7 processors];
      [v8 markObject:self processor:objc_opt_class()];
    }
  }
}

@end