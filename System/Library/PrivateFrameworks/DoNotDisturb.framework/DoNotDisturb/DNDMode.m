@interface DNDMode
+ (id)defaultMode;
+ (id)defaultReduceInterruptionsMode;
+ (id)placeholderModeFromMode:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DNDMode)initWithCoder:(id)a3;
- (DNDMode)initWithName:(id)a3 modeIdentifier:(id)a4 symbolImageName:(id)a5 tintColorName:(id)a6 symbolDescriptor:(id)a7 semanticType:(int64_t)a8 visibility:(unint64_t)a9 identifier:(id)a10;
- (NSString)name;
- (NSString)symbolImageName;
- (NSString)tintColorName;
- (NSURL)settingsURL;
- (NSURL)setupURL;
- (id)_initWithMode:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDMode

+ (id)defaultMode
{
  v2 = DNDModeSemanticTypeToString(0);
  v3 = DNDSystemImageNameForModeSemanticType(0);
  v4 = [DNDMode alloc];
  v5 = +[DNDMode defaultTintColorName];
  v6 = [(DNDMode *)v4 initWithName:v2 modeIdentifier:@"com.apple.donotdisturb.mode.default" symbolImageName:v3 tintColorName:v5 semanticType:0];

  return v6;
}

+ (id)defaultReduceInterruptionsMode
{
  v2 = DNDModeSemanticTypeToString(9);
  v3 = DNDSystemImageNameForModeSemanticType(0);
  v4 = DNDSystemColorNameForModeSemanticType(0);
  v5 = DNDSystemImageNameForModeSemanticType(9);
  v6 = DNDSystemColorNamesForModeSemanticType(9);
  v7 = [[DNDMutableModeSymbolDescriptor alloc] initWithTintStyle:1 tintColorNames:v6 imageName:v5];
  v8 = [[DNDMode alloc] initWithName:v2 modeIdentifier:@"com.apple.focus.reduce-interruptions" symbolImageName:v3 tintColorName:v4 symbolDescriptor:v7 semanticType:9 visibility:0 identifier:0];

  return v8;
}

+ (id)placeholderModeFromMode:(id)a3
{
  v3 = a3;
  v4 = [DNDMode alloc];
  v5 = [v3 name];
  v6 = [v3 modeIdentifier];
  v7 = [v3 symbolImageName];
  v8 = [v3 tintColorName];
  v9 = [v3 symbolDescriptor];
  v10 = [v3 semanticType];
  v11 = [v3 identifier];

  v12 = [(DNDMode *)v4 initWithName:v5 modeIdentifier:v6 symbolImageName:v7 tintColorName:v8 symbolDescriptor:v9 semanticType:v10 visibility:1 identifier:v11];

  return v12;
}

- (DNDMode)initWithName:(id)a3 modeIdentifier:(id)a4 symbolImageName:(id)a5 tintColorName:(id)a6 symbolDescriptor:(id)a7 semanticType:(int64_t)a8 visibility:(unint64_t)a9 identifier:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = DNDMode;
  v22 = [(DNDMode *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    name = v22->_name;
    v22->_name = v23;

    v25 = [v17 copy];
    modeIdentifier = v22->_modeIdentifier;
    v22->_modeIdentifier = v25;

    v27 = [v18 copy];
    symbolImageName = v22->_symbolImageName;
    v22->_symbolImageName = v27;

    v29 = [v19 copy];
    tintColorName = v22->_tintColorName;
    v22->_tintColorName = v29;

    v31 = [v20 copy];
    symbolDescriptor = v22->_symbolDescriptor;
    v22->_symbolDescriptor = v31;

    v22->_semanticType = a8;
    v22->_visibility = a9;
    if (v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    identifier = v22->_identifier;
    v22->_identifier = v33;
  }

  return v22;
}

- (id)_initWithMode:(id)a3
{
  v4 = a3;
  v5 = [v4 _name];
  v6 = [v4 modeIdentifier];
  v7 = [v4 _symbolImageName];
  v8 = [v4 _tintColorName];
  v9 = [v4 symbolDescriptor];
  v10 = [v4 semanticType];
  v11 = [v4 visibility];
  v12 = [v4 identifier];

  v13 = [(DNDMode *)self initWithName:v5 modeIdentifier:v6 symbolImageName:v7 tintColorName:v8 symbolDescriptor:v9 semanticType:v10 visibility:v11 identifier:v12];
  return v13;
}

- (NSString)name
{
  v3 = DNDModeLocalizedNameKeyForSemanticType([(DNDMode *)self semanticType]);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] dnd_doNotDisturbLocalizationBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2833C9B78 table:0];
  }

  else
  {
    v5 = self->_name;
  }

  return v5;
}

