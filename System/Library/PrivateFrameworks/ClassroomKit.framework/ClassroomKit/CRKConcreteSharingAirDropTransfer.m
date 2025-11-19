@interface CRKConcreteSharingAirDropTransfer
+ (id)UTIForURL:(id)a3;
+ (id)infoForFileURL:(id)a3;
+ (int64_t)transferStateForState:(int64_t)a3;
- (CRKConcreteSharingAirDropTransfer)initWithAutoAccept:(BOOL)a3 hideProgress:(BOOL)a4 senderName:(id)a5 previewImageData:(id)a6 bundleID:(id)a7 sourceBundleID:(id)a8 itemsDescription:(id)a9 fileURLs:(id)a10 resultHandler:(id)a11;
- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)a3;
- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)a3 withFailureReason:(unint64_t)a4;
- (NSString)description;
- (id)transferInfoDictionary;
- (void)dealloc;
- (void)invalidate;
- (void)propagateResultForIdentifier:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)updateWithState:(int64_t)a3 completion:(id)a4;
@end

@implementation CRKConcreteSharingAirDropTransfer

- (void)dealloc
{
  v3 = [(CRKConcreteSharingAirDropTransfer *)self manager];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CRKConcreteSharingAirDropTransfer;
  [(CRKConcreteSharingAirDropTransfer *)&v4 dealloc];
}

- (CRKConcreteSharingAirDropTransfer)initWithAutoAccept:(BOOL)a3 hideProgress:(BOOL)a4 senderName:(id)a5 previewImageData:(id)a6 bundleID:(id)a7 sourceBundleID:(id)a8 itemsDescription:(id)a9 fileURLs:(id)a10 resultHandler:(id)a11
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v47.receiver = self;
  v47.super_class = CRKConcreteSharingAirDropTransfer;
  v24 = [(CRKConcreteSharingAirDropTransfer *)&v47 init];
  v25 = v24;
  if (v24)
  {
    v24->_autoAccept = a3;
    v24->_hideProgress = a4;
    v26 = [v17 copy];
    senderName = v25->_senderName;
    v25->_senderName = v26;

    v28 = [v18 copy];
    previewImageData = v25->_previewImageData;
    v25->_previewImageData = v28;

    v30 = [v19 copy];
    bundleID = v25->_bundleID;
    v25->_bundleID = v30;

    v32 = [v20 copy];
    sourceBundleID = v25->_sourceBundleID;
    v25->_sourceBundleID = v32;

    v34 = [v21 copy];
    itemsDescription = v25->_itemsDescription;
    v25->_itemsDescription = v34;

    v36 = [v22 copy];
    fileURLs = v25->_fileURLs;
    v25->_fileURLs = v36;

    v38 = MEMORY[0x245D3AAD0](v23);
    resultHandler = v25->_resultHandler;
    v25->_resultHandler = v38;

    v40 = objc_opt_new();
    manager = v25->_manager;
    v25->_manager = v40;

    [(SFAirDropClassroomTransferManager *)v25->_manager setDelegate:v25];
    [(SFAirDropClassroomTransferManager *)v25->_manager activate];
    destFileURLs = v25->_destFileURLs;
    v25->_destFileURLs = MEMORY[0x277CBEBF8];

    v43 = [MEMORY[0x277CCAD78] UUID];
    v44 = [v43 UUIDString];
    identifier = v25->_identifier;
    v25->_identifier = v44;
  }

  return v25;
}

- (void)invalidate
{
  v2 = [(CRKConcreteSharingAirDropTransfer *)self manager];
  [v2 invalidate];
}

- (void)updateWithState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v10 = [(CRKConcreteSharingAirDropTransfer *)self manager];
  v7 = [(CRKConcreteSharingAirDropTransfer *)self identifier];
  v8 = [objc_opt_class() transferStateForState:a3];
  v9 = [(CRKConcreteSharingAirDropTransfer *)self transferInfoDictionary];
  [v10 updateTransferWithIdentifier:v7 withState:v8 information:v9 completionHandler:v6];
}

- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)a3 withFailureReason:(unint64_t)a4
{
  if (a4 == 2)
  {
    v5 = 115;
  }

  else
  {
    v5 = 18;
  }

  v6 = a3;
  v8 = CRKErrorWithCodeAndUserInfo(v5, 0);
  [(CRKConcreteSharingAirDropTransfer *)self propagateResultForIdentifier:v6 withSuccess:0 error:v8];

  return result;
}

- (CRKConcreteSharingAirDropTransfer)transferWithIdentifierWasDeclined:(id)a3
{
  v4 = a3;
  v6 = CRKErrorWithCodeAndUserInfo(1, 0);
  [(CRKConcreteSharingAirDropTransfer *)self propagateResultForIdentifier:v4 withSuccess:0 error:v6];

  return result;
}

- (NSString)description
{
  v2 = [(CRKConcreteSharingAirDropTransfer *)self transferInfoDictionary];
  v3 = [v2 mutableCopy];

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

- (void)propagateResultForIdentifier:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [(CRKConcreteSharingAirDropTransfer *)self identifier];
  if ([v11 isEqualToString:v9])
  {
    v10 = [(CRKConcreteSharingAirDropTransfer *)self resultHandler];

    if (!v10)
    {
      goto LABEL_5;
    }

    v9 = [(CRKConcreteSharingAirDropTransfer *)self resultHandler];
    (v9)[2](v9, v11, v6, v8);
  }

LABEL_5:
}

+ (int64_t)transferStateForState:(int64_t)a3
{
  if ((a3 - 2) >= 4)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (id)transferInfoDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKConcreteSharingAirDropTransfer autoAccept](self, "autoAccept")}];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D54D88]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKConcreteSharingAirDropTransfer hideProgress](self, "hideProgress")}];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D54DB8]];

  v6 = [(CRKConcreteSharingAirDropTransfer *)self senderName];

  if (v6)
  {
    v7 = [(CRKConcreteSharingAirDropTransfer *)self senderName];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D54DD0]];
  }

  v8 = [(CRKConcreteSharingAirDropTransfer *)self bundleID];

  v9 = MEMORY[0x277D54D90];
  if (v8)
  {
    v10 = [(CRKConcreteSharingAirDropTransfer *)self bundleID];
    [v3 setObject:v10 forKeyedSubscript:*v9];
  }

  v11 = [(CRKConcreteSharingAirDropTransfer *)self destFileURLs];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(CRKConcreteSharingAirDropTransfer *)self destFileURLs];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D54DC8]];
  }

  v15 = [(CRKConcreteSharingAirDropTransfer *)self fileURLs];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(CRKConcreteSharingAirDropTransfer *)self fileURLs];
    v18 = [v17 allObjects];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__CRKConcreteSharingAirDropTransfer_transferInfoDictionary__block_invoke;
    v28[3] = &unk_278DC2F48;
    v28[4] = self;
    v19 = [v18 crk_mapUsingBlock:v28];
    [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277D54DB0]];
  }

  v20 = [(CRKConcreteSharingAirDropTransfer *)self previewImageData];

  if (v20)
  {
    v21 = [(CRKConcreteSharingAirDropTransfer *)self previewImageData];
    [v3 setObject:v21 forKeyedSubscript:*MEMORY[0x277D54D98]];
  }

  v22 = [(CRKConcreteSharingAirDropTransfer *)self sourceBundleID];

  if (v22)
  {
    v23 = [(CRKConcreteSharingAirDropTransfer *)self sourceBundleID];
    [v3 setObject:v23 forKeyedSubscript:*v9];
  }

  v24 = [(CRKConcreteSharingAirDropTransfer *)self itemsDescription];

  if (v24)
  {
    v25 = [(CRKConcreteSharingAirDropTransfer *)self itemsDescription];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x277D54DC0]];
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

+ (id)infoForFileURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 lastPathComponent];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D54DA0]];
  }

  v7 = [a1 UTIForURL:v4];
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

+ (id)UTIForURL:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15[0] = *MEMORY[0x277CBE7B8];
  v4 = v15[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [v3 resourceValuesForKeys:v5 error:0];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [v7 identifier];
  }

  else
  {
    v9 = [v3 pathExtension];
    v10 = v9;
    v11 = &stru_285643BE8;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v12];

    v8 = [v13 identifier];
  }

  return v8;
}

@end