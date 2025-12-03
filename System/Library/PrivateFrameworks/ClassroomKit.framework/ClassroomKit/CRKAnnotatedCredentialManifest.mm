@interface CRKAnnotatedCredentialManifest
+ (CRKAnnotatedCredentialManifest)manifestWithData:(id)data;
- (BOOL)isEmpty;
- (CRKAnnotatedCredentialManifest)init;
- (CRKAnnotatedCredentialManifest)initWithCoder:(id)coder;
- (NSSet)persistentIDs;
- (id)annotationForPersistentID:(id)d;
- (id)dataRepresentation;
- (void)addPersistentID:(id)d withAnnotation:(id)annotation;
- (void)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)removePersistentID:(id)d;
@end

@implementation CRKAnnotatedCredentialManifest

+ (CRKAnnotatedCredentialManifest)manifestWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] cat_unarchiveObjectOfClass:objc_opt_class() withData:dataCopy error:&v8];
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
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  allKeys = [annotationsByPersistentID allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)annotationForPersistentID:(id)d
{
  dCopy = d;
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v6 = [annotationsByPersistentID objectForKeyedSubscript:dCopy];

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

- (void)addPersistentID:(id)d withAnnotation:(id)annotation
{
  dCopy = d;
  annotationCopy = annotation;
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v8 = [annotationsByPersistentID objectForKeyedSubscript:dCopy];

  if (annotationCopy)
  {
    null = annotationCopy;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    if (!(v8 | null))
    {
      null = 0;
      goto LABEL_7;
    }
  }

  if (([v8 isEqual:null] & 1) == 0)
  {
    annotationsByPersistentID2 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
    [annotationsByPersistentID2 setObject:null forKeyedSubscript:dCopy];

    [(CRKAnnotatedCredentialManifest *)self setModified:1];
  }

LABEL_7:
}

- (void)removePersistentID:(id)d
{
  dCopy = d;
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v5 = [annotationsByPersistentID objectForKeyedSubscript:dCopy];

  if (v5)
  {
    annotationsByPersistentID2 = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
    [annotationsByPersistentID2 setObject:0 forKeyedSubscript:dCopy];

    [(CRKAnnotatedCredentialManifest *)self setModified:1];
  }
}

- (BOOL)isEmpty
{
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  v3 = [annotationsByPersistentID count] == 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  annotationsByPersistentID = [(CRKAnnotatedCredentialManifest *)self annotationsByPersistentID];
  [coderCopy encodeObject:annotationsByPersistentID forKey:@"annotationsByPersistentID"];
}

- (CRKAnnotatedCredentialManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"annotationsByPersistentID"];
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
  verboseDescription = [self verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Failed to serialize credential store manifest: %{public}@", v4, v5, v6, v7, 2u);
}

@end