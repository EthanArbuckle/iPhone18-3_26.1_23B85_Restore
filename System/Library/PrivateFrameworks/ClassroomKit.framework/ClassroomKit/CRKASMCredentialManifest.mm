@interface CRKASMCredentialManifest
- (CRKASMCredentialManifest)initWithAnnotatedManifest:(id)a3;
- (NSSet)persistentIDs;
- (id)entryForPersistentID:(id)a3;
- (id)makeEntryForPersistentID:(id)a3;
@end

@implementation CRKASMCredentialManifest

- (CRKASMCredentialManifest)initWithAnnotatedManifest:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CRKASMCredentialManifest;
  v6 = [(CRKASMCredentialManifest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_annotatedManifest, a3);
    v8 = objc_opt_new();
    entriesByPersistentID = v7->_entriesByPersistentID;
    v7->_entriesByPersistentID = v8;
  }

  return v7;
}

- (NSSet)persistentIDs
{
  v2 = [(CRKASMCredentialManifest *)self annotatedManifest];
  v3 = [v2 persistentIDs];

  return v3;
}

- (id)entryForPersistentID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRKASMCredentialManifest *)self entriesByPersistentID];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v6 = [(CRKASMCredentialManifest *)self makeEntryForPersistentID:v4];
      if (v6)
      {
        v7 = [(CRKASMCredentialManifest *)self entriesByPersistentID];
        [v7 setObject:v6 forKeyedSubscript:v4];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)makeEntryForPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialManifest *)self annotatedManifest];
  v6 = [v5 annotationForPersistentID:v4];

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