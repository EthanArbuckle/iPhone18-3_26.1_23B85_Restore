@interface GEOResourceServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)corruptedWithRequest:(id)a3;
- (void)fetchWithRequest:(id)a3;
@end

@implementation GEOResourceServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  if (v13 == 984)
  {
    v17 = objc_opt_class();
    v18 = sub_100001388(@"resources", v10, v11, v17, v12);
    v16 = v18;
    if (v18)
    {
      [v18 setSignpostId:a6];
      [(GEOResourceServer *)self corruptedWithRequest:v16];
      goto LABEL_7;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_8;
  }

  if (v13 != 522)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v15 = sub_100001388(@"resources", v10, v11, v14, v12);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  [v15 setSignpostId:a6];
  [(GEOResourceServer *)self fetchWithRequest:v16];
LABEL_7:
  v19 = 1;
LABEL_8:

LABEL_10:
  return v19;
}

- (void)corruptedWithRequest:(id)a3
{
  v3 = a3;
  v6 = +[GEOResourceRequester sharedRequester];
  v4 = [v3 resource];
  v5 = [v3 fileURL];

  [v6 reportCorruptUnpackedResource:v4 fileURL:v5];
}

- (void)fetchWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOResourceFetchReply alloc] initWithRequest:v3];
  v5 = [v3 resources];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[GEOResourceRequester sharedRequester];
    v8 = [v3 resources];
    v9 = [v3 force];
    v10 = [v3 unpack];
    v11 = [v3 manifestConfiguration];
    v12 = [v3 preferredAuditToken];
    global_queue = geo_get_global_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028974;
    v15[3] = &unk_100082448;
    v16 = v4;
    [v7 fetchResources:v8 force:v9 unpack:v10 manifestConfiguration:v11 auditToken:v12 queue:global_queue handler:v15];
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:-10 reason:@"No resources in request"];
    [v4 setError:v14];

    [v4 send];
  }
}

@end