@interface BDSUbiquityDocumentItem
- (id)description;
@end

@implementation BDSUbiquityDocumentItem

- (id)description
{
  v16 = objc_opt_class();
  v15 = [(BDSUbiquityDocumentItem *)self url];
  v18 = [NSNumber numberWithBool:[(BDSUbiquityDocumentItem *)self isLocal]];
  v14 = [NSNumber numberWithBool:[(BDSUbiquityDocumentItem *)self isNotLocal]];
  v17 = [NSNumber numberWithBool:[(BDSUbiquityDocumentItem *)self isUploading]];
  v13 = [NSNumber numberWithBool:[(BDSUbiquityDocumentItem *)self isUploaded]];
  v3 = [NSNumber numberWithBool:[(BDSUbiquityDocumentItem *)self isDownloading]];
  downloadingPercent = [(BDSUbiquityDocumentItem *)self downloadingPercent];
  uploadingPercent = [(BDSUbiquityDocumentItem *)self uploadingPercent];
  uploadingError = [(BDSUbiquityDocumentItem *)self uploadingError];
  unresolvedConflict = [(BDSUbiquityDocumentItem *)self unresolvedConflict];
  contentChangedDate = [(BDSUbiquityDocumentItem *)self contentChangedDate];
  contentCreationDate = [(BDSUbiquityDocumentItem *)self contentCreationDate];
  contentFileSize = [(BDSUbiquityDocumentItem *)self contentFileSize];
  v10 = [NSString stringWithFormat:@"<%@(%p) \n\t url : %@ \n\t isLocal : %@ \n\t isNotLocal : %@ \n\t isUploading : %@ \n\t isUploaded : %@ \n\t isDownloading : %@ \n\t downloadingPercent : %@ \n\t uploadingPercent : %@ \n\t uploadingError : %@ \n\t unresolvedConflict : %@ \n\t contentChangedDate : %@ \n\t contentCreationDate : %@ \n\t contentFileSize : %@ ", v16, self, v15, v18, v14, v17, v13, v3, downloadingPercent, uploadingPercent, uploadingError, unresolvedConflict, contentChangedDate, contentCreationDate, contentFileSize];

  return v10;
}

@end