- (NSString)symbolImageName
{
  symbolDescriptor = self->_symbolDescriptor;
  if (symbolDescriptor && ([(DNDModeSymbolDescriptor *)symbolDescriptor imageName], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(DNDModeSymbolDescriptor *)self->_symbolDescriptor imageName];
  }

  else if (DNDSupportedSemanticType(self->_semanticType))
  {
    v5 = self->_symbolImageName;
  }

  else
  {
    v5 = DNDSystemImageNameForModeSemanticType(self->_semanticType);
  }

  return v5;
}

- (NSString)tintColorName
{
  symbolDescriptor = self->_symbolDescriptor;
  if (symbolDescriptor && ([(DNDModeSymbolDescriptor *)symbolDescriptor primaryTintColorName], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(DNDModeSymbolDescriptor *)self->_symbolDescriptor primaryTintColorName];
  }

  else if (DNDSupportedSemanticType(self->_semanticType))
  {
    v5 = self->_tintColorName;
  }

  else
  {
    v5 = DNDSystemColorNameForModeSemanticType(self->_semanticType);
  }

  return v5;
}

- (NSURL)settingsURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(DNDMode *)self modeIdentifier];
  v4 = [v2 dnd_settingsURLWithModeIdentifier:v3];

  return v4;
}

- (NSURL)setupURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(DNDMode *)self semanticType];

  return [v2 dnd_setupURLWithSemanticType:v3];
}

- (unint64_t)hash
{
  v3 = [(DNDMode *)self _name];
  v4 = [v3 hash];
  v5 = [(DNDMode *)self modeIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDMode *)self _symbolImageName];
  v8 = [v7 hash];
  v9 = [(DNDMode *)self _tintColorName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDMode *)self symbolDescriptor];
  v12 = [v11 hash];
  v13 = v12 ^ [(DNDMode *)self semanticType];
  v14 = v10 ^ v13 ^ [(DNDMode *)self visibility];
  v15 = [(DNDMode *)self identifier];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDMode *)self _name];
      v8 = [(DNDMode *)v6 _name];
      if (v7 != v8)
      {
        v87 = [(DNDMode *)self _name];
        if (!v87)
        {
          v11 = 0;
          goto LABEL_65;
        }

        v85 = [(DNDMode *)v6 _name];
        if (!v85)
        {
          v11 = 0;
LABEL_64:

          goto LABEL_65;
        }

        v9 = [(DNDMode *)self _name];
        v10 = [(DNDMode *)v6 _name];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_63:

          goto LABEL_64;
        }

        v83 = v10;
        v84 = v9;
      }

      v12 = [(DNDMode *)self modeIdentifier];
      v86 = [(DNDMode *)v6 modeIdentifier];
      if (v12 != v86)
      {
        v13 = [(DNDMode *)self modeIdentifier];
        if (v13)
        {
          v14 = v13;
          v15 = [(DNDMode *)v6 modeIdentifier];
          if (v15)
          {
            v81 = v15;
            v16 = [(DNDMode *)self modeIdentifier];
            v17 = [(DNDMode *)v6 modeIdentifier];
            if ([v16 isEqual:v17])
            {
              v77 = v17;
              v79 = v16;
              v78 = v14;
              goto LABEL_16;
            }
          }
        }

LABEL_30:

LABEL_61:
        v11 = 0;
        goto LABEL_62;
      }

