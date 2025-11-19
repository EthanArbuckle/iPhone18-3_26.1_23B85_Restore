@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

void __83__NSMutableDictionary_StackshotKCDataExtension__addTurnstileInfoDesc_count_elSize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 17);
  v7 = *(a3 + 18);
  v8 = *(a3 + 26);
  v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"thread %llu: ", *a3];
  v15 = v9;
  if ((v7 & 2) != 0)
  {
    v10 = @"turnstile was in the process of being updated";
  }

  else
  {
    if ((v7 & 4) != 0)
    {
      [v9 appendFormat:@"blocked on workqueue: 0x%llx, hops: %d, priority: %d", v4, v6, v5];
      goto LABEL_13;
    }

    if ((v7 & 8) != 0)
    {
      [v9 appendFormat:@"blocked on %lld, hops: %d, priority: %d", v4, v6, v5];
      goto LABEL_13;
    }

    if (v7)
    {
      v10 = @"turnstile has unknown inheritor";
    }

    else
    {
      if ((v7 & 0x10) == 0)
      {
        [v9 appendFormat:@"turnstile had unknown status (flags: 0x%llx)!", v7, v13, v14];
        goto LABEL_13;
      }

      v13 = v6;
      v14 = v5;
      v12 = v4;
      v10 = @"turnstile blocked on task pid %lld, hops: %d, priority: %d";
    }
  }

  [v9 appendFormat:v10, v12, v13, v14];
LABEL_13:
  if ((v7 & 0xC0) != 0)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"portlabels"];
    [v15 appendPortLabelInfo:v8 portlabels:v11];
  }

  [*(a1 + 40) addObject:v15];
}

void __78__NSMutableDictionary_StackshotKCDataExtension__addWaitInfoDesc_count_elSize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(a3 + 25);
  v6 = *a3;
  v7 = *(a3 + 16);
  v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"thread %llu: ", *(a3 + 8)];
  v17 = v8;
  switch(v4)
  {
    case 1:
      [v8 appendFormat:@"kernel mutex %#llx", v7];
      if (!v6)
      {
        goto LABEL_14;
      }

      if (v6 == -6)
      {
        v9 = @" in spin mode";
      }

      else
      {
        v14 = v6;
        v9 = @" owned by thread %llu";
      }

      goto LABEL_39;
    case 2:
      [v8 appendFormat:@"mach_msg receive on "];
      if (v6 == -5)
      {
        goto LABEL_48;
      }

      if (v6)
      {
        v11 = v17;
        if (v6 == -3)
        {
          goto LABEL_30;
        }

        [v17 appendFormat:@"port %#llx name %#llx", v7, v6];
      }

      else
      {
        [v17 appendFormat:@"port %#llx", v7, v15];
      }

      goto LABEL_57;
    case 3:
      v10 = &stru_1F550D880;
      if (v6 == -4)
      {
        v10 = @"locked ";
      }

      [v8 appendFormat:@"mach_msg receive on %@port set %#llx", v10, v7, v16];
      goto LABEL_41;
    case 4:
      [v8 appendFormat:@"mach_msg send on "];
      if (v6 <= -3)
      {
        if (v6 == -5)
        {
LABEL_48:
          [v17 appendFormat:@"intransit port %#llx", v7, v15];
          goto LABEL_57;
        }

        v11 = v17;
        if (v6 == -3)
        {
LABEL_30:
          [v11 appendFormat:@"locked port %#llx", v7, v15];
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (v6 != -2)
      {
        v11 = v17;
        if (!v6)
        {
          [v17 appendFormat:@"port %#llx with unknown owner", v7, v15];
          goto LABEL_57;
        }

LABEL_55:
        [v11 appendFormat:@"port %#llx owned by pid %llu", v7, v6];
        goto LABEL_57;
      }

      [v17 appendFormat:@"port %#llx owned by kernel", v7, v15];
LABEL_57:
      v13 = [*(a1 + 32) objectForKeyedSubscript:@"portlabels"];
      [v17 appendPortLabelInfo:v5 portlabels:v13];

      goto LABEL_41;
    case 5:
      [v8 appendFormat:@"mach_msg send on port %#llx in transit to ", v7];
      if (v6)
      {
        v14 = v6;
        v9 = @"port %#llx";
      }

      else
      {
        v9 = @"unknown port";
      }

      goto LABEL_39;
    case 6:
      [v8 appendFormat:@"semaphore port %#llx", v7];
      if (!v6)
      {
        goto LABEL_14;
      }

      v14 = v6;
      v9 = @" owned by pid %lld";
      goto LABEL_39;
    case 7:
      [v8 appendFormat:@"krwlock %#llx for reading", v7, v15];
      goto LABEL_37;
    case 8:
      [v8 appendFormat:@"krwlock %#llx for writing", v7, v15];
      goto LABEL_37;
    case 9:
      [v8 appendFormat:@"krwlock %#llx for upgrading", v7, v15];
      goto LABEL_37;
    case 10:
      v12 = @"unfair ";
      if (!v6)
      {
        v12 = @"spin";
      }

      [v8 appendFormat:@"%@lock %#llx", v12, v7];
LABEL_37:
      if (v6)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    case 11:
      [v8 appendFormat:@"pthread mutex %#llx", v7];
      if (v6)
      {
LABEL_38:
        v14 = v6;
        v9 = @" owned by thread %lld";
      }

      else
      {
LABEL_14:
        v9 = @" with unknown owner";
      }

LABEL_39:
      v8 = v17;
      goto LABEL_40;
    case 12:
      [v8 appendFormat:@"pthread rwlock %#llx for reading", v7, v15, v16];
      goto LABEL_41;
    case 13:
      [v8 appendFormat:@"pthread rwlock %#llx for writing", v7, v15, v16];
      goto LABEL_41;
    case 14:
      [v8 appendFormat:@"pthread condvar %#llx", v7, v15, v16];
      goto LABEL_41;
    case 16:
      switch(v6)
      {
        case -8:
          v9 = @"queue that is suspended";
          goto LABEL_40;
        case 0:
          v9 = @"queue in a transient state";
          goto LABEL_40;
        case -7:
          v9 = @"queue thread to be allocated";
LABEL_40:
          [v8 appendFormat:v9, v14, v15, v16];
          goto LABEL_41;
      }

      [v8 appendFormat:@"queue processed by thread %llu", v6, v15, v16];
LABEL_41:
      [*(a1 + 40) addObject:v17];

      return;
    case 20:
      [v8 appendFormat:@"thread %llu in compressor segment %#llx", v6, v7, v16];
      goto LABEL_41;
    default:
      [v8 appendFormat:@"unknown type %u (owner %llu, context %#llx)", v4, v6, v7];
      goto LABEL_41;
  }
}

@end