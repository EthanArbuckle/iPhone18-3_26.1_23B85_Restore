@interface MRLanguageOption
- (BOOL)isAutomaticLanguageOptionWithType:(unsigned int)type;
- (BOOL)isEqual:(id)equal;
- (MRLanguageOption)initWithCoder:(id)coder;
- (MRLanguageOption)initWithData:(id)data;
- (MRLanguageOption)initWithProtobuf:(id)protobuf;
- (MRLanguageOption)initWithType:(unsigned int)type languageTag:(id)tag characteristics:(id)characteristics displayName:(id)name identifier:(id)identifier;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRLanguageOptionProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRLanguageOption

- (MRLanguageOption)initWithType:(unsigned int)type languageTag:(id)tag characteristics:(id)characteristics displayName:(id)name identifier:(id)identifier
{
  tagCopy = tag;
  characteristicsCopy = characteristics;
  nameCopy = name;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = MRLanguageOption;
  v16 = [(MRLanguageOption *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_hasType = 1;
    v18 = [tagCopy copy];
    languageTag = v17->_languageTag;
    v17->_languageTag = v18;

    v20 = [characteristicsCopy copy];
    characteristics = v17->_characteristics;
    v17->_characteristics = v20;

    v22 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v22;

    v24 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v24;
  }

  return v17;
}

- (MRLanguageOption)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v20.receiver = self;
    v20.super_class = MRLanguageOption;
    v5 = [(MRLanguageOption *)&v20 init];
    if (v5)
    {
      v5->_type = [protobufCopy type];
      v5->_hasType = [protobufCopy hasType];
      languageTag = [protobufCopy languageTag];
      v7 = [languageTag copy];
      languageTag = v5->_languageTag;
      v5->_languageTag = v7;

      characteristics = [protobufCopy characteristics];
      v10 = [characteristics copy];
      characteristics = v5->_characteristics;
      v5->_characteristics = v10;

      displayName = [protobufCopy displayName];
      v13 = [displayName copy];
      displayName = v5->_displayName;
      v5->_displayName = v13;

      identifier = [protobufCopy identifier];
      v16 = [identifier copy];
      identifier = v5->_identifier;
      v5->_identifier = v16;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRLanguageOption)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRLanguageOptionProtobuf alloc] initWithData:dataCopy];

    self = [(MRLanguageOption *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRLanguageOptionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRLanguageOptionProtobuf);
  v3->_type = [(MRLanguageOption *)self type];
  *&v3->_has = *&v3->_has & 0xFE | [(MRLanguageOption *)self hasType];
  languageTag = [(MRLanguageOption *)self languageTag];
  [(_MRLanguageOptionProtobuf *)v3 setLanguageTag:languageTag];

  characteristics = [(MRLanguageOption *)self characteristics];
  v6 = [characteristics mutableCopy];
  [(_MRLanguageOptionProtobuf *)v3 setCharacteristics:v6];

  displayName = [(MRLanguageOption *)self displayName];
  [(_MRLanguageOptionProtobuf *)v3 setDisplayName:displayName];

  identifier = [(MRLanguageOption *)self identifier];
  [(_MRLanguageOptionProtobuf *)v3 setIdentifier:identifier];

  return v3;
}

