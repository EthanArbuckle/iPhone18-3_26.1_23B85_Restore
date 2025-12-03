@interface SGMailIntelligenceAttachmentProperties
- (SGMailIntelligenceAttachmentProperties)initWithCoder:(id)coder;
- (SGMailIntelligenceAttachmentProperties)initWithFileName:(id)name fileSizeInBytes:(id)bytes fileDescription:(id)description keywords:(id)keywords authors:(id)authors;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailIntelligenceAttachmentProperties

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMailIntelligenceAttachmentProperties: %@ (%@B) %@>", self->_fileName, self->_fileSizeInBytes, self->_fileDescription];

  return v2;
}

- (SGMailIntelligenceAttachmentProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = sgMailIntelligenceLogHandle();
  v33 = [v4 robustDecodeObjectOfClass:v5 forKey:@"fileName" withCoder:coderCopy expectNonNull:0 errorDomain:v6 errorCode:? logHandle:?];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = sgMailIntelligenceLogHandle();
  v34 = [v7 robustDecodeObjectOfClass:v8 forKey:@"fileSizeInBytes" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = sgMailIntelligenceLogHandle();
  v32 = [v10 robustDecodeObjectOfClass:v11 forKey:@"fileDescription" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v12];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  v18 = sgMailIntelligenceLogHandle();
  v19 = [v13 robustDecodeObjectOfClasses:v17 forKey:@"keywords" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v18];

  v20 = MEMORY[0x1E69C5D78];
  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = objc_opt_class();
  v24 = [v22 initWithObjects:{v23, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v21);
  v25 = sgMailIntelligenceLogHandle();
  v26 = [v20 robustDecodeObjectOfClasses:v24 forKey:@"authors" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v25];

  v27 = 0;
  if (!v33)
  {
    v28 = v34;
    goto LABEL_10;
  }

  v28 = v34;
  if (!v34)
  {
LABEL_10:
    v29 = v32;
    goto LABEL_11;
  }

  v29 = v32;
  if (v32 && v19 && v26)
  {
    error = [coderCopy error];

    if (error)
    {
      v27 = 0;
    }

    else
    {
      v27 = [[SGMailIntelligenceAttachmentProperties alloc] initWithFileName:v33 fileSizeInBytes:v34 fileDescription:v32 keywords:v19 authors:v26];
    }
  }

LABEL_11:

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  fileName = self->_fileName;
  coderCopy = coder;
  [coderCopy encodeObject:fileName forKey:@"fileName"];
  [coderCopy encodeObject:self->_fileSizeInBytes forKey:@"fileSizeInBytes"];
  [coderCopy encodeObject:self->_fileDescription forKey:@"fileDescription"];
  [coderCopy encodeObject:self->_keywords forKey:@"keywords"];
  [coderCopy encodeObject:self->_authors forKey:@"authors"];
}

- (SGMailIntelligenceAttachmentProperties)initWithFileName:(id)name fileSizeInBytes:(id)bytes fileDescription:(id)description keywords:(id)keywords authors:(id)authors
{
  nameCopy = name;
  bytesCopy = bytes;
  descriptionCopy = description;
  keywordsCopy = keywords;
  authorsCopy = authors;
  if (nameCopy)
  {
    if (bytesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"fileName != nil"}];

    if (bytesCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"fileSizeInBytes != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = SGMailIntelligenceAttachmentProperties;
  v17 = [(SGMailIntelligenceAttachmentProperties *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fileName, name);
    objc_storeStrong(&v18->_fileSizeInBytes, bytes);
    objc_storeStrong(&v18->_fileDescription, description);
    objc_storeStrong(&v18->_keywords, keywords);
    objc_storeStrong(&v18->_authors, authors);
  }

  return v18;
}

@end