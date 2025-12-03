@interface DMFFetchDeclarationsRequest
- (DMFFetchDeclarationsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchDeclarationsRequest

- (DMFFetchDeclarationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DMFFetchDeclarationsRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"payloadIdentifiers"];
    payloadIdentifiers = v5->_payloadIdentifiers;
    v5->_payloadIdentifiers = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includePayloadContents"];
    v5->_includePayloadContents = [v14 BOOLValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeInternalState"];
    v5->_includeInternalState = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMFFetchDeclarationsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchDeclarationsRequest *)self organizationIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  payloadIdentifiers = [(DMFFetchDeclarationsRequest *)self payloadIdentifiers];
  [coderCopy encodeObject:payloadIdentifiers forKey:@"payloadIdentifiers"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchDeclarationsRequest includePayloadContents](self, "includePayloadContents")}];
  [coderCopy encodeObject:v7 forKey:@"includePayloadContents"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchDeclarationsRequest includeInternalState](self, "includeInternalState")}];
  [coderCopy encodeObject:v8 forKey:@"includeInternalState"];
}

@end