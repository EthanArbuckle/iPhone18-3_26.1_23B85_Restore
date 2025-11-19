@interface GDEntityResolutionRequest
- (GDEntityResolutionRequest)initWithCoder:(id)a3;
- (GDEntityResolutionRequest)initWithKgq:(id)a3 mode:(int64_t)a4;
- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5;
- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6;
- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6 includeInferredNames:(BOOL)a7;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 mode:(int64_t)a5;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6;
- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 spans:(id)a5 mode:(int64_t)a6 includeFeatures:(BOOL)a7;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 includeInferredNames:(BOOL)a6;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 includeInferredNames:(BOOL)a6 enableBackupSearch:(BOOL)a7;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 includeInferredNames:(BOOL)a8;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 kgq:(id)a8;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10 includeInferredNames:(BOOL)a11;
- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10 includeInferredNames:(BOOL)a11 enableBackupSearch:(BOOL)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntityResolutionRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  BYTE2(v6) = self->_enableBackupSearch;
  LOWORD(v6) = *&self->_includeFeatures;
  return [v4 initWithText:self->_text entityClassFilter:self->_entityClassFilter spans:self->_spans mode:self->_mode constraint:self->_constraint sourceIDs:self->_sourceIDs kgq:self->_kgq includeFeatures:v6 includeInferredNames:? enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_text);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_entityClassFilter);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

    if (!v12)
    {
      v25 = [v4 error];

      if (v25)
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
    v17 = [v4 decodeObjectOfClasses:v15 forKey:v16];

    if (!v17)
    {
      v31 = [v4 error];

      if (v31)
      {
        goto LABEL_16;
      }
    }

    v18 = NSStringFromSelector(sel_mode);
    v19 = [v4 containsValueForKey:v18];

    if (v19)
    {
      v20 = NSStringFromSelector(sel_mode);
      v21 = [v4 decodeIntegerForKey:v20];

      v22 = [v4 error];

      if (v22)
      {
LABEL_16:
        v24 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v54 = self;
    }

    else
    {
      v54 = self;
      v21 = 0;
    }

    v26 = NSStringFromSelector(sel_constraint);
    v27 = [v4 containsValueForKey:v26];

    if (v27)
    {
      v28 = NSStringFromSelector(sel_constraint);
      v29 = [v4 decodeIntegerForKey:v28];

      v30 = [v4 error];

      if (v30)
      {
        v24 = 0;
LABEL_30:
        self = v54;
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
    v36 = [v4 decodeObjectOfClasses:v34 forKey:v35];

    if (v36 || ([v4 error], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromSelector("kgq");
      v39 = [v4 decodeObjectOfClass:v37 forKey:v38];

      if (!v39)
      {
        v49 = [v4 error];

        if (v49)
        {
          goto LABEL_27;
        }
      }

      v40 = NSStringFromSelector(sel_includeFeatures);
      v41 = [v4 decodeBoolForKey:v40];

      v42 = [v4 error];

      if (v42)
      {
        goto LABEL_27;
      }

      v53 = v41;
      v43 = NSStringFromSelector(sel_includeInferredNames);
      v44 = [v4 decodeBoolForKey:v43];

      v45 = [v4 error];

      if (v45 || (NSStringFromSelector(sel_enableBackupSearch), v46 = objc_claimAutoreleasedReturnValue(), v52 = [v4 decodeBoolForKey:v46], v46, objc_msgSend(v4, "error"), v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
      {
LABEL_27:
        v24 = 0;
      }

      else
      {
        BYTE2(v51) = v52;
        BYTE1(v51) = v44;
        LOBYTE(v51) = v53;
        v24 = [GDEntityResolutionRequest initWithText:v54 entityClassFilter:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" spans:v7 mode:v12 constraint:v17 sourceIDs:v21 kgq:v29 includeFeatures:v36 includeInferredNames:v39 enableBackupSearch:v51];
        v54 = v24;
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

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  v6 = NSStringFromSelector(sel_text);
  [v5 encodeObject:text forKey:v6];

  entityClassFilter = self->_entityClassFilter;
  v8 = NSStringFromSelector(sel_entityClassFilter);
  [v5 encodeObject:entityClassFilter forKey:v8];

  spans = self->_spans;
  v10 = NSStringFromSelector(sel_spans);
  [v5 encodeObject:spans forKey:v10];

  mode = self->_mode;
  v12 = NSStringFromSelector(sel_mode);
  [v5 encodeInteger:mode forKey:v12];

  constraint = self->_constraint;
  v14 = NSStringFromSelector(sel_constraint);
  [v5 encodeInteger:constraint forKey:v14];

  sourceIDs = self->_sourceIDs;
  v16 = NSStringFromSelector(sel_sourceIDs);
  [v5 encodeObject:sourceIDs forKey:v16];

  kgq = self->_kgq;
  v18 = NSStringFromSelector("kgq");
  [v5 encodeObject:kgq forKey:v18];

  includeFeatures = self->_includeFeatures;
  v20 = NSStringFromSelector(sel_includeFeatures);
  [v5 encodeBool:includeFeatures forKey:v20];

  includeInferredNames = self->_includeInferredNames;
  v22 = NSStringFromSelector(sel_includeInferredNames);
  [v5 encodeBool:includeInferredNames forKey:v22];

  enableBackupSearch = self->_enableBackupSearch;
  v24 = NSStringFromSelector(sel_enableBackupSearch);
  [v5 encodeBool:enableBackupSearch forKey:v24];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 kgq:(id)a8
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:0 includeFeatures:a8 includeInferredNames:v9 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:0 constraint:a5 sourceIDs:0 kgq:0 includeFeatures:a3 includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)a3 mode:(int64_t)a4
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:0 spans:0 mode:0 constraint:a4 sourceIDs:0 kgq:0 includeFeatures:a3 includeInferredNames:v5 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 mode:(int64_t)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:0 constraint:a5 sourceIDs:0 kgq:a3 includeFeatures:0 includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6
{
  *(&v7 + 1) = 0;
  LOBYTE(v7) = a6;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:0 constraint:a5 sourceIDs:0 kgq:a3 includeFeatures:0 includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9
{
  BYTE2(v10) = 0;
  LOWORD(v10) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:0 includeFeatures:0 includeInferredNames:v10 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6
{
  *(&v7 + 1) = 0;
  LOBYTE(v7) = a6;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:0 constraint:a5 sourceIDs:0 kgq:0 includeFeatures:a3 includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:0 includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v6 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10
{
  *(&v11 + 1) = 0;
  LOBYTE(v11) = a10;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:a8 includeFeatures:a9 includeInferredNames:v11 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithKgq:(id)a3 text:(id)a4 mode:(int64_t)a5 includeFeatures:(BOOL)a6 includeInferredNames:(BOOL)a7
{
  BYTE2(v8) = 0;
  BYTE1(v8) = a7;
  LOBYTE(v8) = a6;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:0 constraint:a5 sourceIDs:0 kgq:0 includeFeatures:a3 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithSourceIDs:(id)a3 text:(id)a4 spans:(id)a5 mode:(int64_t)a6 includeFeatures:(BOOL)a7
{
  *(&v8 + 1) = 0;
  LOBYTE(v8) = a7;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a4 spans:0 mode:a5 constraint:a6 sourceIDs:0 kgq:a3 includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 includeInferredNames:(BOOL)a8
{
  BYTE2(v9) = 0;
  BYTE1(v9) = a8;
  LOBYTE(v9) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:0 includeFeatures:0 includeInferredNames:v9 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 includeInferredNames:(BOOL)a6
{
  BYTE2(v7) = 0;
  BYTE1(v7) = a6;
  LOBYTE(v7) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v7 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 includeInferredNames:(BOOL)a6 enableBackupSearch:(BOOL)a7
{
  BYTE2(v8) = a7;
  BYTE1(v8) = a6;
  LOBYTE(v8) = 0;
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:0 sourceIDs:0 kgq:0 includeFeatures:0 includeInferredNames:v8 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10 includeInferredNames:(BOOL)a11
{
  BYTE2(v12) = 0;
  LOWORD(v12) = __PAIR16__(a11, a10);
  return [GDEntityResolutionRequest initWithText:"initWithText:entityClassFilter:spans:mode:constraint:sourceIDs:kgq:includeFeatures:includeInferredNames:enableBackupSearch:" entityClassFilter:a3 spans:a4 mode:a5 constraint:a6 sourceIDs:a7 kgq:a8 includeFeatures:a9 includeInferredNames:v12 enableBackupSearch:?];
}

- (GDEntityResolutionRequest)initWithText:(id)a3 entityClassFilter:(id)a4 spans:(id)a5 mode:(int64_t)a6 constraint:(int64_t)a7 sourceIDs:(id)a8 kgq:(id)a9 includeFeatures:(BOOL)a10 includeInferredNames:(BOOL)a11 enableBackupSearch:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v35.receiver = self;
  v35.super_class = GDEntityResolutionRequest;
  v23 = [(GDEntityResolutionRequest *)&v35 init];
  if (v23)
  {
    v24 = [v18 copy];
    text = v23->_text;
    v23->_text = v24;

    v26 = [v19 copy];
    entityClassFilter = v23->_entityClassFilter;
    v23->_entityClassFilter = v26;

    v28 = [v20 copy];
    spans = v23->_spans;
    v23->_spans = v28;

    v23->_mode = a6;
    v23->_constraint = a7;
    v30 = [v21 copy];
    sourceIDs = v23->_sourceIDs;
    v23->_sourceIDs = v30;

    v32 = [v22 copy];
    kgq = v23->_kgq;
    v23->_kgq = v32;

    v23->_includeFeatures = a10;
    v23->_includeInferredNames = a11;
    v23->_enableBackupSearch = a12;
  }

  return v23;
}

@end