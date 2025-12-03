@interface IMSPIOutgoingAttachmentObject
- (IMSPIOutgoingAttachmentObject)initWithFileURL:(id)l isSensitive:(BOOL)sensitive;
@end

@implementation IMSPIOutgoingAttachmentObject

- (IMSPIOutgoingAttachmentObject)initWithFileURL:(id)l isSensitive:(BOOL)sensitive
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = IMSPIOutgoingAttachmentObject;
  v8 = [(IMSPIOutgoingAttachmentObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileURL, l);
    v9->_isSensitive = sensitive;
  }

  return v9;
}

@end