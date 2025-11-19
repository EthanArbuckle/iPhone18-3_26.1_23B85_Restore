@interface MKHTTPServer
- (MKHTTPServer)init;
- (MKHTTPServerDelegate)delegate;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)listener:(id)a3 didOpen:(int64_t)a4;
- (void)listenerDidCancel:(id)a3;
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

- (void)listener:(id)a3 didOpen:(int64_t)a4
{
  [(MKHTTPServer *)self setPort:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained server:self didOpen:a4];
}

- (void)listenerDidCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidCancel:self];
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v56 = a4;
  v53 = objc_alloc_init(MKTime);
  v7 = self->_requests;
  objc_sync_enter(v7);
  requests = self->_requests;
  v9 = [v6 identifier];
  v10 = [(NSMutableDictionary *)requests objectForKey:v9];

  objc_sync_exit(v7);
  if (v10)
  {
    [v10 appendData:v56];
    v11 = v10;
  }

  else
  {
    parser = self->_parser;
    v13 = [v6 hostname];
    v14 = [(MKHTTPParser *)parser parse:v56 hostname:v13];

    v11 = v14;
  }

  v58 = v11;
  v59 = [v11 headers];
  v15 = objc_alloc_init(MKHTTPResponse);
  v55 = [v59 method];
  v54 = [v59 path];
  v57 = [v58 body];
  v52 = [v59 isClosed];
  v16 = [v59 contentLength];
  v17 = [v57 length];
  v18 = [v59 transferEncoding];
  v19 = v18;
  if (v16 <= v17 && (v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    v33 = self->_requests;
    objc_sync_enter(v33);
    v34 = self->_requests;
    v35 = [v6 identifier];
    [(NSMutableDictionary *)v34 setObject:v58 forKey:v35];

    objc_sync_exit(v33);
  }

  if (v16 > v17)
  {
    [(MKListener *)self->_listener readData:v6];
    goto LABEL_28;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v65 = 0;
  v64 = 0;
  v49 = [(MKHTTPParser *)self->_parser chunk:v57 offset:&v65 done:&v64];
  [v58 setChunkedTransferCompleted:v64];
  v50 = [v58 chunk];
  [v58 setChunkOffset:{objc_msgSend(v58, "chunkOffset") + objc_msgSend(v50, "length")}];

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
    v22 = [v6 identifier];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];

    objc_sync_exit(v20);
    v23 = [(MKHTTPResponse *)v15 headers];
    [v23 close:v52];

    v24 = [(MKHTTPRequestMultiplexer *)self routerForMethod:v55 path:v54];
    v25 = [v59 boundary];
    LODWORD(v22) = v25 == 0;

    if (v22)
    {
      [v24 server:self didReceiveRequest:v58 response:v15];
    }

    else
    {
      v26 = self->_parser;
      v27 = [v59 boundary];
      v28 = [(MKHTTPParser *)v26 parts:v57 boundary:v27 container:v58];

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

    v36 = [(MKHTTPResponse *)v15 headers];
    v37 = [v36 serverTiming];
    [(MKTime *)v53 elapsedTimeInSeconds];
    v39 = v38;
    [v37 response];
    [v37 setResponse:v39 + v40];

    v41 = [(MKHTTPResponse *)v15 bodyStream];
    listener = self->_listener;
    v43 = [(MKHTTPResponse *)v15 responseData];
    if (v41)
    {
      [(MKListener *)listener sendData:v43 throughConnection:v6 close:0];

      [v41 open];
      v44 = [v41 read:objc_msgSend(v6 maxLength:{"buffer"), objc_msgSend(v6, "bufferSize")}];
      if (v44 >= 1)
      {
        v45 = 0;
        do
        {
          v46 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:objc_msgSend(v6 length:"buffer") freeWhenDone:{v44, 0}];

          [(MKListener *)self->_listener sendData:v46 throughConnection:v6 close:0];
          v44 = [v41 read:objc_msgSend(v6 maxLength:{"buffer"), objc_msgSend(v6, "bufferSize")}];
          v45 = v46;
        }

        while (v44 > 0);
      }

      [v41 close];
      v47 = self->_listener;
      v43 = objc_alloc_init(MEMORY[0x277CBEA90]);
      [(MKListener *)v47 sendData:v43 throughConnection:v6 close:v52];
    }

    else
    {
      [(MKListener *)listener sendData:v43 throughConnection:v6 close:v52];
    }

    goto LABEL_28;
  }

  if ([v49 length])
  {
    v51 = [(MKHTTPRequestMultiplexer *)self routerForMethod:v55 path:v54];
    [v51 server:self didReceiveRequest:v58 response:v15];
  }

  [(MKListener *)self->_listener readData:v6];

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];
}

- (MKHTTPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end