@interface MFIMAPDownload
- (MFIMAPDownload)initWithUid:(unsigned int)uid;
- (void)dealloc;
@end

@implementation MFIMAPDownload

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPDownload;
  [(MFIMAPDownload *)&v3 dealloc];
}

- (MFIMAPDownload)initWithUid:(unsigned int)uid
{
  if (uid)
  {
    v5.receiver = self;
    v5.super_class = MFIMAPDownload;
    result = [(MFIMAPDownload *)&v5 init];
    if (result)
    {
      result->_uid = uid;
    }
  }

  else
  {
    [(MFIMAPDownload *)self dealloc];
    return 0;
  }

  return result;
}

@end