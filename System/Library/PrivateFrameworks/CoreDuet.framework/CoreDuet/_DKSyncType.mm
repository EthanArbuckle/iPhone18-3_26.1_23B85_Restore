@interface _DKSyncType
- (BOOL)isEqualToSyncType:(uint64_t)type;
- (_BYTE)initWithIsSingleDevice:(_BYTE *)result;
- (_DKSyncType)initWithCoder:(id)coder;
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
- (void)encodeWithCoder:(id)coder;
- (void)mergeType:(uint64_t)type;
- (void)setXpcActivity:(uint64_t)activity;
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

- (void)encodeWithCoder:(id)coder
{
  isSingleDevice = self->_isSingleDevice;
  coderCopy = coder;
  [coderCopy encodeBool:isSingleDevice forKey:@"IsSingleDevice"];
  [coderCopy encodeBool:self->_forceSync forKey:@"ForceSync"];
  [coderCopy encodeBool:self->_isInitialSync forKey:@"IsInitialSync"];
  [coderCopy encodeBool:self->_isPeriodicSync forKey:@"IsPeriodicSync"];
  [coderCopy encodeBool:self->_isTriggeredSync forKey:@"IsTriggeredSync"];
  [coderCopy encodeInt:LODWORD(self->_urgency) forKey:@"Urgency"];
  [coderCopy encodeBool:self->_didActivatePeer forKey:@"DidActivatePeer"];
  [coderCopy encodeBool:self->_didReceivePush forKey:@"DidReceivePush"];
  [coderCopy encodeBool:self->_didAddSyncedEvents forKey:@"DidAddSyncedEvents"];
  [coderCopy encodeBool:self->_didDeleteSyncedEvents forKey:@"DidDeleteSyncedEvents"];
  [coderCopy encodeDouble:@"PeriodicSyncInterval" forKey:self->_periodicSyncInterval];
}

