@interface HDCloudSyncAvailability
- (HDCloudSyncAvailability)initWithProfileType:(int64_t)type behavior:(id)behavior;
- (void)_setShouldPullWithProfileType:(int64_t)type;
- (void)_setShouldPushWithProfileType:(int64_t)type;
- (void)_setShouldSyncAttachmentsWithProfileType:(int64_t)type;
- (void)_setShouldSyncDeviceContextWithProfileType:(int64_t)type;
- (void)_setShouldSyncMedicalIDWithProfileType:(int64_t)type;
- (void)_setShouldSyncStateEntitiesWithProfileType:(int64_t)type;
- (void)_setShouldSyncSummarySharingPullWithProfileType:(int64_t)type behavior:(id)behavior;
- (void)_setShouldSyncSummarySharingPushWithProfileType:(int64_t)type behavior:(id)behavior;
@end

@implementation HDCloudSyncAvailability

- (HDCloudSyncAvailability)initWithProfileType:(int64_t)type behavior:(id)behavior
{
  behaviorCopy = behavior;
  v10.receiver = self;
  v10.super_class = HDCloudSyncAvailability;
  v7 = [(HDCloudSyncAvailability *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HDCloudSyncAvailability *)v7 _setShouldPullWithProfileType:type];
    [(HDCloudSyncAvailability *)v8 _setShouldPushWithProfileType:type];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncMedicalIDWithProfileType:type];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncSummarySharingPushWithProfileType:type behavior:behaviorCopy];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncSummarySharingPullWithProfileType:type behavior:behaviorCopy];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncAttachmentsWithProfileType:type];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncDeviceContextWithProfileType:type];
    [(HDCloudSyncAvailability *)v8 _setShouldSyncStateEntitiesWithProfileType:type];
  }

  return v8;
}

- (void)_setShouldPullWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldPull = v3;
    return;
  }

  if ((type - 3) < 2 || type == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldPushWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldPush = v3;
    return;
  }

  if ((type - 3) < 2 || type == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldSyncMedicalIDWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        return;
      }

      v3 = 0;
    }

LABEL_8:
    self->_shouldSyncMedicalID = v3;
    return;
  }

  if ((type - 3) < 2 || type == 100)
  {
    goto LABEL_8;
  }
}

- (void)_setShouldSyncSummarySharingPushWithProfileType:(int64_t)type behavior:(id)behavior
{
  if ([behavior supportsSharedSummarySync] && (type - 2) >= 3)
  {
    if (type == 1)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if (type != 100)
    {
      return;
    }
  }

  v6 = 0;
LABEL_6:
  self->_shouldSyncSummarySharingPush = v6;
}

- (void)_setShouldSyncSummarySharingPullWithProfileType:(int64_t)type behavior:(id)behavior
{
  if (![behavior supportsSharedSummarySync])
  {
    goto LABEL_9;
  }

  if (type <= 3)
  {
    if ((type - 2) < 2)
    {
      v6 = 1;
LABEL_10:
      self->_shouldSyncSummarySharingPull = v6;
      return;
    }

    if (type != 1)
    {
      return;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (type == 100 || type == 4)
  {
    goto LABEL_9;
  }
}

- (void)_setShouldSyncAttachmentsWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type > 2)
  {
    if (type == 3 || type == 100)
    {
      goto LABEL_9;
    }

    if (type != 4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
LABEL_9:
    self->_shouldSyncAttachments = v3;
    return;
  }

  if (type == 2)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }
}

- (void)_setShouldSyncDeviceContextWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type <= 3)
  {
    if ((type - 2) >= 2)
    {
      if (type != 1)
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

  if (type == 4 || type == 100)
  {
LABEL_8:
    self->_shouldSyncDeviceContext = v3;
  }
}

- (void)_setShouldSyncStateEntitiesWithProfileType:(int64_t)type
{
  v3 = 1;
  if (type <= 3)
  {
    if ((type - 2) >= 2)
    {
      if (type != 1)
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

  if (type == 4 || type == 100)
  {
LABEL_8:
    self->_shouldSyncStateEntities = v3;
  }
}

@end