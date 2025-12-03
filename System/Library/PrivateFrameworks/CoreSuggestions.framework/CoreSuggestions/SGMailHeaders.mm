@interface SGMailHeaders
- (SGMailHeaders)initWithCoder:(id)coder;
- (SGMailHeaders)initWithMessageId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailHeaders

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMailHeaders %@: %@>", self->_messageId, self->_subject];

  return v2;
}

- (SGMailHeaders)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = sgLogHandle();
  v35 = [v4 robustDecodeObjectOfClass:v5 forKey:@"messageId" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = sgLogHandle();
  v37 = [v7 robustDecodeObjectOfClass:v8 forKey:@"subject" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v15 = sgLogHandle();
  v36 = [v10 robustDecodeObjectOfClasses:v14 forKey:@"from" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v21 = sgLogHandle();
  v22 = [v16 robustDecodeObjectOfClasses:v20 forKey:@"to" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v21];

  v23 = MEMORY[0x1E69C5D78];
  v24 = objc_autoreleasePoolPush();
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v24);
  v28 = sgLogHandle();
  v29 = [v23 robustDecodeObjectOfClasses:v27 forKey:@"cc" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v28];

  if (v35 && ([coderCopy error], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v31 = [[SGMailHeaders alloc] initWithMessageId:v35];
    v32 = v37;
    [(SGMailHeaders *)v31 setSubject:v37];
    v33 = v36;
    [(SGMailHeaders *)v31 setFrom:v36];
    [(SGMailHeaders *)v31 setTo:v22];
    [(SGMailHeaders *)v31 setCc:v29];
  }

  else
  {
    v31 = 0;
    v33 = v36;
    v32 = v37;
  }

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  messageId = self->_messageId;
  coderCopy = coder;
  [coderCopy encodeObject:messageId forKey:@"messageId"];
  [coderCopy encodeObject:self->_subject forKey:@"subject"];
  [coderCopy encodeObject:self->_from forKey:@"from"];
  [coderCopy encodeObject:self->_to forKey:@"to"];
  [coderCopy encodeObject:self->_cc forKey:@"cc"];
}

- (SGMailHeaders)initWithMessageId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailHeaders.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];
  }

  v11.receiver = self;
  v11.super_class = SGMailHeaders;
  v7 = [(SGMailHeaders *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_messageId, id);
  }

  return v8;
}

@end