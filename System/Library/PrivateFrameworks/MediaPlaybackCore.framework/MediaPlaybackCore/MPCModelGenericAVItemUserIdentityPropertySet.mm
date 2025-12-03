@interface MPCModelGenericAVItemUserIdentityPropertySet
- (MPCModelGenericAVItemUserIdentityPropertySet)initWithRequestContext:(id)context error:(id *)error;
@end

@implementation MPCModelGenericAVItemUserIdentityPropertySet

- (MPCModelGenericAVItemUserIdentityPropertySet)initWithRequestContext:(id)context error:(id *)error
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MPCModelGenericAVItemUserIdentityPropertySet;
  v7 = [(MPCModelGenericAVItemUserIdentityPropertySet *)&v18 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  identity = [contextCopy identity];
  if (!identity)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:67 debugDescription:{@"No user identity for requestContext: %@", contextCopy}];
    }

    goto LABEL_11;
  }

  identityStore = [contextCopy identityStore];
  v10 = [identityStore getPropertiesForUserIdentity:identity error:error];
  identityProperties = v7->_identityProperties;
  v7->_identityProperties = v10;

  if (!error || !*error)
  {
    delegatedIdentity = [contextCopy delegatedIdentity];
    if (delegatedIdentity)
    {
      identityStore2 = [contextCopy identityStore];
      v14 = [identityStore2 getPropertiesForUserIdentity:delegatedIdentity error:error];
      delegatedIdentityProperties = v7->_delegatedIdentityProperties;
      v7->_delegatedIdentityProperties = v14;

      if (error)
      {
        if (*error)
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