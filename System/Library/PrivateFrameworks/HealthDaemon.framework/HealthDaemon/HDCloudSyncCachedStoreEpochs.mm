@interface HDCloudSyncCachedStoreEpochs
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncCachedStoreEpochs)initWithActiveEpoch:(id)epoch pendingEpoch:(id)pendingEpoch tombstoneEpoch:(id)tombstoneEpoch;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDCloudSyncCachedStoreEpochs

- (HDCloudSyncCachedStoreEpochs)initWithActiveEpoch:(id)epoch pendingEpoch:(id)pendingEpoch tombstoneEpoch:(id)tombstoneEpoch
{
  epochCopy = epoch;
  pendingEpochCopy = pendingEpoch;
  tombstoneEpochCopy = tombstoneEpoch;
  v15.receiver = self;
  v15.super_class = HDCloudSyncCachedStoreEpochs;
  v12 = [(HDCloudSyncCachedStoreEpochs *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeEpoch, epoch);
    objc_storeStrong(&v13->_pendingEpoch, pendingEpoch);
    objc_storeStrong(&v13->_tombstoneEpoch, tombstoneEpoch);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  activeEpoch = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
  v6 = [activeEpoch copy];
  pendingEpoch = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
  v8 = [pendingEpoch copy];
  tombstoneEpoch = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
  v10 = [tombstoneEpoch copy];
  v11 = [v4 initWithActiveEpoch:v6 pendingEpoch:v8 tombstoneEpoch:v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v13 = 1;
      goto LABEL_31;
    }

    if ([(HDCloudSyncCachedStoreEpochs *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      activeEpoch = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
      activeEpoch2 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
      if (activeEpoch != activeEpoch2)
      {
        activeEpoch3 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
        if (!activeEpoch3)
        {
          v13 = 0;
          goto LABEL_30;
        }

        v10 = activeEpoch3;
        activeEpoch4 = [(HDCloudSyncCachedStoreEpochs *)self activeEpoch];
        activeEpoch5 = [(HDCloudSyncCachedStoreEpochs *)v6 activeEpoch];
        if (![activeEpoch4 isEqual:activeEpoch5])
        {
          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v32 = activeEpoch5;
        v33 = activeEpoch4;
        v34 = v10;
      }

      pendingEpoch = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
      pendingEpoch2 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
      if (pendingEpoch != pendingEpoch2)
      {
        pendingEpoch3 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
        if (!pendingEpoch3)
        {
          v13 = 0;
          goto LABEL_27;
        }

        v17 = pendingEpoch3;
        pendingEpoch4 = [(HDCloudSyncCachedStoreEpochs *)self pendingEpoch];
        pendingEpoch5 = [(HDCloudSyncCachedStoreEpochs *)v6 pendingEpoch];
        if (([pendingEpoch4 isEqual:pendingEpoch5] & 1) == 0)
        {

          v13 = 0;
          goto LABEL_28;
        }

        v28 = pendingEpoch5;
        v29 = pendingEpoch4;
        v30 = v17;
      }

      tombstoneEpoch = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
      tombstoneEpoch2 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
      v22 = tombstoneEpoch2;
      v13 = tombstoneEpoch == tombstoneEpoch2;
      if (tombstoneEpoch == tombstoneEpoch2)
      {
      }

      else
      {
        v31 = pendingEpoch;
        tombstoneEpoch3 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
        if (tombstoneEpoch3)
        {
          v24 = tombstoneEpoch3;
          tombstoneEpoch4 = [(HDCloudSyncCachedStoreEpochs *)self tombstoneEpoch];
          tombstoneEpoch5 = [(HDCloudSyncCachedStoreEpochs *)v6 tombstoneEpoch];
          v13 = [tombstoneEpoch4 isEqual:tombstoneEpoch5];

          if (v31 != pendingEpoch2)
          {
          }

LABEL_28:
          activeEpoch4 = v33;
          v10 = v34;
          activeEpoch5 = v32;
          if (activeEpoch != activeEpoch2)
          {
            goto LABEL_29;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      if (pendingEpoch != pendingEpoch2)
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