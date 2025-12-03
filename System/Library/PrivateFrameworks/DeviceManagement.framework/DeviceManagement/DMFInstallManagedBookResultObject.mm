@interface DMFInstallManagedBookResultObject
- (DMFInstallManagedBookResultObject)initWithBook:(id)book;
- (DMFInstallManagedBookResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFInstallManagedBookResultObject

- (DMFInstallManagedBookResultObject)initWithBook:(id)book
{
  bookCopy = book;
  v9.receiver = self;
  v9.super_class = DMFInstallManagedBookResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [bookCopy copy];
    book = v5->_book;
    v5->_book = v6;
  }

  return v5;
}

- (DMFInstallManagedBookResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFInstallManagedBookResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"book"];
    book = v5->_book;
    v5->_book = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFInstallManagedBookResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFInstallManagedBookResultObject *)self book:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"book"];
}

- (id)description
{
  book = [(DMFInstallManagedBookResultObject *)self book];
  v3 = [book description];

  return v3;
}

@end