@interface GEOResourceServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)corruptedWithRequest:(id)request;
- (void)fetchWithRequest:(id)request;
@end

@implementation GEOResourceServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  if (v13 == 984)
  {
    v17 = objc_opt_class();
    v18 = sub_100001388(@"resources", messageCopy, objectCopy, v17, peerCopy);
    v16 = v18;
    if (v18)
    {
      [v18 setSignpostId:id];
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
  v15 = sub_100001388(@"resources", messageCopy, objectCopy, v14, peerCopy);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  [v15 setSignpostId:id];
  [(GEOResourceServer *)self fetchWithRequest:v16];
LABEL_7:
  v19 = 1;
LABEL_8:

LABEL_10:
  return v19;
}

- (void)corruptedWithRequest:(id)request
{
  requestCopy = request;
  v6 = +[GEOResourceRequester sharedRequester];
  resource = [requestCopy resource];
  fileURL = [requestCopy fileURL];

  [v6 reportCorruptUnpackedResource:resource fileURL:fileURL];
}

- (void)fetchWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOResourceFetchReply alloc] initWithRequest:requestCopy];
  resources = [requestCopy resources];
  v6 = [resources count];

  if (v6)
  {
    v7 = +[GEOResourceRequester sharedRequester];
    resources2 = [requestCopy resources];
    force = [requestCopy force];
    unpack = [requestCopy unpack];
    manifestConfiguration = [requestCopy manifestConfiguration];
    preferredAuditToken = [requestCopy preferredAuditToken];
    global_queue = geo_get_global_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028974;
    v15[3] = &unk_100082448;
    v16 = v4;
    [v7 fetchResources:resources2 force:force unpack:unpack manifestConfiguration:manifestConfiguration auditToken:preferredAuditToken queue:global_queue handler:v15];
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:-10 reason:@"No resources in request"];
    [v4 setError:v14];

    [v4 send];
  }
}

@end