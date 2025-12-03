@interface BCSRealTimeFlagSignposter
+ (id)signposterForBCSType:(uint64_t)type;
+ (id)signposterForItemIdentifier:(uint64_t)identifier;
+ (id)signposterForShardIdentifier:(uint64_t)identifier;
- (void)flagMeasurementDidChange:(BOOL)change forMeasurement:(id)measurement;
@end

@implementation BCSRealTimeFlagSignposter

+ (id)signposterForBCSType:(uint64_t)type
{
  objc_opt_self();
  v3 = [(BCSRealTimeSignposter *)[BCSRealTimeFlagSignposter alloc] _initWithType:a2 signpostIdentifier:a2];

  return v3;
}

+ (id)signposterForShardIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeFlagSignposter alloc];
  type = [v2 type];

  v5 = [(BCSRealTimeShardSignposter *)v3 _initWithShardType:type signpostIdentifier:v2];

  return v5;
}

+ (id)signposterForItemIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [BCSRealTimeFlagSignposter alloc];
  type = [v2 type];

  v5 = [(BCSRealTimeSignposter *)v3 _initWithType:type signpostIdentifier:v2];

  return v5;
}

- (void)flagMeasurementDidChange:(BOOL)change forMeasurement:(id)measurement
{
  changeCopy = change;
  v44 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  if (self)
  {
    signposterType = self->_signposterType;
    if (signposterType == 2)
    {
      v39 = measurementCopy;
      v18 = ABSLogSignpost();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        if (changeCopy)
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

      type = [(BCSRealTimeSignposter *)self type];
      v10 = ABSLogCommon();
      signpostIdentifier = [(BCSRealTimeSignposter *)self signpostIdentifier];
      v20 = signpostIdentifier - 1;
      if (changeCopy)
      {
        if (type == 2)
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

      else if (type == 2)
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

      v39 = measurementCopy;
      v8 = ABSLogSignpost();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (changeCopy)
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

      type2 = [(BCSRealTimeSignposter *)self type];
      v10 = ABSLogCommon();
      signpostIdentifier = [(BCSRealTimeSignposter *)self signpostIdentifier];
      v12 = signpostIdentifier - 1;
      if (changeCopy)
      {
        if (type2 == 2)
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

      else if (type2 == 2)
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
      _os_signpost_emit_with_name_impl(&dword_242072000, v10, OS_SIGNPOST_EVENT, signpostIdentifier, v13, "", buf, 2u);
LABEL_94:

      measurementCopy = v39;
      goto LABEL_95;
    }

    v39 = measurementCopy;
    v14 = ABSLogSignpost();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (changeCopy)
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

    shardType = [(BCSRealTimeShardSignposter *)self shardType];
    if (changeCopy)
    {
      if (shardType > 3)
      {
        if (shardType == 4)
        {
          v10 = ABSLogCommon();
          signpostIdentifier2 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier2;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessCaller_ShardCacheHit";
          goto LABEL_93;
        }

        if (shardType == 5)
        {
          v10 = ABSLogCommon();
          signpostIdentifier3 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier3;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessEmail_ShardCacheHit";
          goto LABEL_93;
        }

        v16 = shardType == 6;
        measurementCopy = v39;
        if (v16)
        {
          v10 = ABSLogCommon();
          signpostIdentifier4 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier4;
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
        if (shardType == 1)
        {
          v10 = ABSLogCommon();
          signpostIdentifier5 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier5;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "ChatSuggest_ShardCacheHit";
          goto LABEL_93;
        }

        if (shardType == 2)
        {
          v10 = ABSLogCommon();
          signpostIdentifier6 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier6;
          if (!os_signpost_enabled(v10))
          {
            goto LABEL_94;
          }

          *buf = 0;
          v13 = "BusinessLink_ShardCacheHit";
          goto LABEL_93;
        }

        v16 = shardType == 3;
        measurementCopy = v39;
        if (v16)
        {
          v10 = ABSLogCommon();
          signpostIdentifier7 = [(BCSRealTimeSignposter *)self signpostIdentifier];
          if (signpostIdentifier7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_94;
          }

          signpostIdentifier = signpostIdentifier7;
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

    else if (shardType > 3)
    {
      if (shardType == 4)
      {
        v10 = ABSLogCommon();
        signpostIdentifier8 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier8;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessCaller_ShardCacheMiss";
        goto LABEL_93;
      }

      if (shardType == 5)
      {
        v10 = ABSLogCommon();
        signpostIdentifier9 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier9;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessEmail_ShardCacheMiss";
        goto LABEL_93;
      }

      v16 = shardType == 6;
      measurementCopy = v39;
      if (v16)
      {
        v10 = ABSLogCommon();
        signpostIdentifier10 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier10;
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
      if (shardType == 1)
      {
        v10 = ABSLogCommon();
        signpostIdentifier11 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier11;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "ChatSuggest_ShardCacheMiss";
        goto LABEL_93;
      }

      if (shardType == 2)
      {
        v10 = ABSLogCommon();
        signpostIdentifier12 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier12;
        if (!os_signpost_enabled(v10))
        {
          goto LABEL_94;
        }

        *buf = 0;
        v13 = "BusinessLink_ShardCacheMiss";
        goto LABEL_93;
      }

      v16 = shardType == 3;
      measurementCopy = v39;
      if (v16)
      {
        v10 = ABSLogCommon();
        signpostIdentifier13 = [(BCSRealTimeSignposter *)self signpostIdentifier];
        if (signpostIdentifier13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_94;
        }

        signpostIdentifier = signpostIdentifier13;
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