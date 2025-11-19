@interface DMFFetchControlGroupIdentifiersRequest
- (DMFFetchControlGroupIdentifiersRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchControlGroupIdentifiersRequest

- (DMFFetchControlGroupIdentifiersRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFFetchControlGroupIdentifiersRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeTemporary"];
    v5->_includeTemporary = [v6 BOOLValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"leaderIdentifier"];
    leaderIdentifier = v5->_leaderIdentifier;
    v5->_leaderIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFFetchControlGroupIdentifiersRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchControlGroupIdentifiersRequest includeTemporary](self, "includeTemporary", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"includeTemporary"];

  v6 = [(DMFFetchControlGroupIdentifiersRequest *)self leaderIdentifier];
  [v4 encodeObject:v6 forKey:@"leaderIdentifier"];
}

@end