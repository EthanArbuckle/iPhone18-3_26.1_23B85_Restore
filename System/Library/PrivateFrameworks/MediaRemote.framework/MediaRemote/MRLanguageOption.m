@interface MRLanguageOption
- (BOOL)isAutomaticLanguageOptionWithType:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (MRLanguageOption)initWithCoder:(id)a3;
- (MRLanguageOption)initWithData:(id)a3;
- (MRLanguageOption)initWithProtobuf:(id)a3;
- (MRLanguageOption)initWithType:(unsigned int)a3 languageTag:(id)a4 characteristics:(id)a5 displayName:(id)a6 identifier:(id)a7;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRLanguageOptionProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRLanguageOption

- (MRLanguageOption)initWithType:(unsigned int)a3 languageTag:(id)a4 characteristics:(id)a5 displayName:(id)a6 identifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = MRLanguageOption;
  v16 = [(MRLanguageOption *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    v16->_hasType = 1;
    v18 = [v12 copy];
    languageTag = v17->_languageTag;
    v17->_languageTag = v18;

    v20 = [v13 copy];
    characteristics = v17->_characteristics;
    v17->_characteristics = v20;

    v22 = [v14 copy];
    displayName = v17->_displayName;
    v17->_displayName = v22;

    v24 = [v15 copy];
    identifier = v17->_identifier;
    v17->_identifier = v24;
  }

  return v17;
}

- (MRLanguageOption)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20.receiver = self;
    v20.super_class = MRLanguageOption;
    v5 = [(MRLanguageOption *)&v20 init];
    if (v5)
    {
      v5->_type = [v4 type];
      v5->_hasType = [v4 hasType];
      v6 = [v4 languageTag];
      v7 = [v6 copy];
      languageTag = v5->_languageTag;
      v5->_languageTag = v7;

      v9 = [v4 characteristics];
      v10 = [v9 copy];
      characteristics = v5->_characteristics;
      v5->_characteristics = v10;

      v12 = [v4 displayName];
      v13 = [v12 copy];
      displayName = v5->_displayName;
      v5->_displayName = v13;

      v15 = [v4 identifier];
      v16 = [v15 copy];
      identifier = v5->_identifier;
      v5->_identifier = v16;
    }

    self = v5;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (MRLanguageOption)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRLanguageOptionProtobuf alloc] initWithData:v4];

    self = [(MRLanguageOption *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_MRLanguageOptionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRLanguageOptionProtobuf);
  v3->_type = [(MRLanguageOption *)self type];
  *&v3->_has = *&v3->_has & 0xFE | [(MRLanguageOption *)self hasType];
  v4 = [(MRLanguageOption *)self languageTag];
  [(_MRLanguageOptionProtobuf *)v3 setLanguageTag:v4];

  v5 = [(MRLanguageOption *)self characteristics];
  v6 = [v5 mutableCopy];
  [(_MRLanguageOptionProtobuf *)v3 setCharacteristics:v6];

  v7 = [(MRLanguageOption *)self displayName];
  [(_MRLanguageOptionProtobuf *)v3 setDisplayName:v7];

  v8 = [(MRLanguageOption *)self identifier];
  [(_MRLanguageOptionProtobuf *)v3 setIdentifier:v8];

  return v3;
}

- (NSData)data
{
  v2 = [(MRLanguageOption *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRLanguageOption *)self hasType])
  {
    v4 = MRLanguageOptionTypeCopyDescription([(MRLanguageOption *)self type]);
    [v3 setObject:v4 forKeyedSubscript:@"type"];
  }

  v5 = [(MRLanguageOption *)self languageTag];
  [v3 setObject:v5 forKeyedSubscript:@"languageTag"];

  v6 = [(MRLanguageOption *)self characteristics];
  [v3 setObject:v6 forKeyedSubscript:@"characteristics"];

  v7 = [(MRLanguageOption *)self displayName];
  [v3 setObject:v7 forKeyedSubscript:@"displayName"];

  v8 = [(MRLanguageOption *)self identifier];
  [v3 setObject:v8 forKeyedSubscript:@"identifier"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

    v5 = [(MRLanguageOption *)v4 hasType];
    if (v5 != [(MRLanguageOption *)self hasType])
    {
      goto LABEL_18;
    }

    if ([(MRLanguageOption *)v4 hasType])
    {
      if ([(MRLanguageOption *)self hasType])
      {
        v6 = [(MRLanguageOption *)v4 type];
        if (v6 != [(MRLanguageOption *)self type])
        {
          goto LABEL_18;
        }
      }
    }

    v7 = [(MRLanguageOption *)v4 languageTag];
    v8 = [(MRLanguageOption *)self languageTag];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v12 = [(MRLanguageOption *)v4 displayName];
    v13 = [(MRLanguageOption *)self displayName];
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v16 = [(MRLanguageOption *)v4 identifier];
    v17 = [(MRLanguageOption *)self identifier];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }
    }

    v21 = [(MRLanguageOption *)v4 characteristics];
    v22 = [(MRLanguageOption *)self characteristics];
    if (v21 == v22)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v21 isEqual:v22];
    }
  }

