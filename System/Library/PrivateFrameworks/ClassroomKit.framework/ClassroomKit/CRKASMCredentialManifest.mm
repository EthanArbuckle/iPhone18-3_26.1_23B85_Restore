@interface CRKASMCredentialManifest
- (CRKASMCredentialManifest)initWithAnnotatedManifest:(id)manifest;
- (NSSet)persistentIDs;
- (id)entryForPersistentID:(id)d;
- (id)makeEntryForPersistentID:(id)d;
@end

@implementation CRKASMCredentialManifest

- (CRKASMCredentialManifest)initWithAnnotatedManifest:(id)manifest
{
  manifestCopy = manifest;
  v11.receiver = self;
  v11.super_class = CRKASMCredentialManifest;
  v6 = [(CRKASMCredentialManifest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_annotatedManifest, manifest);
    v8 = objc_opt_new();
    entriesByPersistentID = v7->_entriesByPersistentID;
    v7->_entriesByPersistentID = v8;
  }

  return v7;
}

- (NSSet)persistentIDs
{
  annotatedManifest = [(CRKASMCredentialManifest *)self annotatedManifest];
  persistentIDs = [annotatedManifest persistentIDs];

  return persistentIDs;
}

- (id)entryForPersistentID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    entriesByPersistentID = [(CRKASMCredentialManifest *)self entriesByPersistentID];
    v6 = [entriesByPersistentID objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      v6 = [(CRKASMCredentialManifest *)self makeEntryForPersistentID:dCopy];
      if (v6)
      {
        entriesByPersistentID2 = [(CRKASMCredentialManifest *)self entriesByPersistentID];
        [entriesByPersistentID2 setObject:v6 forKeyedSubscript:dCopy];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)makeEntryForPersistentID:(id)d
{
  dCopy = d;
  annotatedManifest = [(CRKASMCredentialManifest *)self annotatedManifest];
  v6 = [annotatedManifest annotationForPersistentID:dCopy];

  if (v6)
  {
    v7 = [[CRKASMCredentialManifestEntry alloc] initWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end