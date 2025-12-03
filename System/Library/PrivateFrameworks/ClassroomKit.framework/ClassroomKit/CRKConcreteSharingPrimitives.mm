@interface CRKConcreteSharingPrimitives
- (id)startAirDropTransferWithAutoAccept:(BOOL)accept hideProgress:(BOOL)progress senderName:(id)name previewImageData:(id)data bundleID:(id)d sourceBundleID:(id)iD itemsDescription:(id)description fileURLs:(id)self0 resultHandler:(id)self1;
@end

@implementation CRKConcreteSharingPrimitives

- (id)startAirDropTransferWithAutoAccept:(BOOL)accept hideProgress:(BOOL)progress senderName:(id)name previewImageData:(id)data bundleID:(id)d sourceBundleID:(id)iD itemsDescription:(id)description fileURLs:(id)self0 resultHandler:(id)self1
{
  progressCopy = progress;
  acceptCopy = accept;
  handlerCopy = handler;
  lsCopy = ls;
  descriptionCopy = description;
  iDCopy = iD;
  dCopy = d;
  dataCopy = data;
  nameCopy = name;
  v24 = [[CRKConcreteSharingAirDropTransfer alloc] initWithAutoAccept:acceptCopy hideProgress:progressCopy senderName:nameCopy previewImageData:dataCopy bundleID:dCopy sourceBundleID:iDCopy itemsDescription:descriptionCopy fileURLs:lsCopy resultHandler:handlerCopy];

  return v24;
}

@end