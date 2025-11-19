@interface DMFFetchDeclarationsRequest
- (DMFFetchDeclarationsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchDeclarationsRequest

- (DMFFetchDeclarationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DMFFetchDeclarationsRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"payloadIdentifiers"];
    payloadIdentifiers = v5->_payloadIdentifiers;
    v5->_payloadIdentifiers = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includePayloadContents"];
    v5->_includePayloadContents = [v14 BOOLValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeInternalState"];
    v5->_includeInternalState = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFFetchDeclarationsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(DMFFetchDeclarationsRequest *)self organizationIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFFetchDeclarationsRequest *)self payloadIdentifiers];
  [v4 encodeObject:v6 forKey:@"payloadIdentifiers"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchDeclarationsRequest includePayloadContents](self, "includePayloadContents")}];
  [v4 encodeObject:v7 forKey:@"includePayloadContents"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchDeclarationsRequest includeInternalState](self, "includeInternalState")}];
  [v4 encodeObject:v8 forKey:@"includeInternalState"];
}

@end