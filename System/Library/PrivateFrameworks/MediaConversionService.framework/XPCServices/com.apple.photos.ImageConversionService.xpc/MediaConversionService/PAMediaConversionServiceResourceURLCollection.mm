@interface PAMediaConversionServiceResourceURLCollection
+ (BOOL)getSignatureString:(id *)string filenameSummary:(id *)summary forDictionaryRepresentation:(id)representation;
+ (PAMediaConversionServiceResourceURLCollection)collectionWithMainResourceURL:(id)l;
+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)representation accessProvider:(id)provider error:(id *)error;
+ (id)filenameSummaryStringForDictionaryRepresentation:(id)representation;
- (BOOL)allURLsAreReadable;
- (BOOL)containsAllRoles:(id)roles;
- (BOOL)containsAnyRole:(id)role;
- (BOOL)copyURL:(id)l forRole:(id)role toDirectory:(id)directory error:(id *)error;
- (BOOL)ensureFilesExistWithError:(id *)error;
- (BOOL)isBlastDoorAccessRequired;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeExistingEmptyFilesWithError:(id *)error;
- (NSDictionary)blastDoorMainSourceProperties;
- (NSDictionary)blastDoorVideoComplementProperties;
- (NSError)blastDoorError;
- (NSURL)blastDoorSourceURL;
- (PAMediaConversionServiceResourceURLCollection)init;
- (id)bookmarkDataDictionaryRepresentationWithError:(id *)error;
- (id)fileSizeSummary;
- (id)filenameExtensionAndPathHashForRole:(id)role;
- (id)logMessageSummaryWithFullPath:(BOOL)path;
- (id)resourceURLForRole:(id)role;
- (id)typeIdentifierForResourceURLWithRole:(id)role;
- (id)urlForDebugDumpWithDirectoryName:(id)name inExistingParentDirectory:(id)directory error:(id *)error;
- (unint64_t)hash;
- (void)enumerateResourceURLReferences:(id)references;
- (void)enumerateResourceURLs:(id)ls;
- (void)setResourceURL:(id)l forRole:(id)role;
@end

@implementation PAMediaConversionServiceResourceURLCollection

- (BOOL)copyURL:(id)l forRole:(id)role toDirectory:(id)directory error:(id *)error
{
  lCopy = l;
  directoryCopy = directory;
  v10 = +[NSFileManager defaultManager];
  v17 = NSFileOwnerAccountName;
  v18 = @"mobile";
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v12 = [v10 createDirectoryAtURL:directoryCopy withIntermediateDirectories:0 attributes:v11 error:error];

  v13 = 0;
  if (v12)
  {
    lastPathComponent = [lCopy lastPathComponent];
    v15 = [directoryCopy URLByAppendingPathComponent:lastPathComponent];

    v13 = [v10 copyItemAtURL:lCopy toURL:v15 error:error];
  }

  return v13;
}

- (id)urlForDebugDumpWithDirectoryName:(id)name inExistingParentDirectory:(id)directory error:(id *)error
{
  nameCopy = name;
  directoryCopy = directory;
  v11 = directoryCopy;
  if (nameCopy)
  {
    if (directoryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:541 description:{@"Invalid parameter not satisfying: %@", @"outputDirectoryName"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v25 = +[NSAssertionHandler currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"parentDirectoryURL"}];

LABEL_3:
  v12 = +[NSFileManager defaultManager];
  v43 = 0;
  path = [v11 path];
  v14 = [v12 fileExistsAtPath:path isDirectory:&v43];

  if ((v14 & v43 & 1) == 0)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"exists && isDirectory"}];
  }

  v15 = [v11 URLByAppendingPathComponent:nameCopy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000BC38;
  v41 = sub_10000BC48;
  v42 = 0;
  v44 = NSFileOwnerAccountName;
  v45 = @"mobile";
  v16 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v17 = (v38 + 5);
  obj = v38[5];
  v18 = [v12 createDirectoryAtURL:v15 withIntermediateDirectories:0 attributes:v16 error:&obj];
  objc_storeStrong(v17, obj);

  if (v18)
  {
    goto LABEL_6;
  }

  domain = [v38[5] domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    v22 = [v38[5] code] == 516;

    if (v22)
    {
LABEL_6:
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10000BC50;
      v27[3] = &unk_10003D5C8;
      v19 = v15;
      v28 = v19;
      selfCopy = self;
      v30 = &v37;
      v31 = &v32;
      [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v27];
      if (*(v33 + 24) == 1)
      {
        v20 = 0;
        if (error)
        {
          *error = v38[5];
        }
      }

      else
      {
        v20 = v19;
      }

      _Block_object_dispose(&v32, 8);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v20 = 0;
  if (error)
  {
    *error = v38[5];
  }

LABEL_18:
  _Block_object_dispose(&v37, 8);

  return v20;
}

- (void)enumerateResourceURLs:(id)ls
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BDB4;
  v5[3] = &unk_10003D5A0;
  lsCopy = ls;
  v4 = lsCopy;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v5];
}

