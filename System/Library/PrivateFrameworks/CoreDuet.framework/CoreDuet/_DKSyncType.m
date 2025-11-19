@interface _DKSyncType
- (BOOL)isEqualToSyncType:(uint64_t)a1;
- (_BYTE)initWithIsSingleDevice:(_BYTE *)result;
- (_DKSyncType)initWithCoder:(id)a3;
- (double)periodicSyncInterval;
- (id)description;
- (uint64_t)didActivatePeer;
- (uint64_t)didAddSyncedEvents;
- (uint64_t)didDeleteSyncedEvents;
- (uint64_t)didReceivePush;
- (uint64_t)forceSync;
- (uint64_t)isInitialSync;
- (uint64_t)isPeriodicSync;
- (uint64_t)isSingleDevice;
- (uint64_t)isTriggeredSync;
- (uint64_t)setDidDeleteSyncedEvents:(uint64_t)result;
- (uint64_t)setDidReceivePush:(uint64_t)result;
- (uint64_t)setForceSync:(uint64_t)result;
- (uint64_t)setIsInitialSync:(uint64_t)result;
- (uint64_t)setIsPeriodicSync:(uint64_t)result;
- (uint64_t)setIsTriggeredSync:(uint64_t)result;
- (uint64_t)setPeriodicSyncInterval:(uint64_t)result;
- (uint64_t)setUrgency:(uint64_t)result;
- (uint64_t)urgency;
- (uint64_t)xpcActivity;
- (void)encodeWithCoder:(id)a3;
- (void)mergeType:(uint64_t)a1;
- (void)setXpcActivity:(uint64_t)a1;
@end

@implementation _DKSyncType

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p:", v5, self];

  if (self->_forceSync)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v6 appendFormat:@" forceSync=%@, ", v7];
  if (self->_isInitialSync)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@" isInitialSync=%@, ", v8];
  if (self->_isPeriodicSync)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@" isPeriodicSync=%@, ", v9];
  if (self->_isTriggeredSync)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@" isTriggeredSync=%@, ", v10];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_urgency];
  [v6 appendFormat:@" urgency=%@, ", v11];

  if (self->_didActivatePeer)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v6 appendFormat:@" didActivatePeer=%@, ", v12];
  if (self->_didReceivePush)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v6 appendFormat:@" didReceivePush=%@, ", v13];
  if (self->_didAddSyncedEvents)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v6 appendFormat:@" didAddSyncedEvents=%@, ", v14];
  if (self->_didDeleteSyncedEvents)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v6 appendFormat:@" didDeleteSyncedEvents=%@, ", v15];
  if (self->_isSingleDevice)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v6 appendFormat:@" isSingleDevice=%@, ", v16];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_periodicSyncInterval];
  [v6 appendFormat:@" periodicSyncInterval=%@, ", v17];

  [v6 appendFormat:@" xpcActivity=%@", self->_xpcActivity];
  [v6 appendString:@">"];
  v18 = [v6 copy];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  isSingleDevice = self->_isSingleDevice;
  v5 = a3;
  [v5 encodeBool:isSingleDevice forKey:@"IsSingleDevice"];
  [v5 encodeBool:self->_forceSync forKey:@"ForceSync"];
  [v5 encodeBool:self->_isInitialSync forKey:@"IsInitialSync"];
  [v5 encodeBool:self->_isPeriodicSync forKey:@"IsPeriodicSync"];
  [v5 encodeBool:self->_isTriggeredSync forKey:@"IsTriggeredSync"];
  [v5 encodeInt:LODWORD(self->_urgency) forKey:@"Urgency"];
  [v5 encodeBool:self->_didActivatePeer forKey:@"DidActivatePeer"];
  [v5 encodeBool:self->_didReceivePush forKey:@"DidReceivePush"];
  [v5 encodeBool:self->_didAddSyncedEvents forKey:@"DidAddSyncedEvents"];
  [v5 encodeBool:self->_didDeleteSyncedEvents forKey:@"DidDeleteSyncedEvents"];
  [v5 encodeDouble:@"PeriodicSyncInterval" forKey:self->_periodicSyncInterval];
}

