@interface DNDMode
+ (id)defaultMode;
+ (id)defaultReduceInterruptionsMode;
+ (id)placeholderModeFromMode:(id)mode;
- (BOOL)isEqual:(id)equal;
- (DNDMode)initWithCoder:(id)coder;
- (DNDMode)initWithName:(id)name modeIdentifier:(id)identifier symbolImageName:(id)imageName tintColorName:(id)colorName symbolDescriptor:(id)descriptor semanticType:(int64_t)type visibility:(unint64_t)visibility identifier:(id)self0;
- (NSString)name;
- (NSString)symbolImageName;
- (NSString)tintColorName;
- (NSURL)settingsURL;
- (NSURL)setupURL;
- (id)_initWithMode:(id)mode;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)placeholderModeFromMode:(id)mode
{
  modeCopy = mode;
  v4 = [DNDMode alloc];
  name = [modeCopy name];
  modeIdentifier = [modeCopy modeIdentifier];
  symbolImageName = [modeCopy symbolImageName];
  tintColorName = [modeCopy tintColorName];
  symbolDescriptor = [modeCopy symbolDescriptor];
  semanticType = [modeCopy semanticType];
  identifier = [modeCopy identifier];

  v12 = [(DNDMode *)v4 initWithName:name modeIdentifier:modeIdentifier symbolImageName:symbolImageName tintColorName:tintColorName symbolDescriptor:symbolDescriptor semanticType:semanticType visibility:1 identifier:identifier];

  return v12;
}

