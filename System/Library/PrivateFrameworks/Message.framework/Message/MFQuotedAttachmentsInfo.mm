@interface MFQuotedAttachmentsInfo
- (MFQuotedAttachmentsInfo)initWithContentIDs:(id)ds;
@end

@implementation MFQuotedAttachmentsInfo

- (MFQuotedAttachmentsInfo)initWithContentIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = MFQuotedAttachmentsInfo;
  v6 = [(MFQuotedAttachmentsInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentIDs, ds);
  }

  return v7;
}

@end