- (_DKSyncType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"IsSingleDevice"];
  v6 = [_DKSyncType alloc];
  if (v6 && (v11.receiver = v6, v11.super_class = _DKSyncType, (v7 = [(_DKSyncType *)&v11 init]) != 0))
  {
    v8 = v7;
    v7->_isSingleDevice = v5;
    v7->_forceSync = [v4 decodeBoolForKey:@"ForceSync"];
    v8->_isInitialSync = [v4 decodeBoolForKey:@"IsInitialSync"];
    v8->_isPeriodicSync = [v4 decodeBoolForKey:@"IsPeriodicSync"];
    v8->_isTriggeredSync = [v4 decodeBoolForKey:@"IsTriggeredSync"];
    v8->_urgency = [v4 decodeIntForKey:@"Urgency"];
    v8->_didActivatePeer = [v4 decodeBoolForKey:@"DidActivatePeer"];
    v8->_didReceivePush = [v4 decodeBoolForKey:@"DidReceivePush"];
    v8->_didAddSyncedEvents = [v4 decodeBoolForKey:@"DidAddSyncedEvents"];
    v8->_didDeleteSyncedEvents = [v4 decodeBoolForKey:@"DidDeleteSyncedEvents"];
    [v4 decodeDoubleForKey:@"PeriodicSyncInterval"];
    v8->_periodicSyncInterval = v9;
  }

  else
  {
    [(_DKSyncType *)&v11 initWithCoder:v4];
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToSyncType:(uint64_t)a1
{
  v3 = a2;
  v4 = 0;
  if (a1 && v3)
  {
    v4 = *(a1 + 8) == *(v3 + 8) && *(a1 + 9) == *(v3 + 9) && *(a1 + 10) == *(v3 + 10) && *(a1 + 11) == *(v3 + 11) && *(a1 + 12) == *(v3 + 12) && *(a1 + 24) == v3[3] && *(a1 + 13) == *(v3 + 13) && *(a1 + 14) == *(v3 + 14) && *(a1 + 15) == *(v3 + 15) && *(a1 + 16) == *(v3 + 16) && *(a1 + 32) == *(v3 + 4);
  }

  return v4;
}

- (_BYTE)initWithIsSingleDevice:(_BYTE *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = _DKSyncType;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[8] = a2;
    }
  }

  return result;
}

- (void)mergeType:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_45;
  }

  if (*(a1 + 9))
  {
    *(a1 + 9) = 1;
LABEL_6:
    *(a1 + 10) = 0;
LABEL_7:
    *(a1 + 12) = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    v7 = (a1 + 10);
    v23 = *(a1 + 10);
    *(a1 + 9) = 0;
    if (v23)
    {
LABEL_24:
      *v7 = 1;
LABEL_49:
      *(a1 + 11) = 0;
      goto LABEL_8;
    }

    v18 = (a1 + 11);
    v24 = *(a1 + 11);
    *(a1 + 10) = 0;
    if (v24)
    {
LABEL_51:
      *v18 = 1;
      goto LABEL_7;
    }

    *(a1 + 11) = 0;
    v22 = (a1 + 12);
    v20 = (a1 + 12);
    goto LABEL_56;
  }

  v4 = v3[9];
  *(a1 + 9) = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  v7 = (a1 + 10);
  if (*(a1 + 10))
  {
    goto LABEL_24;
  }

  v17 = v3[10];
  *v7 = v17;
  if (v17)
  {
    goto LABEL_49;
  }

  v18 = (a1 + 11);
  if (*(a1 + 11))
  {
    goto LABEL_51;
  }

  v19 = v3[11];
  *v18 = v19;
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = (a1 + 12);
  if ((*(a1 + 12) & 1) == 0)
  {
    v22 = v3 + 12;
LABEL_56:
    v21 = *v22;
    goto LABEL_57;
  }

  v21 = 1;
LABEL_57:
  *v20 = v21 & 1;
