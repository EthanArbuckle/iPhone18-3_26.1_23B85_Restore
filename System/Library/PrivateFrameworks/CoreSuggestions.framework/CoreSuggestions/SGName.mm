@interface SGName
+ (id)nameWithFirstName:(id)a3 lastName:(id)a4 middleName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 withRecordId:(id)a9 origin:(id)a10;
+ (id)nameWithFirstName:(id)a3 lastName:(id)a4 withRecordId:(id)a5 origin:(id)a6;
+ (id)nameWithFirstName:(id)a3 withRecordId:(id)a4 origin:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToName:(id)a3;
- (SGName)initWithCoder:(id)a3;
- (SGName)initWithFirstName:(id)a3 middleName:(id)a4 lastName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 recordId:(id)a9 origin:(id)a10;
- (SGName)initWithFirstName:(id)a3 middleName:(id)a4 lastName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 recordId:(id)a9 origin:(id)a10 extractionInfo:(id)a11;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToName:(id)a3
{
  v4 = a3;
  if ([(SGObject *)self isEqualToSuggestion:v4])
  {
    v5 = self->_fullName;
    v6 = v5;
    if (v5 == v4[3])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGName *)self isEqualToName:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGName;
  v4 = a3;
  [(SGObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_firstName forKey:{@"firstName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_middleName forKey:@"middleName"];
  [v4 encodeObject:self->_lastName forKey:@"lastName"];
  [v4 encodeObject:self->_fullName forKey:@"fullName"];
  [v4 encodeObject:self->_prefix forKey:@"prefix"];
  [v4 encodeObject:self->_suffix forKey:@"suffix"];
  [v4 encodeObject:self->_extractionInfo forKey:@"extractionInfo"];
}

- (SGName)initWithCoder:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = SGName;
  v6 = [(SGObject *)&v30 initWithCoder:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"firstName"];
    firstName = v6->_firstName;
    v6->_firstName = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [v5 decodeObjectOfClasses:v10 forKey:@"middleName"];
    middleName = v6->_middleName;
    v6->_middleName = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v14 = [v5 decodeObjectOfClasses:v13 forKey:@"lastName"];
    lastName = v6->_lastName;
    v6->_lastName = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v17 = [v5 decodeObjectOfClasses:v16 forKey:@"fullName"];

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
    v21 = [v5 decodeObjectOfClasses:v20 forKey:@"prefix"];
    prefix = v6->_prefix;
    v6->_prefix = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v24 = [v5 decodeObjectOfClasses:v23 forKey:@"suffix"];
    suffix = v6->_suffix;
    v6->_suffix = v24;

    v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v27 = [v5 decodeObjectOfClasses:v26 forKey:@"extractionInfo"];
    extractionInfo = v6->_extractionInfo;
    v6->_extractionInfo = v27;
  }

  return v6;
}

- (SGName)initWithFirstName:(id)a3 middleName:(id)a4 lastName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 recordId:(id)a9 origin:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [SGExtractionInfo extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
  v26 = [(SGName *)self initWithFirstName:v24 middleName:v23 lastName:v22 fullName:v21 prefix:v20 suffix:v19 recordId:v18 origin:v17 extractionInfo:v25];

  return v26;
}

- (SGName)initWithFirstName:(id)a3 middleName:(id)a4 lastName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 recordId:(id)a9 origin:(id)a10 extractionInfo:(id)a11
{
  v41 = a3;
  v40 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (!v18)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"SGName.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"fullName"}];
  }

  v42.receiver = self;
  v42.super_class = SGName;
  v24 = [(SGObject *)&v42 initWithRecordId:v21 origin:v22];
  if (v24)
  {
    v25 = [v41 copy];
    firstName = v24->_firstName;
    v24->_firstName = v25;

    v27 = [v40 copy];
    middleName = v24->_middleName;
    v24->_middleName = v27;

    v29 = [v17 copy];
    lastName = v24->_lastName;
    v24->_lastName = v29;

    v31 = [v19 copy];
    prefix = v24->_prefix;
    v24->_prefix = v31;

    v33 = [v20 copy];
    suffix = v24->_suffix;
    v24->_suffix = v33;

    v35 = [v18 copy];
    fullName = v24->_fullName;
    v24->_fullName = v35;

    objc_storeStrong(&v24->_extractionInfo, a11);
  }

  return v24;
}

+ (id)nameWithFirstName:(id)a3 withRecordId:(id)a4 origin:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SGName alloc] initWithFirstName:v9 middleName:0 lastName:0 fullName:v9 prefix:0 suffix:0 recordId:v8 origin:v7];

  return v10;
}

+ (id)nameWithFirstName:(id)a3 lastName:(id)a4 withRecordId:(id)a5 origin:(id)a6
{
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [SGName alloc];
  v19[0] = v12;
  v19[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v14 _pas_componentsJoinedByString:@" "];
  v16 = [(SGName *)v13 initWithFirstName:v12 middleName:0 lastName:v11 fullName:v15 prefix:0 suffix:0 recordId:v10 origin:v9];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)nameWithFirstName:(id)a3 lastName:(id)a4 middleName:(id)a5 fullName:(id)a6 prefix:(id)a7 suffix:(id)a8 withRecordId:(id)a9 origin:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[SGName alloc] initWithFirstName:v23 middleName:v21 lastName:v22 fullName:v20 prefix:v19 suffix:v18 recordId:v17 origin:v16];

  return v24;
}

@end