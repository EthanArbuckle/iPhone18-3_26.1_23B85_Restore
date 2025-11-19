@interface DMFUpdateEnqueuedCommandsRequest
- (DMFUpdateEnqueuedCommandsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFUpdateEnqueuedCommandsRequest

- (DMFUpdateEnqueuedCommandsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFUpdateEnqueuedCommandsRequest;
  v5 = [(CATTaskRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [v4 decodePropertyListForKey:@"addCommands"];
    addCommands = v5->_addCommands;
    v5->_addCommands = v9;

    v11 = [v4 decodePropertyListForKey:@"removeCommands"];
    removeCommands = v5->_removeCommands;
    v5->_removeCommands = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFUpdateEnqueuedCommandsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFUpdateEnqueuedCommandsRequest *)self organizationIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFUpdateEnqueuedCommandsRequest *)self addCommands];
  [v4 encodeObject:v6 forKey:@"addCommands"];

  v7 = [(DMFUpdateEnqueuedCommandsRequest *)self removeCommands];
  [v4 encodeObject:v7 forKey:@"removeCommands"];
}

@end