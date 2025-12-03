@interface BDSBookWidgetInfoManager
- (BDSBookWidgetInfoManager)init;
- (void)fetchAdamIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)fetchBookAssets:(NSArray *)assets audiobookAssets:(NSArray *)audiobookAssets completionHandler:(id)handler;
- (void)setBookWidgetInfo:(id)info completion:(id)completion;
@end

@implementation BDSBookWidgetInfoManager

- (BDSBookWidgetInfoManager)init
{
  v6.receiver = self;
  v6.super_class = BDSBookWidgetInfoManager;
  v2 = [(BDSBookWidgetInfoManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)setBookWidgetInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  serviceProxy = [(BDSBookWidgetInfoManager *)self serviceProxy];
  [serviceProxy setBookWidgetInfo:infoCopy completion:completionCopy];
}

- (void)fetchAdamIDs:(NSArray *)ds completionHandler:(id)handler
{
  v7 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1E470B14C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1E471B9E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E471B9E8;
  v16[5] = v15;
  dsCopy = ds;
  selfCopy = self;
  sub_1E46FF094(0, 0, v11, &unk_1E471B9F0, v16);
}

- (void)fetchBookAssets:(NSArray *)assets audiobookAssets:(NSArray *)audiobookAssets completionHandler:(id)handler
{
  v9 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = assets;
  v15[3] = audiobookAssets;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_1E470B14C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1E471B9B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1E471B9C0;
  v18[5] = v17;
  assetsCopy = assets;
  audiobookAssetsCopy = audiobookAssets;
  selfCopy = self;
  sub_1E46FF094(0, 0, v13, &unk_1E471B9C8, v18);
}

@end