- (DNDMode)initWithName:(id)name modeIdentifier:(id)identifier symbolImageName:(id)imageName tintColorName:(id)colorName symbolDescriptor:(id)descriptor semanticType:(int64_t)type visibility:(unint64_t)visibility identifier:(id)self0
{
  nameCopy = name;
  identifierCopy = identifier;
  imageNameCopy = imageName;
  colorNameCopy = colorName;
  descriptorCopy = descriptor;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = DNDMode;
  v22 = [(DNDMode *)&v36 init];
  if (v22)
  {
    v23 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v23;

    v25 = [identifierCopy copy];
    modeIdentifier = v22->_modeIdentifier;
    v22->_modeIdentifier = v25;

    v27 = [imageNameCopy copy];
    symbolImageName = v22->_symbolImageName;
    v22->_symbolImageName = v27;

    v29 = [colorNameCopy copy];
    tintColorName = v22->_tintColorName;
    v22->_tintColorName = v29;

    v31 = [descriptorCopy copy];
    symbolDescriptor = v22->_symbolDescriptor;
    v22->_symbolDescriptor = v31;

    v22->_semanticType = type;
    v22->_visibility = visibility;
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

- (id)_initWithMode:(id)mode
{
  modeCopy = mode;
  _name = [modeCopy _name];
  modeIdentifier = [modeCopy modeIdentifier];
  _symbolImageName = [modeCopy _symbolImageName];
  _tintColorName = [modeCopy _tintColorName];
  symbolDescriptor = [modeCopy symbolDescriptor];
  semanticType = [modeCopy semanticType];
  visibility = [modeCopy visibility];
  identifier = [modeCopy identifier];

  v13 = [(DNDMode *)self initWithName:_name modeIdentifier:modeIdentifier symbolImageName:_symbolImageName tintColorName:_tintColorName symbolDescriptor:symbolDescriptor semanticType:semanticType visibility:visibility identifier:identifier];
  return v13;
}

- (NSString)name
{
  v3 = DNDModeLocalizedNameKeyForSemanticType([(DNDMode *)self semanticType]);
  if (v3)
  {
    dnd_doNotDisturbLocalizationBundle = [MEMORY[0x277CCA8D8] dnd_doNotDisturbLocalizationBundle];
    v5 = [dnd_doNotDisturbLocalizationBundle localizedStringForKey:v3 value:&stru_2833C9B78 table:0];
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
    imageName = [(DNDModeSymbolDescriptor *)self->_symbolDescriptor imageName];
  }

  else if (DNDSupportedSemanticType(self->_semanticType))
  {
    imageName = self->_symbolImageName;
  }

  else
  {
    imageName = DNDSystemImageNameForModeSemanticType(self->_semanticType);
  }

  return imageName;
}

- (NSString)tintColorName
{
  symbolDescriptor = self->_symbolDescriptor;
  if (symbolDescriptor && ([(DNDModeSymbolDescriptor *)symbolDescriptor primaryTintColorName], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    primaryTintColorName = [(DNDModeSymbolDescriptor *)self->_symbolDescriptor primaryTintColorName];
  }

  else if (DNDSupportedSemanticType(self->_semanticType))
  {
    primaryTintColorName = self->_tintColorName;
  }

  else
  {
    primaryTintColorName = DNDSystemColorNameForModeSemanticType(self->_semanticType);
  }

  return primaryTintColorName;
}

- (NSURL)settingsURL
{
  v2 = MEMORY[0x277CBEBC0];
  modeIdentifier = [(DNDMode *)self modeIdentifier];
  v4 = [v2 dnd_settingsURLWithModeIdentifier:modeIdentifier];

  return v4;
}

- (NSURL)setupURL
{
  v2 = MEMORY[0x277CBEBC0];
  semanticType = [(DNDMode *)self semanticType];

  return [v2 dnd_setupURLWithSemanticType:semanticType];
}

- (unint64_t)hash
{
  _name = [(DNDMode *)self _name];
  v4 = [_name hash];
  modeIdentifier = [(DNDMode *)self modeIdentifier];
  v6 = [modeIdentifier hash] ^ v4;
  _symbolImageName = [(DNDMode *)self _symbolImageName];
  v8 = [_symbolImageName hash];
  _tintColorName = [(DNDMode *)self _tintColorName];
  v10 = v6 ^ v8 ^ [_tintColorName hash];
  symbolDescriptor = [(DNDMode *)self symbolDescriptor];
  v12 = [symbolDescriptor hash];
  v13 = v12 ^ [(DNDMode *)self semanticType];
  v14 = v10 ^ v13 ^ [(DNDMode *)self visibility];
  identifier = [(DNDMode *)self identifier];
  v16 = [identifier hash];

  return v14 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      _name = [(DNDMode *)self _name];
      _name2 = [(DNDMode *)v6 _name];
      if (_name != _name2)
      {
        _name3 = [(DNDMode *)self _name];
        if (!_name3)
        {
          v11 = 0;
          goto LABEL_65;
        }

        _name4 = [(DNDMode *)v6 _name];
        if (!_name4)
        {
          v11 = 0;
LABEL_64:

          goto LABEL_65;
        }

        _name5 = [(DNDMode *)self _name];
        _name6 = [(DNDMode *)v6 _name];
        if (![_name5 isEqual:_name6])
        {
          v11 = 0;
LABEL_63:

          goto LABEL_64;
        }

        v83 = _name6;
        v84 = _name5;
      }

      modeIdentifier = [(DNDMode *)self modeIdentifier];
      modeIdentifier2 = [(DNDMode *)v6 modeIdentifier];
      if (modeIdentifier != modeIdentifier2)
      {
        modeIdentifier3 = [(DNDMode *)self modeIdentifier];
        if (modeIdentifier3)
        {
          v14 = modeIdentifier3;
          modeIdentifier4 = [(DNDMode *)v6 modeIdentifier];
          if (modeIdentifier4)
          {
            v81 = modeIdentifier4;
            modeIdentifier5 = [(DNDMode *)self modeIdentifier];
            modeIdentifier6 = [(DNDMode *)v6 modeIdentifier];
            if ([modeIdentifier5 isEqual:modeIdentifier6])
            {
              v77 = modeIdentifier6;
              v79 = modeIdentifier5;
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
      _symbolImageName = [(DNDMode *)self _symbolImageName];
      _symbolImageName2 = [(DNDMode *)v6 _symbolImageName];
      v82 = _symbolImageName;
      if (_symbolImageName == _symbolImageName2)
      {
        goto LABEL_23;
      }

      _symbolImageName3 = [(DNDMode *)self _symbolImageName];
      if (_symbolImageName3)
      {
        v21 = _symbolImageName3;
        _symbolImageName4 = [(DNDMode *)v6 _symbolImageName];
        if (_symbolImageName4)
        {
          v23 = _symbolImageName2;
          v24 = v21;
          v76 = _symbolImageName4;
          _symbolImageName5 = [(DNDMode *)self _symbolImageName];
          _symbolImageName6 = [(DNDMode *)v6 _symbolImageName];
          if ([_symbolImageName5 isEqual:_symbolImageName6])
          {
            v72 = _symbolImageName5;
            v73 = v24;
            _symbolImageName2 = v23;
LABEL_23:
            _tintColorName = [(DNDMode *)self _tintColorName];
            _tintColorName2 = [(DNDMode *)v6 _tintColorName];
            if (_tintColorName == _tintColorName2)
            {
              goto LABEL_31;
            }

            _tintColorName3 = [(DNDMode *)self _tintColorName];
            if (_tintColorName3)
            {
              v74 = _tintColorName3;
              _tintColorName4 = [(DNDMode *)v6 _tintColorName];
              if (_tintColorName4)
              {
                v67 = _tintColorName4;
                v68 = _symbolImageName6;
                _tintColorName5 = [(DNDMode *)self _tintColorName];
                _tintColorName6 = [(DNDMode *)v6 _tintColorName];
                if ([_tintColorName5 isEqual:_tintColorName6])
                {
                  v64 = _tintColorName6;
                  v65 = _tintColorName5;
                  _symbolImageName6 = v68;
LABEL_31:
                  symbolDescriptor = [(DNDMode *)self symbolDescriptor];
                  symbolDescriptor2 = [(DNDMode *)v6 symbolDescriptor];
                  if (symbolDescriptor == symbolDescriptor2)
                  {
                    v40 = _symbolImageName6;
                    v38 = symbolDescriptor;
                    v70 = _tintColorName;
                    v39 = v40;
                    goto LABEL_43;
                  }

                  symbolDescriptor3 = [(DNDMode *)self symbolDescriptor];
                  if (symbolDescriptor3)
                  {
                    v66 = symbolDescriptor3;
                    symbolDescriptor4 = [(DNDMode *)v6 symbolDescriptor];
                    if (symbolDescriptor4)
                    {
                      v69 = _symbolImageName6;
                      v63 = symbolDescriptor4;
                      symbolDescriptor5 = [(DNDMode *)self symbolDescriptor];
                      symbolDescriptor6 = [(DNDMode *)v6 symbolDescriptor];
                      v62 = symbolDescriptor5;
                      v36 = symbolDescriptor5;
                      v37 = symbolDescriptor6;
                      if ([v36 isEqual:symbolDescriptor6])
                      {
                        v61 = v37;
                        v38 = symbolDescriptor;
                        v70 = _tintColorName;
                        v39 = v69;
LABEL_43:
                        semanticType = [(DNDMode *)self semanticType];
                        if (semanticType == [(DNDMode *)v6 semanticType]&& (v42 = [(DNDMode *)self visibility], v42 == [(DNDMode *)v6 visibility]))
                        {
                          identifier = [(DNDMode *)self identifier];
                          identifier2 = [(DNDMode *)v6 identifier];
                          if (identifier != identifier2)
                          {
                            v59 = identifier2;
                            v60 = identifier;
                            identifier3 = [(DNDMode *)self identifier];
                            v46 = v70;
                            if (identifier3)
                            {
                              v58 = identifier3;
                              identifier4 = [(DNDMode *)v6 identifier];
                              if (identifier4)
                              {
                                v57 = identifier4;
                                identifier5 = [(DNDMode *)self identifier];
                                identifier6 = [(DNDMode *)v6 identifier];
                                v11 = [identifier5 isEqual:identifier6];

                                v46 = v70;
                                identifier4 = v57;
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

                            v49 = symbolDescriptor2;
                            if (v38 == symbolDescriptor2)
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

                        v49 = symbolDescriptor2;
                        v46 = v70;
                        if (v38 == symbolDescriptor2)
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

                        if (v46 != _tintColorName2)
                        {
                        }

                        if (v82 != _symbolImageName2)
                        {
                        }

                        if (modeIdentifier != modeIdentifier2)
                        {
                        }

LABEL_62:
                        _name6 = v83;
                        _name5 = v84;
                        if (_name != _name2)
                        {
                          goto LABEL_63;
                        }

LABEL_65:

                        goto LABEL_66;
                      }

                      symbolDescriptor4 = v63;
                      _symbolImageName6 = v69;
                    }
                  }

                  if (_tintColorName != _tintColorName2)
                  {
                  }

                  v54 = v79;
                  if (v82 != _symbolImageName2)
                  {
                  }

                  v53 = modeIdentifier2;
                  if (modeIdentifier == modeIdentifier2)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_59;
                }

                v52 = v82;
                if (v82 == _symbolImageName2)
                {
LABEL_58:

                  v53 = modeIdentifier2;
                  v54 = v79;
                  if (modeIdentifier == modeIdentifier2)
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
            if (v82 == _symbolImageName2)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          goto LABEL_39;
        }
      }

LABEL_39:
      if (modeIdentifier != modeIdentifier2)
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
  _name = [(DNDMode *)self _name];
  modeIdentifier = [(DNDMode *)self modeIdentifier];
  _symbolImageName = [(DNDMode *)self _symbolImageName];
  _tintColorName = [(DNDMode *)self _tintColorName];
  symbolDescriptor = [(DNDMode *)self symbolDescriptor];
  semanticType = [(DNDMode *)self semanticType];
  visibility = [(DNDMode *)self visibility];
  identifier = [(DNDMode *)self identifier];
  uUIDString = [identifier UUIDString];
  isPlaceholder = [(DNDMode *)self isPlaceholder];
  v13 = @"NO";
  if (isPlaceholder)
  {
    v13 = @"YES";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p name: %@; modeIdentifier: %@; symbolImageName: %@; tintColorName: %@; symbolDescriptor: %@; semanticType: %zd; visibility: %lu; identifier: %@; isPlaceHolder: %@>", v16, self, _name, modeIdentifier, _symbolImageName, _tintColorName, symbolDescriptor, semanticType, visibility, uUIDString, v13];;

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableMode alloc];

  return [(DNDMode *)v4 _initWithMode:self];
}

- (DNDMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColorName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolDescriptor"];
  if ([coderCopy containsValueForKey:@"semanticType"])
  {
    v10 = [coderCopy decodeIntegerForKey:@"semanticType"];
  }

  else
  {
    v10 = 0;
  }

  if ([coderCopy containsValueForKey:@"visibility"])
  {
    v11 = [coderCopy decodeIntegerForKey:@"visibility"];
  }

  else
  {
    v11 = 0;
  }

  if ([coderCopy containsValueForKey:@"identifier"])
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DNDMode *)self initWithName:v5 modeIdentifier:v6 symbolImageName:v7 tintColorName:v8 symbolDescriptor:v9 semanticType:v10 visibility:v11 identifier:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _name = [(DNDMode *)self _name];
  [coderCopy encodeObject:_name forKey:@"name"];

  modeIdentifier = [(DNDMode *)self modeIdentifier];
  [coderCopy encodeObject:modeIdentifier forKey:@"modeIdentifier"];

  _symbolImageName = [(DNDMode *)self _symbolImageName];
  [coderCopy encodeObject:_symbolImageName forKey:@"symbolImageName"];

  _tintColorName = [(DNDMode *)self _tintColorName];
  [coderCopy encodeObject:_tintColorName forKey:@"tintColorName"];

  symbolDescriptor = [(DNDMode *)self symbolDescriptor];
  [coderCopy encodeObject:symbolDescriptor forKey:@"symbolDescriptor"];

  [coderCopy encodeInteger:-[DNDMode semanticType](self forKey:{"semanticType"), @"semanticType"}];
  [coderCopy encodeInteger:-[DNDMode visibility](self forKey:{"visibility"), @"visibility"}];
  identifier = [(DNDMode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end