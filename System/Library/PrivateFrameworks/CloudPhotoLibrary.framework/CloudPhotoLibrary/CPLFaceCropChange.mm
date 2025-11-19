@interface CPLFaceCropChange
- (BOOL)validateChangeWithError:(id *)a3;
- (BOOL)validateFullRecord;
- (id)personScopedIdentifier;
- (id)propertiesDescription;
- (void)setPersonScopedIdentifier:(id)a3;
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

- (BOOL)validateChangeWithError:(id *)a3
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

      if (a3)
      {
        v6 = @"%@ has no valid type";
        goto LABEL_10;
      }
    }

    else if (a3)
    {
      v6 = @"%@ has no person identifier";
LABEL_10:
      v7 = [CPLErrors cplErrorWithCode:18 description:v6, self];
      v5 = v7;
      LOBYTE(v5) = 0;
      *a3 = v7;
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
  v3 = [(CPLRecordChange *)&v5 validateFullRecord];
  if (v3)
  {
    if (self->_personIdentifier)
    {
      LOBYTE(v3) = self->_faceCropType != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)setPersonScopedIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = [v22 scopeIdentifier];
  v6 = [(CPLRecordChange *)self scopedIdentifier];
  v7 = [v6 scopeIdentifier];

  if (v5 && v7)
  {
    v8 = [v5 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v5 | v7)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          v11 = [(CPLRecordChange *)self scopedIdentifier];
          v12 = [v11 scopeIdentifier];
          v13 = [v22 scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFaceCropChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:45 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLFaceCropChange *)self setPersonIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)personScopedIdentifier
{
  v3 = [(CPLFaceCropChange *)self personIdentifier];
  if (v3)
  {
    v4 = [CPLScopedIdentifier alloc];
    v5 = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:v5 identifier:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end