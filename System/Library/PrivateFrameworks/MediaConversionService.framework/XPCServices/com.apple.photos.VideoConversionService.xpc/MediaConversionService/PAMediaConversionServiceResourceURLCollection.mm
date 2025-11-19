@interface PAMediaConversionServiceResourceURLCollection
+ (BOOL)getSignatureString:(id *)a3 filenameSummary:(id *)a4 forDictionaryRepresentation:(id)a5;
+ (PAMediaConversionServiceResourceURLCollection)collectionWithMainResourceURL:(id)a3;
+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)a3 accessProvider:(id)a4 error:(id *)a5;
+ (id)filenameSummaryStringForDictionaryRepresentation:(id)a3;
- (BOOL)allURLsAreReadable;
- (BOOL)containsAllRoles:(id)a3;
- (BOOL)containsAnyRole:(id)a3;
- (BOOL)copyURL:(id)a3 forRole:(id)a4 toDirectory:(id)a5 error:(id *)a6;
- (BOOL)ensureFilesExistWithError:(id *)a3;
- (BOOL)isBlastDoorAccessRequired;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeExistingEmptyFilesWithError:(id *)a3;
- (NSDictionary)blastDoorMainSourceProperties;
- (NSDictionary)blastDoorVideoComplementProperties;
- (NSError)blastDoorError;
- (NSURL)blastDoorSourceURL;
- (PAMediaConversionServiceResourceURLCollection)init;
- (id)bookmarkDataDictionaryRepresentationWithError:(id *)a3;
- (id)fileSizeSummary;
- (id)filenameExtensionAndPathHashForRole:(id)a3;
- (id)logMessageSummaryWithFullPath:(BOOL)a3;
- (id)resourceURLForRole:(id)a3;
- (id)typeIdentifierForResourceURLWithRole:(id)a3;
- (id)urlForDebugDumpWithDirectoryName:(id)a3 inExistingParentDirectory:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)enumerateResourceURLReferences:(id)a3;
- (void)enumerateResourceURLs:(id)a3;
- (void)setResourceURL:(id)a3 forRole:(id)a4;
@end

@implementation PAMediaConversionServiceResourceURLCollection

- (BOOL)copyURL:(id)a3 forRole:(id)a4 toDirectory:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSFileManager defaultManager];
  v17 = NSFileOwnerAccountName;
  v18 = @"mobile";
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v12 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:v11 error:a6];

  v13 = 0;
  if (v12)
  {
    v14 = [v8 lastPathComponent];
    v15 = [v9 URLByAppendingPathComponent:v14];

    v13 = [v10 copyItemAtURL:v8 toURL:v15 error:a6];
  }

  return v13;
}

- (id)urlForDebugDumpWithDirectoryName:(id)a3 inExistingParentDirectory:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
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
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v43];

  if ((v14 & v43 & 1) == 0)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"exists && isDirectory"}];
  }

  v15 = [v11 URLByAppendingPathComponent:v9];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100005940;
  v41 = sub_100005950;
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

  v21 = [v38[5] domain];
  if ([v21 isEqualToString:NSCocoaErrorDomain])
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
      v27[2] = sub_100005958;
      v27[3] = &unk_10003CF28;
      v19 = v15;
      v28 = v19;
      v29 = self;
      v30 = &v37;
      v31 = &v32;
      [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v27];
      if (*(v33 + 24) == 1)
      {
        v20 = 0;
        if (a5)
        {
          *a5 = v38[5];
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
  if (a5)
  {
    *a5 = v38[5];
  }

LABEL_18:
  _Block_object_dispose(&v37, 8);

  return v20;
}

- (void)enumerateResourceURLs:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005ABC;
  v5[3] = &unk_10003CF00;
  v6 = a3;
  v4 = v6;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v5];
}

