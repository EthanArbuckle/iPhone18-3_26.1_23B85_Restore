@interface BLMetadataStore
- (BLMetadataStore)init;
- (BOOL)removeRacGUIDForStoreID:(int64_t)a3 error:(id *)a4;
- (BOOL)setRacGUID:(id)a3 forStoreID:(int64_t)a4 error:(id *)a5;
- (void)racGUIDForStoreID:(int64_t)a3 result:(id)a4;
@end

@implementation BLMetadataStore

- (BLMetadataStore)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = BLMetadataStore;
  v2 = [(BLMetadataStore *)&v10 init];
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

- (BOOL)setRacGUID:(id)a3 forStoreID:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_241D46520;
  v18 = sub_241D46530;
  v19 = 0;
  serviceProxy = self->_serviceProxy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D46538;
  v13[3] = &unk_278D176F8;
  v13[4] = &v14;
  [(BLServiceProxy *)serviceProxy setRacGUID:v8 forStoreID:a4 withReply:v13];
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

- (void)racGUIDForStoreID:(int64_t)a3 result:(id)a4
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D46520;
  v21 = sub_241D46530;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241D46520;
  v15 = sub_241D46530;
  v16 = 0;
  serviceProxy = self->_serviceProxy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D466D4;
  v10[3] = &unk_278D17748;
  v10[4] = &v11;
  v10[5] = &v17;
  [(BLServiceProxy *)serviceProxy racGUIDForStoreID:a3 withReply:v10];
  v8 = MEMORY[0x245CFF560](v6);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v12[5], v18[5]);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

- (BOOL)removeRacGUIDForStoreID:(int64_t)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_241D46520;
  v14 = sub_241D46530;
  v15 = 0;
  serviceProxy = self->_serviceProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D4686C;
  v9[3] = &unk_278D176F8;
  v9[4] = &v10;
  [(BLServiceProxy *)serviceProxy removeRacGUIDForStoreID:a3 withReply:v9];
  v6 = v11[5];
  if (a4 && v6)
  {
    *a4 = v6;
    v6 = v11[5];
  }

  v7 = v6 == 0;
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end