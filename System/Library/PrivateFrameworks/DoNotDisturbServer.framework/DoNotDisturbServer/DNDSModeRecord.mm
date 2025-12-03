@interface DNDSModeRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithRecord:(id)record;
- (id)_initWithSymbolImageName:(id)name tintColorName:(id)colorName symbolDescriptorTintStyle:(unint64_t)style symbolDescriptorTintColorNames:(id)names symbolDescriptorImageName:(id)imageName name:(id)a8 modeIdentifier:(id)identifier semanticType:(int64_t)self0 visibility:(unint64_t)self1 identifier:(id)self2 placeholderExcludedPlatforms:(id)self3;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSModeRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  symbolImageName = [recordCopy symbolImageName];
  tintColorName = [recordCopy tintColorName];
  symbolDescriptorTintStyle = [recordCopy symbolDescriptorTintStyle];
  symbolDescriptorTintColorNames = [recordCopy symbolDescriptorTintColorNames];
  symbolDescriptorImageName = [recordCopy symbolDescriptorImageName];
  name = [recordCopy name];
  modeIdentifier = [recordCopy modeIdentifier];
  semanticType = [recordCopy semanticType];
  visibility = [recordCopy visibility];
  identifier = [recordCopy identifier];
  placeholderExcludedPlatforms = [recordCopy placeholderExcludedPlatforms];

  v13 = [(DNDSModeRecord *)self _initWithSymbolImageName:symbolImageName tintColorName:tintColorName symbolDescriptorTintStyle:symbolDescriptorTintStyle symbolDescriptorTintColorNames:symbolDescriptorTintColorNames symbolDescriptorImageName:symbolDescriptorImageName name:name modeIdentifier:modeIdentifier semanticType:semanticType visibility:visibility identifier:identifier placeholderExcludedPlatforms:placeholderExcludedPlatforms];
  return v13;
}