LABEL_19:

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRLanguageOption *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(MRLanguageOption *)self hasType])
  {
    [v5 setType:{-[MRLanguageOption type](self, "type")}];
  }

  v6 = [(MRLanguageOption *)self languageTag];
  v7 = [v6 copyWithZone:a3];
  [v5 setLanguageTag:v7];

  v8 = [(MRLanguageOption *)self characteristics];
  v9 = [v8 copyWithZone:a3];
  [v5 setCharacteristics:v9];

  v10 = [(MRLanguageOption *)self displayName];
  v11 = [v10 copyWithZone:a3];
  [v5 setDisplayName:v11];

  v12 = [(MRLanguageOption *)self identifier];
  v13 = [v12 copyWithZone:a3];
  [v5 setIdentifier:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if ([v9 allowsKeyedCoding])
  {
    [v9 encodeInt32:-[MRLanguageOption type](self forKey:{"type"), @"kMRLanguageOptionType"}];
    v4 = [(MRLanguageOption *)self languageTag];
    [v9 encodeObject:v4 forKey:@"kMRLanguageOptionLanguageTag"];

    v5 = [(MRLanguageOption *)self characteristics];
    [v9 encodeObject:v5 forKey:@"KMRLanguageOptionCharacteristics"];

    v6 = [(MRLanguageOption *)self displayName];
    [v9 encodeObject:v6 forKey:@"kMRLanguageOptionDisplayName"];

    v7 = [(MRLanguageOption *)self identifier];
    [v9 encodeObject:v7 forKey:@"kMRLanguageOptionIdentifier"];

    v8 = [(MRLanguageOption *)self protobuf];
    [v9 encodeObject:v8 forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRLanguageOption)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MRLanguageOption;
  v5 = [(MRLanguageOption *)&v15 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (![v4 allowsKeyedCoding])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [v4 failWithError:v8];
LABEL_11:

LABEL_12:
    v7 = v5;
    goto LABEL_13;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
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
    -[MRLanguageOption setType:](v5, "setType:", [v4 decodeInt32ForKey:@"kMRLanguageOptionType"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionLanguageTag"];
    [(MRLanguageOption *)v5 setLanguageTag:v10];

    v11 = MSVPropertyListDataClasses();
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"KMRLanguageOptionCharacteristics"];
    [(MRLanguageOption *)v5 setCharacteristics:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionDisplayName"];
    [(MRLanguageOption *)v5 setDisplayName:v13];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionIdentifier"];
    [(MRLanguageOption *)v5 setIdentifier:v8];
    goto LABEL_11;
  }

  v7 = [(MRLanguageOption *)v5 initWithProtobuf:v6];

LABEL_13:
  return v7;
}

- (BOOL)isAutomaticLanguageOptionWithType:(unsigned int)a3
{
  if ([(MRLanguageOption *)self type]!= a3)
  {
    return 0;
  }

  v4 = [(MRLanguageOption *)self characteristics];
  v5 = [v4 count];

  if (v5)
  {
    return 0;
  }

  v6 = [(MRLanguageOption *)self displayName];
  v7 = [v6 length];

  if (v7)
  {
    return 0;
  }

  v8 = [(MRLanguageOption *)self identifier];
  v9 = [v8 length];

  if (v9)
  {
    return 0;
  }

  v11 = [(MRLanguageOption *)self languageTag];
  v12 = [v11 isEqualToString:@"__AUTO__"];

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