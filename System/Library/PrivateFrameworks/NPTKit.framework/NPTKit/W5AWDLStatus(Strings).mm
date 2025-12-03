@interface W5AWDLStatus(Strings)
- (id)awdlElectionParametersString;
- (id)awdlMasterChannelString;
- (id)awdlOpModeString;
- (id)awdlScheduleString;
- (id)awdlSecondaryMasterChannelString;
- (id)awdlSyncChannelSequenceString;
- (id)awdlSyncStateString;
- (id)dictionary;
@end

@implementation W5AWDLStatus(Strings)

- (id)awdlOpModeString
{
  selfCopy = self;
  awdlOpMode = [self awdlOpMode];

  if (awdlOpMode)
  {
    v3 = MEMORY[0x277CCACA8];
    awdlOpMode2 = [selfCopy awdlOpMode];
    v5 = *([awdlOpMode2 bytes] + 4);
    if (v5 > 2)
    {
      v6 = "Unknown";
    }

    else
    {
      selfCopy = [selfCopy awdlOpMode];
      v6 = awdlOpModeString_modestr_0[*([selfCopy bytes] + 4)];
    }

    v7 = [v3 stringWithFormat:@"%s", v6];
    if (v5 <= 2)
    {
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)awdlScheduleString
{
  awdlStrategy = [self awdlStrategy];

  if (awdlStrategy)
  {
    awdlStrategy2 = [self awdlStrategy];
    v4 = *([awdlStrategy2 bytes] + 8);
    v5 = W5DescriptionForAWDLScheduleState();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)awdlSyncChannelSequenceString
{
  awdlSyncChannelSequence = [self awdlSyncChannelSequence];

  if (awdlSyncChannelSequence)
  {
    awdlSyncChannelSequence2 = [self awdlSyncChannelSequence];
    [awdlSyncChannelSequence2 bytes];
    v4 = W5DescriptionForAWDLSyncChannelSequence();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)awdlMasterChannelString
{
  awdlMasterChannel = [self awdlMasterChannel];

  if (awdlMasterChannel)
  {
    v3 = MEMORY[0x277CCACA8];
    awdlMasterChannel2 = [self awdlMasterChannel];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(awdlMasterChannel2, "bytes") + 4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)awdlSecondaryMasterChannelString
{
  awdlSecondaryMasterChannel = [self awdlSecondaryMasterChannel];

  if (awdlSecondaryMasterChannel)
  {
    v3 = MEMORY[0x277CCACA8];
    awdlSecondaryMasterChannel2 = [self awdlSecondaryMasterChannel];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(awdlSecondaryMasterChannel2, "bytes") + 4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)awdlSyncStateString
{
  awdlSyncState = [self awdlSyncState];

  if (awdlSyncState)
  {
    awdlSyncState2 = [self awdlSyncState];
    [awdlSyncState2 bytes];
    v4 = W5DescriptionForAWDLSyncState();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)awdlElectionParametersString
{
  awdlElectionParameters = [self awdlElectionParameters];

  if (awdlElectionParameters)
  {
    v3 = MEMORY[0x277CCACA8];
    awdlElectionParameters2 = [self awdlElectionParameters];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(awdlElectionParameters2, "bytes") + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dictionary
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "power")}];
  [v2 setObject:v3 forKeyedSubscript:@"awdl_power_state"];

  awdlOpModeString = [self awdlOpModeString];
  [v2 setObject:awdlOpModeString forKeyedSubscript:@"awdl_op_mode"];

  awdlScheduleString = [self awdlScheduleString];
  [v2 setObject:awdlScheduleString forKeyedSubscript:@"awdl_schedule"];

  awdlSyncChannelSequenceString = [self awdlSyncChannelSequenceString];
  [v2 setObject:awdlSyncChannelSequenceString forKeyedSubscript:@"awdl_sync_channel_sequence"];

  awdlMasterChannelString = [self awdlMasterChannelString];
  [v2 setObject:awdlMasterChannelString forKeyedSubscript:@"awdl_master_channel"];

  awdlSecondaryMasterChannelString = [self awdlSecondaryMasterChannelString];
  [v2 setObject:awdlSecondaryMasterChannelString forKeyedSubscript:@"awdl_secondary_master_channel"];

  awdlSyncStateString = [self awdlSyncStateString];
  [v2 setObject:awdlSyncStateString forKeyedSubscript:@"awdl_sync_state"];

  awdlElectionParametersString = [self awdlElectionParametersString];
  [v2 setObject:awdlElectionParametersString forKeyedSubscript:@"awdl_election_parameters"];

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v11;
}

@end