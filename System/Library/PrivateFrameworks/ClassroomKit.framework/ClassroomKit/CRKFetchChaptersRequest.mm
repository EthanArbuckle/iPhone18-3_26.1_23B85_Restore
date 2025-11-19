@interface CRKFetchChaptersRequest
- (BOOL)isValidWithError:(id *)a3;
- (CRKFetchChaptersRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchChaptersRequest

- (BOOL)isValidWithError:(id *)a3
{
  v5 = [(CRKFetchChaptersRequest *)self path];
  v6 = [v5 length];

  if (!v6)
  {
    if (!a3)
    {
      return 0;
    }

    v12 = &unk_2856725E0;
LABEL_11:
    v13 = CRKErrorWithCodeAndUserInfo(2, v12);
    v14 = v13;
    result = 0;
    *a3 = v13;
    return result;
  }

  v7 = [(CRKFetchChaptersRequest *)self identifierType];
  v8 = [v7 length];

  if (!v8)
  {
    if (!a3)
    {
      return 0;
    }

    v12 = &unk_285672608;
    goto LABEL_11;
  }

  v9 = [(CRKFetchChaptersRequest *)self identifier];
  v10 = [v9 length];

  if (v10)
  {
    return 1;
  }

  if (a3)
  {
    v12 = &unk_285672630;
    goto LABEL_11;
  }

  return 0;
}

- (CRKFetchChaptersRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CRKFetchChaptersRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"path"];
    path = v5->_path;
    v5->_path = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"identifierType"];
    identifierType = v5->_identifierType;
    v5->_identifierType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKFetchChaptersRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(CRKFetchChaptersRequest *)self path:v8.receiver];
  [v4 encodeObject:v5 forKey:@"path"];

  v6 = [(CRKFetchChaptersRequest *)self identifierType];
  [v4 encodeObject:v6 forKey:@"identifierType"];

  v7 = [(CRKFetchChaptersRequest *)self identifier];
  [v4 encodeObject:v7 forKey:@"identifier"];
}

@end