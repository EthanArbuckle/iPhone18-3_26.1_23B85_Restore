@interface BCSRealTimeTimingSignposter
+ (id)signposterForBCSType:(uint64_t)a1;
+ (id)signposterForBCSType:(uint64_t)a3 signpostIdentifier:;
+ (id)signposterForItemIdentifier:(uint64_t)a1;
+ (id)signposterForShardIdentifier:(uint64_t)a1;
- (void)_handleBlastDoorProcessing:(void *)a1;
- (void)_handleBusinessLinkChoppedFetch:(void *)a1;
- (void)_handleBusinessLinkHashFetch:(void *)a1;
- (void)_handleCloudKitConfigFetch:(void *)a1;
- (void)_handleCloudKitConfigFetchAndDecode:(void *)a1;
- (void)_handleCloudKitItemFetch:(void *)a1;
- (void)_handleCloudKitItemFetchAndDecode:(void *)a1;
- (void)_handleCloudKitMegashardFetch:(void *)a1;
- (void)_handleCloudKitMegashardFetchAndDecode:(void *)a1;
- (void)_handleCloudKitShardFetch:(void *)a1;
- (void)_handleCloudKitShardFetchAndDecode:(void *)a1;
- (void)_handleConfigResolution:(void *)a1;
- (void)_handleItemFetch:(void *)a1;
- (void)_handleItemIsRegistered:(void *)a1;
- (void)_handleItemResolution:(void *)a1;
- (void)_handlePIRItemFetch:(void *)a1;
- (void)_handleShardResolution:(void *)a1;
- (void)timingMeasurementDidBegin:(id)a3;
- (void)timingMeasurementDidEnd:(id)a3;
@end

@implementation BCSRealTimeTimingSignposter

+ (id)signposterForBCSType:(uint64_t)a1
{
  objc_opt_self();
  v3 = [(BCSRealTimeSignposter *)[BCSRealTimeTimingSignposter alloc] _initWithType:a2 signpostIdentifier:a2];

  return v3;
}

+ (id)signposterForBCSType:(uint64_t)a3 signpostIdentifier:
{
  objc_opt_self();
  v5 = [(BCSRealTimeSignposter *)[BCSRealTimeTimingSignposter alloc] _initWithType:a2 signpostIdentifier:a3];

  return v5;
}

+ (id)signposterForShardIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeTimingSignposter alloc];
  v4 = [v2 type];

  v5 = [(BCSRealTimeShardSignposter *)v3 _initWithShardType:v4 signpostIdentifier:v2];

  return v5;
}

+ (id)signposterForItemIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeTimingSignposter alloc];
  v4 = [v2 type];

  v5 = [(BCSRealTimeSignposter *)v3 _initWithType:v4 signpostIdentifier:v2];

  return v5;
}

- (void)timingMeasurementDidBegin:(id)a3
{
  switch([a3 timingMeasurementType])
  {
    case 0:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitConfigFetch:?];
      break;
    case 1:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitShardFetch:?];
      break;
    case 2:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitItemFetch:?];
      break;
    case 3:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitMegashardFetch:?];
      break;
    case 4:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitConfigFetchAndDecode:?];
      break;
    case 5:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitShardFetchAndDecode:?];
      break;
    case 6:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitItemFetchAndDecode:?];
      break;
    case 7:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitMegashardFetchAndDecode:?];
      break;
    case 8:

      [(BCSRealTimeTimingSignposter *)self _handleConfigResolution:?];
      break;
    case 9:

      [(BCSRealTimeTimingSignposter *)self _handleShardResolution:?];
      break;
    case 10:

      [(BCSRealTimeTimingSignposter *)self _handleItemResolution:?];
      break;
    case 11:
    case 15:
    case 17:
    case 18:

      [(BCSRealTimeTimingSignposter *)self _handleItemFetch:?];
      break;
    case 12:

      [(BCSRealTimeTimingSignposter *)self _handleBusinessLinkChoppedFetch:?];
      break;
    case 13:

      [(BCSRealTimeTimingSignposter *)self _handleBusinessLinkHashFetch:?];
      break;
    case 14:
    case 16:

      [(BCSRealTimeTimingSignposter *)self _handleItemIsRegistered:?];
      break;
    case 19:

      [(BCSRealTimeTimingSignposter *)self _handlePIRItemFetch:?];
      break;
    case 20:

      [(BCSRealTimeTimingSignposter *)self _handleBlastDoorProcessing:?];
      break;
    default:
      return;
  }
}

