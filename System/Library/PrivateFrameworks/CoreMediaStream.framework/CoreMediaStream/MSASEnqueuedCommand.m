@interface MSASEnqueuedCommand
+ (id)command;
+ (id)commandwithCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5;
- (BOOL)canBeGroupedWithCommand:(id)a3;
- (MSASEnqueuedCommand)initWithCoder:(id)a3;
- (MSASEnqueuedCommand)initWithCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSASEnqueuedCommand

- (MSASEnqueuedCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MSASEnqueuedCommand;
  v5 = [(MSASEnqueuedCommand *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    command = v5->_command;
    v5->_command = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"variant"];
    variantParam = v5->_variantParam;
    v5->_variantParam = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v19 setWithObjects:{v20, v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"invariant"];
    invariantParam = v5->_invariantParam;
    v5->_invariantParam = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  command = self->_command;
  v8 = v4;
  if (command)
  {
    [v4 encodeObject:command forKey:@"command"];
    v4 = v8;
  }

  variantParam = self->_variantParam;
  if (variantParam)
  {
    [v8 encodeObject:variantParam forKey:@"variant"];
    v4 = v8;
  }

  invariantParam = self->_invariantParam;
  if (invariantParam)
  {
    [v8 encodeObject:invariantParam forKey:@"invariant"];
    v4 = v8;
  }
}

- (BOOL)canBeGroupedWithCommand:(id)a3
{
  v4 = a3;
  v5 = [(MSASEnqueuedCommand *)self command];
  v6 = [v4 command];
  if (MSObjectsAreEquivalent(v5, v6))
  {
    v7 = [(MSASEnqueuedCommand *)self invariantParam];
    v8 = [v4 invariantParam];
    v9 = MSObjectsAreEquivalent(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MSASEnqueuedCommand)initWithCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MSASEnqueuedCommand;
  v12 = [(MSASEnqueuedCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_command, a3);
    objc_storeStrong(&v13->_variantParam, a4);
    objc_storeStrong(&v13->_invariantParam, a5);
  }

  return v13;
}

+ (id)commandwithCommand:(id)a3 variantParam:(id)a4 invariantParam:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MSASEnqueuedCommand alloc] initWithCommand:v9 variantParam:v8 invariantParam:v7];

  return v10;
}

+ (id)command
{
  v2 = objc_alloc_init(MSASEnqueuedCommand);

  return v2;
}

@end