@interface SGName
+ (id)nameWithFirstName:(id)name lastName:(id)lastName middleName:(id)middleName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix withRecordId:(id)id origin:(id)self0;
+ (id)nameWithFirstName:(id)name lastName:(id)lastName withRecordId:(id)id origin:(id)origin;
+ (id)nameWithFirstName:(id)name withRecordId:(id)id origin:(id)origin;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToName:(id)name;
- (SGName)initWithCoder:(id)coder;
- (SGName)initWithFirstName:(id)name middleName:(id)middleName lastName:(id)lastName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix recordId:(id)id origin:(id)self0;
- (SGName)initWithFirstName:(id)name middleName:(id)middleName lastName:(id)lastName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix recordId:(id)id origin:(id)self0 extractionInfo:(id)self1;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGName

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fullName = self->_fullName;
  v15 = v3;
  prefix = self->_prefix;
  if (prefix)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ ", self->_prefix];
  }

  else
  {
    v5 = &stru_1F385B250;
  }

  if (self->_firstName)
  {
    firstName = self->_firstName;
  }

  else
  {
    firstName = &stru_1F385B250;
  }

  middleName = self->_middleName;
  if (middleName)
  {
    v8 = @" ";
  }

  else
  {
    v8 = &stru_1F385B250;
  }

  if (middleName)
  {
    v9 = self->_middleName;
  }

  else
  {
    v9 = &stru_1F385B250;
  }

  if (self->_lastName)
  {
    lastName = self->_lastName;
  }

  else
  {
    lastName = &stru_1F385B250;
  }

  if (self->_suffix)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ ", self->_suffix];
    v12 = [v15 initWithFormat:@"<SGName[%@]: %@{%@}%@%@ {%@}%@>", fullName, v5, firstName, v8, v9, lastName, v11];

    if (!prefix)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = [v15 initWithFormat:@"<SGName[%@]: %@{%@}%@%@ {%@}%@>", fullName, v5, firstName, v8, v9, lastName, &stru_1F385B250];
  if (prefix)
  {
LABEL_18:
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_firstName hash];
  v4 = [(NSString *)self->_lastName hash]- v3 + 32 * v3;
  return [(NSString *)self->_fullName hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToName:(id)name
{
  nameCopy = name;
  if ([(SGObject *)self isEqualToSuggestion:nameCopy])
  {
    v5 = self->_fullName;
    v6 = v5;
    if (v5 == nameCopy[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGName *)self isEqualToName:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGName;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_firstName forKey:{@"firstName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_middleName forKey:@"middleName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_fullName forKey:@"fullName"];
  [coderCopy encodeObject:self->_prefix forKey:@"prefix"];
  [coderCopy encodeObject:self->_suffix forKey:@"suffix"];
  [coderCopy encodeObject:self->_extractionInfo forKey:@"extractionInfo"];
}

- (SGName)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = SGName;
  v6 = [(SGObject *)&v30 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"firstName"];
    firstName = v6->_firstName;
    v6->_firstName = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"middleName"];
    middleName = v6->_middleName;
    v6->_middleName = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"lastName"];
    lastName = v6->_lastName;
    v6->_lastName = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"fullName"];

    if (v17)
    {
      v18 = v17;
      fullName = v6->_fullName;
      v6->_fullName = v18;
    }

    else
    {
      fullName = [MEMORY[0x1E696AAA8] currentHandler];
      [fullName handleFailureInMethod:a2 object:v6 file:@"SGName.m" lineNumber:71 description:{@"nonnull property %s *%s was null when decoded", "NSString", "fullName"}];
    }

    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"prefix"];
    prefix = v6->_prefix;
    v6->_prefix = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"suffix"];
    suffix = v6->_suffix;
    v6->_suffix = v24;

    v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"extractionInfo"];
    extractionInfo = v6->_extractionInfo;
    v6->_extractionInfo = v27;
  }

  return v6;
}

