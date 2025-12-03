@interface GDEntityResolutionRequest
- (GDEntityResolutionRequest)initWithCoder:(id)coder;
- (GDEntityResolutionRequest)initWithKgq:(id)kgq mode:(int64_t)mode;
- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode;
- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features;
- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features includeInferredNames:(BOOL)names;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text mode:(int64_t)mode;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text spans:(id)spans mode:(int64_t)mode includeFeatures:(BOOL)features;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans includeInferredNames:(BOOL)names;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans includeInferredNames:(BOOL)names enableBackupSearch:(BOOL)search;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint includeInferredNames:(BOOL)names;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint kgq:(id)kgq;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0 includeInferredNames:(BOOL)self1;
- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0 includeInferredNames:(BOOL)self1 enableBackupSearch:(BOOL)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityResolutionRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  BYTE2(v6) = self->_enableBackupSearch;
  LOWORD(v6) = *&self->_includeFeatures;
  return [v4 initWithText:self->_text entityClassFilter:self->_entityClassFilter spans:self->_spans mode:self->_mode constraint:self->_constraint sourceIDs:self->_sourceIDs kgq:self->_kgq includeFeatures:v6 includeInferredNames:? enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_text);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_entityClassFilter);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    if (!v12)
    {
      error = [coderCopy error];

      if (error)
      {
        v24 = 0;
LABEL_32:

        goto LABEL_33;
      }
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_spans);
    v17 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];

    if (!v17)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        goto LABEL_16;
      }
    }

    v18 = NSStringFromSelector(sel_mode);
    v19 = [coderCopy containsValueForKey:v18];

    if (v19)
    {
      v20 = NSStringFromSelector(sel_mode);
      v21 = [coderCopy decodeIntegerForKey:v20];

      error3 = [coderCopy error];

      if (error3)
      {
LABEL_16:
        v24 = 0;
LABEL_31:

        goto LABEL_32;
      }

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = self;
      v21 = 0;
    }

    v26 = NSStringFromSelector(sel_constraint);
    v27 = [coderCopy containsValueForKey:v26];

    if (v27)
    {
      v28 = NSStringFromSelector(sel_constraint);
      v29 = [coderCopy decodeIntegerForKey:v28];

      error4 = [coderCopy error];

      if (error4)
      {
        v24 = 0;
LABEL_30:
        self = selfCopy2;
        goto LABEL_31;
      }
    }

    else
    {
      v29 = 0;
    }

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = NSStringFromSelector(sel_sourceIDs);
    v36 = [coderCopy decodeObjectOfClasses:v34 forKey:v35];

    if (v36 || ([coderCopy error], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromSelector("kgq");
      v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];

      if (!v39)
      {
        error5 = [coderCopy error];

        if (error5)
        {
          goto LABEL_27;
        }
      }

      v40 = NSStringFromSelector(sel_includeFeatures);
      v41 = [coderCopy decodeBoolForKey:v40];

      error6 = [coderCopy error];

      if (error6)
      {
        goto LABEL_27;
      }

      v53 = v41;
      v43 = NSStringFromSelector(sel_includeInferredNames);
      v44 = [coderCopy decodeBoolForKey:v43];

      error7 = [coderCopy error];

      if (error7 || (NSStringFromSelector(sel_enableBackupSearch), v46 = objc_claimAutoreleasedReturnValue(), v52 = [coderCopy decodeBoolForKey:v46], v46, objc_msgSend(coderCopy, "error"), v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
      {
LABEL_27:
        v24 = 0;
      }

      else
      {
        BYTE2(v51) = v52;
        BYTE1(v51) = v44;
        LOBYTE(v51) = v53;
        v24 = [GDEntityResolutionRequest initWithText:selfCopy2 entityClassFilter:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" spans:v7 mode:v12 constraint:v17 sourceIDs:v21 kgq:v29 includeFeatures:v36 includeInferredNames:v39 enableBackupSearch:v51];
        selfCopy2 = v24;
      }
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_30;
  }

  v24 = 0;
LABEL_33:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_text);
  [coderCopy encodeObject:text forKey:v6];

  entityClassFilter = self->_entityClassFilter;
  v8 = NSStringFromSelector(sel_entityClassFilter);
  [coderCopy encodeObject:entityClassFilter forKey:v8];

  spans = self->_spans;
  v10 = NSStringFromSelector(sel_spans);
  [coderCopy encodeObject:spans forKey:v10];

  mode = self->_mode;
  v12 = NSStringFromSelector(sel_mode);
  [coderCopy encodeInteger:mode forKey:v12];

  constraint = self->_constraint;
  v14 = NSStringFromSelector(sel_constraint);
  [coderCopy encodeInteger:constraint forKey:v14];

  sourceIDs = self->_sourceIDs;
  v16 = NSStringFromSelector(sel_sourceIDs);
  [coderCopy encodeObject:sourceIDs forKey:v16];

  kgq = self->_kgq;
  v18 = NSStringFromSelector("kgq");
  [coderCopy encodeObject:kgq forKey:v18];

  includeFeatures = self->_includeFeatures;
  v20 = NSStringFromSelector(sel_includeFeatures);
  [coderCopy encodeBool:includeFeatures forKey:v20];

  includeInferredNames = self->_includeInferredNames;
  v22 = NSStringFromSelector(sel_includeInferredNames);
  [coderCopy encodeBool:includeInferredNames forKey:v22];

  enableBackupSearch = self->_enableBackupSearch;
  v24 = NSStringFromSelector(sel_enableBackupSearch);
  [coderCopy encodeBool:enableBackupSearch forKey:v24];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint kgq:(id)kgq
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:0 includeFeatures:kgq includeInferredNames:v9 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:0 constraint:mode sourceIDs:0 kgq:0 includeFeatures:kgq includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)kgq mode:(int64_t)mode
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:0 spans:0 mode:0 constraint:mode sourceIDs:0 kgq:0 includeFeatures:kgq includeInferredNames:v5 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text mode:(int64_t)mode
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:0 constraint:mode sourceIDs:0 kgq:ds includeFeatures:0 includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features
{
  *(&v7 + 1) = 0;
  LOBYTE(v7) = features;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:0 constraint:mode sourceIDs:0 kgq:ds includeFeatures:0 includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq
{
  BYTE2(v10) = 0;
  LOWORD(v10) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:0 includeFeatures:0 includeInferredNames:v10 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features
{
  *(&v7 + 1) = 0;
  LOBYTE(v7) = features;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:0 constraint:mode sourceIDs:0 kgq:0 includeFeatures:kgq includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:0 includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0
{
  *(&v11 + 1) = 0;
  LOBYTE(v11) = features;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:ds includeFeatures:kgq includeInferredNames:v11 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)kgq text:(id)text mode:(int64_t)mode includeFeatures:(BOOL)features includeInferredNames:(BOOL)names
{
  BYTE2(v8) = 0;
  BYTE1(v8) = names;
  LOBYTE(v8) = features;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:0 constraint:mode sourceIDs:0 kgq:0 includeFeatures:kgq includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)ds text:(id)text spans:(id)spans mode:(int64_t)mode includeFeatures:(BOOL)features
{
  *(&v8 + 1) = 0;
  LOBYTE(v8) = features;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:0 mode:spans constraint:mode sourceIDs:0 kgq:ds includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint includeInferredNames:(BOOL)names
{
  BYTE2(v9) = 0;
  BYTE1(v9) = names;
  LOBYTE(v9) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:0 includeFeatures:0 includeInferredNames:v9 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans includeInferredNames:(BOOL)names
{
  BYTE2(v7) = 0;
  BYTE1(v7) = names;
  LOBYTE(v7) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans includeInferredNames:(BOOL)names enableBackupSearch:(BOOL)search
{
  BYTE2(v8) = search;
  BYTE1(v8) = names;
  LOBYTE(v8) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0 includeInferredNames:(BOOL)self1
{
  BYTE2(v12) = 0;
  LOWORD(v12) = __PAIR16__(names, features);
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:text spans:filter mode:spans constraint:mode sourceIDs:constraint kgq:ds includeFeatures:kgq includeInferredNames:v12 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)text entityClassFilter:(id)filter spans:(id)spans mode:(int64_t)mode constraint:(int64_t)constraint sourceIDs:(id)ds kgq:(id)kgq includeFeatures:(BOOL)self0 includeInferredNames:(BOOL)self1 enableBackupSearch:(BOOL)self2
{
  textCopy = text;
  filterCopy = filter;
  spansCopy = spans;
  dsCopy = ds;
  kgqCopy = kgq;
  v35.receiver = self;
  v35.super_class = GDEntityResolutionRequest;
  v23 = [(GDEntityResolutionRequest *)&v35 init];
  if (v23)
  {
    v24 = [textCopy copy];
    text = v23->_text;
    v23->_text = v24;

    v26 = [filterCopy copy];
    entityClassFilter = v23->_entityClassFilter;
    v23->_entityClassFilter = v26;

    v28 = [spansCopy copy];
    spans = v23->_spans;
    v23->_spans = v28;

    v23->_mode = mode;
    v23->_constraint = constraint;
    v30 = [dsCopy copy];
    sourceIDs = v23->_sourceIDs;
    v23->_sourceIDs = v30;

    v32 = [kgqCopy copy];
    kgq = v23->_kgq;
    v23->_kgq = v32;

    v23->_includeFeatures = features;
    v23->_includeInferredNames = names;
    v23->_enableBackupSearch = search;
  }

  return v23;
}

@end