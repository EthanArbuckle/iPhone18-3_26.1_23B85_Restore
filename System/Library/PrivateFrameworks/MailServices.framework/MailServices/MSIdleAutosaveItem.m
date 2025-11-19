@interface MSIdleAutosaveItem
+ (id)withAutosaveIdentifier:(id)a3 subject:(id)a4;
- (MSIdleAutosaveItem)initWithAutosaveIdentifier:(id)a3 subject:(id)a4;
- (MSIdleAutosaveItem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSIdleAutosaveItem

+ (id)withAutosaveIdentifier:(id)a3 subject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithAutosaveIdentifier:v6 subject:v7];

  return v8;
}

- (MSIdleAutosaveItem)initWithAutosaveIdentifier:(id)a3 subject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSIdleAutosaveItem;
  v9 = [(MSIdleAutosaveItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_autosaveIdentifier, a3);
    objc_storeStrong(&v10->_subject, a4);
  }

  return v10;
}

- (MSIdleAutosaveItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autosaveID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v7 = [(MSIdleAutosaveItem *)self initWithAutosaveIdentifier:v5 subject:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_autosaveIdentifier forKey:@"autosaveID"];
  [v4 encodeObject:self->_subject forKey:@"subject"];
}

@end