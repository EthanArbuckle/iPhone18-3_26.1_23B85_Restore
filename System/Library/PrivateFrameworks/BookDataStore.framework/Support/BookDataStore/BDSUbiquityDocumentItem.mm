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
  v4 = [(BDSUbiquityDocumentItem *)self downloadingPercent];
  v12 = [(BDSUbiquityDocumentItem *)self uploadingPercent];
  v5 = [(BDSUbiquityDocumentItem *)self uploadingError];
  v6 = [(BDSUbiquityDocumentItem *)self unresolvedConflict];
  v7 = [(BDSUbiquityDocumentItem *)self contentChangedDate];
  v8 = [(BDSUbiquityDocumentItem *)self contentCreationDate];
  v9 = [(BDSUbiquityDocumentItem *)self contentFileSize];
  v10 = [NSString stringWithFormat:@"<%@(%p) \n\t url : %@ \n\t isLocal : %@ \n\t isNotLocal : %@ \n\t isUploading : %@ \n\t isUploaded : %@ \n\t isDownloading : %@ \n\t downloadingPercent : %@ \n\t uploadingPercent : %@ \n\t uploadingError : %@ \n\t unresolvedConflict : %@ \n\t contentChangedDate : %@ \n\t contentCreationDate : %@ \n\t contentFileSize : %@ ", v16, self, v15, v18, v14, v17, v13, v3, v4, v12, v5, v6, v7, v8, v9];

  return v10;
}

@end