- (void)enumerateResourceURLReferences:(id)references
{
  referencesCopy = references;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_urlReferencesByRole allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&stru_10003D578];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v11];
      v13 = 0;
      referencesCopy[2](referencesCopy, v11, v12, &v13);
      LOBYTE(v11) = v13;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)fileSizeSummary
{
  v3 = [NSMutableString stringWithString:@"<"];
  v4 = +[NSMutableArray array];
  urlReferencesByRole = self->_urlReferencesByRole;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C0BC;
  v9[3] = &unk_10003D558;
  v10 = v4;
  v6 = v4;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [v6 componentsJoinedByString:@"|"];
  [v3 appendString:v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)logMessageSummaryWithFullPath:(BOOL)path
{
  v5 = [NSMutableString stringWithString:@"<"];
  +[NSMutableArray array];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000C364;
  v13 = v12 = &unk_10003D530;
  pathCopy = path;
  v6 = v13;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:&v9];
  v7 = [v6 componentsJoinedByString:{@"|", v9, v10, v11, v12}];
  [v5 appendString:v7];

  [v5 appendString:@">"];

  return v5;
}

- (BOOL)allURLsAreReadable
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  +[NSFileManager defaultManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C55C;
  v5[3] = &unk_10003D508;
  v3 = v7 = &v8;
  v6 = v3;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v5];
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (BOOL)removeExistingEmptyFilesWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000BC38;
  v22 = sub_10000BC48;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSFileManager defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C744;
  v10[3] = &unk_10003D4E0;
  v12 = &v18;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (error && *(v15 + 24))
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

- (BOOL)ensureFilesExistWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000BC38;
  v22 = sub_10000BC48;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSFileManager defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CADC;
  v10[3] = &unk_10003D4E0;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (error && *(v15 + 24))
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

- (id)filenameExtensionAndPathHashForRole:(id)role
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:role];
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    v10 = 0;
    [v3 getPathHash:&v10 lastPathComponent:&v9];
    v5 = v9;
    pathExtension = [v5 pathExtension];
    v7 = [NSString stringWithFormat:@"%@|%lx", pathExtension, v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bookmarkDataDictionaryRepresentationWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000BC38;
  v22 = sub_10000BC48;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSMutableDictionary dictionary];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D098;
  v10[3] = &unk_10003D4E0;
  v12 = &v18;
  v7 = v5;
  v11 = v7;
  v13 = &v14;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v15 + 24) == 1)
  {
    v8 = 0;
    if (error)
    {
      *error = v19[5];
    }
  }

  else
  {
    v8 = v7;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

- (id)typeIdentifierForResourceURLWithRole:(id)role
{
  roleCopy = role;
  if (!roleCopy)
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:roleCopy];
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v8 = [v6 url];
  if (!v8)
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:313 description:@"Unexpected nil role"];
  }

  v32 = 0;
  v31 = 0;
  v9 = [v8 getResourceValue:&v32 forKey:NSURLTypeIdentifierKey error:&v31];
  v10 = v32;
  v11 = v31;
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    domain = [v11 domain];
    v15 = [domain isEqualToString:NSCocoaErrorDomain];
    v13 = v15;
    if (v15)
    {
      code = [v12 code];

      if (code != 260)
      {
        v13 = 0;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }

      domain = [v8 lastPathComponent];
      pathExtension = [domain pathExtension];
      v18 = [UTType typeWithFilenameExtension:pathExtension];
      identifier = [v18 identifier];

      v10 = identifier;
    }

    if (v10)
    {
      goto LABEL_13;
    }

LABEL_21:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      path = [v8 path];
      *buf = 138543874;
      v34 = roleCopy;
      v35 = 2112;
      v36 = path;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine type identifier for URL with role %{public}@ %@: %{public}@", buf, 0x20u);
    }

    v10 = 0;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_13:
  if ((v13 & 1) == 0)
  {
    if (v10)
    {
      v20 = [UTType typeWithIdentifier:v10];
      v21 = [v20 conformsToType:UTTypeImage];

      if (v21)
      {
        v22 = CGImageSourceCreateWithURL(v8, 0);
        if (v22)
        {
          v23 = v22;
          v24 = CGImageSourceGetType(v22);
          v25 = v24;
          if (v24)
          {
            v26 = v24;

            v10 = v26;
          }

          CFRelease(v23);
        }
      }
    }
  }

LABEL_24:

LABEL_25:

  return v10;
}

- (BOOL)containsAnyRole:(id)role
{
  roleCopy = role;
  if (![roleCopy count])
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = roleCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];

        if (v11)
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)containsAllRoles:(id)roles
{
  rolesCopy = roles;
  if (![rolesCopy count])
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = rolesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (id)resourceURLForRole:(id)role
{
  roleCopy = role;
  if (!roleCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:roleCopy];
  v7 = [v6 url];

  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];

  if (accessProviderDelegate)
  {
    accessProviderDelegate2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
    v10 = [accessProviderDelegate2 validateAccessForURL:v7 role:roleCopy];

    v7 = v10;
  }

  return v7;
}