LABEL_16:
      v18 = [(DNDMode *)self _symbolImageName];
      v19 = [(DNDMode *)v6 _symbolImageName];
      v82 = v18;
      if (v18 == v19)
      {
        goto LABEL_23;
      }

      v20 = [(DNDMode *)self _symbolImageName];
      if (v20)
      {
        v21 = v20;
        v22 = [(DNDMode *)v6 _symbolImageName];
        if (v22)
        {
          v23 = v19;
          v24 = v21;
          v76 = v22;
          v25 = [(DNDMode *)self _symbolImageName];
          v3 = [(DNDMode *)v6 _symbolImageName];
          if ([v25 isEqual:v3])
          {
            v72 = v25;
            v73 = v24;
            v19 = v23;
LABEL_23:
            v26 = [(DNDMode *)self _tintColorName];
            v80 = [(DNDMode *)v6 _tintColorName];
            if (v26 == v80)
            {
              goto LABEL_31;
            }

            v27 = [(DNDMode *)self _tintColorName];
            if (v27)
            {
              v74 = v27;
              v28 = [(DNDMode *)v6 _tintColorName];
              if (v28)
              {
                v67 = v28;
                v68 = v3;
                v29 = [(DNDMode *)self _tintColorName];
                v30 = [(DNDMode *)v6 _tintColorName];
                if ([v29 isEqual:v30])
                {
                  v64 = v30;
                  v65 = v29;
                  v3 = v68;
LABEL_31:
                  v31 = [(DNDMode *)self symbolDescriptor];
                  v75 = [(DNDMode *)v6 symbolDescriptor];
                  if (v31 == v75)
                  {
                    v40 = v3;
                    v38 = v31;
                    v70 = v26;
                    v39 = v40;
                    goto LABEL_43;
                  }

                  v32 = [(DNDMode *)self symbolDescriptor];
                  if (v32)
                  {
                    v66 = v32;
                    v33 = [(DNDMode *)v6 symbolDescriptor];
                    if (v33)
                    {
                      v69 = v3;
                      v63 = v33;
                      v34 = [(DNDMode *)self symbolDescriptor];
                      v35 = [(DNDMode *)v6 symbolDescriptor];
                      v62 = v34;
                      v36 = v34;
                      v37 = v35;
                      if ([v36 isEqual:v35])
                      {
                        v61 = v37;
                        v38 = v31;
                        v70 = v26;
                        v39 = v69;
LABEL_43:
                        v41 = [(DNDMode *)self semanticType];
                        if (v41 == [(DNDMode *)v6 semanticType]&& (v42 = [(DNDMode *)self visibility], v42 == [(DNDMode *)v6 visibility]))
                        {
                          v43 = [(DNDMode *)self identifier];
                          v44 = [(DNDMode *)v6 identifier];
                          if (v43 != v44)
                          {
                            v59 = v44;
                            v60 = v43;
                            v45 = [(DNDMode *)self identifier];
                            v46 = v70;
                            if (v45)
                            {
                              v58 = v45;
                              v47 = [(DNDMode *)v6 identifier];
                              if (v47)
                              {
                                v57 = v47;
                                v56 = [(DNDMode *)self identifier];
                                v48 = [(DNDMode *)v6 identifier];
                                v11 = [v56 isEqual:v48];

                                v46 = v70;
                                v47 = v57;
                              }

                              else
                              {
                                v11 = 0;
                              }
                            }

                            else
                            {

                              v11 = 0;
                            }

                            v49 = v75;
                            if (v38 == v75)
                            {
                              goto LABEL_80;
                            }

                            goto LABEL_51;
                          }

                          v11 = 1;
                        }

                        else
                        {
                          v11 = 0;
                        }

                        v49 = v75;
                        v46 = v70;
                        if (v38 == v75)
                        {
LABEL_80:

                          goto LABEL_81;
                        }

LABEL_51:
                        v71 = v46;
                        v50 = v39;
                        v51 = v49;

                        v39 = v50;
                        v46 = v71;
LABEL_81:

                        if (v46 != v80)
                        {
                        }

                        if (v82 != v19)
                        {
                        }

                        if (v12 != v86)
                        {
                        }

LABEL_62:
                        v10 = v83;
                        v9 = v84;
                        if (v7 != v8)
                        {
                          goto LABEL_63;
                        }

LABEL_65:

                        goto LABEL_66;
                      }

                      v33 = v63;
                      v3 = v69;
                    }
                  }

                  if (v26 != v80)
                  {
                  }

                  v54 = v79;
                  if (v82 != v19)
                  {
                  }

                  v53 = v86;
                  if (v12 == v86)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_59;
                }

                v52 = v82;
                if (v82 == v19)
                {
LABEL_58:

                  v53 = v86;
                  v54 = v79;
                  if (v12 == v86)
                  {
LABEL_60:

                    goto LABEL_61;
                  }

LABEL_59:

                  goto LABEL_60;
                }

LABEL_57:
                goto LABEL_58;
              }
            }

            v52 = v82;
            if (v82 == v19)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          goto LABEL_39;
        }
      }

LABEL_39:
      if (v12 != v86)
      {
      }

      goto LABEL_30;
    }

    v11 = 0;
  }

