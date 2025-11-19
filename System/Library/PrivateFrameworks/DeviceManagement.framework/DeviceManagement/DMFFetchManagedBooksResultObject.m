@interface DMFFetchManagedBooksResultObject
- (DMFFetchManagedBooksResultObject)initWithBooks:(id)a3;
- (DMFFetchManagedBooksResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchManagedBooksResultObject

- (DMFFetchManagedBooksResultObject)initWithBooks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchManagedBooksResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    books = v5->_books;
    v5->_books = v6;
  }

  return v5;
}

- (DMFFetchManagedBooksResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFFetchManagedBooksResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"books"];
    books = v5->_books;
    v5->_books = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchManagedBooksResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchManagedBooksResultObject *)self books:v6.receiver];
  [v4 encodeObject:v5 forKey:@"books"];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(DMFFetchManagedBooksResultObject *)self books];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_11];

  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = &stru_1F57A0020;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@"%@\n%@", v9, *(*(&v13 + 1) + 8 * i), v13];
        v9 = @",";
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = @",";
    }

    while (v7);
  }

  [v4 appendString:@"\n]"];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __47__DMFFetchManagedBooksResultObject_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 title];
  v7 = [v5 title];

  v8 = [v6 compare:v7];
  if (!v8)
  {
    v9 = [v4 author];
    v10 = [v4 author];
    v8 = [v9 compare:v10];
  }

  return v8;
}

@end