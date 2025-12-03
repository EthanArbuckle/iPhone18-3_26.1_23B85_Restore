@interface C3DownloadChunkContext
- (C3DownloadChunkContext)initWithMMCS:(id)s;
- (CKDMMCS)MMCS;
@end

@implementation C3DownloadChunkContext

- (C3DownloadChunkContext)initWithMMCS:(id)s
{
  sCopy = s;
  v10.receiver = self;
  v10.super_class = C3DownloadChunkContext;
  v5 = [(C3DownloadChunkContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_MMCS, sCopy);
    v7 = objc_opt_new();
    signatureToMutableData = v6->_signatureToMutableData;
    v6->_signatureToMutableData = v7;
  }

  return v6;
}

- (CKDMMCS)MMCS
{
  WeakRetained = objc_loadWeakRetained(&self->_MMCS);

  return WeakRetained;
}

@end