- (void)_handleCloudKitConfigFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchConfig";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchConfig";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchConfig";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchConfig";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchConfig";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchConfig";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchConfig";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchConfig";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchConfig";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchConfig";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchConfig";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitShardFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchShard";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchShard";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchShard";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchShard";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchShard";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchShard";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchShard";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchShard";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchShard";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchShard";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchShard";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitItemFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchBucket";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchBucket";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchBucket";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchBucket";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchBucket";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchBucket";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchBucket";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchBucket";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchBucket";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchBucket";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchBucket";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitMegashardFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchMegashard";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchMegashard";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchMegashard";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchMegashard";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchMegashard";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchMegashard";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchMegashard";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchMegashard";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchMegashard";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchMegashard";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchMegashard";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitConfigFetchAndDecode:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchConfigAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchConfigAndDecode";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchConfigAndDecode";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchConfigAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchConfigAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchConfigAndDecode";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchConfigAndDecode";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchConfigAndDecode";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchConfigAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchConfigAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchConfigAndDecode";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitShardFetchAndDecode:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchShardAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchShardAndDecode";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchShardAndDecode";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchShardAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchShardAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchShardAndDecode";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchShardAndDecode";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchShardAndDecode";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchShardAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchShardAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchShardAndDecode";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitItemFetchAndDecode:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchBucketAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchBucketAndDecode";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchBucketAndDecode";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchBucketAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchBucketAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchBucketAndDecode";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchBucketAndDecode";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchBucketAndDecode";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchBucketAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchBucketAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchBucketAndDecode";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudKitMegashardFetchAndDecode:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchMegashardAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchMegashardAndDecode";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_CloudKitFetchMegashardAndDecode";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchMegashardAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchMegashardAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_CloudKitFetchMegashardAndDecode";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchMegashardAndDecode";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_CloudKitFetchMegashardAndDecode";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchMegashardAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchMegashardAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_CloudKitFetchMegashardAndDecode";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfigResolution:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_ConfigResolution";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ConfigResolution";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_ConfigResolution";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ConfigResolution";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ConfigResolution";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ConfigResolution";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ConfigResolution";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_ConfigResolution";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ConfigResolution";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ConfigResolution";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_ConfigResolution";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleShardResolution:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = ABSLogSignpost();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v17 = "didEnd";
      }

      else
      {
        v17 = "didBegin";
      }

      v18 = NSStringFromBCSShardType([a1 shardType]);
      v24 = 136315650;
      v25 = "_ShardResolution";
      v26 = 2080;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for shard type: %@", &v24, 0x20u);
    }

    v5 = [a1 shardType];
    if (a2)
    {
      if (v5 > 3)
      {
        switch(v5)
        {
          case 4:
            v6 = ABSLogCommon();
            v14 = [a1 signpostIdentifier];
            if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v14;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessCaller_ShardResolution";
            goto LABEL_58;
          case 5:
            v6 = ABSLogCommon();
            v16 = [a1 signpostIdentifier];
            if ((v16 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v16;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessEmail_ShardResolution";
            goto LABEL_58;
          case 6:
            v6 = ABSLogCommon();
            v11 = [a1 signpostIdentifier];
            if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v11;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "WebPresentment_ShardResolution";
            goto LABEL_58;
        }
      }

      else
      {
        switch(v5)
        {
          case 1:
            v6 = ABSLogCommon();
            v13 = [a1 signpostIdentifier];
            if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v13;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "ChatSuggest_ShardResolution";
            goto LABEL_58;
          case 2:
            v6 = ABSLogCommon();
            v15 = [a1 signpostIdentifier];
            if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v15;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessLink_ShardResolution";
            goto LABEL_58;
          case 3:
            v6 = ABSLogCommon();
            v7 = [a1 signpostIdentifier];
            if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = v7;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessDomain_ShardResolution";
LABEL_58:
            _os_signpost_emit_with_name_impl(&dword_242072000, v6, OS_SIGNPOST_EVENT, v8, v9, "", &v24, 2u);
LABEL_59:

            break;
        }
      }
    }

    else if (v5 > 3)
    {
      switch(v5)
      {
        case 4:
          v6 = ABSLogCommon();
          v20 = [a1 signpostIdentifier];
          if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v20;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ShardResolution";
          goto LABEL_58;
        case 5:
          v6 = ABSLogCommon();
          v22 = [a1 signpostIdentifier];
          if ((v22 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v22;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ShardResolution";
          goto LABEL_58;
        case 6:
          v6 = ABSLogCommon();
          v12 = [a1 signpostIdentifier];
          if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v12;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ShardResolution";
          goto LABEL_58;
      }
    }

    else
    {
      switch(v5)
      {
        case 1:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "ChatSuggest_ShardResolution";
          goto LABEL_58;
        case 2:
          v6 = ABSLogCommon();
          v21 = [a1 signpostIdentifier];
          if ((v21 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v21;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessLink_ShardResolution";
          goto LABEL_58;
        case 3:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessDomain_ShardResolution";
          goto LABEL_58;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleItemResolution:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_ItemResolution";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemResolution";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_ItemResolution";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemResolution";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemResolution";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ItemResolution";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemResolution";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_ItemResolution";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemResolution";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemResolution";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_ItemResolution";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleItemFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_ItemFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemFetch";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_ItemFetch";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ItemFetch";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemFetch";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_ItemFetch";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_ItemFetch";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleBusinessLinkChoppedFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_ItemFetchChop";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemFetchChop";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_ItemFetchChop";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemFetchChop";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemFetchChop";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ItemFetchChop";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemFetchChop";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_ItemFetchChop";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemFetchChop";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemFetchChop";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_ItemFetchChop";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleBusinessLinkHashFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_ItemHashFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemHashFetch";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_ItemHashFetch";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemHashFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemHashFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_ItemHashFetch";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemHashFetch";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_ItemHashFetch";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemHashFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemHashFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_ItemHashFetch";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleItemIsRegistered:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "IsEnabledCheck";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggestIsEnabledCheck";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLinkIsEnabledCheck";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCallerIsEnabledCheck";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmailIsEnabledCheck";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentmentIsEnabledCheck";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggestIsEnabledCheck";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLinkIsEnabledCheck";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCallerIsEnabledCheck";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmailIsEnabledCheck";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentmentIsEnabledCheck";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleBlastDoorProcessing:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_BlastDoorProcessing";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_BlastDoorProcessing";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_BlastDoorProcessing";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_BlastDoorProcessing";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_BlastDoorProcessing";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_BlastDoorProcessing";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_BlastDoorProcessing";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_BlastDoorProcessing";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_BlastDoorProcessing";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_BlastDoorProcessing";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_BlastDoorProcessing";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handlePIRItemFetch:(void *)a1
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_50;
  }

  v4 = ABSLogSignpost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v22 = "didEnd";
    }

    else
    {
      v22 = "didBegin";
    }

    v23 = NSStringFromBCSType([a1 type]);
    v24 = 136315650;
    v25 = "_PIRItemFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  v5 = [a1 type];
  if (!a2)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = ABSLogCommon();
        v20 = [a1 signpostIdentifier];
        if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v20;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_PIRItemFetch";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        v12 = [a1 signpostIdentifier];
        if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = v12;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "BusinessLink_PIRItemFetch";
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v6 = ABSLogCommon();
          v18 = [a1 signpostIdentifier];
          if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v18;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_PIRItemFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          v19 = [a1 signpostIdentifier];
          if ((v19 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v19;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_PIRItemFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          v10 = [a1 signpostIdentifier];
          if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = v10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "WebPresentment_PIRItemFetch";
          break;
        default:
          goto LABEL_50;
      }
    }

    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_48;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = ABSLogCommon();
      v15 = [a1 signpostIdentifier];
      if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v15;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_PIRItemFetch";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      v11 = [a1 signpostIdentifier];
      if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v11;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessLink_PIRItemFetch";
    }

LABEL_37:
    v16 = v6;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_242072000, v16, v17, v8, v9, "", &v24, 2u);
LABEL_49:

    goto LABEL_50;
  }

  switch(v5)
  {
    case 3:
      v6 = ABSLogCommon();
      v13 = [a1 signpostIdentifier];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v13;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_PIRItemFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      v14 = [a1 signpostIdentifier];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_PIRItemFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      v7 = [a1 signpostIdentifier];
      if ((v7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "WebPresentment_PIRItemFetch";
      goto LABEL_37;
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)timingMeasurementDidEnd:(id)a3
{
  switch([a3 timingMeasurementType])
  {
    case 0:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitConfigFetch:?];
      break;
    case 1:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitShardFetch:?];
      break;
    case 2:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitItemFetch:?];
      break;
    case 3:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitMegashardFetch:?];
      break;
    case 4:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitConfigFetchAndDecode:?];
      break;
    case 5:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitShardFetchAndDecode:?];
      break;
    case 6:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitItemFetchAndDecode:?];
      break;
    case 7:

      [(BCSRealTimeTimingSignposter *)self _handleCloudKitMegashardFetchAndDecode:?];
      break;
    case 8:

      [(BCSRealTimeTimingSignposter *)self _handleConfigResolution:?];
      break;
    case 9:

      [(BCSRealTimeTimingSignposter *)self _handleShardResolution:?];
      break;
    case 10:

      [(BCSRealTimeTimingSignposter *)self _handleItemResolution:?];
      break;
    case 11:
    case 15:
    case 17:
    case 18:

      [(BCSRealTimeTimingSignposter *)self _handleItemFetch:?];
      break;
    case 12:

      [(BCSRealTimeTimingSignposter *)self _handleBusinessLinkChoppedFetch:?];
      break;
    case 13:

      [(BCSRealTimeTimingSignposter *)self _handleBusinessLinkHashFetch:?];
      break;
    case 14:
    case 16:

      [(BCSRealTimeTimingSignposter *)self _handleItemIsRegistered:?];
      break;
    case 19:

      [(BCSRealTimeTimingSignposter *)self _handlePIRItemFetch:?];
      break;
    case 20:

      [(BCSRealTimeTimingSignposter *)self _handleBlastDoorProcessing:?];
      break;
    default:
      return;
  }
}

@end