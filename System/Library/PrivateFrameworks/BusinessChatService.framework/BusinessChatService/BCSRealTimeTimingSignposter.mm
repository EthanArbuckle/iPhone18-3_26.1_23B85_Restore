@interface BCSRealTimeTimingSignposter
+ (id)signposterForBCSType:(uint64_t)type;
+ (id)signposterForBCSType:(uint64_t)type signpostIdentifier:;
+ (id)signposterForItemIdentifier:(uint64_t)identifier;
+ (id)signposterForShardIdentifier:(uint64_t)identifier;
- (void)_handleBlastDoorProcessing:(void *)processing;
- (void)_handleBusinessLinkChoppedFetch:(void *)fetch;
- (void)_handleBusinessLinkHashFetch:(void *)fetch;
- (void)_handleCloudKitConfigFetch:(void *)fetch;
- (void)_handleCloudKitConfigFetchAndDecode:(void *)decode;
- (void)_handleCloudKitItemFetch:(void *)fetch;
- (void)_handleCloudKitItemFetchAndDecode:(void *)decode;
- (void)_handleCloudKitMegashardFetch:(void *)fetch;
- (void)_handleCloudKitMegashardFetchAndDecode:(void *)decode;
- (void)_handleCloudKitShardFetch:(void *)fetch;
- (void)_handleCloudKitShardFetchAndDecode:(void *)decode;
- (void)_handleConfigResolution:(void *)resolution;
- (void)_handleItemFetch:(void *)fetch;
- (void)_handleItemIsRegistered:(void *)registered;
- (void)_handleItemResolution:(void *)resolution;
- (void)_handlePIRItemFetch:(void *)fetch;
- (void)_handleShardResolution:(void *)resolution;
- (void)timingMeasurementDidBegin:(id)begin;
- (void)timingMeasurementDidEnd:(id)end;
@end

@implementation BCSRealTimeTimingSignposter

+ (id)signposterForBCSType:(uint64_t)type
{
  objc_opt_self();
  v3 = [(BCSRealTimeSignposter *)[BCSRealTimeTimingSignposter alloc] _initWithType:a2 signpostIdentifier:a2];

  return v3;
}

+ (id)signposterForBCSType:(uint64_t)type signpostIdentifier:
{
  objc_opt_self();
  v5 = [(BCSRealTimeSignposter *)[BCSRealTimeTimingSignposter alloc] _initWithType:a2 signpostIdentifier:type];

  return v5;
}

+ (id)signposterForShardIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeTimingSignposter alloc];
  type = [v2 type];

  v5 = [(BCSRealTimeShardSignposter *)v3 _initWithShardType:type signpostIdentifier:v2];

  return v5;
}

+ (id)signposterForItemIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeTimingSignposter alloc];
  type = [v2 type];

  v5 = [(BCSRealTimeSignposter *)v3 _initWithType:type signpostIdentifier:v2];

  return v5;
}

