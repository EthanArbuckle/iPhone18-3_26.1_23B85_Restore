@interface BCSRealTimeFlagSignposter
+ (id)signposterForBCSType:(uint64_t)a1;
+ (id)signposterForItemIdentifier:(uint64_t)a1;
+ (id)signposterForShardIdentifier:(uint64_t)a1;
- (void)flagMeasurementDidChange:(BOOL)a3 forMeasurement:(id)a4;
@end

@implementation BCSRealTimeFlagSignposter

+ (id)signposterForBCSType:(uint64_t)a1
{
  objc_opt_self();
  v3 = [(BCSRealTimeSignposter *)[BCSRealTimeFlagSignposter alloc] _initWithType:a2 signpostIdentifier:a2];

  return v3;
}

+ (id)signposterForShardIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeFlagSignposter alloc];
  v4 = [v2 type];

  v5 = [(BCSRealTimeShardSignposter *)v3 _initWithShardType:v4 signpostIdentifier:v2];

  return v5;
}

+ (id)signposterForItemIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeFlagSignposter alloc];
  v4 = [v2 type];

  v5 = [(BCSRealTimeSignposter *)v3 _initWithType:v4 signpostIdentifier:v2];

  return v5;
}

- (void)flagMeasurementDidChange:(BOOL)a3 forMeasurement:(id)a4
{
  v4 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self)
  {
    signposterType = self->_signposterType;
    if (signposterType == 2)
    {
      v39 = v6;
      v18 = ABSLogSignpost();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        if (v4)
        {
          v35 = "_ItemCacheHit";
        }

        else
        {
          v35 = "_ItemCacheMiss";
        }

        v36 = NSStringFromBCSType([(BCSRealTimeSignposter *)self type]);
        *buf = 136315394;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        _os_log_debug_impl(&dword_242072000, v18, OS_LOG_TYPE_DEBUG, "Signposting %s for type: %@", buf, 0x16u);
      }

      v19 = [(BCSRealTimeSignposter *)self type];
      v10 = ABSLogCommon();
      v11 = [(BCSRealTimeSignposter *)self signpostIdentifier];
      v20 = v11 - 1;
      if (v4)
      {
        if (v19 == 2)
        {
          if (v20 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessLink_ItemCacheHit";
        }

        else
        {
          if (v20 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "ChatSuggest_ItemCacheHit";
        }
      }

      else if (v19 == 2)
      {
        if (v20 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessLink_ItemCacheMiss";
      }

      else
      {
        if (v20 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "ChatSuggest_ItemCacheMiss";
      }

      goto LABEL_93;
    }

    if (signposterType != 1)
    {
      if (signposterType)
      {
        goto LABEL_95;
      }

      v39 = v6;
      v8 = ABSLogSignpost();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (v4)
        {
          v37 = "_ConfigCacheHit";
        }

        else
        {
          v37 = "_ConfigCacheMiss";
        }

        v38 = NSStringFromBCSType([(BCSRealTimeSignposter *)self type]);
        *buf = 136315394;
        v41 = v37;
        v42 = 2112;
        v43 = v38;
        _os_log_debug_impl(&dword_242072000, v8, OS_LOG_TYPE_DEBUG, "Signposting %s for type: %@", buf, 0x16u);
      }

      v9 = [(BCSRealTimeSignposter *)self type];
      v10 = ABSLogCommon();
      v11 = [(BCSRealTimeSignposter *)self signpostIdentifier];
      v12 = v11 - 1;
      if (v4)
      {
        if (v9 == 2)
        {
          if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessLink_ConfigCacheHit";
        }

        else
        {
          if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "ChatSuggest_ConfigCacheHit";
        }
      }

      else if (v9 == 2)
      {
        if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessLink_ConfigCacheMiss";
      }

      else
      {
        if (v12 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "ChatSuggest_ConfigCacheMiss";
      }

LABEL_93:
      _os_signpost_emit_with_name_impl(&dword_242072000, v10, OS_SIGNPOST_EVENT, v11, v13, "", buf, 2u);
LABEL_94:

      v6 = v39;
      goto LABEL_95;
    }

    v39 = v6;
    v14 = ABSLogSignpost();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v33 = "_ShardCacheHit";
      }

      else
      {
        v33 = "_ShardCacheMiss";
      }

      v34 = NSStringFromBCSShardType([(BCSRealTimeShardSignposter *)self shardType]);
      *buf = 136315394;
      v41 = v33;
      v42 = 2112;
      v43 = v34;
      _os_log_debug_impl(&dword_242072000, v14, OS_LOG_TYPE_DEBUG, "Signposting %s for shard type: %@", buf, 0x16u);
    }

    v15 = [(BCSRealTimeShardSignposter *)self shardType];
    if (v4)
    {
      if (v15 > 3)
      {
        if (v15 == 4)
        {
          v10 = ABSLogCommon();
          v26 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v26;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessCaller_ShardCacheHit";
          goto LABEL_93;
        }

        if (v15 == 5)
        {
          v10 = ABSLogCommon();
          v30 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v30 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v30;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessEmail_ShardCacheHit";
          goto LABEL_93;
        }

        v16 = v15 == 6;
        v6 = v39;
        if (v16)
        {
          v10 = ABSLogCommon();
          v22 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v22 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v22;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "WebPresentment_ShardCacheHit";
          goto LABEL_93;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v10 = ABSLogCommon();
          v24 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v24 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v24;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "ChatSuggest_ShardCacheHit";
          goto LABEL_93;
        }

        if (v15 == 2)
        {
          v10 = ABSLogCommon();
          v28 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v28 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v28;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessLink_ShardCacheHit";
          goto LABEL_93;
        }

        v16 = v15 == 3;
        v6 = v39;
        if (v16)
        {
          v10 = ABSLogCommon();
          v17 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          v11 = v17;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessDomain_ShardCacheHit";
          goto LABEL_93;
        }
      }
    }

    else if (v15 > 3)
    {
      if (v15 == 4)
      {
        v10 = ABSLogCommon();
        v27 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v27;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessCaller_ShardCacheMiss";
        goto LABEL_93;
      }

      if (v15 == 5)
      {
        v10 = ABSLogCommon();
        v31 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v31 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v31;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessEmail_ShardCacheMiss";
        goto LABEL_93;
      }

      v16 = v15 == 6;
      v6 = v39;
      if (v16)
      {
        v10 = ABSLogCommon();
        v23 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v23;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "WebPresentment_ShardCacheMiss";
        goto LABEL_93;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v10 = ABSLogCommon();
        v25 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v25 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v25;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "ChatSuggest_ShardCacheMiss";
        goto LABEL_93;
      }

      if (v15 == 2)
      {
        v10 = ABSLogCommon();
        v29 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v29 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v29;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessLink_ShardCacheMiss";
        goto LABEL_93;
      }

      v16 = v15 == 3;
      v6 = v39;
      if (v16)
      {
        v10 = ABSLogCommon();
        v21 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        v11 = v21;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessDomain_ShardCacheMiss";
        goto LABEL_93;
      }
    }
  }

LABEL_95:
  v32 = *MEMORY[0x277D85DE8];
}

@end