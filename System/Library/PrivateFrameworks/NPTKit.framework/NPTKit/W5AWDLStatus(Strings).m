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
  v1 = a1;
  v2 = [a1 awdlOpMode];

  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v1 awdlOpMode];
    v5 = *([v4 bytes] + 4);
    if (v5 > 2)
    {
      v6 = "Unknown";
    }

    else
    {
      v1 = [v1 awdlOpMode];
      v6 = awdlOpModeString_modestr_0[*([v1 bytes] + 4)];
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
  v2 = [a1 awdlStrategy];

  if (v2)
  {
    v3 = [a1 awdlStrategy];
    v4 = *([v3 bytes] + 8);
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
  v2 = [a1 awdlSyncChannelSequence];

  if (v2)
  {
    v3 = [a1 awdlSyncChannelSequence];
    [v3 bytes];
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
  v2 = [a1 awdlMasterChannel];

  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 awdlMasterChannel];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(v4, "bytes") + 4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)awdlSecondaryMasterChannelString
{
  v2 = [a1 awdlSecondaryMasterChannel];

  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 awdlSecondaryMasterChannel];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(v4, "bytes") + 4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)awdlSyncStateString
{
  v2 = [a1 awdlSyncState];

  if (v2)
  {
    v3 = [a1 awdlSyncState];
    [v3 bytes];
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
  v2 = [a1 awdlElectionParameters];

  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 awdlElectionParameters];
    v5 = [v3 stringWithFormat:@"%i", *(objc_msgSend(v4, "bytes") + 32)];
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
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "power")}];
  [v2 setObject:v3 forKeyedSubscript:@"awdl_power_state"];

  v4 = [a1 awdlOpModeString];
  [v2 setObject:v4 forKeyedSubscript:@"awdl_op_mode"];

  v5 = [a1 awdlScheduleString];
  [v2 setObject:v5 forKeyedSubscript:@"awdl_schedule"];

  v6 = [a1 awdlSyncChannelSequenceString];
  [v2 setObject:v6 forKeyedSubscript:@"awdl_sync_channel_sequence"];

  v7 = [a1 awdlMasterChannelString];
  [v2 setObject:v7 forKeyedSubscript:@"awdl_master_channel"];

  v8 = [a1 awdlSecondaryMasterChannelString];
  [v2 setObject:v8 forKeyedSubscript:@"awdl_secondary_master_channel"];

  v9 = [a1 awdlSyncStateString];
  [v2 setObject:v9 forKeyedSubscript:@"awdl_sync_state"];

  v10 = [a1 awdlElectionParametersString];
  [v2 setObject:v10 forKeyedSubscript:@"awdl_election_parameters"];

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v11;
}

@end