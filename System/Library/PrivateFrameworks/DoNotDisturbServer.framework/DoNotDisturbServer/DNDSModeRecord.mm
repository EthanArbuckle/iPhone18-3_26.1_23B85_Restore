@interface DNDSModeRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithRecord:(id)a3;
- (id)_initWithSymbolImageName:(id)a3 tintColorName:(id)a4 symbolDescriptorTintStyle:(unint64_t)a5 symbolDescriptorTintColorNames:(id)a6 symbolDescriptorImageName:(id)a7 name:(id)a8 modeIdentifier:(id)a9 semanticType:(int64_t)a10 visibility:(unint64_t)a11 identifier:(id)a12 placeholderExcludedPlatforms:(id)a13;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSModeRecord

- (id)_initWithRecord:(id)a3
{
  v3 = a3;
  v16 = [v3 symbolImageName];
  v4 = [v3 tintColorName];
  v15 = [v3 symbolDescriptorTintStyle];
  v5 = [v3 symbolDescriptorTintColorNames];
  v6 = [v3 symbolDescriptorImageName];
  v7 = [v3 name];
  v8 = [v3 modeIdentifier];
  v9 = [v3 semanticType];
  v10 = [v3 visibility];
  v11 = [v3 identifier];
  v12 = [v3 placeholderExcludedPlatforms];

  v13 = [(DNDSModeRecord *)self _initWithSymbolImageName:v16 tintColorName:v4 symbolDescriptorTintStyle:v15 symbolDescriptorTintColorNames:v5 symbolDescriptorImageName:v6 name:v7 modeIdentifier:v8 semanticType:v9 visibility:v10 identifier:v11 placeholderExcludedPlatforms:v12];
  return v13;
}