LABEL_66:

  return v11;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v3 = [(DNDMode *)self _name];
  v4 = [(DNDMode *)self modeIdentifier];
  v5 = [(DNDMode *)self _symbolImageName];
  v6 = [(DNDMode *)self _tintColorName];
  v7 = [(DNDMode *)self symbolDescriptor];
  v8 = [(DNDMode *)self semanticType];
  v9 = [(DNDMode *)self visibility];
  v10 = [(DNDMode *)self identifier];
  v11 = [v10 UUIDString];
  v12 = [(DNDMode *)self isPlaceholder];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p name: %@; modeIdentifier: %@; symbolImageName: %@; tintColorName: %@; symbolDescriptor: %@; semanticType: %zd; visibility: %lu; identifier: %@; isPlaceHolder: %@>", v16, self, v3, v4, v5, v6, v7, v8, v9, v11, v13];;

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableMode alloc];

  return [(DNDMode *)v4 _initWithMode:self];
}

- (DNDMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColorName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolDescriptor"];
  if ([v4 containsValueForKey:@"semanticType"])
  {
    v10 = [v4 decodeIntegerForKey:@"semanticType"];
  }

  else
  {
    v10 = 0;
  }

  if ([v4 containsValueForKey:@"visibility"])
  {
    v11 = [v4 decodeIntegerForKey:@"visibility"];
  }

  else
  {
    v11 = 0;
  }

  if ([v4 containsValueForKey:@"identifier"])
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DNDMode *)self initWithName:v5 modeIdentifier:v6 symbolImageName:v7 tintColorName:v8 symbolDescriptor:v9 semanticType:v10 visibility:v11 identifier:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDMode *)self _name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(DNDMode *)self modeIdentifier];
  [v4 encodeObject:v6 forKey:@"modeIdentifier"];

  v7 = [(DNDMode *)self _symbolImageName];
  [v4 encodeObject:v7 forKey:@"symbolImageName"];

  v8 = [(DNDMode *)self _tintColorName];
  [v4 encodeObject:v8 forKey:@"tintColorName"];

  v9 = [(DNDMode *)self symbolDescriptor];
  [v4 encodeObject:v9 forKey:@"symbolDescriptor"];

  [v4 encodeInteger:-[DNDMode semanticType](self forKey:{"semanticType"), @"semanticType"}];
  [v4 encodeInteger:-[DNDMode visibility](self forKey:{"visibility"), @"visibility"}];
  v10 = [(DNDMode *)self identifier];
  [v4 encodeObject:v10 forKey:@"identifier"];
}

@end