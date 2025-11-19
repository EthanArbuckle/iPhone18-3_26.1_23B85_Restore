@interface HDCloudSyncCachedStoreEpochs
- (BOOL)isEqual:(id)a3;
- (HDCloudSyncCachedStoreEpochs)initWithActiveEpoch:(id)a3 pendingEpoch:(id)a4 tombstoneEpoch:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDCloudSyncCachedStoreEpochs

- (HDCloudSyncCachedStoreEpochs)initWithActiveEpoch:(id)a3 pendingEpoch:(id)a4 tombstoneEpoch:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HDCloudSyncCachedStoreEpochs;
  v12 = [(HDCloudSyncCachedStoreEpochs *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeEpoch, a3);
    objc_storeStrong(&v13->_pendingEpoch, a4);
    objc_storeStrong(&v13->_tombstoneEpoch, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
  v6 = [v5 copy];
  v7 = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
  v8 = [v7 copy];
  v9 = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
  v10 = [v9 copy];
  v11 = [v4 initWithActiveEpoch:v6 pendingEpoch:v8 tombstoneEpoch:v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v13 = 1;
      goto LABEL_31;
    }

    if ([(HDCloudSyncCachedStoreEpochs *)v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
      v8 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
      if (v7 != v8)
      {
        v9 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_30;
        }

        v10 = v9;
        v11 = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
        v12 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v32 = v12;
        v33 = v11;
        v34 = v10;
      }

      v14 = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
      v15 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
      if (v14 != v15)
      {
        v16 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
        if (!v16)
        {
          v13 = 0;
          goto LABEL_27;
        }

        v17 = v16;
        v18 = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
        v19 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
        if (([v18 isEqual:v19] & 1) == 0)
        {

          v13 = 0;
          goto LABEL_28;
        }

        v28 = v19;
        v29 = v18;
        v30 = v17;
      }

      v20 = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
      v21 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
      v22 = v21;
      v13 = v20 == v21;
      if (v20 == v21)
      {
      }

      else
      {
        v31 = v14;
        v23 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
        if (v23)
        {
          v24 = v23;
          v27 = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
          v25 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
          v13 = [v27 isEqual:v25];

          if (v31 != v15)
          {
          }

LABEL_28:
          v11 = v33;
          v10 = v34;
          v12 = v32;
          if (v7 != v8)
          {
            goto LABEL_29;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      if (v14 != v15)
      {
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  v13 = 0;
LABEL_31:

  return v13;
}

@end