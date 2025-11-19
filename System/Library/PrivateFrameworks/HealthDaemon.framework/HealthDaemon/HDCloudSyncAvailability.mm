@interface HDCloudSyncAvailability
- (HDCloudSyncAvailability)initWithProfileType:(int64_t)a3 behavior:(id)a4;
- (void)_setShouldPullWithProfileType:(int64_t)a3;
- (void)_setShouldPushWithProfileType:(int64_t)a3;
- (void)_setShouldSyncAttachmentsWithProfileType:(int64_t)a3;
- (void)_setShouldSyncDeviceContextWithProfileType:(int64_t)a3;
- (void)_setShouldSyncMedicalIDWithProfileType:(int64_t)a3;
- (void)_setShouldSyncStateEntitiesWithProfileType:(int64_t)a3;
- (void)_setShouldSyncSummarySharingPullWithProfileType:(int64_t)a3 behavior:(id)a4;
- (void)_setShouldSyncSummarySharingPushWithProfileType:(int64_t)a3 behavior:(id)a4;
@end

@implementation HDCloudSyncAvailability

- (HDCloudSyncAvailability)initWithProfileType:(int64_t)a3 behavior:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HDCloudSyncAvailability;
  v7 = [(HDCloudSyncAvailability *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HDCloudSyncAvailability *)v7 _setShouldPullWithProfileType:a3];
    [(HDCloudSyncAvailability *)v8 _setShouldPushWithProfileType:a3];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncMedicalIDWithProfileType:a3];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncSummarySharingPushWithProfileType:a3 behavior:v6];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncSummarySharingPullWithProfileType:a3 behavior:v6];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncAttachmentsWithProfileType:a3];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncDeviceContextWithProfileType:a3];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncStateEntitiesWithProfileType:a3];
  }

  return v8;
}

- (void)_setShouldPullWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldPull = v3;
    return;
  }

  if ((a3 - 3) < 2 || a3 == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldPushWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldPush = v3;
    return;
  }

  if ((a3 - 3) < 2 || a3 == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldSyncMedicalIDWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldSyncMedicalID = v3;
    return;
  }

  if ((a3 - 3) < 2 || a3 == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldSyncSummarySharingPushWithProfileType:(int64_t)a3 behavior:(id)a4
{
  if ([a4 supportsSharedSummarySync] && (a3 - 2) >= 3)
  {
    if (a3 == 1)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if (a3 != 100)
    {
      return;
    }
  }

  v6 = 0;
LABEL_6:
  self->_shouldSyncSummarySharingPush = v6;
}

- (void)_setShouldSyncSummarySharingPullWithProfileType:(int64_t)a3 behavior:(id)a4
{
  if (![a4 supportsSharedSummarySync])
  {
    goto LABEL_9;
  }

  if (a3 <= 3)
  {
    if ((a3 - 2) < 2)
    {
      v6 = 1;
LABEL_10:
      self->_shouldSyncSummarySharingPull = v6;
      return;
    }

    if (a3 != 1)
    {
      return;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (a3 == 100 || a3 == 4)
  {
    goto LABEL_9;
  }
}

- (void)_setShouldSyncAttachmentsWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 > 2)
  {
    if (a3 == 3 || a3 == 100)
    {
      goto LABEL_9;
    }

    if (a3 != 4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a3 == 1)
  {
LABEL_9:
    self->_shouldSyncAttachments = v3;
    return;
  }

  if (a3 == 2)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }
}

- (void)_setShouldSyncDeviceContextWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 3)
  {
    if ((a3 - 2) >= 2)
    {
      if (a3 != 1)
      {
        return;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_8;
  }

  if (a3 == 4 || a3 == 100)
  {
LABEL_8:
    self->_shouldSyncDeviceContext = v3;
  }
}

- (void)_setShouldSyncStateEntitiesWithProfileType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 3)
  {
    if ((a3 - 2) >= 2)
    {
      if (a3 != 1)
      {
        return;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_8;
  }

  if (a3 == 4 || a3 == 100)
  {
LABEL_8:
    self->_shouldSyncStateEntities = v3;
  }
}

@end