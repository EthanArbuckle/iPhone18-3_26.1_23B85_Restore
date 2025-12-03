@interface CRKConcreteSharingAirDropTransfer
+ (id)UTIForURL:(id)l;
+ (id)infoForFileURL:(id)l;
+ (int64_t)transferStateForState:(int64_t)state;
- (CRKConcreteSharingAirDropTransfer)initWithAutoAccept:(BOOL)accept hideProgress:(BOOL)progress senderName:(id)name previewImageData:(id)data bundleID:(id)d sourceBundleID:(id)iD itemsDescription:(id)description fileURLs:(id)self0 resultHandler:(id)self1;
- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)declined;
- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)declined withFailureReason:(unint64_t)reason;
- (NSString)description;
- (id)transferInfoDictionary;
- (void)dealloc;
- (void)invalidate;
- (void)propagateResultForIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error;
- (void)updateWithState:(int64_t)state completion:(id)completion;
@end

@implementation CRKConcreteSharingAirDropTransfer

- (void)dealloc
{
  manager = [(CRKConcreteSharingAirDropTransfer *)self manager];
  [manager invalidate];

  v4.receiver = self;
  v4.super_class = CRKConcreteSharingAirDropTransfer;
  [(CRKConcreteSharingAirDropTransfer *)&v4 dealloc];
}

- (CRKConcreteSharingAirDropTransfer)initWithAutoAccept:(BOOL)accept hideProgress:(BOOL)progress senderName:(id)name previewImageData:(id)data bundleID:(id)d sourceBundleID:(id)iD itemsDescription:(id)description fileURLs:(id)self0 resultHandler:(id)self1
{
  nameCopy = name;
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  descriptionCopy = description;
  lsCopy = ls;
  handlerCopy = handler;
  v47.receiver = self;
  v47.super_class = CRKConcreteSharingAirDropTransfer;
  v24 = [(CRKConcreteSharingAirDropTransfer *)&v47 init];
  v25 = v24;
  if (v24)
  {
    v24->_autoAccept = accept;
    v24->_hideProgress = progress;
    v26 = [nameCopy copy];
    senderName = v25->_senderName;
    v25->_senderName = v26;

    v28 = [dataCopy copy];
    previewImageData = v25->_previewImageData;
    v25->_previewImageData = v28;

    v30 = [dCopy copy];
    bundleID = v25->_bundleID;
    v25->_bundleID = v30;

    v32 = [iDCopy copy];
    sourceBundleID = v25->_sourceBundleID;
    v25->_sourceBundleID = v32;

    v34 = [descriptionCopy copy];
    itemsDescription = v25->_itemsDescription;
    v25->_itemsDescription = v34;

    v36 = [lsCopy copy];
    fileURLs = v25->_fileURLs;
    v25->_fileURLs = v36;

    v38 = MEMORY[0x245D3AAD0](handlerCopy);
    resultHandler = v25->_resultHandler;
    v25->_resultHandler = v38;

    v40 = objc_opt_new();
    manager = v25->_manager;
    v25->_manager = v40;

    [(SFAirDropClassroomTransferManager *)v25->_manager setDelegate:v25];
    [(SFAirDropClassroomTransferManager *)v25->_manager activate];
    destFileURLs = v25->_destFileURLs;
    v25->_destFileURLs = MEMORY[0x277CBEBF8];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v25->_identifier;
    v25->_identifier = uUIDString;
  }

  return v25;
}

- (void)invalidate
{
  manager = [(CRKConcreteSharingAirDropTransfer *)self manager];
  [manager invalidate];
}

- (void)updateWithState:(int64_t)state completion:(id)completion
{
  completionCopy = completion;
  manager = [(CRKConcreteSharingAirDropTransfer *)self manager];
  identifier = [(CRKConcreteSharingAirDropTransfer *)self identifier];
  v8 = [objc_opt_class() transferStateForState:state];
  transferInfoDictionary = [(CRKConcreteSharingAirDropTransfer *)self transferInfoDictionary];
  [manager updateTransferWithIdentifier:identifier withState:v8 information:transferInfoDictionary completionHandler:completionCopy];
}

- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)declined withFailureReason:(unint64_t)reason
{
  if (reason == 2)
  {
    v5 = 115;
  }

  else
  {
    v5 = 18;
  }

  declinedCopy = declined;
  v8 = CRKErrorWithCodeAndUserInfo(v5, 0);
  [(CRKConcreteSharingAirDropTransfer *)self propagateResultForIdentifier:declinedCopy withSuccess:0 error:v8];

  return result;
}

- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)declined
{
  declinedCopy = declined;
  v6 = CRKErrorWithCodeAndUserInfo(1, 0);
  [(CRKConcreteSharingAirDropTransfer *)self propagateResultForIdentifier:declinedCopy withSuccess:0 error:v6];

  return result;
}

