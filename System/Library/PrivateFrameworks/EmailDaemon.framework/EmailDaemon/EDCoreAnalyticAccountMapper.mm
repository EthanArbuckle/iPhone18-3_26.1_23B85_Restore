@interface EDCoreAnalyticAccountMapper
- (EDCoreAnalyticAccountMapper)initWithCoder:(id)a3;
- (unint64_t)indexOfAccountId:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EDCoreAnalyticAccountMapper

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EDCoreAnalyticAccountMapper *)self date];
  [v6 encodeObject:v4 forKey:@"date"];

  v5 = [(EDCoreAnalyticAccountMapper *)self accounts];
  [v6 encodeObject:v5 forKey:@"accounts"];
}

- (EDCoreAnalyticAccountMapper)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EDCoreAnalyticAccountMapper;
  v5 = [(EDCoreAnalyticAccountMapper *)&v12 init];
  if (v5)
  {
    v5->_date = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"accounts"];
    accounts = v5->_accounts;
    v5->_accounts = v9;
  }

  return v5;
}

- (unint64_t)indexOfAccountId:(id)a3
{
  v4 = a3;
  v5 = [(EDCoreAnalyticAccountMapper *)self accounts];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

@end