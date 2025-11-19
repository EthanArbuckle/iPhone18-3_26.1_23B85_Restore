@interface DMFInstallManagedBookResultObject
- (DMFInstallManagedBookResultObject)initWithBook:(id)a3;
- (DMFInstallManagedBookResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallManagedBookResultObject

- (DMFInstallManagedBookResultObject)initWithBook:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFInstallManagedBookResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    book = v5->_book;
    v5->_book = v6;
  }

  return v5;
}

- (DMFInstallManagedBookResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFInstallManagedBookResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"book"];
    book = v5->_book;
    v5->_book = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFInstallManagedBookResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFInstallManagedBookResultObject *)self book:v6.receiver];
  [v4 encodeObject:v5 forKey:@"book"];
}

- (id)description
{
  v2 = [(DMFInstallManagedBookResultObject *)self book];
  v3 = [v2 description];

  return v3;
}

@end