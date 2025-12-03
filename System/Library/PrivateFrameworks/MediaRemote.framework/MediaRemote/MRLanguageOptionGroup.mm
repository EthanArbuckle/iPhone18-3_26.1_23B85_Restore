@interface MRLanguageOptionGroup
- (BOOL)isEqual:(id)equal;
- (MRLanguageOptionGroup)initWithCoder:(id)coder;
- (MRLanguageOptionGroup)initWithData:(id)data;
- (MRLanguageOptionGroup)initWithLanguageOptions:(id)options defaultLanguageOption:(id)option allowsEmptySelection:(BOOL)selection;
- (MRLanguageOptionGroup)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRLanguageOptionGroupProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRLanguageOptionGroup

- (MRLanguageOptionGroup)initWithLanguageOptions:(id)options defaultLanguageOption:(id)option allowsEmptySelection:(BOOL)selection
{
  optionsCopy = options;
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = MRLanguageOptionGroup;
  v10 = [(MRLanguageOptionGroup *)&v14 init];
  if (v10)
  {
    v11 = [optionsCopy copy];
    languageOptions = v10->_languageOptions;
    v10->_languageOptions = v11;

    objc_storeStrong(&v10->_defaultLanguageOption, option);
    v10->_allowsEmptySelection = selection;
    v10->_hasAllowsEmptySelection = 1;
  }

  return v10;
}

- (MRLanguageOptionGroup)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v15.receiver = self;
    v15.super_class = MRLanguageOptionGroup;
    v5 = [(MRLanguageOptionGroup *)&v15 init];
    if (v5)
    {
      v5->_allowsEmptySelection = [protobufCopy allowEmptySelection];
      v5->_hasAllowsEmptySelection = [protobufCopy hasAllowEmptySelection];
      if ([protobufCopy hasDefaultLanguageOption])
      {
        v6 = [MRLanguageOption alloc];
        defaultLanguageOption = [protobufCopy defaultLanguageOption];
        v8 = [(MRLanguageOption *)v6 initWithProtobuf:defaultLanguageOption];
        defaultLanguageOption = v5->_defaultLanguageOption;
        v5->_defaultLanguageOption = v8;
      }

      languageOptions = [protobufCopy languageOptions];
      v11 = [languageOptions mr_map:&__block_literal_global_101];
      languageOptions = v5->_languageOptions;
      v5->_languageOptions = v11;
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

MRLanguageOption *__42__MRLanguageOptionGroup_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOption alloc] initWithProtobuf:v2];

  return v3;
}

- (MRLanguageOptionGroup)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRLanguageOptionGroupProtobuf alloc] initWithData:dataCopy];

    self = [(MRLanguageOptionGroup *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRLanguageOptionGroupProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRLanguageOptionGroupProtobuf);
  defaultLanguageOption = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  protobuf = [defaultLanguageOption protobuf];
  [(_MRLanguageOptionGroupProtobuf *)v3 setDefaultLanguageOption:protobuf];

  languageOptions = [(MRLanguageOptionGroup *)self languageOptions];
  v7 = [languageOptions count];

  if (v7)
  {
    languageOptions2 = [(MRLanguageOptionGroup *)self languageOptions];
    v9 = [languageOptions2 mr_map:&__block_literal_global_11_2];
    v10 = [v9 mutableCopy];
    [(_MRLanguageOptionGroupProtobuf *)v3 setLanguageOptions:v10];
  }

  [(_MRLanguageOptionGroupProtobuf *)v3 setAllowEmptySelection:[(MRLanguageOptionGroup *)self allowsEmptySelection]];
  [(_MRLanguageOptionGroupProtobuf *)v3 setHasAllowEmptySelection:[(MRLanguageOptionGroup *)self hasAllowsEmptySelection]];

  return v3;
}

