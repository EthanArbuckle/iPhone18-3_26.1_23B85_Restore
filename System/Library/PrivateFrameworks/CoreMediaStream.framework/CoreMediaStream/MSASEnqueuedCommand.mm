@interface MSASEnqueuedCommand
+ (id)command;
+ (id)commandwithCommand:(id)command variantParam:(id)param invariantParam:(id)invariantParam;
- (BOOL)canBeGroupedWithCommand:(id)command;
- (MSASEnqueuedCommand)initWithCoder:(id)coder;
- (MSASEnqueuedCommand)initWithCommand:(id)command variantParam:(id)param invariantParam:(id)invariantParam;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSASEnqueuedCommand

- (MSASEnqueuedCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MSASEnqueuedCommand;
  v5 = [(MSASEnqueuedCommand *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
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
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"variant"];
    variantParam = v5->_variantParam;
    v5->_variantParam = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v19 setWithObjects:{v20, v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"invariant"];
    invariantParam = v5->_invariantParam;
    v5->_invariantParam = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  command = self->_command;
  v8 = coderCopy;
  if (command)
  {
    [coderCopy encodeObject:command forKey:@"command"];
    coderCopy = v8;
  }

  variantParam = self->_variantParam;
  if (variantParam)
  {
    [v8 encodeObject:variantParam forKey:@"variant"];
    coderCopy = v8;
  }

  invariantParam = self->_invariantParam;
  if (invariantParam)
  {
    [v8 encodeObject:invariantParam forKey:@"invariant"];
    coderCopy = v8;
  }
}

- (BOOL)canBeGroupedWithCommand:(id)command
{
  commandCopy = command;
  command = [(MSASEnqueuedCommand *)self command];
  command2 = [commandCopy command];
  if (MSObjectsAreEquivalent(command, command2))
  {
    invariantParam = [(MSASEnqueuedCommand *)self invariantParam];
    invariantParam2 = [commandCopy invariantParam];
    v9 = MSObjectsAreEquivalent(invariantParam, invariantParam2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MSASEnqueuedCommand)initWithCommand:(id)command variantParam:(id)param invariantParam:(id)invariantParam
{
  commandCopy = command;
  paramCopy = param;
  invariantParamCopy = invariantParam;
  v15.receiver = self;
  v15.super_class = MSASEnqueuedCommand;
  v12 = [(MSASEnqueuedCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_command, command);
    objc_storeStrong(&v13->_variantParam, param);
    objc_storeStrong(&v13->_invariantParam, invariantParam);
  }

  return v13;
}

+ (id)commandwithCommand:(id)command variantParam:(id)param invariantParam:(id)invariantParam
{
  invariantParamCopy = invariantParam;
  paramCopy = param;
  commandCopy = command;
  v10 = [[MSASEnqueuedCommand alloc] initWithCommand:commandCopy variantParam:paramCopy invariantParam:invariantParamCopy];

  return v10;
}

+ (id)command
{
  v2 = objc_alloc_init(MSASEnqueuedCommand);

  return v2;
}

@end