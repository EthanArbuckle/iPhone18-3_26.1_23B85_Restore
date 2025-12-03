@interface EDCoreAnalyticAccountMapper
- (EDCoreAnalyticAccountMapper)initWithCoder:(id)coder;
- (unint64_t)indexOfAccountId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EDCoreAnalyticAccountMapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(EDCoreAnalyticAccountMapper *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  accounts = [(EDCoreAnalyticAccountMapper *)self accounts];
  [coderCopy encodeObject:accounts forKey:@"accounts"];
}

- (EDCoreAnalyticAccountMapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EDCoreAnalyticAccountMapper;
  v5 = [(EDCoreAnalyticAccountMapper *)&v12 init];
  if (v5)
  {
    v5->_date = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accounts"];
    accounts = v5->_accounts;
    v5->_accounts = v9;
  }

  return v5;
}

- (unint64_t)indexOfAccountId:(id)id
{
  idCopy = id;
  accounts = [(EDCoreAnalyticAccountMapper *)self accounts];
  v6 = [accounts indexOfObject:idCopy];

  return v6;
}

@end