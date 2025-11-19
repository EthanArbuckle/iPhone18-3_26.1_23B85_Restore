@interface DIShadowChain
- (BOOL)addShadowNodes:(id)a3 wrapReadOnly:(BOOL)a4 error:(id *)a5;
- (BOOL)addShadowURLs:(id)a3 error:(id *)a4;
- (BOOL)hasBaseImageCache;
- (BOOL)isEmpty;
- (BOOL)verifyNodes:(id)a3 error:(id *)a4;
- (DIShadowChain)init;
- (DIShadowChain)initWithCoder:(id)a3;
- (NSArray)mountPoints;
- (NSArray)nonCacheNodes;
- (NSURL)activeShadowURL;
- (id)description;
- (id)statWithError:(id *)a3;
- (int64_t)topDiskImageNumBlocks;
- (void)encodeWithCoder:(id)a3;
- (void)openWritable:(BOOL)a3 createNonExisting:(BOOL)a4;
@end

@implementation DIShadowChain

- (DIShadowChain)init
{
  v8.receiver = self;
  v8.super_class = DIShadowChain;
  v2 = [(DIShadowChain *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    nodes = v2->_nodes;
    v2->_nodes = v3;

    v5 = +[NSArray array];
    shadowStats = v2->_shadowStats;
    v2->_shadowStats = v5;

    v2->_shouldValidate = 1;
  }

  return v2;
}

- (BOOL)addShadowURLs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [DIShadowNode alloc];
        v14 = [(DIShadowNode *)v13 initWithURL:v12 isCache:0, v17];
        [v7 addObject:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [(DIShadowChain *)self addShadowNodes:v7 error:a4];
  return v15;
}

- (BOOL)verifyNodes:(id)a3 error:(id *)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v8 = *v20;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v19 + 1) + 8 * i);
      v11 = [v10 URL];
      v12 = [v11 isFileURL];

      if ((v12 & 1) == 0)
      {
        v16 = [NSString stringWithFormat:@"Shadow path %@ is not a valid file", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:a4];
LABEL_14:
        v15 = v17;

        goto LABEL_15;
      }

      v13 = [(DIShadowChain *)self nodes];
      v14 = [v13 containsObject:v10];

      if (v14)
      {
        v16 = [NSString stringWithFormat:@"Duplicate shadow values for: %@", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:a4];
        goto LABEL_14;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v15 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v15;
}

- (BOOL)addShadowNodes:(id)a3 wrapReadOnly:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v26 = a3;
  v25 = [DIShadowChain verifyNodes:"verifyNodes:error:" error:?];
  if (v25)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v26;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if (v5)
          {
            v11 = [*(*(&v28 + 1) + 8 * i) fileBackend];
            v12 = v11;
            if (v11)
            {
              [v11 backend];
              v13 = *buf;
            }

            else
            {
              v13 = 0;
              *buf = 0;
              *&buf[8] = 0;
            }

            v14 = (*(*v13 + 48))(v13);
            if (*&buf[8])
            {
              sub_10000367C(*&buf[8]);
            }

            if (v14)
            {
              v15 = *__error();
              if (sub_1000E044C())
              {
                v16 = sub_1000E03D8();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                v17 = [v10 URL];
                *buf = 68158211;
                *&buf[4] = 51;
                *&buf[8] = 2080;
                *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                v33 = 2113;
                v34 = v17;
                v18 = _os_log_send_and_compose_impl();

                if (v18)
                {
                  fprintf(__stderrp, "%s\n", v18);
                  free(v18);
                }
              }

              else
              {
                v19 = sub_1000E03D8();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v10 URL];
                  *buf = 0x3304100303;
                  *&buf[8] = 2080;
                  *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                  v33 = 2113;
                  v34 = v20;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Using %{private}@ as read-only", buf, 0x1Cu);
                }
              }

              *__error() = v15;
              v21 = [FileLocalXPC alloc];
              v22 = [v10 fileBackend];
              if (v22)
              {
                [v22 backend];
              }

              sub_1000D7C64();
            }
          }

          v23 = [(DIShadowChain *)self nodes];
          [v23 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v7);
    }
  }

  return v25;
}