- (id)_initWithSymbolImageName:(id)name tintColorName:(id)colorName symbolDescriptorTintStyle:(unint64_t)style symbolDescriptorTintColorNames:(id)names symbolDescriptorImageName:(id)imageName name:(id)a8 modeIdentifier:(id)identifier semanticType:(int64_t)self0 visibility:(unint64_t)self1 identifier:(id)self2 placeholderExcludedPlatforms:(id)self3
{
  nameCopy = name;
  colorNameCopy = colorName;
  namesCopy = names;
  imageNameCopy = imageName;
  v22 = a8;
  identifierCopy = identifier;
  v24 = a12;
  platformsCopy = platforms;
  v45.receiver = self;
  v45.super_class = DNDSModeRecord;
  v26 = [(DNDSModeRecord *)&v45 init];
  if (v26)
  {
    v27 = [nameCopy copy];
    symbolImageName = v26->_symbolImageName;
    v26->_symbolImageName = v27;

    v29 = [colorNameCopy copy];
    tintColorName = v26->_tintColorName;
    v26->_tintColorName = v29;

    v26->_symbolDescriptorTintStyle = style;
    v31 = [namesCopy copy];
    symbolDescriptorTintColorNames = v26->_symbolDescriptorTintColorNames;
    v26->_symbolDescriptorTintColorNames = v31;

    v33 = [imageNameCopy copy];
    symbolDescriptorImageName = v26->_symbolDescriptorImageName;
    v26->_symbolDescriptorImageName = v33;

    v35 = [v22 copy];
    name = v26->_name;
    v26->_name = v35;

    v37 = [identifierCopy copy];
    modeIdentifier = v26->_modeIdentifier;
    v26->_modeIdentifier = v37;

    v26->_semanticType = type;
    v26->_visibility = visibility;
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

    v41 = [platformsCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v8 = equalCopy;
  symbolImageName = [(DNDSModeRecord *)self symbolImageName];
  symbolImageName2 = [(DNDSModeRecord *)v8 symbolImageName];
  if (symbolImageName != symbolImageName2)
  {
    symbolImageName3 = [(DNDSModeRecord *)self symbolImageName];
    if (!symbolImageName3)
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

    v85 = symbolImageName3;
    symbolImageName4 = [(DNDSModeRecord *)v8 symbolImageName];
    if (!symbolImageName4)
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

    v82 = symbolImageName4;
    symbolImageName5 = [(DNDSModeRecord *)self symbolImageName];
    symbolImageName6 = [(DNDSModeRecord *)v8 symbolImageName];
    v80 = symbolImageName5;
    if (![symbolImageName5 isEqual:?])
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

  symbolImageName5 = [(DNDSModeRecord *)self tintColorName];
  tintColorName = [(DNDSModeRecord *)v8 tintColorName];
  v84 = symbolImageName5;
  placeholderExcludedPlatforms4 = symbolImageName5 != tintColorName;
  *&v93[16] = symbolImageName != symbolImageName2;
  if (symbolImageName5 != tintColorName)
  {
    tintColorName2 = [(DNDSModeRecord *)self tintColorName];
    if (!tintColorName2)
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
      *v93 = symbolImageName != symbolImageName2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 0;
      *&v93[8] = 1;
      goto LABEL_60;
    }

    v81 = tintColorName2;
    tintColorName3 = [(DNDSModeRecord *)v8 tintColorName];
    if (!tintColorName3)
    {
      v78 = 0;
      memset(v90, 0, sizeof(v90));
      v94 = 0uLL;
      memset(v88, 0, sizeof(v88));
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v89 = 0;
      v92 = 0;
      *v93 = symbolImageName != symbolImageName2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 0;
      *&v93[8] = 1;
      v91 = 1;
      goto LABEL_60;
    }

    v78 = tintColorName3;
    symbolImageName5 = [(DNDSModeRecord *)self tintColorName];
    tintColorName4 = [(DNDSModeRecord *)v8 tintColorName];
    v75 = symbolImageName5;
    if (![symbolImageName5 isEqual:?])
    {
      memset(v90, 0, sizeof(v90));
      *v88 = 0;
      v94 = 0uLL;
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      v92 = 0;
      *v93 = symbolImageName != symbolImageName2;
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

  symbolImageName5 = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  *&v93[8] = placeholderExcludedPlatforms4;
  if (symbolImageName5 != [(DNDSModeRecord *)v8 symbolDescriptorTintStyle])
  {
    *&v93[12] = 0;
    memset(v90, 0, sizeof(v90));
    *v88 = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    v91 = placeholderExcludedPlatforms4;
    v92 = 0;
    *v93 = symbolImageName != symbolImageName2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v13 = 0;
    v19 = placeholderExcludedPlatforms4;
    goto LABEL_24;
  }

  symbolDescriptorTintColorNames = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  symbolDescriptorTintColorNames2 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  v22 = symbolDescriptorTintColorNames;
  v23 = symbolDescriptorTintColorNames == symbolDescriptorTintColorNames2;
  symbolImageName5 = symbolDescriptorTintColorNames != symbolDescriptorTintColorNames2;
  v76 = symbolDescriptorTintColorNames2;
  v77 = v22;
  if (v23)
  {
    goto LABEL_27;
  }

  symbolDescriptorTintColorNames3 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  if (!symbolDescriptorTintColorNames3)
  {
    v73 = 0;
    memset(v90, 0, sizeof(v90));
    *v88 = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    *&v88[8] = placeholderExcludedPlatforms4;
    v89 = 0;
    v91 = placeholderExcludedPlatforms4;
    v92 = 0;
    *v93 = symbolImageName != symbolImageName2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v13 = 1;
    *&v93[12] = 1;
    goto LABEL_60;
  }

  v73 = symbolDescriptorTintColorNames3;
  symbolDescriptorTintColorNames4 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  if (!symbolDescriptorTintColorNames4)
  {
    v70 = 0;
    *v88 = 0;
    *&v90[4] = 0;
    v94 = 0uLL;
    memset(v87, 0, sizeof(v87));
    v86 = 0uLL;
    *&v88[8] = placeholderExcludedPlatforms4;
    v89 = 0;
    *&v90[12] = 0;
    v92 = 0;
    *v93 = symbolImageName != symbolImageName2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v91 = placeholderExcludedPlatforms4;
    v13 = 1;
    *&v93[12] = 1;
    *v90 = 1;
    goto LABEL_60;
  }

  v70 = symbolDescriptorTintColorNames4;
  symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  symbolDescriptorTintColorNames6 = [(DNDSModeRecord *)v8 symbolDescriptorTintColorNames];
  v66 = symbolDescriptorTintColorNames5;
  if ([symbolDescriptorTintColorNames5 isEqual:?])
  {
LABEL_27:
    symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    symbolDescriptorImageName = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    HIDWORD(v94) = symbolDescriptorTintColorNames5 != symbolDescriptorImageName;
    *&v93[12] = symbolImageName5;
    v72 = symbolDescriptorTintColorNames5;
    if (symbolDescriptorTintColorNames5 == symbolDescriptorImageName)
    {
      goto LABEL_33;
    }

    symbolDescriptorImageName2 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    if (!symbolDescriptorImageName2)
    {
      v69 = 0;
      *v88 = 0;
      *&v88[4] = symbolImageName5;
      *(&v94 + 4) = 0;
      memset(v87, 0, sizeof(v87));
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = placeholderExcludedPlatforms4;
      v89 = 0;
      *&v90[16] = 0;
      v91 = placeholderExcludedPlatforms4;
      v92 = 0;
      *v93 = symbolImageName != symbolImageName2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = symbolImageName5;
      *&v90[4] = 1;
      HIDWORD(v94) = 1;
      goto LABEL_60;
    }

    v69 = symbolDescriptorImageName2;
    symbolDescriptorImageName3 = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    if (!symbolDescriptorImageName3)
    {
      v64 = 0;
      *v87 = 0;
      *v88 = 0;
      *&v88[4] = symbolImageName5;
      *(&v94 + 4) = 0;
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = placeholderExcludedPlatforms4;
      v89 = 0;
      *&v90[16] = 0;
      v91 = placeholderExcludedPlatforms4;
      v92 = 0;
      *v93 = symbolImageName != symbolImageName2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = symbolImageName5;
      *&v90[4] = 1;
      HIDWORD(v94) = 1;
      *&v87[8] = 1;
      goto LABEL_60;
    }

    v64 = symbolDescriptorImageName3;
    symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self symbolDescriptorImageName];
    symbolDescriptorImageName4 = [(DNDSModeRecord *)v8 symbolDescriptorImageName];
    v60 = symbolDescriptorTintColorNames5;
    if ([symbolDescriptorTintColorNames5 isEqual:?])
    {
LABEL_33:
      symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self name];
      name = [(DNDSModeRecord *)v8 name];
      DWORD2(v94) = symbolDescriptorTintColorNames5 != name;
      v68 = symbolDescriptorTintColorNames5;
      if (symbolDescriptorTintColorNames5 == name)
      {
        goto LABEL_40;
      }

      name2 = [(DNDSModeRecord *)self name];
      if (!name2)
      {
        v63 = 0;
        *v87 = 0;
        *&v94 = 0;
        v86 = 0uLL;
        *&v90[8] = 0;
        *&v88[8] = placeholderExcludedPlatforms4;
        v89 = 0;
        *&v90[16] = 0;
        v91 = placeholderExcludedPlatforms4;
        v92 = 0;
        *v93 = symbolImageName != symbolImageName2;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = symbolImageName5;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = symbolImageName5;
        DWORD2(v94) = 1;
        goto LABEL_60;
      }

      v63 = name2;
      name3 = [(DNDSModeRecord *)v8 name];
      if (!name3)
      {
        v58 = 0;
        *(&v86 + 4) = 0;
        *v87 = 0;
        *&v94 = 0;
        LODWORD(v86) = 0;
        *&v90[8] = 0;
        *&v88[8] = placeholderExcludedPlatforms4;
        v89 = 0;
        *&v90[16] = 0;
        v91 = placeholderExcludedPlatforms4;
        v92 = 0;
        *v93 = symbolImageName != symbolImageName2;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = symbolImageName5;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = symbolImageName5;
        DWORD2(v94) = 1;
        HIDWORD(v86) = 1;
        goto LABEL_60;
      }

      v58 = name3;
      symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self name];
      name4 = [(DNDSModeRecord *)v8 name];
      v56 = symbolDescriptorTintColorNames5;
      if ([symbolDescriptorTintColorNames5 isEqual:?])
      {
LABEL_40:
        symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self modeIdentifier];
        modeIdentifier = [(DNDSModeRecord *)v8 modeIdentifier];
        DWORD1(v94) = symbolDescriptorTintColorNames5 != modeIdentifier;
        v62 = symbolDescriptorTintColorNames5;
        if (symbolDescriptorTintColorNames5 == modeIdentifier)
        {
          symbolDescriptorTintColorNames5 = symbolImageName5;
        }

        else
        {
          modeIdentifier2 = [(DNDSModeRecord *)self modeIdentifier];
          if (!modeIdentifier2)
          {
            v57 = 0;
            *&v86 = 0;
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = placeholderExcludedPlatforms4;
            v89 = 0;
            *&v90[16] = 0;
            v91 = placeholderExcludedPlatforms4;
            v92 = 0;
            *v93 = symbolImageName != symbolImageName2;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = symbolImageName5;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = symbolImageName5;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            goto LABEL_60;
          }

          v57 = modeIdentifier2;
          modeIdentifier3 = [(DNDSModeRecord *)v8 modeIdentifier];
          if (!modeIdentifier3)
          {
            v54 = 0;
            *&v86 = 0x100000000;
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = placeholderExcludedPlatforms4;
            v89 = 0;
            *&v90[16] = 0;
            v91 = placeholderExcludedPlatforms4;
            v92 = 0;
            *v93 = symbolImageName != symbolImageName2;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = symbolImageName5;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = symbolImageName5;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            goto LABEL_60;
          }

          v54 = modeIdentifier3;
          symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)self modeIdentifier];
          modeIdentifier4 = [(DNDSModeRecord *)v8 modeIdentifier];
          v53 = symbolDescriptorTintColorNames5;
          if (![symbolDescriptorTintColorNames5 isEqual:?])
          {
            *&v90[8] = 0;
            *&v94 = 0x100000000;
            *&v88[8] = placeholderExcludedPlatforms4;
            v89 = 0;
            *&v90[16] = 0;
            v91 = placeholderExcludedPlatforms4;
            v92 = 0;
            *v93 = symbolImageName != symbolImageName2;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v13 = 1;
            *v90 = symbolImageName5;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = symbolImageName5;
            DWORD2(v86) = DWORD2(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            *&v86 = 0x100000001;
            goto LABEL_60;
          }

          symbolDescriptorTintColorNames5 = symbolImageName5;
        }

        symbolImageName5 = [(DNDSModeRecord *)self semanticType];
        if (symbolImageName5 == [(DNDSModeRecord *)v8 semanticType]&& (symbolImageName5 = [(DNDSModeRecord *)self visibility], symbolImageName5 == [(DNDSModeRecord *)v8 visibility]))
        {
          identifier = [(DNDSModeRecord *)self identifier];
          identifier2 = [(DNDSModeRecord *)v8 identifier];
          v34 = identifier;
          v50 = identifier2;
          v23 = identifier == identifier2;
          LODWORD(v94) = identifier != identifier2;
          symbolImageName5 = symbolDescriptorTintColorNames5;
          v51 = v34;
          if (v23)
          {
            goto LABEL_124;
          }

          identifier3 = [(DNDSModeRecord *)self identifier];
          if (!identifier3)
          {
            v49 = 0;
            *&v88[8] = placeholderExcludedPlatforms4;
            v89 = 0;
            *&v90[12] = 0;
            v92 = 0;
            *v93 = symbolImageName != symbolImageName2;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v91 = placeholderExcludedPlatforms4;
            v13 = 1;
            *v90 = symbolDescriptorTintColorNames5;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            *&v88[4] = symbolDescriptorTintColorNames5;
            symbolDescriptorTintColorNames5 = DWORD1(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            LODWORD(v86) = DWORD1(v94);
            *(&v86 + 4) = *(&v94 + 4);
            *&v90[8] = 1;
            LODWORD(v94) = 1;
            goto LABEL_60;
          }

          v36 = identifier3;
          identifier4 = [(DNDSModeRecord *)v8 identifier];
          v49 = v36;
          if (!identifier4)
          {
            identifier4 = 0;
            *&v90[12] = 0;
            v92 = 0;
            *v93 = symbolImageName != symbolImageName2;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&v93[4] = 1;
            v91 = placeholderExcludedPlatforms4;
            *&v88[4] = symbolImageName5;
            *&v88[8] = placeholderExcludedPlatforms4;
            v13 = 1;
            *v90 = symbolImageName5;
            *&v90[4] = 1;
            *&v87[4] = HIDWORD(v94);
            *&v87[8] = HIDWORD(v94);
            *v88 = 1;
            symbolDescriptorTintColorNames5 = DWORD1(v94);
            HIDWORD(v86) = DWORD2(v94);
            *v87 = 1;
            LODWORD(v86) = DWORD1(v94);
            *(&v86 + 4) = *(&v94 + 4);
            *&v90[8] = 1;
            LODWORD(v94) = 1;
            v89 = 1;
            goto LABEL_60;
          }

          identifier5 = [(DNDSModeRecord *)self identifier];
          identifier6 = [(DNDSModeRecord *)v8 identifier];
          v44 = identifier5;
          if ([identifier5 isEqual:?])
          {
LABEL_124:
            placeholderExcludedPlatforms = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
            placeholderExcludedPlatforms2 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
            v47 = placeholderExcludedPlatforms;
            if (placeholderExcludedPlatforms == placeholderExcludedPlatforms2)
            {
              v92 = 0;
              *v93 = symbolImageName != symbolImageName2;
              v14 = 0;
              v15 = 0;
              *&v93[4] = 1;
              v91 = placeholderExcludedPlatforms4;
              *&v88[4] = symbolImageName5;
              *&v88[8] = placeholderExcludedPlatforms4;
              v13 = 1;
              *v90 = symbolImageName5;
              *&v90[4] = 1;
              *&v87[4] = HIDWORD(v94);
              *&v87[8] = HIDWORD(v94);
              *v88 = 1;
              symbolDescriptorTintColorNames5 = DWORD1(v94);
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
              placeholderExcludedPlatforms3 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
              if (placeholderExcludedPlatforms3)
              {
                v45 = placeholderExcludedPlatforms3;
                symbolDescriptorTintColorNames5 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
                if (symbolDescriptorTintColorNames5)
                {
                  symbolImageName5 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
                  placeholderExcludedPlatforms4 = [(DNDSModeRecord *)v8 placeholderExcludedPlatforms];
                  v16 = [symbolImageName5 isEqual:placeholderExcludedPlatforms4];
                  *v93 = symbolImageName != symbolImageName2;
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
                  *v93 = symbolImageName != symbolImageName2;
                  *&v93[4] = 1;
                  v91 = placeholderExcludedPlatforms4;
                  *&v88[4] = *&v93[12];
                  *&v88[8] = placeholderExcludedPlatforms4;
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
                *v93 = symbolImageName != symbolImageName2;
                *&v93[4] = 1;
                v91 = placeholderExcludedPlatforms4;
                *&v88[4] = symbolImageName5;
                *&v88[8] = placeholderExcludedPlatforms4;
                v13 = 1;
                *v90 = symbolImageName5;
                *&v90[4] = 1;
                *&v87[4] = HIDWORD(v94);
                *&v87[8] = HIDWORD(v94);
                *v88 = 1;
                symbolDescriptorTintColorNames5 = DWORD1(v94);
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
          v91 = placeholderExcludedPlatforms4;
          v92 = 0;
          *v93 = symbolImageName != symbolImageName2;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *&v93[4] = 1;
          *&v88[4] = symbolImageName5;
          *&v88[8] = placeholderExcludedPlatforms4;
          v13 = 1;
          *v90 = symbolImageName5;
          *&v90[4] = 1;
          *&v87[4] = HIDWORD(v94);
          *&v87[8] = HIDWORD(v94);
          *v88 = 1;
          symbolDescriptorTintColorNames5 = DWORD1(v94);
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
          *&v88[8] = placeholderExcludedPlatforms4;
          v89 = 0;
          *&v90[16] = 0;
          v91 = placeholderExcludedPlatforms4;
          v92 = 0;
          *v93 = symbolImageName != symbolImageName2;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *&v93[4] = 1;
          v13 = 1;
          *v90 = symbolDescriptorTintColorNames5;
          *&v90[4] = 1;
          *&v87[4] = HIDWORD(v94);
          *&v87[8] = HIDWORD(v94);
          *v88 = 1;
          *&v88[4] = symbolDescriptorTintColorNames5;
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
        *&v88[8] = placeholderExcludedPlatforms4;
        v89 = 0;
        *&v90[16] = 0;
        v91 = placeholderExcludedPlatforms4;
        v92 = 0;
        *v93 = symbolImageName != symbolImageName2;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&v93[4] = 1;
        v13 = 1;
        *v90 = symbolImageName5;
        *&v90[4] = 1;
        *&v87[4] = HIDWORD(v94);
        *&v87[8] = HIDWORD(v94);
        *v88 = 1;
        *&v88[4] = symbolImageName5;
        DWORD2(v94) = 1;
        *(&v86 + 1) = 0x100000001;
      }
    }

    else
    {
      *v88 = 0;
      *&v88[4] = symbolImageName5;
      *(&v94 + 4) = 0;
      *v87 = 0x100000000;
      v86 = 0uLL;
      *&v90[8] = 0;
      LODWORD(v94) = 0;
      *&v88[8] = placeholderExcludedPlatforms4;
      v89 = 0;
      *&v90[16] = 0;
      v91 = placeholderExcludedPlatforms4;
      v92 = 0;
      *v93 = symbolImageName != symbolImageName2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *&v93[4] = 1;
      v13 = 1;
      *v90 = symbolImageName5;
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
    *&v88[8] = placeholderExcludedPlatforms4;
    v89 = 0;
    v92 = 0;
    *v93 = symbolImageName != symbolImageName2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v93[4] = 1;
    v91 = placeholderExcludedPlatforms4;
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

  if (symbolImageName != symbolImageName2)
  {
  }

LABEL_123:
  return v16;
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  symbolImageName = [(DNDSModeRecord *)self symbolImageName];
  tintColorName = [(DNDSModeRecord *)self tintColorName];
  symbolDescriptorTintStyle = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  symbolDescriptorTintColorNames = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  symbolDescriptorImageName = [(DNDSModeRecord *)self symbolDescriptorImageName];
  name = [(DNDSModeRecord *)self name];
  modeIdentifier = [(DNDSModeRecord *)self modeIdentifier];
  semanticType = [(DNDSModeRecord *)self semanticType];
  visibility = [(DNDSModeRecord *)self visibility];
  identifier = [(DNDSModeRecord *)self identifier];
  uUIDString = [identifier UUIDString];
  placeholderExcludedPlatforms = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
  v12 = [v18 stringWithFormat:@"<%@: %p symbolImageName: %@; tintColorName: %@; symbolDescriptorTintStyle: %lu; symbolDescriptorTintColorNames: %@; symbolDescriptorImageName: %@; name: %@; modeIdentifier: %@; semanticType: %zd; visibility: %lu; identifier: %@; placeholderExcludedPlatforms; %@>", v17, self, symbolImageName, tintColorName, symbolDescriptorTintStyle, symbolDescriptorTintColorNames, symbolDescriptorImageName, name, modeIdentifier, semanticType, visibility, uUIDString, placeholderExcludedPlatforms];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableModeRecord alloc];

  return [(DNDSModeRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v22 = [representationCopy bs_safeObjectForKey:@"symbolImageName" ofType:objc_opt_class()];
  v21 = [representationCopy bs_safeObjectForKey:@"tintColorName" ofType:objc_opt_class()];
  v20 = [representationCopy bs_safeObjectForKey:@"symbolDescriptorTintStyle" ofType:objc_opt_class()];
  integerValue = [v20 integerValue];
  v19 = [representationCopy bs_safeArrayForKey:@"symbolDescriptorTintColorNames"];
  v18 = [representationCopy bs_safeObjectForKey:@"symbolDescriptorImageName" ofType:objc_opt_class()];
  v17 = [representationCopy bs_safeObjectForKey:@"name" ofType:objc_opt_class()];
  v7 = [representationCopy bs_safeObjectForKey:@"modeIdentifier" ofType:objc_opt_class()];
  v16 = [representationCopy bs_safeObjectForKey:@"semanticType" ofType:objc_opt_class()];
  integerValue2 = [v16 integerValue];
  v15 = [representationCopy bs_safeObjectForKey:@"visibility" ofType:objc_opt_class()];
  integerValue3 = [v15 integerValue];
  v10 = [representationCopy bs_safeObjectForKey:@"identifier" ofType:objc_opt_class()];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [representationCopy bs_safeArrayForKey:@"excludedPlatforms"];
  v14 = [[self alloc] _initWithSymbolImageName:v22 tintColorName:v21 symbolDescriptorTintStyle:integerValue symbolDescriptorTintColorNames:v19 symbolDescriptorImageName:v18 name:v17 modeIdentifier:v7 semanticType:integerValue2 visibility:integerValue3 identifier:v11 placeholderExcludedPlatforms:v12];

  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  healingSource = [context healingSource];
  v5 = [healingSource mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

  [v8 setObject:self->_name forKeyedSubscript:@"name"];
  [v8 setObject:self->_modeIdentifier forKeyedSubscript:@"modeIdentifier"];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_semanticType];
  [v8 setObject:v9 forKeyedSubscript:@"semanticType"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_visibility];
  [v8 setObject:v10 forKeyedSubscript:@"visibility"];

  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  [v8 setObject:uUIDString forKeyedSubscript:@"identifier"];

  [v8 setObject:self->_tintColorName forKeyedSubscript:@"tintColorName"];
  [v8 setObject:self->_symbolImageName forKeyedSubscript:@"symbolImageName"];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symbolDescriptorTintStyle];
  [v8 setObject:v12 forKeyedSubscript:@"symbolDescriptorTintStyle"];

  symbolDescriptorTintColorNames = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  [v8 bs_setSafeObject:symbolDescriptorTintColorNames forKey:@"symbolDescriptorTintColorNames"];

  [v8 setObject:self->_symbolDescriptorImageName forKeyedSubscript:@"symbolDescriptorImageName"];

  return v8;
}

@end