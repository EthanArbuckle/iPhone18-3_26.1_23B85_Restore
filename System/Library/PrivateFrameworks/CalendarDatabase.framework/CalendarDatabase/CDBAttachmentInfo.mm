@interface CDBAttachmentInfo
- (CDBAttachmentInfo)initWithLegacyURL:(id)a3 url:(id)a4 localRelativePath:(id)a5;
@end

@implementation CDBAttachmentInfo

- (CDBAttachmentInfo)initWithLegacyURL:(id)a3 url:(id)a4 localRelativePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CDBAttachmentInfo;
  v11 = [(CDBAttachmentInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    legacyURL = v11->_legacyURL;
    v11->_legacyURL = v12;

    v14 = [v9 copy];
    url = v11->_url;
    v11->_url = v14;

    v16 = [v10 copy];
    localRelativePath = v11->_localRelativePath;
    v11->_localRelativePath = v16;
  }

  return v11;
}

@end