- (_DKSyncType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"IsSingleDevice"];
  v6 = [_DKSyncType alloc];
  if (v6 && (v11.receiver = v6, v11.super_class = _DKSyncType, (v7 = [(_DKSyncType *)&v11 init]) != 0))
  {
    v8 = v7;
    v7->_isSingleDevice = v5;
    v7->_forceSync = [coderCopy decodeBoolForKey:@"ForceSync"];
    v8->_isInitialSync = [coderCopy decodeBoolForKey:@"IsInitialSync"];
    v8->_isPeriodicSync = [coderCopy decodeBoolForKey:@"IsPeriodicSync"];
    v8->_isTriggeredSync = [coderCopy decodeBoolForKey:@"IsTriggeredSync"];
    v8->_urgency = [coderCopy decodeIntForKey:@"Urgency"];
    v8->_didActivatePeer = [coderCopy decodeBoolForKey:@"DidActivatePeer"];
    v8->_didReceivePush = [coderCopy decodeBoolForKey:@"DidReceivePush"];
    v8->_didAddSyncedEvents = [coderCopy decodeBoolForKey:@"DidAddSyncedEvents"];
    v8->_didDeleteSyncedEvents = [coderCopy decodeBoolForKey:@"DidDeleteSyncedEvents"];
    [coderCopy decodeDoubleForKey:@"PeriodicSyncInterval"];
    v8->_periodicSyncInterval = v9;
  }

  else
  {
    [(_DKSyncType *)&v11 initWithCoder:coderCopy];
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToSyncType:(uint64_t)type
{
  v3 = a2;
  v4 = 0;
  if (type && v3)
  {
    v4 = *(type + 8) == *(v3 + 8) && *(type + 9) == *(v3 + 9) && *(type + 10) == *(v3 + 10) && *(type + 11) == *(v3 + 11) && *(type + 12) == *(v3 + 12) && *(type + 24) == v3[3] && *(type + 13) == *(v3 + 13) && *(type + 14) == *(v3 + 14) && *(type + 15) == *(v3 + 15) && *(type + 16) == *(v3 + 16) && *(type + 32) == *(v3 + 4);
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

- (void)mergeType:(uint64_t)type
{
  v3 = a2;
  if (!type)
  {
    goto LABEL_45;
  }

  if (*(type + 9))
  {
    *(type + 9) = 1;
LABEL_6:
    *(type + 10) = 0;
LABEL_7:
    *(type + 12) = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    v7 = (type + 10);
    v23 = *(type + 10);
    *(type + 9) = 0;
    if (v23)
    {
LABEL_24:
      *v7 = 1;
LABEL_49:
      *(type + 11) = 0;
      goto LABEL_8;
    }

    v18 = (type + 11);
    v24 = *(type + 11);
    *(type + 10) = 0;
    if (v24)
    {
LABEL_51:
      *v18 = 1;
      goto LABEL_7;
    }

    *(type + 11) = 0;
    v22 = (type + 12);
    v20 = (type + 12);
    goto LABEL_56;
  }

  v4 = v3[9];
  *(type + 9) = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  v7 = (type + 10);
  if (*(type + 10))
  {
    goto LABEL_24;
  }

  v17 = v3[10];
  *v7 = v17;
  if (v17)
  {
    goto LABEL_49;
  }

  v18 = (type + 11);
  if (*(type + 11))
  {
    goto LABEL_51;
  }

  v19 = v3[11];
  *v18 = v19;
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = (type + 12);
  if ((*(type + 12) & 1) == 0)
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
      *(type + 32) = *(v3 + 4);
    }

    v5 = *(v3 + 3);
    if (v5 > *(type + 24))
    {
      *(type + 24) = v5;
    }
  }

  if (*(type + 12) != 1)
  {
    *(type + 13) = 0;
    goto LABEL_36;
  }

  if (*(type + 13))
  {
    *(type + 13) = 1;
    v6 = *(type + 14);
    if (!v3 || (*(type + 14) & 1) != 0)
    {
LABEL_26:
      *(type + 14) = v6 & 1;
      if (*(type + 15))
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
    *(type + 13) = 0;
    if (*(type + 15) == 1)
    {
      *(type + 15) = 1;
LABEL_66:
      v11 = (type + 16);
      v8 = (type + 16);
      goto LABEL_34;
    }

LABEL_65:
    *(type + 15) = 0;
    goto LABEL_66;
  }

  *(type + 13) = v3[13];
  if ((*(type + 14) & 1) == 0)
  {
    goto LABEL_25;
  }

  *(type + 14) = 1;
  if (*(type + 15))
  {
LABEL_27:
    v8 = (type + 16);
    v9 = *(type + 16);
    *(type + 15) = 1;
    if (!v3 || (v9 & 1) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_31:
  v8 = (type + 16);
  v10 = *(type + 16);
  *(type + 15) = v3[15];
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
  if (*(type + 8) == 1)
  {
    if (v3)
    {
      *(type + 8) = v3[8];
LABEL_40:
      v12 = *(v3 + 5);
      goto LABEL_41;
    }

    v12 = 0;
    *(type + 8) = 0;
  }

  else
  {
    *(type + 8) = 0;
    if (v3)
    {
      goto LABEL_40;
    }

    v12 = 0;
  }

LABEL_41:
  v13 = v12;
  v14 = v13;
  v16 = *(type + 40);
  v15 = (type + 40);
  if (!v16 && v13)
  {
    objc_storeStrong(v15, v12);
  }

  v3 = v25;
LABEL_45:
}

- (uint64_t)forceSync
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isInitialSync
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isPeriodicSync
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 11));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isTriggeredSync
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 12));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (double)periodicSyncInterval
{
  if (self)
  {
    return *(self + 32);
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
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 13));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didReceivePush
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 14));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didAddSyncedEvents
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 15));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)didDeleteSyncedEvents
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 16));
  }

  else
  {
    return OUTLINED_FUNCTION_61(0);
  }
}

- (uint64_t)isSingleDevice
{
  if (self)
  {
    return OUTLINED_FUNCTION_61(*(self + 8));
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

- (void)setXpcActivity:(uint64_t)activity
{
  if (activity)
  {
    objc_storeStrong((activity + 40), a2);
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