@interface IMSPIOutgoingAttachmentObject
- (IMSPIOutgoingAttachmentObject)initWithFileURL:(id)a3 isSensitive:(BOOL)a4;
@end

@implementation IMSPIOutgoingAttachmentObject

- (IMSPIOutgoingAttachmentObject)initWithFileURL:(id)a3 isSensitive:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IMSPIOutgoingAttachmentObject;
  v8 = [(IMSPIOutgoingAttachmentObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileURL, a3);
    v9->_isSensitive = a4;
  }

  return v9;
}

@end