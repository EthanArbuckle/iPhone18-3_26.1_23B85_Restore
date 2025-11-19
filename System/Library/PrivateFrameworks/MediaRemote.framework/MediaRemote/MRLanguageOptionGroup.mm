@interface MRLanguageOptionGroup
- (BOOL)isEqual:(id)a3;
- (MRLanguageOptionGroup)initWithCoder:(id)a3;
- (MRLanguageOptionGroup)initWithData:(id)a3;
- (MRLanguageOptionGroup)initWithLanguageOptions:(id)a3 defaultLanguageOption:(id)a4 allowsEmptySelection:(BOOL)a5;
- (MRLanguageOptionGroup)initWithProtobuf:(id)a3;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRLanguageOptionGroupProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRLanguageOptionGroup

- (MRLanguageOptionGroup)initWithLanguageOptions:(id)a3 defaultLanguageOption:(id)a4 allowsEmptySelection:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MRLanguageOptionGroup;
  v10 = [(MRLanguageOptionGroup *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    languageOptions = v10->_languageOptions;
    v10->_languageOptions = v11;

    objc_storeStrong(&v10->_defaultLanguageOption, a4);
    v10->_allowsEmptySelection = a5;
    v10->_hasAllowsEmptySelection = 1;
  }

  return v10;
}

- (MRLanguageOptionGroup)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = MRLanguageOptionGroup;
    v5 = [(MRLanguageOptionGroup *)&v15 init];
    if (v5)
    {
      v5->_allowsEmptySelection = [v4 allowEmptySelection];
      v5->_hasAllowsEmptySelection = [v4 hasAllowEmptySelection];
      if ([v4 hasDefaultLanguageOption])
      {
        v6 = [MRLanguageOption alloc];
        v7 = [v4 defaultLanguageOption];
        v8 = [(MRLanguageOption *)v6 initWithProtobuf:v7];
        defaultLanguageOption = v5->_defaultLanguageOption;
        v5->_defaultLanguageOption = v8;
      }

      v10 = [v4 languageOptions];
      v11 = [v10 mr_map:&__block_literal_global_101];
      languageOptions = v5->_languageOptions;
      v5->_languageOptions = v11;
    }

    self = v5;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

MRLanguageOption *__42__MRLanguageOptionGroup_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOption alloc] initWithProtobuf:v2];

  return v3;
}

- (MRLanguageOptionGroup)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRLanguageOptionGroupProtobuf alloc] initWithData:v4];

    self = [(MRLanguageOptionGroup *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_MRLanguageOptionGroupProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRLanguageOptionGroupProtobuf);
  v4 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  v5 = [v4 protobuf];
  [(_MRLanguageOptionGroupProtobuf *)v3 setDefaultLanguageOption:v5];

  v6 = [(MRLanguageOptionGroup *)self languageOptions];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MRLanguageOptionGroup *)self languageOptions];
    v9 = [v8 mr_map:&__block_literal_global_11_2];
    v10 = [v9 mutableCopy];
    [(_MRLanguageOptionGroupProtobuf *)v3 setLanguageOptions:v10];
  }

  [(_MRLanguageOptionGroupProtobuf *)v3 setAllowEmptySelection:[(MRLanguageOptionGroup *)self allowsEmptySelection]];
  [(_MRLanguageOptionGroupProtobuf *)v3 setHasAllowEmptySelection:[(MRLanguageOptionGroup *)self hasAllowsEmptySelection]];

  return v3;
}

- (NSData)data
{
  v2 = [(MRLanguageOptionGroup *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRLanguageOptionGroup allowsEmptySelection](self, "allowsEmptySelection")}];
    [v3 setObject:v4 forKeyedSubscript:@"allowsEmptySelection"];
  }

  v5 = [(MRLanguageOptionGroup *)self languageOptions];
  v6 = [v5 mr_map:&__block_literal_global_18_1];
  [v3 setObject:v6 forKeyedSubscript:@"languageOptions"];

  v7 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"defaultLanguageOption"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [(MRLanguageOptionGroup *)v4 hasAllowsEmptySelection];
  if (v5 != [(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    goto LABEL_9;
  }

  if ([(MRLanguageOptionGroup *)v4 hasAllowsEmptySelection])
  {
    if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
    {
      v6 = [(MRLanguageOptionGroup *)v4 allowsEmptySelection];
      if (v6 != [(MRLanguageOptionGroup *)self allowsEmptySelection])
      {
        goto LABEL_9;
      }
    }
  }

  v7 = [(MRLanguageOptionGroup *)v4 languageOptions];
  v8 = [(MRLanguageOptionGroup *)self languageOptions];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [(MRLanguageOptionGroup *)v4 languageOptions];
    v11 = [(MRLanguageOptionGroup *)self languageOptions];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_16;
    }
  }

  v14 = [(MRLanguageOptionGroup *)v4 defaultLanguageOption];
  v15 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  if (v14 == v15)
  {
    v13 = 1;
  }

  else
  {
    v16 = [(MRLanguageOptionGroup *)v4 defaultLanguageOption];
    v17 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
    v13 = [v16 isEqual:v17];
  }

LABEL_16:
  return v13 & 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRLanguageOptionGroup *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(MRLanguageOptionGroup *)self hasAllowsEmptySelection])
  {
    [v5 setAllowsEmptySelection:{-[MRLanguageOptionGroup allowsEmptySelection](self, "allowsEmptySelection")}];
  }

  v6 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
  v7 = [v6 copyWithZone:a3];
  [v5 setDefaultLanguageOption:v7];

  v8 = [(MRLanguageOptionGroup *)self languageOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__MRLanguageOptionGroup_copyWithZone___block_invoke;
  v11[3] = &__block_descriptor_40_e26__16__0__MRLanguageOption_8l;
  v11[4] = a3;
  v9 = [v8 mr_map:v11];
  [v5 setLanguageOptions:v9];

  return v5;
}

id __38__MRLanguageOptionGroup_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if ([v9 allowsKeyedCoding])
  {
    [v9 encodeBool:-[MRLanguageOptionGroup allowsEmptySelection](self forKey:{"allowsEmptySelection"), @"kMRLanguageOptionAllowEmptySelection"}];
    v4 = [(MRLanguageOptionGroup *)self defaultLanguageOption];
    v5 = [v4 protobuf];
    [v9 encodeObject:v5 forKey:@"kMRLanguageOptionDefaultSelection"];

    v6 = [(MRLanguageOptionGroup *)self languageOptions];
    v7 = [v6 mr_map:&__block_literal_global_30];
    [v9 encodeObject:v7 forKey:@"kMRLanguageOptions"];

    v8 = [(MRLanguageOptionGroup *)self protobuf];
    [v9 encodeObject:v8 forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRLanguageOptionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MRLanguageOptionGroup;
  v5 = [(MRLanguageOptionGroup *)&v16 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  if (![v4 allowsKeyedCoding])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [v4 failWithError:v6];
LABEL_9:

LABEL_10:
    v13 = v5;
    goto LABEL_14;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MRLanguageOptionGroup setAllowsEmptySelection:](v5, "setAllowsEmptySelection:", [v4 decodeBoolForKey:@"kMRLanguageOptionAllowEmptySelection"]);
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMRLanguageOptionDefaultSelection"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v7 = 0;
      }

      v8 = [[MRLanguageOption alloc] initWithProtobuf:v7];
      [(MRLanguageOptionGroup *)v5 setDefaultLanguageOption:v8];

      v9 = MSVPropertyListDataClasses();
      v10 = [v9 setByAddingObject:objc_opt_class()];
      v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kMRLanguageOptions"];
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