- (SGName)initWithFirstName:(id)name middleName:(id)middleName lastName:(id)lastName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix recordId:(id)id origin:(id)self0
{
  originCopy = origin;
  idCopy = id;
  suffixCopy = suffix;
  prefixCopy = prefix;
  fullNameCopy = fullName;
  lastNameCopy = lastName;
  middleNameCopy = middleName;
  nameCopy = name;
  v25 = [SGExtractionInfo extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
  v26 = [(SGName *)self initWithFirstName:nameCopy middleName:middleNameCopy lastName:lastNameCopy fullName:fullNameCopy prefix:prefixCopy suffix:suffixCopy recordId:idCopy origin:originCopy extractionInfo:v25];

  return v26;
}

- (SGName)initWithFirstName:(id)name middleName:(id)middleName lastName:(id)lastName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix recordId:(id)id origin:(id)self0 extractionInfo:(id)self1
{
  nameCopy = name;
  middleNameCopy = middleName;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  prefixCopy = prefix;
  suffixCopy = suffix;
  idCopy = id;
  originCopy = origin;
  infoCopy = info;
  if (!fullNameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGName.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"fullName"}];
  }

  v42.receiver = self;
  v42.super_class = SGName;
  v24 = [(SGObject *)&v42 initWithRecordId:idCopy origin:originCopy];
  if (v24)
  {
    v25 = [nameCopy copy];
    firstName = v24->_firstName;
    v24->_firstName = v25;

    v27 = [middleNameCopy copy];
    middleName = v24->_middleName;
    v24->_middleName = v27;

    v29 = [lastNameCopy copy];
    lastName = v24->_lastName;
    v24->_lastName = v29;

    v31 = [prefixCopy copy];
    prefix = v24->_prefix;
    v24->_prefix = v31;

    v33 = [suffixCopy copy];
    suffix = v24->_suffix;
    v24->_suffix = v33;

    v35 = [fullNameCopy copy];
    fullName = v24->_fullName;
    v24->_fullName = v35;

    objc_storeStrong(&v24->_extractionInfo, info);
  }

  return v24;
}

+ (id)nameWithFirstName:(id)name withRecordId:(id)id origin:(id)origin
{
  originCopy = origin;
  idCopy = id;
  nameCopy = name;
  v10 = [[SGName alloc] initWithFirstName:nameCopy middleName:0 lastName:0 fullName:nameCopy prefix:0 suffix:0 recordId:idCopy origin:originCopy];

  return v10;
}

+ (id)nameWithFirstName:(id)name lastName:(id)lastName withRecordId:(id)id origin:(id)origin
{
  v19[2] = *MEMORY[0x1E69E9840];
  originCopy = origin;
  idCopy = id;
  lastNameCopy = lastName;
  nameCopy = name;
  v13 = [SGName alloc];
  v19[0] = nameCopy;
  v19[1] = lastNameCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v14 _pas_componentsJoinedByString:@" "];
  v16 = [(SGName *)v13 initWithFirstName:nameCopy middleName:0 lastName:lastNameCopy fullName:v15 prefix:0 suffix:0 recordId:idCopy origin:originCopy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)nameWithFirstName:(id)name lastName:(id)lastName middleName:(id)middleName fullName:(id)fullName prefix:(id)prefix suffix:(id)suffix withRecordId:(id)id origin:(id)self0
{
  originCopy = origin;
  idCopy = id;
  suffixCopy = suffix;
  prefixCopy = prefix;
  fullNameCopy = fullName;
  middleNameCopy = middleName;
  lastNameCopy = lastName;
  nameCopy = name;
  v24 = [[SGName alloc] initWithFirstName:nameCopy middleName:middleNameCopy lastName:lastNameCopy fullName:fullNameCopy prefix:prefixCopy suffix:suffixCopy recordId:idCopy origin:originCopy];

  return v24;
}

@end