- (NSData)data
{
  protobuf = [(MRLanguageOption *)self protobuf];
  data = [protobuf data];

  return data;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRLanguageOption *)self hasType])
  {
    v4 = MRLanguageOptionTypeCopyDescription([(MRLanguageOption *)self type]);
    [v3 setObject:v4 forKeyedSubscript:@"type"];
  }

  languageTag = [(MRLanguageOption *)self languageTag];
  [v3 setObject:languageTag forKeyedSubscript:@"languageTag"];

  characteristics = [(MRLanguageOption *)self characteristics];
  [v3 setObject:characteristics forKeyedSubscript:@"characteristics"];

  displayName = [(MRLanguageOption *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"displayName"];

  identifier = [(MRLanguageOption *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    hasType = [(MRLanguageOption *)equalCopy hasType];
    if (hasType != [(MRLanguageOption *)self hasType])
    {
      goto LABEL_18;
    }

    if ([(MRLanguageOption *)equalCopy hasType])
    {
      if ([(MRLanguageOption *)self hasType])
      {
        type = [(MRLanguageOption *)equalCopy type];
        if (type != [(MRLanguageOption *)self type])
        {
          goto LABEL_18;
        }
      }
    }

    languageTag = [(MRLanguageOption *)equalCopy languageTag];
    languageTag2 = [(MRLanguageOption *)self languageTag];
    v9 = languageTag2;
    if (languageTag == languageTag2)
    {
    }

    else
    {
      v10 = [languageTag isEqual:languageTag2];

      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    displayName = [(MRLanguageOption *)equalCopy displayName];
    displayName2 = [(MRLanguageOption *)self displayName];
    v14 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      v15 = [displayName isEqual:displayName2];

      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    identifier = [(MRLanguageOption *)equalCopy identifier];
    identifier2 = [(MRLanguageOption *)self identifier];
    v18 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      v19 = [identifier isEqual:identifier2];

      if ((v19 & 1) == 0)
      {
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }
    }

    characteristics = [(MRLanguageOption *)equalCopy characteristics];
    characteristics2 = [(MRLanguageOption *)self characteristics];
    if (characteristics == characteristics2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [characteristics isEqual:characteristics2];
    }
  }

LABEL_19:

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRLanguageOption *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(MRLanguageOption *)self hasType])
  {
    [v5 setType:{-[MRLanguageOption type](self, "type")}];
  }

  languageTag = [(MRLanguageOption *)self languageTag];
  v7 = [languageTag copyWithZone:zone];
  [v5 setLanguageTag:v7];

  characteristics = [(MRLanguageOption *)self characteristics];
  v9 = [characteristics copyWithZone:zone];
  [v5 setCharacteristics:v9];

  displayName = [(MRLanguageOption *)self displayName];
  v11 = [displayName copyWithZone:zone];
  [v5 setDisplayName:v11];

  identifier = [(MRLanguageOption *)self identifier];
  v13 = [identifier copyWithZone:zone];
  [v5 setIdentifier:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInt32:-[MRLanguageOption type](self forKey:{"type"), @"kMRLanguageOptionType"}];
    languageTag = [(MRLanguageOption *)self languageTag];
    [coderCopy encodeObject:languageTag forKey:@"kMRLanguageOptionLanguageTag"];

    characteristics = [(MRLanguageOption *)self characteristics];
    [coderCopy encodeObject:characteristics forKey:@"KMRLanguageOptionCharacteristics"];

    displayName = [(MRLanguageOption *)self displayName];
    [coderCopy encodeObject:displayName forKey:@"kMRLanguageOptionDisplayName"];

    identifier = [(MRLanguageOption *)self identifier];
    [coderCopy encodeObject:identifier forKey:@"kMRLanguageOptionIdentifier"];

    protobuf = [(MRLanguageOption *)self protobuf];
    [coderCopy encodeObject:protobuf forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRLanguageOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MRLanguageOption;
  v5 = [(MRLanguageOption *)&v15 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (![coderCopy allowsKeyedCoding])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [coderCopy failWithError:v8];
LABEL_11:

LABEL_12:
    v7 = v5;
    goto LABEL_13;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MRLanguageOption *)v6 initWithCoder:v9];
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    -[MRLanguageOption setType:](v5, "setType:", [coderCopy decodeInt32ForKey:@"kMRLanguageOptionType"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionLanguageTag"];
    [(MRLanguageOption *)v5 setLanguageTag:v10];

    v11 = MSVPropertyListDataClasses();
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"KMRLanguageOptionCharacteristics"];
    [(MRLanguageOption *)v5 setCharacteristics:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionDisplayName"];
    [(MRLanguageOption *)v5 setDisplayName:v13];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionIdentifier"];
    [(MRLanguageOption *)v5 setIdentifier:v8];
    goto LABEL_11;
  }

  v7 = [(MRLanguageOption *)v5 initWithProtobuf:v6];

LABEL_13:
  return v7;
}

- (BOOL)isAutomaticLanguageOptionWithType:(unsigned int)type
{
  if ([(MRLanguageOption *)self type]!= type)
  {
    return 0;
  }

  characteristics = [(MRLanguageOption *)self characteristics];
  v5 = [characteristics count];

  if (v5)
  {
    return 0;
  }

  displayName = [(MRLanguageOption *)self displayName];
  v7 = [displayName length];

  if (v7)
  {
    return 0;
  }

  identifier = [(MRLanguageOption *)self identifier];
  v9 = [identifier length];

  if (v9)
  {
    return 0;
  }

  languageTag = [(MRLanguageOption *)self languageTag];
  v12 = [languageTag isEqualToString:@"__AUTO__"];

  return v12;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Unable to decode object, got class %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end