@interface CRKFetchChaptersRequest
- (BOOL)isValidWithError:(id *)error;
- (CRKFetchChaptersRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchChaptersRequest

- (BOOL)isValidWithError:(id *)error
{
  path = [(CRKFetchChaptersRequest *)self path];
  v6 = [path length];

  if (!v6)
  {
    if (!error)
    {
      return 0;
    }

    v12 = &unk_2856725E0;
LABEL_11:
    v13 = CRKErrorWithCodeAndUserInfo(2, v12);
    v14 = v13;
    result = 0;
    *error = v13;
    return result;
  }

  identifierType = [(CRKFetchChaptersRequest *)self identifierType];
  v8 = [identifierType length];

  if (!v8)
  {
    if (!error)
    {
      return 0;
    }

    v12 = &unk_285672608;
    goto LABEL_11;
  }

  identifier = [(CRKFetchChaptersRequest *)self identifier];
  v10 = [identifier length];

  if (v10)
  {
    return 1;
  }

  if (error)
  {
    v12 = &unk_285672630;
    goto LABEL_11;
  }

  return 0;
}

- (CRKFetchChaptersRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CRKFetchChaptersRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"path"];
    path = v5->_path;
    v5->_path = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"identifierType"];
    identifierType = v5->_identifierType;
    v5->_identifierType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKFetchChaptersRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchChaptersRequest *)self path:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"path"];

  identifierType = [(CRKFetchChaptersRequest *)self identifierType];
  [coderCopy encodeObject:identifierType forKey:@"identifierType"];

  identifier = [(CRKFetchChaptersRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end