- (void)openWritable:(BOOL)a3 createNonExisting:(BOOL)a4
{
  v7 = [(DIShadowChain *)self nodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D63AC;
  v8[3] = &unk_10021AB60;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (id)statWithError:(id *)a3
{
  shadowStats = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(DIShadowChain *)self nodes];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v10 = [v9 fileBackend];
      v11 = v10 == 0;

      if (v11)
      {
        break;
      }

      v12 = [v9 fileBackend];
      v13 = v12;
      if (v12)
      {
        [v12 backend];
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      sub_10019A824(&v20, &v22);
      v14 = sub_10015F9B4(&v22);
      if (v23)
      {
        sub_10000367C(v23);
      }

      if (v21)
      {
        sub_10000367C(v21);
      }

      if ((v14 & 0x80000000) != 0)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for shadow file" error:a3];
        goto LABEL_22;
      }

      v15 = [[DIStatFS alloc] initWithFileDescriptor:v14 error:a3];
      v16 = v15;
      if (!v15)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Could not stat shadow file" error:a3];
        goto LABEL_22;
      }

      [(DIStatFS *)v15 logWithHeader:@"Shadow underlying FS"];
      [shadowStats addObject:v16];

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    [DIError failWithEnumValue:150 verboseInfo:@"Bakcend not initialized for file" error:a3];
LABEL_22:

    v17 = 0;
    goto LABEL_23;
  }

LABEL_18:

  v17 = shadowStats;
  shadowStats = self->_shadowStats;
  self->_shadowStats = v17;
LABEL_23:

  return v17;
}

- (NSArray)mountPoints
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(DIShadowChain *)self shadowStats];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) mountedOnURL];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(DIShadowChain *)self nodes];
  v3 = [v2 count] == 0;

  return v3;
}

- (NSURL)activeShadowURL
{
  if (-[DIShadowChain isEmpty](self, "isEmpty") || (-[DIShadowChain nodes](self, "nodes"), v3 = objc_claimAutoreleasedReturnValue(), [v3 lastObject], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCache"), v4, v3, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(DIShadowChain *)self nodes];
    v8 = [v7 lastObject];
    v6 = [v8 URL];
  }

  return v6;
}

- (BOOL)hasBaseImageCache
{
  if ([(DIShadowChain *)self isEmpty])
  {
    return 0;
  }

  v4 = [(DIShadowChain *)self nodes];
  v5 = [v4 firstObject];
  v3 = [v5 isCache];

  return v3;
}

- (NSArray)nonCacheNodes
{
  v3 = [NSPredicate predicateWithBlock:&stru_10021ABA0];
  v4 = [(DIShadowChain *)self nodes];
  v5 = [v4 filteredArrayUsingPredicate:v3];

  return v5;
}

- (int64_t)topDiskImageNumBlocks
{
  if (![(DIShadowChain *)self isEmpty])
  {
    v6 = [(DIShadowChain *)self nodes];
    v7 = [v6 lastObject];

    v8 = [v7 fileBackend];
    v9 = v8;
    if (v8)
    {
      [v8 backend];
      v10 = *buf;
    }

    else
    {
      v10 = 0;
    }

    *buf = 0;
    *v15 = 0;

    v12 = (*(*v10 + 192))(v10);
    dup(v12);
    diskimage_uio::diskimage_open_params::create();
  }

  v3 = *__error();
  if (sub_1000E044C())
  {
    v4 = sub_1000E03D8();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    *&buf[4] = 38;
    *v15 = 2080;
    *&v15[2] = "[DIShadowChain topDiskImageNumBlocks]";
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(__stderrp, "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 38;
      *v15 = 2080;
      *&v15[2] = "[DIShadowChain topDiskImageNumBlocks]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s: numBlocks queried for an empty shadowChain.", buf, 0x12u);
    }
  }

  *__error() = v3;
  return -22;
}

- (DIShadowChain)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DIShadowChain;
  v5 = [(DIShadowChain *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"shadowStats"];
    shadowStats = v5->_shadowStats;
    v5->_shadowStats = v12;

    v5->_shouldValidate = [v4 decodeBoolForKey:@"shouldValidate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIShadowChain *)self nodes];
  [v6 encodeObject:v4 forKey:@"nodes"];

  v5 = [(DIShadowChain *)self shadowStats];
  [v6 encodeObject:v5 forKey:@"shadowStats"];

  [v6 encodeBool:-[DIShadowChain shouldValidate](self forKey:{"shouldValidate"), @"shouldValidate"}];
}

- (id)description
{
  v2 = [(DIShadowChain *)self nodes];
  v3 = [NSString stringWithFormat:@"ShadowChain: %@", v2];

  return v3;
}

@end