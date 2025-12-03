@interface MKHTTPServer
- (MKHTTPServer)init;
- (MKHTTPServerDelegate)delegate;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)listener:(id)listener didOpen:(int64_t)open;
- (void)listenerDidCancel:(id)cancel;
- (void)run;
@end

@implementation MKHTTPServer

- (MKHTTPServer)init
{
  v8.receiver = self;
  v8.super_class = MKHTTPServer;
  v2 = [(MKHTTPRequestMultiplexer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requests = v2->_requests;
    v2->_requests = v3;

    v5 = objc_alloc_init(MKHTTPParser);
    parser = v2->_parser;
    v2->_parser = v5;
  }

  return v2;
}

- (void)run
{
  v3 = objc_alloc_init(MKListener);
  listener = self->_listener;
  self->_listener = v3;

  [(MKListener *)self->_listener setDelegate:self];
  [(MKListener *)self->_listener setPort:self->_port];
  [(MKListener *)self->_listener setCertificate:self->_certificate];
  [(MKListener *)self->_listener setClientCertificate:self->_clientCertificate];
  [(MKListener *)self->_listener setUseTLS:self->_useHTTPS];
  [(MKListener *)self->_listener setService:self->_service];
  v5 = self->_listener;

  [(MKListener *)v5 listen];
}

- (void)listener:(id)listener didOpen:(int64_t)open
{
  [(MKHTTPServer *)self setPort:open];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained server:self didOpen:open];
}

- (void)listenerDidCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidCancel:self];
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v67 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dataCopy = data;
  v53 = objc_alloc_init(MKTime);
  v7 = self->_requests;
  objc_sync_enter(v7);
  requests = self->_requests;
  identifier = [connectionCopy identifier];
  v10 = [(NSMutableDictionary *)requests objectForKey:identifier];

  objc_sync_exit(v7);
  if (v10)
  {
    [v10 appendData:dataCopy];
    v11 = v10;
  }

  else
  {
    parser = self->_parser;
    hostname = [connectionCopy hostname];
    v14 = [(MKHTTPParser *)parser parse:dataCopy hostname:hostname];

    v11 = v14;
  }

  v58 = v11;
  headers = [v11 headers];
  v15 = objc_alloc_init(MKHTTPResponse);
  method = [headers method];
  path = [headers path];
  body = [v58 body];
  isClosed = [headers isClosed];
  contentLength = [headers contentLength];
  v17 = [body length];
  transferEncoding = [headers transferEncoding];
  v19 = transferEncoding;
  if (contentLength <= v17 && (transferEncoding & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    v33 = self->_requests;
    objc_sync_enter(v33);
    v34 = self->_requests;
    identifier2 = [connectionCopy identifier];
    [(NSMutableDictionary *)v34 setObject:v58 forKey:identifier2];

    objc_sync_exit(v33);
  }

  if (contentLength > v17)
  {
    [(MKListener *)self->_listener readData:connectionCopy];
    goto LABEL_28;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v65 = 0;
  v64 = 0;
  v49 = [(MKHTTPParser *)self->_parser chunk:body offset:&v65 done:&v64];
  [v58 setChunkedTransferCompleted:v64];
  chunk = [v58 chunk];
  [v58 setChunkOffset:{objc_msgSend(v58, "chunkOffset") + objc_msgSend(chunk, "length")}];

  [v58 setChunk:v49];
  if (v65)
  {
    [v58 sliceData:?];
  }

  if (v64)
  {

LABEL_6:
    v20 = self->_requests;
    objc_sync_enter(v20);
    v21 = self->_requests;
    identifier3 = [connectionCopy identifier];
    [(NSMutableDictionary *)v21 removeObjectForKey:identifier3];

    objc_sync_exit(v20);
    headers2 = [(MKHTTPResponse *)v15 headers];
    [headers2 close:isClosed];

    v24 = [(MKHTTPRequestMultiplexer *)self routerForMethod:method path:path];
    boundary = [headers boundary];
    LODWORD(identifier3) = boundary == 0;

    if (identifier3)
    {
      [v24 server:self didReceiveRequest:v58 response:v15];
    }

    else
    {
      v26 = self->_parser;
      boundary2 = [headers boundary];
      v28 = [(MKHTTPParser *)v26 parts:body boundary:boundary2 container:v58];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v30)
      {
        v31 = *v61;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v61 != v31)
            {
              objc_enumerationMutation(v29);
            }

            [v24 server:self didReceiveRequest:*(*(&v60 + 1) + 8 * i) response:v15];
          }

          v30 = [v29 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v30);
      }
    }

    headers3 = [(MKHTTPResponse *)v15 headers];
    serverTiming = [headers3 serverTiming];
    [(MKTime *)v53 elapsedTimeInSeconds];
    v39 = v38;
    [serverTiming response];
    [serverTiming setResponse:v39 + v40];

    bodyStream = [(MKHTTPResponse *)v15 bodyStream];
    listener = self->_listener;
    responseData = [(MKHTTPResponse *)v15 responseData];
    if (bodyStream)
    {
      [(MKListener *)listener sendData:responseData throughConnection:connectionCopy close:0];

      [bodyStream open];
      v44 = [bodyStream read:objc_msgSend(connectionCopy maxLength:{"buffer"), objc_msgSend(connectionCopy, "bufferSize")}];
      if (v44 >= 1)
      {
        v45 = 0;
        do
        {
          v46 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:objc_msgSend(connectionCopy length:"buffer") freeWhenDone:{v44, 0}];

          [(MKListener *)self->_listener sendData:v46 throughConnection:connectionCopy close:0];
          v44 = [bodyStream read:objc_msgSend(connectionCopy maxLength:{"buffer"), objc_msgSend(connectionCopy, "bufferSize")}];
          v45 = v46;
        }

        while (v44 > 0);
      }

      [bodyStream close];
      v47 = self->_listener;
      responseData = objc_alloc_init(MEMORY[0x277CBEA90]);
      [(MKListener *)v47 sendData:responseData throughConnection:connectionCopy close:isClosed];
    }

    else
    {
      [(MKListener *)listener sendData:responseData throughConnection:connectionCopy close:isClosed];
    }

    goto LABEL_28;
  }

  if ([v49 length])
  {
    v51 = [(MKHTTPRequestMultiplexer *)self routerForMethod:method path:path];
    [v51 server:self didReceiveRequest:v58 response:v15];
  }

  [(MKListener *)self->_listener readData:connectionCopy];

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];
}

- (MKHTTPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end