- (void)timingMeasurementDidBegin:(id)begin
{
  switch([begin timingMeasurementType])
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

- (void)_handleCloudKitConfigFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchConfig";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchConfig";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchConfig";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchConfig";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchConfig";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchConfig";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchConfig";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitShardFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchShard";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchShard";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchShard";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchShard";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchShard";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchShard";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchShard";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitItemFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchBucket";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchBucket";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchBucket";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchBucket";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchBucket";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchBucket";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchBucket";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitMegashardFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchMegashard";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchMegashard";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchMegashard";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchMegashard";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchMegashard";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchMegashard";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchMegashard";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitConfigFetchAndDecode:(void *)decode
{
  v30 = *MEMORY[0x277D85DE8];
  if (!decode)
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

    v23 = NSStringFromBCSType([decode type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchConfigAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [decode type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [decode signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchConfigAndDecode";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [decode signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [decode signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchConfigAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [decode signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchConfigAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [decode signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [decode signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchConfigAndDecode";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [decode signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [decode signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchConfigAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [decode signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchConfigAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [decode signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitShardFetchAndDecode:(void *)decode
{
  v30 = *MEMORY[0x277D85DE8];
  if (!decode)
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

    v23 = NSStringFromBCSType([decode type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchShardAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [decode type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [decode signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchShardAndDecode";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [decode signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [decode signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchShardAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [decode signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchShardAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [decode signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [decode signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchShardAndDecode";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [decode signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [decode signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchShardAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [decode signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchShardAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [decode signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitItemFetchAndDecode:(void *)decode
{
  v30 = *MEMORY[0x277D85DE8];
  if (!decode)
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

    v23 = NSStringFromBCSType([decode type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchBucketAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [decode type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [decode signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchBucketAndDecode";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [decode signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [decode signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchBucketAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [decode signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchBucketAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [decode signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [decode signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchBucketAndDecode";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [decode signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [decode signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchBucketAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [decode signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchBucketAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [decode signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleCloudKitMegashardFetchAndDecode:(void *)decode
{
  v30 = *MEMORY[0x277D85DE8];
  if (!decode)
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

    v23 = NSStringFromBCSType([decode type]);
    v24 = 136315650;
    v25 = "_CloudKitFetchMegashardAndDecode";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [decode type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [decode signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_CloudKitFetchMegashardAndDecode";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [decode signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [decode signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_CloudKitFetchMegashardAndDecode";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [decode signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_CloudKitFetchMegashardAndDecode";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [decode signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [decode signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_CloudKitFetchMegashardAndDecode";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [decode signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [decode signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_CloudKitFetchMegashardAndDecode";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [decode signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_CloudKitFetchMegashardAndDecode";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [decode signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleConfigResolution:(void *)resolution
{
  v30 = *MEMORY[0x277D85DE8];
  if (!resolution)
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

    v23 = NSStringFromBCSType([resolution type]);
    v24 = 136315650;
    v25 = "_ConfigResolution";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [resolution type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [resolution signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ConfigResolution";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [resolution signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [resolution signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ConfigResolution";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [resolution signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ConfigResolution";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [resolution signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [resolution signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ConfigResolution";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [resolution signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [resolution signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ConfigResolution";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [resolution signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ConfigResolution";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [resolution signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleShardResolution:(void *)resolution
{
  v30 = *MEMORY[0x277D85DE8];
  if (resolution)
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

      v18 = NSStringFromBCSShardType([resolution shardType]);
      v24 = 136315650;
      v25 = "_ShardResolution";
      v26 = 2080;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for shard type: %@", &v24, 0x20u);
    }

    shardType = [resolution shardType];
    if (a2)
    {
      if (shardType > 3)
      {
        switch(shardType)
        {
          case 4:
            v6 = ABSLogCommon();
            signpostIdentifier = [resolution signpostIdentifier];
            if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessCaller_ShardResolution";
            goto LABEL_58;
          case 5:
            v6 = ABSLogCommon();
            signpostIdentifier2 = [resolution signpostIdentifier];
            if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier2;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessEmail_ShardResolution";
            goto LABEL_58;
          case 6:
            v6 = ABSLogCommon();
            signpostIdentifier3 = [resolution signpostIdentifier];
            if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier3;
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
        switch(shardType)
        {
          case 1:
            v6 = ABSLogCommon();
            signpostIdentifier4 = [resolution signpostIdentifier];
            if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier4;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "ChatSuggest_ShardResolution";
            goto LABEL_58;
          case 2:
            v6 = ABSLogCommon();
            signpostIdentifier5 = [resolution signpostIdentifier];
            if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier5;
            if (!os_signpost_enabled(v6))
            {
              goto LABEL_59;
            }

            LOWORD(v24) = 0;
            v9 = "BusinessLink_ShardResolution";
            goto LABEL_58;
          case 3:
            v6 = ABSLogCommon();
            signpostIdentifier6 = [resolution signpostIdentifier];
            if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_59;
            }

            v8 = signpostIdentifier6;
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

    else if (shardType > 3)
    {
      switch(shardType)
      {
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier7 = [resolution signpostIdentifier];
          if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier7;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ShardResolution";
          goto LABEL_58;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier8 = [resolution signpostIdentifier];
          if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier8;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ShardResolution";
          goto LABEL_58;
        case 6:
          v6 = ABSLogCommon();
          signpostIdentifier9 = [resolution signpostIdentifier];
          if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier9;
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
      switch(shardType)
      {
        case 1:
          v6 = ABSLogCommon();
          signpostIdentifier10 = [resolution signpostIdentifier];
          if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier10;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "ChatSuggest_ShardResolution";
          goto LABEL_58;
        case 2:
          v6 = ABSLogCommon();
          signpostIdentifier11 = [resolution signpostIdentifier];
          if ((signpostIdentifier11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier11;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_59;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessLink_ShardResolution";
          goto LABEL_58;
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier12 = [resolution signpostIdentifier];
          if ((signpostIdentifier12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_59;
          }

          v8 = signpostIdentifier12;
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

- (void)_handleItemResolution:(void *)resolution
{
  v30 = *MEMORY[0x277D85DE8];
  if (!resolution)
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

    v23 = NSStringFromBCSType([resolution type]);
    v24 = 136315650;
    v25 = "_ItemResolution";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [resolution type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [resolution signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemResolution";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [resolution signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [resolution signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemResolution";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [resolution signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemResolution";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [resolution signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [resolution signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemResolution";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [resolution signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [resolution signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemResolution";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [resolution signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemResolution";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [resolution signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleItemFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_ItemFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemFetch";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemFetch";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleBusinessLinkChoppedFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_ItemFetchChop";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemFetchChop";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemFetchChop";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemFetchChop";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemFetchChop";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemFetchChop";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemFetchChop";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleBusinessLinkHashFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_ItemHashFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_ItemHashFetch";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_ItemHashFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_ItemHashFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_ItemHashFetch";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_ItemHashFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_ItemHashFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleItemIsRegistered:(void *)registered
{
  v30 = *MEMORY[0x277D85DE8];
  if (!registered)
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

    v23 = NSStringFromBCSType([registered type]);
    v24 = 136315650;
    v25 = "IsEnabledCheck";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [registered type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [registered signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggestIsEnabledCheck";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [registered signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [registered signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCallerIsEnabledCheck";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [registered signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmailIsEnabledCheck";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [registered signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [registered signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggestIsEnabledCheck";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [registered signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [registered signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCallerIsEnabledCheck";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [registered signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmailIsEnabledCheck";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [registered signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handleBlastDoorProcessing:(void *)processing
{
  v30 = *MEMORY[0x277D85DE8];
  if (!processing)
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

    v23 = NSStringFromBCSType([processing type]);
    v24 = 136315650;
    v25 = "_BlastDoorProcessing";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [processing type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [processing signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_BlastDoorProcessing";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [processing signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [processing signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_BlastDoorProcessing";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [processing signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_BlastDoorProcessing";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [processing signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [processing signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_BlastDoorProcessing";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [processing signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [processing signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_BlastDoorProcessing";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [processing signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_BlastDoorProcessing";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [processing signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)_handlePIRItemFetch:(void *)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  if (!fetch)
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

    v23 = NSStringFromBCSType([fetch type]);
    v24 = 136315650;
    v25 = "_PIRItemFetch";
    v26 = 2080;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&dword_242072000, v4, OS_LOG_TYPE_DEBUG, "Signposting %s %s for type: %@", &v24, 0x20u);
  }

  type = [fetch type];
  if (!a2)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v6 = ABSLogCommon();
        signpostIdentifier = [fetch signpostIdentifier];
        if ((signpostIdentifier - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier;
        if (!os_signpost_enabled(v6))
        {
          goto LABEL_49;
        }

        LOWORD(v24) = 0;
        v9 = "ChatSuggest_PIRItemFetch";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_50;
        }

        v6 = ABSLogCommon();
        signpostIdentifier2 = [fetch signpostIdentifier];
        if ((signpostIdentifier2 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v8 = signpostIdentifier2;
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
      switch(type)
      {
        case 3:
          v6 = ABSLogCommon();
          signpostIdentifier3 = [fetch signpostIdentifier];
          if ((signpostIdentifier3 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier3;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessCaller_PIRItemFetch";
          break;
        case 4:
          v6 = ABSLogCommon();
          signpostIdentifier4 = [fetch signpostIdentifier];
          if ((signpostIdentifier4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier4;
          if (!os_signpost_enabled(v6))
          {
            goto LABEL_49;
          }

          LOWORD(v24) = 0;
          v9 = "BusinessEmail_PIRItemFetch";
          break;
        case 5:
          v6 = ABSLogCommon();
          signpostIdentifier5 = [fetch signpostIdentifier];
          if ((signpostIdentifier5 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_49;
          }

          v8 = signpostIdentifier5;
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

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = ABSLogCommon();
      signpostIdentifier6 = [fetch signpostIdentifier];
      if ((signpostIdentifier6 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier6;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "ChatSuggest_PIRItemFetch";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_50;
      }

      v6 = ABSLogCommon();
      signpostIdentifier7 = [fetch signpostIdentifier];
      if ((signpostIdentifier7 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier7;
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

  switch(type)
  {
    case 3:
      v6 = ABSLogCommon();
      signpostIdentifier8 = [fetch signpostIdentifier];
      if ((signpostIdentifier8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier8;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessCaller_PIRItemFetch";
      goto LABEL_37;
    case 4:
      v6 = ABSLogCommon();
      signpostIdentifier9 = [fetch signpostIdentifier];
      if ((signpostIdentifier9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier9;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_49;
      }

      LOWORD(v24) = 0;
      v9 = "BusinessEmail_PIRItemFetch";
      goto LABEL_37;
    case 5:
      v6 = ABSLogCommon();
      signpostIdentifier10 = [fetch signpostIdentifier];
      if ((signpostIdentifier10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_49;
      }

      v8 = signpostIdentifier10;
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

- (void)timingMeasurementDidEnd:(id)end
{
  switch([end timingMeasurementType])
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