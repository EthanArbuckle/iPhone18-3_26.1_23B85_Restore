@interface MPCModelGenericAVItemUserIdentityPropertySet
- (MPCModelGenericAVItemUserIdentityPropertySet)initWithRequestContext:(id)a3 error:(id *)a4;
@end

@implementation MPCModelGenericAVItemUserIdentityPropertySet

- (MPCModelGenericAVItemUserIdentityPropertySet)initWithRequestContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = MPCModelGenericAVItemUserIdentityPropertySet;
  v7 = [(MPCModelGenericAVItemUserIdentityPropertySet *)&v18 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [v6 identity];
  if (!v8)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:67 debugDescription:{@"No user identity for requestContext: %@", v6}];
    }

    goto LABEL_11;
  }

  v9 = [v6 identityStore];
  v10 = [v9 getPropertiesForUserIdentity:v8 error:a4];
  identityProperties = v7->_identityProperties;
  v7->_identityProperties = v10;

  if (!a4 || !*a4)
  {
    v12 = [v6 delegatedIdentity];
    if (v12)
    {
      v13 = [v6 identityStore];
      v14 = [v13 getPropertiesForUserIdentity:v12 error:a4];
      delegatedIdentityProperties = v7->_delegatedIdentityProperties;
      v7->_delegatedIdentityProperties = v14;

      if (a4)
      {
        if (*a4)
        {

          goto LABEL_11;
        }
      }
    }

LABEL_13:
    v16 = v7;
    goto LABEL_14;
  }

LABEL_11:

  v16 = 0;
LABEL_14:

  return v16;
}

@end