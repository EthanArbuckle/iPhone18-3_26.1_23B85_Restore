@interface MFIMAPDownload
- (MFIMAPDownload)initWithUid:(unsigned int)uid;
@end

@implementation MFIMAPDownload

- (MFIMAPDownload)initWithUid:(unsigned int)uid
{
  if (uid)
  {
    v7.receiver = self;
    v7.super_class = MFIMAPDownload;
    v4 = [(MFIMAPDownload *)&v7 init];
    if (v4)
    {
      v4->_uid = uid;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end