LABEL_8:
  if (v3)
  {
    if (v3[11] == 1)
    {
      *(a1 + 32) = *(v3 + 4);
    }

    v5 = *(v3 + 3);
    if (v5 > *(a1 + 24))
    {
      *(a1 + 24) = v5;
    }
  }

  if (*(a1 + 12) != 1)
  {
    *(a1 + 13) = 0;
    goto LABEL_36;
  }

  if (*(a1 + 13))
  {
    *(a1 + 13) = 1;
    v6 = *(a1 + 14);
    if (!v3 || (*(a1 + 14) & 1) != 0)
    {
LABEL_26:
      *(a1 + 14) = v6 & 1;
      if (*(a1 + 15))
      {
        goto LABEL_27;
      }

      if (v3)
      {
        goto LABEL_31;
      }

      goto LABEL_65;
    }

LABEL_25:
    v6 = v3[14];
    goto LABEL_26;
  }

  if (!v3)
  {
    *(a1 + 13) = 0;
    if (*(a1 + 15) == 1)
    {
      *(a1 + 15) = 1;
LABEL_66:
      v11 = (a1 + 16);
      v8 = (a1 + 16);
      goto LABEL_34;
    }

LABEL_65:
    *(a1 + 15) = 0;
    goto LABEL_66;
  }

  *(a1 + 13) = v3[13];
  if ((*(a1 + 14) & 1) == 0)
  {
    goto LABEL_25;
  }

  *(a1 + 14) = 1;
  if (*(a1 + 15))
  {
LABEL_27:
    v8 = (a1 + 16);
    v9 = *(a1 + 16);
    *(a1 + 15) = 1;
    if (!v3 || (v9 & 1) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_31:
  v8 = (a1 + 16);
  v10 = *(a1 + 16);
  *(a1 + 15) = v3[15];
  if ((v10 & 1) == 0)
  {
LABEL_33:
    v11 = v3 + 16;
LABEL_34:
    v9 = *v11;
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:
  *v8 = v9 & 1;
LABEL_36:
  v25 = v3;
  if (*(a1 + 8) == 1)
  {
    if (v3)
    {
      *(a1 + 8) = v3[8];
LABEL_40:
      v12 = *(v3 + 5);
      goto LABEL_41;
    }

    v12 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    if (v3)
    {
      goto LABEL_40;
    }

    v12 = 0;
  }

LABEL_41:
  v13 = v12;
  v14 = v13;
  v16 = *(a1 + 40);
  v15 = (a1 + 40);
  if (!v16 && v13)
  {
    objc_storeStrong(v15, v12);
  }

  v3 = v25;
LABEL_45:
}

- (uint64_t)forceSync
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isInitialSync
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isPeriodicSync
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 11));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isTriggeredSync
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 12));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (double)periodicSyncInterval
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)urgency
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)didActivatePeer
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 13));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didReceivePush
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 14));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didAddSyncedEvents
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 15));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didDeleteSyncedEvents
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 16));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isSingleDevice
{
  if (a1)
  {
    return OUTLINED_FUNCTION_61(*(a1 + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)xpcActivity
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)setForceSync:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

- (uint64_t)setIsInitialSync:(uint64_t)result
{
  if (result)
  {
    *(result + 10) = a2;
  }

  return result;
}

- (uint64_t)setIsPeriodicSync:(uint64_t)result
{
  if (result)
  {
    *(result + 11) = a2;
  }

  return result;
}

- (uint64_t)setIsTriggeredSync:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

- (uint64_t)setUrgency:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setDidReceivePush:(uint64_t)result
{
  if (result)
  {
    *(result + 14) = a2;
  }

  return result;
}

- (uint64_t)setDidDeleteSyncedEvents:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setPeriodicSyncInterval:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (void)setXpcActivity:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (uint64_t)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 decodeBoolForKey:@"ForceSync"];
  [a2 decodeBoolForKey:@"IsInitialSync"];
  [a2 decodeBoolForKey:@"IsPeriodicSync"];
  [a2 decodeBoolForKey:@"IsTriggeredSync"];
  [a2 decodeIntForKey:@"Urgency"];
  [a2 decodeBoolForKey:@"DidActivatePeer"];
  [a2 decodeBoolForKey:@"DidReceivePush"];
  [a2 decodeBoolForKey:@"DidAddSyncedEvents"];
  [a2 decodeBoolForKey:@"DidDeleteSyncedEvents"];
  return [a2 decodeDoubleForKey:@"PeriodicSyncInterval"];
}

@end