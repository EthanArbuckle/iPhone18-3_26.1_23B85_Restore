@interface DMFUpdateEnqueuedCommandsRequest
- (DMFUpdateEnqueuedCommandsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFUpdateEnqueuedCommandsRequest

- (DMFUpdateEnqueuedCommandsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFUpdateEnqueuedCommandsRequest;
  v5 = [(CATTaskRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [coderCopy decodePropertyListForKey:@"addCommands"];
    addCommands = v5->_addCommands;
    v5->_addCommands = v9;

    v11 = [coderCopy decodePropertyListForKey:@"removeCommands"];
    removeCommands = v5->_removeCommands;
    v5->_removeCommands = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFUpdateEnqueuedCommandsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(DMFUpdateEnqueuedCommandsRequest *)self organizationIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  addCommands = [(DMFUpdateEnqueuedCommandsRequest *)self addCommands];
  [coderCopy encodeObject:addCommands forKey:@"addCommands"];

  removeCommands = [(DMFUpdateEnqueuedCommandsRequest *)self removeCommands];
  [coderCopy encodeObject:removeCommands forKey:@"removeCommands"];
}

@end