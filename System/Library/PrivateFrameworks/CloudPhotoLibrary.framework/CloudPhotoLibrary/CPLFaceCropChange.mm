@interface CPLFaceCropChange
- (BOOL)validateChangeWithError:(id *)error;
- (BOOL)validateFullRecord;
- (id)personScopedIdentifier;
- (id)propertiesDescription;
- (void)setPersonScopedIdentifier:(id)identifier;
@end

@implementation CPLFaceCropChange

- (id)propertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  personIdentifier = self->_personIdentifier;
  v5 = [(NSData *)self->_resourceData length];
  v6 = _CPLShortDescriptionForFaceCropType(self->_faceCropType);
  v7 = [v3 stringWithFormat:@"person: %@ resource: %lub [%@]", personIdentifier, v5, v6];

  return v7;
}

- (BOOL)validateChangeWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = CPLFaceCropChange;
  LODWORD(v5) = [(CPLRecordChange *)&v9 validateChangeWithError:?];
  if (v5)
  {
    if (![(CPLRecordChange *)self hasChangeType:2])
    {
LABEL_5:
      LOBYTE(v5) = 1;
      return v5;
    }

    if (self->_personIdentifier)
    {
      if (self->_faceCropType)
      {
        goto LABEL_5;
      }

      if (error)
      {
        v6 = @"%@ has no valid type";
        goto LABEL_10;
      }
    }

    else if (error)
    {
      v6 = @"%@ has no person identifier";
LABEL_10:
      v7 = [CPLErrors cplErrorWithCode:18 description:v6, self];
      v5 = v7;
      LOBYTE(v5) = 0;
      *error = v7;
      return v5;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)validateFullRecord
{
  v5.receiver = self;
  v5.super_class = CPLFaceCropChange;
  validateFullRecord = [(CPLRecordChange *)&v5 validateFullRecord];
  if (validateFullRecord)
  {
    if (self->_personIdentifier)
    {
      LOBYTE(validateFullRecord) = self->_faceCropType != 0;
    }

    else
    {
      LOBYTE(validateFullRecord) = 0;
    }
  }

  return validateFullRecord;
}

- (void)setPersonScopedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  scopeIdentifier2 = [scopedIdentifier scopeIdentifier];

  if (scopeIdentifier && scopeIdentifier2)
  {
    v8 = [scopeIdentifier isEqual:scopeIdentifier2];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (scopeIdentifier | scopeIdentifier2)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          scopeIdentifier3 = [scopedIdentifier2 scopeIdentifier];
          scopeIdentifier4 = [identifierCopy scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = scopeIdentifier3;
          v27 = 2112;
          v28 = scopeIdentifier4;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFaceCropChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:45 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLFaceCropChange *)self setPersonIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)personScopedIdentifier
{
  personIdentifier = [(CPLFaceCropChange *)self personIdentifier];
  if (personIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:personIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end