- (id)_initWithSymbolImageName:(id)a3 tintColorName:(id)a4 symbolDescriptorTintStyle:(unint64_t)a5 symbolDescriptorTintColorNames:(id)a6 symbolDescriptorImageName:(id)a7 name:(id)a8 modeIdentifier:(id)a9 semanticType:(int64_t)a10 visibility:(unint64_t)a11 identifier:(id)a12 placeholderExcludedPlatforms:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v25 = a13;
  v45.receiver = self;
  v45.super_class = DNDSModeRecord;
  v26 = [(DNDSModeRecord *)&v45 init];
  if (v26)
  {
    v27 = [v18 copy];
    symbolImageName = v26->_symbolImageName;
    v26->_symbolImageName = v27;

    v29 = [v19 copy];
    tintColorName = v26->_tintColorName;
    v26->_tintColorName = v29;

    v26->_symbolDescriptorTintStyle = a5;
    v31 = [v20 copy];
    symbolDescriptorTintColorNames = v26->_symbolDescriptorTintColorNames;
    v26->_symbolDescriptorTintColorNames = v31;

    v33 = [v21 copy];
    symbolDescriptorImageName = v26->_symbolDescriptorImageName;
    v26->_symbolDescriptorImageName = v33;

    v35 = [v22 copy];
    name = v26->_name;
    v26->_name = v35;

    v37 = [v23 copy];
    modeIdentifier = v26->_modeIdentifier;
    v26->_modeIdentifier = v37;

    v26->_semanticType = a10;
    v26->_visibility = a11;
    if (v24)
    {
      v39 = v24;
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    identifier = v26->_identifier;
    v26->_identifier = v39;

    v41 = [v25 copy];
    placeholderExcludedPlatforms = v26->_placeholderExcludedPlatforms;
    v26->_placeholderExcludedPlatforms = v41;
  }

  return v26;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_symbolImageName hash];
  v4 = [(NSString *)self->_tintColorName hash]^ v3;
  symbolDescriptorTintStyle = self->_symbolDescriptorTintStyle;
  v6 = v4 ^ symbolDescriptorTintStyle ^ [(NSArray *)self->_symbolDescriptorTintColorNames hash];
  v7 = [(NSString *)self->_symbolDescriptorImageName hash];
  v8 = v7 ^ [(NSString *)self->_name hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_modeIdentifier hash];
  v10 = self->_semanticType ^ self->_visibility;
  v11 = v10 ^ [(NSUUID *)self->_identifier hash];
  return v9 ^ v11 ^ [(NSArray *)self->_placeholderExcludedPlatforms hash];
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v16 = 1;
    goto LABEL_123;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_123;
  }

  v8 = v7;
  v9 = [(DNDSModeRecord *)self symbolImageName];
  v10 = [(DNDSModeRecord *)v8 symbolImageName];
  if (v9 != v10)
  {
    v11 = [(DNDSModeRecord *)self symbolImageName];
    if (!v11)
    {
      v85 = 0;
      v94 = 0uLL;
      memset(v93, 0, sizeof(v93));
      v91 = 0;
      v13 = 0;
      memset(v90, 0, sizeof(v90));
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v92 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_60;
    }

    v85 = v11;
    v12 = [(DNDSModeRecord *)v8 symbolImageName];
    if (!v12)
    {
      v82 = 0;
      *v93 = 0;
      *&v93[8] = 0;
      v91 = 0;
      v13 = 0;
      memset(v90, 0, sizeof(v90));
      v94 = 0uLL;
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v92 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[16] = 1;
      goto LABEL_60;
    }

    v82 = v12;
    v3 = [(DNDSModeRecord *)self symbolImageName];
    v79 = [(DNDSModeRecord *)v8 symbolImageName];
    v80 = v3;
    if (![v3 isEqual:?])
    {
      *&v93[4] = 0;
      v91 = 0;
      v13 = 0;
      memset(v90, 0, sizeof(v90));
      v94 = 0uLL;
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[12] = 0;
      *&v93[16] = 1;
      v92 = 0;
      *v93 = 1;
      goto LABEL_60;
    }
  }

  v3 = [(DNDSModeRecord *)self tintColorName];
  v83 = [(DNDSModeRecord *)v8 tintColorName];
  v84 = v3;
  v5 = v3 != v83;
  *&v93[16] = v9 != v10;
  if (v3 != v83)
  {
    v17 = [(DNDSModeRecord *)self tintColorName];
    if (!v17)
    {
      v81 = 0;
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      v94 = 0uLL;
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 0;
      *&v93[8] = 1;
      goto LABEL_60;
    }

    v81 = v17;
    v18 = [(DNDSModeRecord *)v8 tintColorName];
    if (!v18)
    {
      v78 = 0;
      memset(v90, 0, sizeof(v90));
      v94 = 0uLL;
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 0;
      *&v93[8] = 1;
      v91 = 1;
      goto LABEL_60;
    }

    v78 = v18;
    v3 = [(DNDSModeRecord *)self tintColorName];
    v74 = [(DNDSModeRecord *)v8 tintColorName];
    v75 = v3;
    if (![v3 isEqual:?])
    {
      memset(v90, 0, sizeof(v90));
      *v88 = 0;
      v94 = 0uLL;
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 0;
      *&v93[8] = 1;
      v91 = 1;
      v19 = 1;
LABEL_24:
      *&v88[8] = v19;
      v89 = 0;
      goto LABEL_60;
    }
  }

  v3 = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  *&v93[8] = v5;
  if (v3 != [(DNDSModeRecord *)v8 symbolDescriptorTintStyle])
  {
    *&v93[12] = 0;
    memset(v90, 0, sizeof(v90));
    *v88 = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    v91 = v5;
    v92 = 0;
    *v93 = v9 != v10;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v13 = 0;
    v19 = v5;
    goto LABEL_24;
  }

  v20 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  v21 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  v22 = v20;
  v23 = v20 == v21;
  v3 = v20 != v21;
  v76 = v21;
  v77 = v22;
  if (v23)
  {
    goto LABEL_27;
  }

  v24 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  if (!v24)
  {
    v73 = 0;
    memset(v90, 0, sizeof(v90));
    *v88 = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    *&v88[8] = v5;
    v89 = 0;
    v91 = v5;
    v92 = 0;
    *v93 = v9 != v10;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v13 = 1;
    *&v93[12] = 1;
    goto LABEL_60;
  }

  v73 = v24;
  v25 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  if (!v25)
  {
    v70 = 0;
    *v88 = 0;
    *&v90[4] = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    *&v88[8] = v5;
    v89 = 0;
    *&v90[12] = 0;
    v92 = 0;
    *v93 = v9 != v10;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v91 = v5;
    v13 = 1;
    *&v93[12] = 1;
    *v90 = 1;
    goto LABEL_60;
  }

  v70 = v25;
  v4 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  v65 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  v66 = v4;
  if ([v4 isEqual:?])
  {
LABEL_27:
    v4 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    v71 = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    HIDWORD(v94) = v4 != v71;
    *&v93[12] = v3;
    v72 = v4;
    if (v4 == v71)
    {
      goto LABEL_33;
    }

    v26 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    if (!v26)
    {
      v69 = 0;
      *v88 = 0;
      *&v88[4] = v3;
      *(&v94 + 4) = 0;
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = v5;
      v89 = 0;
      *&v90[16] = 0;
      v91 = v5;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = v3;
      *&v90[4] = 1;
      HIDWORD(v94) = 1;
      goto LABEL_60;
    }

    v69 = v26;
    v27 = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    if (!v27)
    {
      v64 = 0;
      *v87 = 0;
      *v88 = 0;
      *&v88[4] = v3;
      *(&v94 + 4) = 0;
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = v5;
      v89 = 0;
      *&v90[16] = 0;
      v91 = v5;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = v3;
      *&v90[4] = 1;
      HIDWORD(v94) = 1;
      *&v87[8] = 1;
      goto LABEL_60;
    }

    v64 = v27;
    v4 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    v59 = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    v60 = v4;
    if ([v4 isEqual:?])
    {
LABEL_33:
      v4 = [(DNDSModeRecord *)self name];
      v67 = [(DNDSModeRecord *)v8 name];
      DWORD2(v94) = v4 != v67;
      v68 = v4;
      if (v4 == v67)
      {
        goto LABEL_40;
      }

      v28 = [(DNDSModeRecord *)self name];
      if (!v28)
      {
        v63 = 0;
        *v87 = 0;
        *&v94 = 0;
        v86 = 0uLL;
        *&v90[8] = 0;
        *&v88[8] = v5;
        v89 = 0;
        *&v90[16] = 0;
        v91 = v5;
        v92 = 0;
        *v93 = v9 != v10;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = v3;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = v3;
        DWORD2(v94) = 1;
        goto LABEL_60;
      }

      v63 = v28;
      v29 = [(DNDSModeRecord *)v8 name];
      if (!v29)
      {
        v58 = 0;
        *(&v86 + 4) = 0;
        *v87 = 0;
        *&v94 = 0;
        LODWORD(v86) = 0;
        *&v90[8] = 0;
        *&v88[8] = v5;
        v89 = 0;
        *&v90[16] = 0;
        v91 = v5;
        v92 = 0;
        *v93 = v9 != v10;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = v3;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = v3;
        DWORD2(v94) = 1;
        HIDWORD(v86) = 1;
        goto LABEL_60;
      }

      v58 = v29;
      v4 = [(DNDSModeRecord *)self name];
      v55 = [(DNDSModeRecord *)v8 name];
      v56 = v4;
      if ([v4 isEqual:?])
      {
LABEL_40:
        v4 = [(DNDSModeRecord *)self modeIdentifier];
        v61 = [(DNDSModeRecord *)v8 modeIdentifier];
        DWORD1(v94) = v4 != v61;
        v62 = v4;
        if (v4 == v61)
        {
          v4 = v3;
        }

        else
        {
          v30 = [(DNDSModeRecord *)self modeIdentifier];
          if (!v30)
          {
            v57 = 0;
            *&v86 = 0;
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = v5;
            v89 = 0;
            *&v90[16] = 0;
            v91 = v5;
            v92 = 0;
            *v93 = v9 != v10;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = v3;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = v3;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            goto LABEL_60;
          }

          v57 = v30;
          v31 = [(DNDSModeRecord *)v8 modeIdentifier];
          if (!v31)
          {
            v54 = 0;
            *&v86 = 0x100000000;
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = v5;
            v89 = 0;
            *&v90[16] = 0;
            v91 = v5;
            v92 = 0;
            *v93 = v9 != v10;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = v3;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = v3;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            goto LABEL_60;
          }

          v54 = v31;
          v4 = [(DNDSModeRecord *)self modeIdentifier];
          v52 = [(DNDSModeRecord *)v8 modeIdentifier];
          v53 = v4;
          if (![v4 isEqual:?])
          {
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = v5;
            v89 = 0;
            *&v90[16] = 0;
            v91 = v5;
            v92 = 0;
            *v93 = v9 != v10;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = v3;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = v3;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            *&v86 = 0x100000001;
            goto LABEL_60;
          }

          v4 = v3;
        }

        v3 = [(DNDSModeRecord *)self semanticType];
        if (v3 == [(DNDSModeRecord *)v8 semanticType]&& (v3 = [(DNDSModeRecord *)self visibility], v3 == [(DNDSModeRecord *)v8 visibility]))
        {
          v32 = [(DNDSModeRecord *)self identifier];
          v33 = [(DNDSModeRecord *)v8 identifier];
          v34 = v32;
          v50 = v33;
          v23 = v32 == v33;
          LODWORD(v94) = v32 != v33;
          v3 = v4;
          v51 = v34;
          if (v23)
          {
            goto LABEL_124;
          }

          v35 = [(DNDSModeRecord *)self identifier];
          if (!v35)
          {
            v49 = 0;
            *&v88[8] = v5;
            v89 = 0;
            *&v90[12] = 0;
            v92 = 0;
            *v93 = v9 != v10;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v91 = v5;
            v13 = 1;
            *v90 = v4;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = v4;
            v4 = DWORD1(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            LODWORD(v86) = DWORD1(v94);
            *(&v86 + 4) = *(&v94 + 4);
            *&v90[8] = 1;
            LODWORD(v94) = 1;
            goto LABEL_60;
          }

          v36 = v35;
          v48 = [(DNDSModeRecord *)v8 identifier];
          v49 = v36;
          if (!v48)
          {
            v48 = 0;
            *&v90[12] = 0;
            v92 = 0;
            *v93 = v9 != v10;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v91 = v5;
            *&v88[4] = v3;
            *&v88[8] = v5;
            v13 = 1;
            *v90 = v3;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            v4 = DWORD1(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            LODWORD(v86) = DWORD1(v94);
            *(&v86 + 4) = *(&v94 + 4);
            *&v90[8] = 1;
            LODWORD(v94) = 1;
            v89 = 1;
            goto LABEL_60;
          }

          v37 = [(DNDSModeRecord *)self identifier];
          v43 = [(DNDSModeRecord *)v8 identifier];
          v44 = v37;
          if ([v37 isEqual:?])
          {
LABEL_124:
            v41 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
            v46 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
            v47 = v41;
            if (v41 == v46)
            {
              v92 = 0;
              *v93 = v9 != v10;
              v14 = 0;
              v15 = 0;
              *&v93[4] = 1;
              v91 = v5;
              *&v88[4] = v3;
              *&v88[8] = v5;
              v13 = 1;
              *v90 = v3;
              *&v90[4] = 1;
              *&v87[4] = HIDWORD(v94);
              *&v87[8] = HIDWORD(v94);
              *v88 = 1;
              v4 = DWORD1(v94);
              HIDWORD(v86) = DWORD2(v94);
              *v87 = 1;
              LODWORD(v86) = DWORD1(v94);
              *(&v86 + 4) = *(&v94 + 4);
              v89 = v94;
              *&v90[8] = 1;
              *&v90[12] = v94;
              *&v90[16] = 1;
              v16 = 1;
            }

            else
            {
              v42 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
              if (v42)
              {
                v45 = v42;
                v4 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
                if (v4)
                {
                  v3 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
                  v5 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
                  v16 = [v3 isEqual:v5];
                  *v93 = v9 != v10;
                  *&v93[4] = 1;
                  *&v88[4] = *&v93[12];
                  v91 = *&v93[8];
                  *&v88[8] = *&v93[8];
                  v13 = 1;
                  *v90 = *&v93[12];
                  *&v87[4] = HIDWORD(v94);
                  *&v87[8] = HIDWORD(v94);
                  *v88 = 1;
                  HIDWORD(v86) = DWORD2(v94);
                  *v87 = 1;
                  LODWORD(v86) = DWORD1(v94);
                  *(&v86 + 4) = *(&v94 + 4);
                  *&v90[4] = 1;
                  *&v90[8] = 1;
                  v89 = v94;
                  v15 = 1;
                }

                else
                {
                  v15 = 0;
                  v16 = 0;
                  *v93 = v9 != v10;
                  *&v93[4] = 1;
                  v91 = v5;
                  *&v88[4] = *&v93[12];
                  *&v88[8] = v5;
                  v13 = 1;
                  *v90 = *&v93[12];
                  *&v87[4] = HIDWORD(v94);
                  *&v87[8] = HIDWORD(v94);
                  *v88 = 1;
                  HIDWORD(v86) = DWORD2(v94);
                  *v87 = 1;
                  LODWORD(v86) = DWORD1(v94);
                  *(&v86 + 4) = *(&v94 + 4);
                  *&v90[4] = 1;
                  *&v90[8] = 1;
                  v89 = v94;
                }

                *&v90[12] = v94;
                *&v90[16] = 1;
                v92 = 1;
                v14 = 1;
              }

              else
              {
                v45 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                *v93 = v9 != v10;
                *&v93[4] = 1;
                v91 = v5;
                *&v88[4] = v3;
                *&v88[8] = v5;
                v13 = 1;
                *v90 = v3;
                *&v90[4] = 1;
                *&v87[4] = HIDWORD(v94);
                *&v87[8] = HIDWORD(v94);
                *v88 = 1;
                v4 = DWORD1(v94);
                HIDWORD(v86) = DWORD2(v94);
                *v87 = 1;
                LODWORD(v86) = DWORD1(v94);
                *(&v86 + 4) = *(&v94 + 4);
                v89 = v94;
                *&v90[8] = 1;
                *&v90[12] = v94;
                *&v90[16] = 1;
                v92 = 1;
              }
            }

            goto LABEL_60;
          }

          *&v90[16] = 0;
          v91 = v5;
          v92 = 0;
          *v93 = v9 != v10;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *&v93[4] = 1;
          *&v88[4] = v3;
          *&v88[8] = v5;
          v13 = 1;
          *v90 = v3;
          *&v90[4] = 1;
          *&v87[4] = HIDWORD(v94);
          *&v87[8] = HIDWORD(v94);
          *v88 = 1;
          v4 = DWORD1(v94);
          HIDWORD(v86) = DWORD2(v94);
          *v87 = 1;
          LODWORD(v86) = DWORD1(v94);
          *(&v86 + 4) = *(&v94 + 4);
          *&v90[8] = 1;
          LODWORD(v94) = 1;
          v89 = 1;
          *&v90[12] = 1;
        }

        else
        {
          *&v90[8] = 0;
          LODWORD(v94) = 0;
          *&v88[8] = v5;
          v89 = 0;
          *&v90[16] = 0;
          v91 = v5;
          v92 = 0;
          *v93 = v9 != v10;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *&v93[4] = 1;
          v13 = 1;
          *v90 = v4;
          *&v90[4] = 1;
          *&v87[4] = HIDWORD(v94);
          *&v87[8] = HIDWORD(v94);
          *v88 = 1;
          *&v88[4] = v4;
          HIDWORD(v86) = DWORD2(v94);
          *v87 = 1;
          LODWORD(v86) = DWORD1(v94);
          *(&v86 + 4) = *(&v94 + 4);
        }
      }

      else
      {
        *v87 = 0;
        *&v94 = 0;
        *&v86 = 0;
        *&v90[8] = 0;
        *&v88[8] = v5;
        v89 = 0;
        *&v90[16] = 0;
        v91 = v5;
        v92 = 0;
        *v93 = v9 != v10;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = v3;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = v3;
        DWORD2(v94) = 1;
        *(&v86 + 1) = 0x100000001;
      }
    }

    else
    {
      *v88 = 0;
      *&v88[4] = v3;
      *(&v94 + 4) = 0;
      *v87 = 0x100000000;
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = v5;
      v89 = 0;
      *&v90[16] = 0;
      v91 = v5;
      v92 = 0;
      *v93 = v9 != v10;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = v3;
      *&v90[4] = 1;
      HIDWORD(v94) = 1;
      *&v87[8] = 1;
    }
  }

  else
  {
    *&v90[4] = 0uLL;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    *&v88[8] = v5;
    v89 = 0;
    v92 = 0;
    *v93 = v9 != v10;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v91 = v5;
    v13 = 1;
    *&v93[12] = 1;
    *v90 = 1;
    *v88 = 0x100000000;
  }

LABEL_60:
  if (v15)
  {
    v38 = v13;
    v39 = v14;

    v14 = v39;
    v13 = v38;
  }

  if (v14)
  {
  }

  if (v92)
  {
  }

  if (*&v90[16])
  {
  }

  if (*&v90[12])
  {
  }

  if (v89)
  {
  }

  if (v94)
  {
  }

  if (*&v90[8])
  {
  }

  if (v86)
  {
  }

  if (DWORD1(v86))
  {
  }

  if (DWORD1(v94))
  {
  }

  if (*v87)
  {
  }

  if (DWORD2(v86))
  {
  }

  if (HIDWORD(v86))
  {
  }

  if (DWORD2(v94))
  {
  }

  if (*v88)
  {
  }

  if (*&v87[4])
  {
  }

  if (*&v87[8])
  {
  }

  if (HIDWORD(v94))
  {
  }

  if (*&v90[4])
  {
  }

  if (*&v88[4])
  {
  }

  if (*v90)
  {
  }

  if (*&v93[12])
  {
  }

  if (v13)
  {
  }

  if (*&v88[8])
  {
  }

  if (v91)
  {
  }

  if (*&v93[8])
  {
  }

  if (*&v93[4])
  {
  }

  if (*v93)
  {
  }

  if (*&v93[16])
  {
  }

  if (v9 != v10)
  {
  }

LABEL_123:
  return v16;
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v16 = [(DNDSModeRecord *)self symbolImageName];
  v15 = [(DNDSModeRecord *)self tintColorName];
  v14 = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  v3 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  v4 = [(DNDSModeRecord *)self symbolDescriptorImageName];
  v5 = [(DNDSModeRecord *)self name];
  v6 = [(DNDSModeRecord *)self modeIdentifier];
  v7 = [(DNDSModeRecord *)self semanticType];
  v8 = [(DNDSModeRecord *)self visibility];
  v9 = [(DNDSModeRecord *)self identifier];
  v10 = [v9 UUIDString];
  v11 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
  v12 = [v18 stringWithFormat:@"<%@: %p symbolImageName: %@; tintColorName: %@; symbolDescriptorTintStyle: %lu; symbolDescriptorTintColorNames: %@; symbolDescriptorImageName: %@; name: %@; modeIdentifier: %@; semanticType: %zd; visibility: %lu; identifier: %@; placeholderExcludedPlatforms; %@>", v17, self, v16, v15, v14, v3, v4, v5, v6, v7, v8, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableModeRecord alloc];

  return [(DNDSModeRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v22 = [v5 bs_safeObjectForKey:@"symbolImageName" ofType:objc_opt_class()];
  v21 = [v5 bs_safeObjectForKey:@"tintColorName" ofType:objc_opt_class()];
  v20 = [v5 bs_safeObjectForKey:@"symbolDescriptorTintStyle" ofType:objc_opt_class()];
  v6 = [v20 integerValue];
  v19 = [v5 bs_safeArrayForKey:@"symbolDescriptorTintColorNames"];
  v18 = [v5 bs_safeObjectForKey:@"symbolDescriptorImageName" ofType:objc_opt_class()];
  v17 = [v5 bs_safeObjectForKey:@"name" ofType:objc_opt_class()];
  v7 = [v5 bs_safeObjectForKey:@"modeIdentifier" ofType:objc_opt_class()];
  v16 = [v5 bs_safeObjectForKey:@"semanticType" ofType:objc_opt_class()];
  v8 = [v16 integerValue];
  v15 = [v5 bs_safeObjectForKey:@"visibility" ofType:objc_opt_class()];
  v9 = [v15 integerValue];
  v10 = [v5 bs_safeObjectForKey:@"identifier" ofType:objc_opt_class()];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 bs_safeArrayForKey:@"excludedPlatforms"];
  v14 = [[a1 alloc] _initWithSymbolImageName:v22 tintColorName:v21 symbolDescriptorTintStyle:v6 symbolDescriptorTintColorNames:v19 symbolDescriptorImageName:v18 name:v17 modeIdentifier:v7 semanticType:v8 visibility:v9 identifier:v11 placeholderExcludedPlatforms:v12];

  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [a3 healingSource];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  [v8 setObject:self->_name forKeyedSubscript:@"name"];
  [v8 setObject:self->_modeIdentifier forKeyedSubscript:@"modeIdentifier"];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_semanticType];
  [v8 setObject:v9 forKeyedSubscript:@"semanticType"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_visibility];
  [v8 setObject:v10 forKeyedSubscript:@"visibility"];

  v11 = [(NSUUID *)self->_identifier UUIDString];
  [v8 setObject:v11 forKeyedSubscript:@"identifier"];

  [v8 setObject:self->_tintColorName forKeyedSubscript:@"tintColorName"];
  [v8 setObject:self->_symbolImageName forKeyedSubscript:@"symbolImageName"];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symbolDescriptorTintStyle];
  [v8 setObject:v12 forKeyedSubscript:@"symbolDescriptorTintStyle"];

  v13 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  [v8 bs_setSafeObject:v13 forKey:@"symbolDescriptorTintColorNames"];

  [v8 setObject:self->_symbolDescriptorImageName forKeyedSubscript:@"symbolDescriptorImageName"];

  return v8;
}

@end