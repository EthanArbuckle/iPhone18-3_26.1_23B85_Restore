@interface MFIMAPDownloadCache
- (id)downloadForMessage:(id)message;
- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline;
- (void)cleanUpDownloadsForUid:(unsigned int)uid;
- (void)dealloc;
- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid;
- (void)handleFetchResponses:(id)responses;
- (void)processResultsForUid:(unsigned int)uid;
@end

@implementation MFIMAPDownloadCache

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPDownloadCache;
  [(MFIMAPDownloadCache *)&v3 dealloc];
}

- (id)downloadForMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [message uid];
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v5);
  if (!v7 || (v8 = [(NSMutableArray *)self->_downloads objectAtIndex:RangeOfDownloadsWithUid], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v9 = v8) == 0)
  {
    if (!v5)
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138543362;
        ef_publicDescription = [message ef_publicDescription];
        _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_INFO, "uid of message %{public}@ is 0", &v14, 0xCu);
      }
    }

    v11 = [[MFIMAPMessageDownload alloc] initWithMessage:message];
    v9 = v11;
    if (v11)
    {
      [(MFIMAPMessageDownload *)v11 setAllowsPartialDownloads:1];
      [(NSMutableArray *)self->_downloads insertObject:v9 atIndex:RangeOfDownloadsWithUid];
    }
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
  result = v9;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v8, [response fetchResults]);

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)handleFetchResponses:(id)responses
{
  v22 = *MEMORY[0x277D85DE8];
  if ([responses count])
  {
    [(MFIMAPDownloadCache *)self mf_lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [responses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      RangeOfDownloadsWithUid = 0;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(responses);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [objc_msgSend(v12 fetchResultWithType:{8), "uid"}];
          if (v13)
          {
            v14 = v13;
            if (v13 != v9)
            {
              RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v13);
              v7 = v15;
              v9 = v14;
            }

            _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v7, [v12 fetchResults]);
          }
        }

        v6 = [responses countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    [(MFIMAPDownloadCache *)self mf_unlock];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processResultsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  if (RangeOfDownloadsWithUid < RangeOfDownloadsWithUid + v6)
  {
    v7 = RangeOfDownloadsWithUid;
    v8 = v6;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->_downloads objectAtIndex:{v7++), "processResults"}];
      --v8;
    }

    while (v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)cleanUpDownloadsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  v7 = RangeOfDownloadsWithUid + v6;
  if (RangeOfDownloadsWithUid + v6 > RangeOfDownloadsWithUid)
  {
    v8 = RangeOfDownloadsWithUid;
    do
    {
      if ([-[NSMutableArray objectAtIndex:](self->_downloads objectAtIndex:{--v7), "isComplete"}])
      {
        [(NSMutableArray *)self->_downloads removeObjectAtIndex:v7];
      }
    }

    while (v7 > v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline
{
  [(MFIMAPDownloadCache *)self mf_lock];
  [download addCommandsToPipeline:pipeline withCache:self];

  [(MFIMAPDownloadCache *)self mf_unlock];
}

@end