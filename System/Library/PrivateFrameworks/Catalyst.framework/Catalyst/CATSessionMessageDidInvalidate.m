@interface CATSessionMessageDidInvalidate
- (CATSessionMessageDidInvalidate)initWithCoder:(id)a3;
- (CATSessionMessageDidInvalidate)initWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATSessionMessageDidInvalidate

- (CATSessionMessageDidInvalidate)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATSessionMessageDidInvalidate;
  v6 = [(CATMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (CATSessionMessageDidInvalidate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CATSessionMessageDidInvalidate;
  v5 = [(CATMessage *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CATSessionMessageDidInvalidate;
  v4 = a3;
  [(CATMessage *)&v6 encodeWithCoder:v4];
  v5 = [(CATSessionMessageDidInvalidate *)self error:v6.receiver];
  [v4 encodeObject:v5 forKey:@"error"];
}

@end