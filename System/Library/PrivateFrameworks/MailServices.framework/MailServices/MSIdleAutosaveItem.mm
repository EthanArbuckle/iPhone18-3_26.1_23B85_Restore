@interface MSIdleAutosaveItem
+ (id)withAutosaveIdentifier:(id)identifier subject:(id)subject;
- (MSIdleAutosaveItem)initWithAutosaveIdentifier:(id)identifier subject:(id)subject;
- (MSIdleAutosaveItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSIdleAutosaveItem

+ (id)withAutosaveIdentifier:(id)identifier subject:(id)subject
{
  identifierCopy = identifier;
  subjectCopy = subject;
  v8 = [[self alloc] initWithAutosaveIdentifier:identifierCopy subject:subjectCopy];

  return v8;
}

- (MSIdleAutosaveItem)initWithAutosaveIdentifier:(id)identifier subject:(id)subject
{
  identifierCopy = identifier;
  subjectCopy = subject;
  v12.receiver = self;
  v12.super_class = MSIdleAutosaveItem;
  v9 = [(MSIdleAutosaveItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_autosaveIdentifier, identifier);
    objc_storeStrong(&v10->_subject, subject);
  }

  return v10;
}

- (MSIdleAutosaveItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autosaveID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v7 = [(MSIdleAutosaveItem *)self initWithAutosaveIdentifier:v5 subject:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_autosaveIdentifier forKey:@"autosaveID"];
  [coderCopy encodeObject:self->_subject forKey:@"subject"];
}

@end