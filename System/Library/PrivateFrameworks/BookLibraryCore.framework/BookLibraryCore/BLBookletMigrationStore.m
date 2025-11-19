@interface BLBookletMigrationStore
- (BLBookletMigrationStore)init;
- (BOOL)removeAllMigrationInfosExcludingStates:(id)a3 error:(id *)a4;
- (BOOL)setMigrationState:(int64_t)a3 forStoreIDs:(id)a4 error:(id *)a5;
- (void)migrationInfosWithState:(int64_t)a3 completion:(id)a4;
- (void)migrationInfosWithStates:(id)a3 completion:(id)a4;
- (void)migrationInfosWithStoreIDs:(id)a3 completion:(id)a4;
@end

@implementation BLBookletMigrationStore

- (BLBookletMigrationStore)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = BLBookletMigrationStore;
  v2 = [(BLBookletMigrationStore *)&v10 init];
  if (v2)
  {
    v9 = 0;
    v3 = [[BLServiceProxy alloc] initWithError:&v9];
    v4 = v9;
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    if (!v2->_serviceProxy)
    {
      v6 = BLDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Unable to create service proxy: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)setMigrationState:(int64_t)a3 forStoreIDs:(id)a4 error:(id *)a5
{
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_241D45C74;
  v18 = sub_241D45C84;
  v19 = 0;
  serviceProxy = self->_serviceProxy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D45C8C;
  v13[3] = &unk_278D176F8;
  v13[4] = &v14;
  [(BLServiceProxy *)serviceProxy setMigrationState:a3 forStoreIDs:v8 withReply:v13];
  v10 = v15[5];
  if (a5 && v10)
  {
    *a5 = v10;
    v10 = v15[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)migrationInfosWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_241D45C74;
  v22 = sub_241D45C84;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_241D45C74;
  v16 = sub_241D45C84;
  v17 = 0;
  serviceProxy = self->_serviceProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D45E34;
  v11[3] = &unk_278D17720;
  v11[4] = &v12;
  v11[5] = &v18;
  [(BLServiceProxy *)serviceProxy migrationInfosWithStoreIDs:v6 withReply:v11];
  v9 = MEMORY[0x245CFF560](v7);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v13[5], v19[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)migrationInfosWithState:(int64_t)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithInteger:a3];
  v10 = [v6 setWithObject:v9];

  [(BLBookletMigrationStore *)self migrationInfosWithStates:v10 completion:v8];
}

- (void)migrationInfosWithStates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_241D45C74;
  v22 = sub_241D45C84;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_241D45C74;
  v16 = sub_241D45C84;
  v17 = 0;
  serviceProxy = self->_serviceProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D460FC;
  v11[3] = &unk_278D17720;
  v11[4] = &v12;
  v11[5] = &v18;
  [(BLServiceProxy *)serviceProxy migrationInfosWithStates:v6 withReply:v11];
  v9 = MEMORY[0x245CFF560](v7);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v13[5], v19[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (BOOL)removeAllMigrationInfosExcludingStates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_241D45C74;
  v16 = sub_241D45C84;
  v17 = 0;
  serviceProxy = self->_serviceProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D462B0;
  v11[3] = &unk_278D176F8;
  v11[4] = &v12;
  [(BLServiceProxy *)serviceProxy removeAllMigrationInfosExcludingStates:v6 withReply:v11];
  v8 = v13[5];
  if (a4 && v8)
  {
    *a4 = v8;
    v8 = v13[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end