- (void)enumerateResourceURLReferences:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_urlReferencesByRole allKeys];
  v6 = [v5 sortedArrayUsingComparator:&stru_10003CED8];

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
      v4[2](v4, v11, v12, &v13);
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
  v9[2] = sub_100005DC4;
  v9[3] = &unk_10003CEB8;
  v10 = v4;
  v6 = v4;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [v6 componentsJoinedByString:@"|"];
  [v3 appendString:v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)logMessageSummaryWithFullPath:(BOOL)a3
{
  v5 = [NSMutableString stringWithString:@"<"];
  +[NSMutableArray array];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000606C;
  v13 = v12 = &unk_10003CE90;
  v14 = a3;
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
  v5[2] = sub_100006264;
  v5[3] = &unk_10003CE68;
  v3 = v7 = &v8;
  v6 = v3;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v5];
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (BOOL)removeExistingEmptyFilesWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100005940;
  v22 = sub_100005950;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSFileManager defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000644C;
  v10[3] = &unk_10003CE40;
  v12 = &v18;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (a3 && *(v15 + 24))
  {
    *a3 = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

- (BOOL)ensureFilesExistWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100005940;
  v22 = sub_100005950;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSFileManager defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000067E4;
  v10[3] = &unk_10003CE40;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (a3 && *(v15 + 24))
  {
    *a3 = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

- (id)filenameExtensionAndPathHashForRole:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    v10 = 0;
    [v3 getPathHash:&v10 lastPathComponent:&v9];
    v5 = v9;
    v6 = [v5 pathExtension];
    v7 = [NSString stringWithFormat:@"%@|%lx", v6, v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bookmarkDataDictionaryRepresentationWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100005940;
  v22 = sub_100005950;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[NSMutableDictionary dictionary];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006DA0;
  v10[3] = &unk_10003CE40;
  v12 = &v18;
  v7 = v5;
  v11 = v7;
  v13 = &v14;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v15 + 24) == 1)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = v19[5];
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

- (id)typeIdentifierForResourceURLWithRole:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v5];
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
    v14 = [v11 domain];
    v15 = [v14 isEqualToString:NSCocoaErrorDomain];
    v13 = v15;
    if (v15)
    {
      v16 = [v12 code];

      if (v16 != 260)
      {
        v13 = 0;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }

      v14 = [v8 lastPathComponent];
      v17 = [v14 pathExtension];
      v18 = [UTType typeWithFilenameExtension:v17];
      v19 = [v18 identifier];

      v10 = v19;
    }

    if (v10)
    {
      goto LABEL_13;
    }

LABEL_21:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v28 = [v8 path];
      *buf = 138543874;
      v34 = v5;
      v35 = 2112;
      v36 = v28;
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

- (BOOL)containsAnyRole:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
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

- (BOOL)containsAllRoles:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
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

- (id)resourceURLForRole:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v5];
  v7 = [v6 url];

  v8 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];

  if (v8)
  {
    v9 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
    v10 = [v9 validateAccessForURL:v7 role:v5];

    v7 = v10;
  }

  return v7;
}

- (void)setResourceURL:(id)a3 forRole:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (v13)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"role"}];

LABEL_3:
  v8 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v7];

  if (v8)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:253 description:{@"This resource URL collection already has a URL for role '%@'", v7}];
  }

  v9 = [PAMediaConversionServiceResourceURLReference referenceWithURL:v13];
  [(NSMutableDictionary *)self->_urlReferencesByRole setObject:v9 forKeyedSubscript:v7];
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000079B8;
  v4[3] = &unk_10003CE18;
  v4[4] = &v5;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isEqual:(id)a3
{
  urlReferencesByRole = self->_urlReferencesByRole;
  v4 = [a3 urlReferencesByRole];
  LOBYTE(urlReferencesByRole) = [(NSMutableDictionary *)urlReferencesByRole isEqual:v4];

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

+ (id)filenameSummaryStringForDictionaryRepresentation:(id)a3
{
  v3 = [a3 allValues];
  v4 = [v3 valueForKey:@"lastPathComponent"];
  v5 = [v4 componentsJoinedByString:@"|"];

  return v5;
}

+ (BOOL)getSignatureString:(id *)a3 filenameSummary:(id *)a4 forDictionaryRepresentation:(id)a5
{
  v9 = a5;
  if (!v9)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v10 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [v9 allKeys];
  v12 = [v11 sortedArrayUsingComparator:&stru_10003CDF0];

  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v26 = a3;
    v27 = a4;
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
        v19 = v9;
        v20 = [v9 objectForKeyedSubscript:v18];
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

        v9 = v19;
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);

    a3 = v26;
    a4 = v27;
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

  if (a3)
  {
    *a3 = [NSString stringWithFormat:@"%lx", v15];
  }

  if (a4)
  {
    *a4 = [v10 componentsJoinedByString:@"|"];
  }

  v23 = 1;
LABEL_21:

  return v23;
}

+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)a3 accessProvider:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100005940;
  v27 = sub_100005950;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007FE4;
  v15[3] = &unk_10003CDD0;
  v17 = &v23;
  v11 = objc_opt_new();
  v16 = v11;
  v18 = &v19;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  if (*(v20 + 24) == 1)
  {
    v12 = 0;
    if (a5)
    {
      *a5 = v24[5];
    }
  }

  else
  {
    if (v10)
    {
      [v11 setAccessProviderDelegate:v10];
    }

    v12 = v11;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

+ (PAMediaConversionServiceResourceURLCollection)collectionWithMainResourceURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setResourceURL:v3 forRole:@"PAMediaConversionResourceRoleMainResource"];

  return v4;
}

- (NSError)blastDoorError
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 error];

  return v3;
}

- (NSURL)blastDoorSourceURL
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 blastDoorSourceURL];

  return v3;
}

- (NSDictionary)blastDoorVideoComplementProperties
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:@"PAMediaConversionResourceRoleVideoComplement"];
  v4 = [v3 url];

  v5 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v6 = [v5 propertiesForVideoComplementURL:v4];

  return v6;
}

- (NSDictionary)blastDoorMainSourceProperties
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 blastDoorMainSourceProperties];

  return v3;
}

- (BOOL)isBlastDoorAccessRequired
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 isBlastDoorAccessRequired];

  return v3;
}

@end