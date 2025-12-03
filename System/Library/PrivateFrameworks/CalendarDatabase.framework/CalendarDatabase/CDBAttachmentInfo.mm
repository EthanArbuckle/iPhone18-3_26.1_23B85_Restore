@interface CDBAttachmentInfo
- (CDBAttachmentInfo)initWithLegacyURL:(id)l url:(id)url localRelativePath:(id)path;
@end

@implementation CDBAttachmentInfo

- (CDBAttachmentInfo)initWithLegacyURL:(id)l url:(id)url localRelativePath:(id)path
{
  lCopy = l;
  urlCopy = url;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = CDBAttachmentInfo;
  v11 = [(CDBAttachmentInfo *)&v19 init];
  if (v11)
  {
    v12 = [lCopy copy];
    legacyURL = v11->_legacyURL;
    v11->_legacyURL = v12;

    v14 = [urlCopy copy];
    url = v11->_url;
    v11->_url = v14;

    v16 = [pathCopy copy];
    localRelativePath = v11->_localRelativePath;
    v11->_localRelativePath = v16;
  }

  return v11;
}

@end