- (NSString)description
{
  transferInfoDictionary = [(CRKConcreteSharingAirDropTransfer *)self transferInfoDictionary];
  v3 = [transferInfoDictionary mutableCopy];

  v4 = *MEMORY[0x277D54D98];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D54D98]];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
    v9 = [v7 stringWithFormat:@"<Data with length %@>", v8];
    [v3 setObject:v9 forKeyedSubscript:v4];
  }

  v10 = [v3 description];

  return v10;
}

- (void)propagateResultForIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  identifier = [(CRKConcreteSharingAirDropTransfer *)self identifier];
  if ([identifierCopy isEqualToString:identifier])
  {
    resultHandler = [(CRKConcreteSharingAirDropTransfer *)self resultHandler];

    if (!resultHandler)
    {
      goto LABEL_5;
    }

    identifier = [(CRKConcreteSharingAirDropTransfer *)self resultHandler];
    (identifier)[2](identifier, identifierCopy, successCopy, errorCopy);
  }

LABEL_5:
}

+ (int64_t)transferStateForState:(int64_t)state
{
  if ((state - 2) >= 4)
  {
    return 1;
  }

  else
  {
    return state;
  }
}

- (id)transferInfoDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKConcreteSharingAirDropTransfer autoAccept](self, "autoAccept")}];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D54D88]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKConcreteSharingAirDropTransfer hideProgress](self, "hideProgress")}];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D54DB8]];

  senderName = [(CRKConcreteSharingAirDropTransfer *)self senderName];

  if (senderName)
  {
    senderName2 = [(CRKConcreteSharingAirDropTransfer *)self senderName];
    [v3 setObject:senderName2 forKeyedSubscript:*MEMORY[0x277D54DD0]];
  }

  bundleID = [(CRKConcreteSharingAirDropTransfer *)self bundleID];

  v9 = MEMORY[0x277D54D90];
  if (bundleID)
  {
    bundleID2 = [(CRKConcreteSharingAirDropTransfer *)self bundleID];
    [v3 setObject:bundleID2 forKeyedSubscript:*v9];
  }

  destFileURLs = [(CRKConcreteSharingAirDropTransfer *)self destFileURLs];
  v12 = [destFileURLs count];

  if (v12)
  {
    destFileURLs2 = [(CRKConcreteSharingAirDropTransfer *)self destFileURLs];
    v14 = [destFileURLs2 copy];
    [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D54DC8]];
  }

  fileURLs = [(CRKConcreteSharingAirDropTransfer *)self fileURLs];
  v16 = [fileURLs count];

  if (v16)
  {
    fileURLs2 = [(CRKConcreteSharingAirDropTransfer *)self fileURLs];
    allObjects = [fileURLs2 allObjects];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__CRKConcreteSharingAirDropTransfer_transferInfoDictionary__block_invoke;
    v28[3] = &unk_278DC2F48;
    v28[4] = self;
    v19 = [allObjects crk_mapUsingBlock:v28];
    [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277D54DB0]];
  }

  previewImageData = [(CRKConcreteSharingAirDropTransfer *)self previewImageData];

  if (previewImageData)
  {
    previewImageData2 = [(CRKConcreteSharingAirDropTransfer *)self previewImageData];
    [v3 setObject:previewImageData2 forKeyedSubscript:*MEMORY[0x277D54D98]];
  }

  sourceBundleID = [(CRKConcreteSharingAirDropTransfer *)self sourceBundleID];

  if (sourceBundleID)
  {
    sourceBundleID2 = [(CRKConcreteSharingAirDropTransfer *)self sourceBundleID];
    [v3 setObject:sourceBundleID2 forKeyedSubscript:*v9];
  }

  itemsDescription = [(CRKConcreteSharingAirDropTransfer *)self itemsDescription];

  if (itemsDescription)
  {
    itemsDescription2 = [(CRKConcreteSharingAirDropTransfer *)self itemsDescription];
    [v3 setObject:itemsDescription2 forKeyedSubscript:*MEMORY[0x277D54DC0]];
  }

  v26 = [v3 copy];

  return v26;
}

id __59__CRKConcreteSharingAirDropTransfer_transferInfoDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() infoForFileURL:v2];

  return v3;
}

+ (id)infoForFileURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  lastPathComponent = [lCopy lastPathComponent];
  if (lastPathComponent)
  {
    [v5 setObject:lastPathComponent forKeyedSubscript:*MEMORY[0x277D54DA0]];
  }

  v7 = [self UTIForURL:lCopy];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D54DA8]];
  }

  if ([v5 count])
  {
    v8 = [v5 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)UTIForURL:(id)l
{
  v15[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v15[0] = *MEMORY[0x277CBE7B8];
  v4 = v15[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [lCopy resourceValuesForKeys:v5 error:0];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    identifier = [v7 identifier];
  }

  else
  {
    pathExtension = [lCopy pathExtension];
    v10 = pathExtension;
    v11 = &stru_285643BE8;
    if (pathExtension)
    {
      v11 = pathExtension;
    }

    v12 = v11;

    v13 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v12];

    identifier = [v13 identifier];
  }

  return identifier;
}

@end