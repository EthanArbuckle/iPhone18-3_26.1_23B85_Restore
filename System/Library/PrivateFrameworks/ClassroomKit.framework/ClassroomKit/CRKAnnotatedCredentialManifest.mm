@interface CRKAnnotatedCredentialManifest
+ (CRKAnnotatedCredentialManifest)manifestWithData:(id)a3;
- (BOOL)isEmpty;
- (CRKAnnotatedCredentialManifest)init;
- (CRKAnnotatedCredentialManifest)initWithCoder:(id)a3;
- (NSSet)persistentIDs;
- (id)annotationForPersistentID:(id)a3;
- (id)dataRepresentation;
- (void)addPersistentID:(id)a3 withAnnotation:(id)a4;
- (void)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)removePersistentID:(id)a3;
@end

@implementation CRKAnnotatedCredentialManifest

+ (CRKAnnotatedCredentialManifest)manifestWithData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] cat_unarchiveObjectOfClass:objc_opt_class() withData:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = _CRKLogASM_19();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CRKAnnotatedCredentialManifest manifestWithData:v5];
      }
    }
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (CRKAnnotatedCredentialManifest)init
{
  v6.receiver = self;
  v6.super_class = CRKAnnotatedCredentialManifest;
  v2 = [(CRKAnnotatedCredentialManifest *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    annotationsByPersistentID = v2->_annotationsByPersistentID;
    v2->_annotationsByPersistentID = v3;
  }

  return v2;
}

- (id)dataRepresentation
{
  if ([(CRKAnnotatedCredentialManifest *)self isEmpty])
  {
    v3 = 0;
  }

  else
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:self error:&v8];
    v4 = v8;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = _CRKLogASM_19();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(CRKAnnotatedCredentialManifest *)v4 dataRepresentation];
      }
    }
  }

  return v3;
}

- (NSSet)persistentIDs
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)annotationForPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (void)addPersistentID:(id)a3 withAnnotation:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v8 = [v7 objectForKeyedSubscript:v11];

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB68] null];
    if (!(v8 | v9))
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  if (([v8 isEqual:v9] & 1) == 0)
  {
    v10 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
    [v10 setObject:v9 forKeyedSubscript:v11];

    [(CRKAnnotatedCredentialManifest *)self setModified:1];
  }

LABEL_7:
}

- (void)removePersistentID:(id)a3
{
  v7 = a3;
  v4 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v5 = [v4 objectForKeyedSubscript:v7];

  if (v5)
  {
    v6 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
    [v6 setObject:0 forKeyedSubscript:v7];

    [(CRKAnnotatedCredentialManifest *)self setModified:1];
  }
}

- (BOOL)isEmpty
{
  v2 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  [v4 encodeObject:v5 forKey:@"annotationsByPersistentID"];
}

- (CRKAnnotatedCredentialManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRKAnnotatedCredentialManifest;
  v5 = [(CRKAnnotatedCredentialManifest *)&v21 init];
  if (v5)
  {
    v20 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"annotationsByPersistentID"];
    annotationsByPersistentID = v5->_annotationsByPersistentID;
    v5->_annotationsByPersistentID = v15;
  }

  return v5;
}

+ (void)manifestWithData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Failed to deserialize credential store manifest: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)dataRepresentation
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Failed to serialize credential store manifest: %{public}@", v4, v5, v6, v7, 2u);
}

@end