- (void)setResourceURL:(id)l forRole:(id)role
{
  lCopy = l;
  roleCopy = role;
  if (lCopy)
  {
    if (roleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (roleCopy)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"role"}];

LABEL_3:
  v8 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:roleCopy];

  if (v8)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:253 description:{@"This resource URL collection already has a URL for role '%@'", roleCopy}];
  }

  v9 = [PAMediaConversionServiceResourceURLReference referenceWithURL:lCopy];
  [(NSMutableDictionary *)self->_urlReferencesByRole setObject:v9 forKeyedSubscript:roleCopy];
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DCB0;
  v4[3] = &unk_10003D4B8;
  v4[4] = &v5;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  urlReferencesByRole = self->_urlReferencesByRole;
  urlReferencesByRole = [equal urlReferencesByRole];
  LOBYTE(urlReferencesByRole) = [(NSMutableDictionary *)urlReferencesByRole isEqual:urlReferencesByRole];

  return urlReferencesByRole;
}

- (PAMediaConversionServiceResourceURLCollection)init
{
  v6.receiver = self;
  v6.super_class = PAMediaConversionServiceResourceURLCollection;
  v2 = [(PAMediaConversionServiceResourceURLCollection *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    urlReferencesByRole = v2->_urlReferencesByRole;
    v2->_urlReferencesByRole = v3;
  }

  return v2;
}

+ (id)filenameSummaryStringForDictionaryRepresentation:(id)representation
{
  allValues = [representation allValues];
  v4 = [allValues valueForKey:@"lastPathComponent"];
  v5 = [v4 componentsJoinedByString:@"|"];

  return v5;
}

+ (BOOL)getSignatureString:(id *)string filenameSummary:(id *)summary forDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v10 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [representationCopy allKeys];
  v12 = [allKeys sortedArrayUsingComparator:&stru_10003D490];

  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    stringCopy = string;
    summaryCopy = summary;
    v15 = 0;
    v16 = *v32;
    v28 = 1;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v29 = 0;
        v30 = 0;
        v19 = representationCopy;
        v20 = [representationCopy objectForKeyedSubscript:v18];
        v21 = [PAMediaConversionServiceResourceURLReference getPathHash:&v30 lastPathComponent:&v29 forDictionaryRepresentation:v20];
        v22 = v29;

        if (v21)
        {
          v15 ^= v30;
          [v10 addObject:v22];
        }

        else
        {
          v28 = 0;
        }

        representationCopy = v19;
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);

    string = stringCopy;
    summary = summaryCopy;
    if ((v28 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_21;
    }
  }

  else
  {

    v15 = 0;
  }

  if (string)
  {
    *string = [NSString stringWithFormat:@"%lx", v15];
  }

  if (summary)
  {
    *summary = [v10 componentsJoinedByString:@"|"];
  }

  v23 = 1;
LABEL_21:

  return v23;
}

+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)representation accessProvider:(id)provider error:(id *)error
{
  representationCopy = representation;
  providerCopy = provider;
  if (!representationCopy)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000BC38;
  v27 = sub_10000BC48;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E2DC;
  v15[3] = &unk_10003D470;
  v17 = &v23;
  v11 = objc_opt_new();
  v16 = v11;
  v18 = &v19;
  [representationCopy enumerateKeysAndObjectsUsingBlock:v15];
  if (*(v20 + 24) == 1)
  {
    v12 = 0;
    if (error)
    {
      *error = v24[5];
    }
  }

  else
  {
    if (providerCopy)
    {
      [v11 setAccessProviderDelegate:providerCopy];
    }

    v12 = v11;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

+ (PAMediaConversionServiceResourceURLCollection)collectionWithMainResourceURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setResourceURL:lCopy forRole:@"PAMediaConversionResourceRoleMainResource"];

  return v4;
}

- (NSError)blastDoorError
{
  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  error = [accessProviderDelegate error];

  return error;
}

- (NSURL)blastDoorSourceURL
{
  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  blastDoorSourceURL = [accessProviderDelegate blastDoorSourceURL];

  return blastDoorSourceURL;
}

- (NSDictionary)blastDoorVideoComplementProperties
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:@"PAMediaConversionResourceRoleVideoComplement"];
  v4 = [v3 url];

  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v6 = [accessProviderDelegate propertiesForVideoComplementURL:v4];

  return v6;
}

- (NSDictionary)blastDoorMainSourceProperties
{
  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  blastDoorMainSourceProperties = [accessProviderDelegate blastDoorMainSourceProperties];

  return blastDoorMainSourceProperties;
}

- (BOOL)isBlastDoorAccessRequired
{
  accessProviderDelegate = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  isBlastDoorAccessRequired = [accessProviderDelegate isBlastDoorAccessRequired];

  return isBlastDoorAccessRequired;
}

@end