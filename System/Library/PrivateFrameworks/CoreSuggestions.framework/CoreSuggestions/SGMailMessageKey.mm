@interface SGMailMessageKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMailMessageKey:(id)a3;
- (SGMailMessageKey)initWithCoder:(id)a3;
- (SGMailMessageKey)initWithSource:(id)a3 messageId:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMailMessageKey

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"'%@'/'%@'", self->_source, self->_messageId];

  return v2;
}

- (BOOL)isEqualToMailMessageKey:(id)a3
{
  v4 = a3;
  v5 = self->_source;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_messageId;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGMailMessageKey *)self isEqualToMailMessageKey:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeObject:source forKey:@"source"];
  [v5 encodeObject:self->_messageId forKey:@"messageId"];
}

- (SGMailMessageKey)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SGMailMessageKey;
  v5 = [(SGMailMessageKey *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"source"];
    source = v5->_source;
    v5->_source = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"messageId"];
    messageId = v5->_messageId;
    v5->_messageId = v10;
  }

  return v5;
}

- (SGMailMessageKey)initWithSource:(id)a3 messageId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SGMailMessageKey;
  v9 = [(SGMailMessageKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    objc_storeStrong(&v10->_messageId, a4);
  }

  return v10;
}

@end