- (NSData)data
{
  protobuf = [(MRLanguageOptionGroup *)self protobuf];
  data = [protobuf data];

  return data;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRLanguageOptionGroup allowsEmptySelection](self, "allowsEmptySelection")}];
    [v3 setObject:v4 forKeyedSubscript:@"allowsEmptySelection"];
  }

  languageOptions = [(MRLanguageOptionGroup *)self languageOptions];
  v6 = [languageOptions mr_map:&__block_literal_global_18_1];
  [v3 setObject:v6 forKeyedSubscript:@"languageOptions"];

  defaultLanguageOption = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  dictionaryRepresentation = [defaultLanguageOption dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"defaultLanguageOption"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  hasAllowsEmptySelection = [(MRLanguageOptionGroup *)equalCopy hasAllowsEmptySelection];
  if (hasAllowsEmptySelection != [(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    goto LABEL_9;
  }

  if ([(MRLanguageOptionGroup *)equalCopy hasAllowsEmptySelection])
  {
    if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
    {
      allowsEmptySelection = [(MRLanguageOptionGroup *)equalCopy allowsEmptySelection];
      if (allowsEmptySelection != [(MRLanguageOptionGroup *)self allowsEmptySelection])
      {
        goto LABEL_9;
      }
    }
  }

  languageOptions = [(MRLanguageOptionGroup *)equalCopy languageOptions];
  languageOptions2 = [(MRLanguageOptionGroup *)self languageOptions];
  v9 = languageOptions2;
  if (languageOptions == languageOptions2)
  {
  }

  else
  {
    languageOptions3 = [(MRLanguageOptionGroup *)equalCopy languageOptions];
    languageOptions4 = [(MRLanguageOptionGroup *)self languageOptions];
    v12 = [languageOptions3 isEqual:languageOptions4];

    if (!v12)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_16;
    }
  }

  defaultLanguageOption = [(MRLanguageOptionGroup *)equalCopy defaultLanguageOption];
  defaultLanguageOption2 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  if (defaultLanguageOption == defaultLanguageOption2)
  {
    v13 = 1;
  }

  else
  {
    defaultLanguageOption3 = [(MRLanguageOptionGroup *)equalCopy defaultLanguageOption];
    defaultLanguageOption4 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
    v13 = [defaultLanguageOption3 isEqual:defaultLanguageOption4];
  }

LABEL_16:
  return v13 & 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRLanguageOptionGroup *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    [v5 setAllowsEmptySelection:{-[MRLanguageOptionGroup allowsEmptySelection](self, "allowsEmptySelection")}];
  }

  defaultLanguageOption = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  v7 = [defaultLanguageOption copyWithZone:zone];
  [v5 setDefaultLanguageOption:v7];

  languageOptions = [(MRLanguageOptionGroup *)self languageOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__MRLanguageOptionGroup_copyWithZone___block_invoke;
  v11[3] = &__block_descriptor_40_e26__16__0__MRLanguageOption_8l;
  v11[4] = zone;
  v9 = [languageOptions mr_map:v11];
  [v5 setLanguageOptions:v9];

  return v5;
}

id __38__MRLanguageOptionGroup_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeBool:-[MRLanguageOptionGroup allowsEmptySelection](self forKey:{"allowsEmptySelection"), @"kMRLanguageOptionAllowEmptySelection"}];
    defaultLanguageOption = [(MRLanguageOptionGroup *)self defaultLanguageOption];
    protobuf = [defaultLanguageOption protobuf];
    [coderCopy encodeObject:protobuf forKey:@"kMRLanguageOptionDefaultSelection"];

    languageOptions = [(MRLanguageOptionGroup *)self languageOptions];
    v7 = [languageOptions mr_map:&__block_literal_global_30];
    [coderCopy encodeObject:v7 forKey:@"kMRLanguageOptions"];

    protobuf2 = [(MRLanguageOptionGroup *)self protobuf];
    [coderCopy encodeObject:protobuf2 forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRLanguageOptionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MRLanguageOptionGroup;
  v5 = [(MRLanguageOptionGroup *)&v16 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  if (![coderCopy allowsKeyedCoding])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [coderCopy failWithError:v6];
LABEL_9:

LABEL_10:
    v13 = v5;
    goto LABEL_14;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MRLanguageOptionGroup setAllowsEmptySelection:](v5, "setAllowsEmptySelection:", [coderCopy decodeBoolForKey:@"kMRLanguageOptionAllowEmptySelection"]);
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionDefaultSelection"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v7 = 0;
      }

      v8 = [[MRLanguageOption alloc] initWithProtobuf:v7];
      [(MRLanguageOptionGroup *)v5 setDefaultLanguageOption:v8];

      v9 = MSVPropertyListDataClasses();
      v10 = [v9 setByAddingObject:objc_opt_class()];
      v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kMRLanguageOptions"];
      v12 = [v11 mr_map:&__block_literal_global_40_0];
      [(MRLanguageOptionGroup *)v5 setLanguageOptions:v12];

      goto LABEL_9;
    }
  }

  v14 = _MRLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(MRLanguageOption *)v6 initWithCoder:v14];
  }

  v13 = 0;
LABEL_14:

  return v13;
}

MRLanguageOption *__39__MRLanguageOptionGroup_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOption alloc] initWithProtobuf:v2];

  return v3;
}

@end