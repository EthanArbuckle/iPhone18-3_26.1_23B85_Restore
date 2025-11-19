@interface PARBag
- (BOOL)allowSafariRankingDataCollection;
- (BOOL)bag_BOOLForKey:(id)a3;
- (BOOL)disableAsTypedSuggestion;
- (BOOL)disableSafariNavIntent;
- (BOOL)experimentsCustomFeedbackEnabled;
- (BOOL)feedbackEnabled;
- (BOOL)imageTimingFeedbackEnabled;
- (BOOL)isRefreshDisabled;
- (BOOL)sessionExperimentMetadataEnabled;
- (BOOL)smartHistoryFeatureFeedbackEnabled;
- (NSArray)safariAssistantSupportedCountries;
- (NSArray)safariAssistantSupportedPageLanguages;
- (NSArray)safariAssistantSupportedSystemLocales;
- (NSArray)safariAssistantUnsupportedCountries;
- (NSArray)sampleClientTimingEventWhitelist;
- (NSArray)skuUploadWhitelist;
- (NSData)bagData;
- (NSDictionary)rawBag;
- (NSNumber)minSearchRenderTimeout;
- (NSString)firstUseContinueText;
- (NSString)firstUseDescriptionText;
- (NSString)firstUseLearnMoreText;
- (NSURL)feedbackURL;
- (NSURL)flightURL;
- (NSURL)searchURL;
- (NSURL)uncommittedSearchURL;
- (PARBag)initWithCoder:(id)a3;
- (PARBag)initWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
- (PARBag)initWithURL:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
- (double)expirationDate;
- (double)minThresholdToSend;
- (double)minimumIntervalBetweenQueriesFromBag;
- (double)safariAll;
- (double)safariDecay;
- (double)safariDwellTimeThresholdHigh;
- (double)safariDwellTimeThresholdMedium;
- (double)safariLast1day;
- (double)safariLast1hour;
- (double)safariLast1month;
- (double)safariLast1week;
- (double)safariMostRecent;
- (double)subscriptionTTL;
- (double)timeoutIntervalForRequest;
- (id)bag_URLForKey:(id)a3;
- (id)bag_arrayForKey:(id)a3;
- (id)bag_dictionaryForKey:(id)a3;
- (id)bag_numberForKey:(id)a3;
- (id)bag_stringForKey:(id)a3;
- (id)description;
- (id)urlForIdentifier:(id)a3;
- (id)valueForKey:(id)a3 override:(BOOL)a4;
- (int64_t)abTest2WeekZoneSize;
- (int64_t)protocolVersion;
- (unint64_t)maximumCachedQueriesToSend;
- (unint64_t)maximumCachedResultsToSend;
- (unint64_t)maximumSizeForFeedbackType:(id)a3;
- (unint64_t)minimumQueryLength;
- (unint64_t)safariAssistantForceEnabledState;
- (unint64_t)safariAssistantHashPrefixLength;
- (unint64_t)smartHistoryMaxRows;
- (unint64_t)smartHistoryMinimumQueryLength;
- (unint64_t)smartHistorySampleThreshold;
- (unint64_t)smartHistoryTimeout;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARBag

- (BOOL)feedbackEnabled
{
  v2 = 1;
  v3 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:@"feedback_enabled" override:1];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 BOOLValue];
  }

  return v2;
}

- (BOOL)isRefreshDisabled
{
  v2 = [(PARBag *)self valueForKey:@"__refresh_disabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSArray)sampleClientTimingEventWhitelist
{
  v2 = [(PARBag *)self bag_arrayForKey:@"sample_timing_event_whitelist"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F27A0890;
  }

  v5 = v4;

  return v4;
}

- (PARBag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bagData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userAgent"];

  v7 = [(PARBag *)self initWithData:v5 userAgent:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  bagData = self->_bagData;
  v5 = a3;
  [v5 encodeObject:bagData forKey:@"_bagData"];
  [v5 encodeObject:self->_userAgent forKey:@"_userAgent"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  userAgent = self->_userAgent;
  v5 = [(PARBag *)self isEnabled];
  v6 = [(PARBag *)self searchURL];
  v7 = [v3 stringWithFormat:@"PARBag: userAgent = %@, enabled = %d, search url = %@", userAgent, v5, v6];

  return v7;
}

- (NSData)bagData
{
  v2 = [(NSData *)self->_bagData copy];

  return v2;
}

- (NSDictionary)rawBag
{
  v15 = *MEMORY[0x1E69E9840];
  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v3 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1064000, v3, OS_LOG_TYPE_DEFAULT, "Please use member accessors on PARBag, do not access rawBag dictionary", buf, 2u);
  }

  v11 = 0;
  v12 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:self->_bagData options:0 format:&v12 error:&v11];
  v5 = v11;
  if (v5)
  {
    if (PARLogHandleForCategory_onceToken_105 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
    }

    v6 = PARLogHandleForCategory_logHandles_3_107;
    if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v14 = v5;
    v7 = "Bag property list unable to be deserialized: %@";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    goto LABEL_18;
  }

  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v6 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v4;
    v7 = "Bag property list is not an NSDictionary: %@";
LABEL_16:
    _os_log_error_impl(&dword_1B1064000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
  }

LABEL_17:
  v8 = 0;
LABEL_18:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)urlForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self resources];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    [(PARBag *)self bag_URLForKey:v4];
  }
  v7 = ;

  return v7;
}

- (id)bag_URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4 override:1];
  v6 = v5;
  if (v5 && [v5 length] && (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = v6;
  }

  else
  {
    v9 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4 override:0];

    if (v9 && [v9 length])
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)bag_dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)bag_arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)bag_numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)bag_stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (BOOL)bag_BOOLForKey:(id)a3
{
  v3 = [(PARBag *)self bag_numberForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)protocolVersion
{
  v2 = [(PARBag *)self bag_numberForKey:@"protocol_version"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)disableAsTypedSuggestion
{
  v2 = [(PARBag *)self bag_numberForKey:@"spotlight_feature_flags"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)experimentsCustomFeedbackEnabled
{
  v2 = [(PARBag *)self bag_numberForKey:@"experiments_custom_feedback_enabled"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)sessionExperimentMetadataEnabled
{
  v2 = [(PARBag *)self bag_numberForKey:@"session_experiment_metadata_enabled"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)disableSafariNavIntent
{
  v2 = [(PARBag *)self bag_numberForKey:@"disable_safari_nav_intent"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)safariAssistantForceEnabledState
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_assistant_force_enabled_state"];
  v3 = v2;
  if (v2 && [v2 unsignedIntegerValue] <= 2)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)safariAssistantSupportedPageLanguages
{
  v2 = [(PARBag *)self bag_arrayForKey:@"safari_assistant_supported_page_languages"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F27A08F0;
  }

  return v4;
}

- (NSArray)safariAssistantSupportedSystemLocales
{
  v2 = [(PARBag *)self bag_arrayForKey:@"safari_assistant_supported_system_locales"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F27A08D8;
  }

  return v4;
}

- (NSArray)safariAssistantSupportedCountries
{
  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v3 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B1064000, v3, OS_LOG_TYPE_ERROR, "Using deprecated method safariAssistantSupportedCountries", v8, 2u);
  }

  v4 = [(PARBag *)self bag_arrayForKey:@"safari_assistant_supported_countries"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_1F27A08C0;
  }

  return v6;
}

- (NSArray)safariAssistantUnsupportedCountries
{
  v2 = [(PARBag *)self bag_arrayForKey:@"safari_assistant_unsupported_countries"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F27A08A8;
  }

  return v4;
}

- (unint64_t)safariAssistantHashPrefixLength
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_assistant_hash_prefix_length"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 21;
  }

  return v4;
}

- (BOOL)allowSafariRankingDataCollection
{
  v2 = [(PARBag *)self bag_numberForKey:@"allow_safari_ranking_data_collection"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (double)safariDwellTimeThresholdHigh
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_dwell_time_threshold_high"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 20.0;
  }

  return v5;
}

- (double)safariDwellTimeThresholdMedium
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_dwell_time_threshold_medium"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5.0;
  }

  return v5;
}

- (unint64_t)smartHistoryMinimumQueryLength
{
  v3 = [(PARBag *)self bag_numberForKey:@"smart_history_min_lc_length"];
  v4 = [v3 unsignedIntegerValue];

  if (v4)
  {
    return v4;
  }

  if (![(PARBag *)self minimumQueryLength])
  {
    return 3;
  }

  return [(PARBag *)self minimumQueryLength];
}

- (BOOL)smartHistoryFeatureFeedbackEnabled
{
  v2 = [(PARBag *)self bag_numberForKey:@"smart_history_feature_feedback_enabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)smartHistorySampleThreshold
{
  v2 = [(PARBag *)self bag_numberForKey:@"smart_history_sample_threshold"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)smartHistoryMaxRows
{
  v2 = [(PARBag *)self bag_numberForKey:@"smart_history_max_rows"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)smartHistoryTimeout
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_smart_history_local_timeout"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (double)minThresholdToSend
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_smart_history_min_threshold"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariMostRecent
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_recent"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariDecay
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_decay"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariAll
{
  v2 = [(PARBag *)self bag_numberForKey:@"safari_all"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariLast1month
{
  v2 = [(PARBag *)self bag_numberForKey:@"last_1_month"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariLast1week
{
  v2 = [(PARBag *)self bag_numberForKey:@"last_1_week"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariLast1day
{
  v2 = [(PARBag *)self bag_numberForKey:@"last_1_day"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safariLast1hour
{
  v2 = [(PARBag *)self bag_numberForKey:@"last_1_hr"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)timeoutIntervalForRequest
{
  v2 = [(PARBag *)self bag_numberForKey:@"request_timeout"];
  [v2 doubleValue];
  v4 = v3;

  result = 5.0;
  if (v4 > 0.0)
  {
    return v4;
  }

  return result;
}

- (unint64_t)maximumSizeForFeedbackType:(id)a3
{
  v4 = a3;
  v5 = [(PARBag *)self bag_dictionaryForKey:@"max_custom_feedback_sizes"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (NSString)firstUseContinueText
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PARBag *)self bag_stringForKey:@"first_use_continue"];
  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v4 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEFAULT))
  {
    userAgent = self->_userAgent;
    v6 = v4;
    v9 = 138412546;
    v10 = userAgent;
    v11 = 2048;
    v12 = [v3 length];
    _os_log_impl(&dword_1B1064000, v6, OS_LOG_TYPE_DEFAULT, "FTE continue lookup for %@, returning FTE of length %lu", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)firstUseLearnMoreText
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PARBag *)self bag_stringForKey:@"first_use_learn_more"];
  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v4 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEFAULT))
  {
    userAgent = self->_userAgent;
    v6 = v4;
    v9 = 138412546;
    v10 = userAgent;
    v11 = 2048;
    v12 = [v3 length];
    _os_log_impl(&dword_1B1064000, v6, OS_LOG_TYPE_DEFAULT, "FTE learn more lookup for %@, returning FTE of length %lu", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)firstUseDescriptionText
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PARBag *)self bag_stringForKey:@"first_use_description"];
  if (PARLogHandleForCategory_onceToken_105 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
  }

  v4 = PARLogHandleForCategory_logHandles_3_107;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEFAULT))
  {
    userAgent = self->_userAgent;
    v6 = v4;
    v9 = 138412546;
    v10 = userAgent;
    v11 = 2048;
    v12 = [v3 length];
    _os_log_impl(&dword_1B1064000, v6, OS_LOG_TYPE_DEFAULT, "FTE description lookup for %@, returning FTE of length %lu", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)skuUploadWhitelist
{
  v2 = [(PARBag *)self bag_arrayForKey:@"whitelisted_skus"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F27A0878;
  }

  return v4;
}

- (BOOL)imageTimingFeedbackEnabled
{
  v3 = [(PARBag *)self _bag_objectOfClass:objc_opt_class() forKey:@"image_timing_feedback_enabled" override:0];
  if ([v3 BOOLValue])
  {
    v4 = [(PARBag *)self bag_BOOLForKey:@"image_timing_feedback_enabled"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)abTest2WeekZoneSize
{
  v2 = [(PARBag *)self bag_numberForKey:@"ab_test_2_week_zone_size"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    if ((v4 & ~(v4 >> 63)) >= 100)
    {
      v5 = 100;
    }

    else
    {
      v5 = v4 & ~(v4 >> 63);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)maximumCachedQueriesToSend
{
  v2 = [(PARBag *)self bag_numberForKey:@"max_cached_queries_len"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)maximumCachedResultsToSend
{
  v2 = [(PARBag *)self bag_numberForKey:@"max_cached_results_len"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)minimumQueryLength
{
  v2 = [(PARBag *)self bag_numberForKey:@"min_query_len"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (NSURL)flightURL
{
  v3 = [(PARBag *)self bag_URLForKey:@"flight_url"];
  if (!v3)
  {
    v3 = [(PARBag *)self bag_URLForKey:@"fallback_flight_url"];
  }

  return v3;
}

- (NSURL)feedbackURL
{
  v3 = [(PARBag *)self bag_URLForKey:@"feedback_url"];
  if (!v3)
  {
    v3 = [(PARBag *)self bag_URLForKey:@"fallback_feedback_url"];
  }

  return v3;
}

- (NSURL)uncommittedSearchURL
{
  v3 = [(PARBag *)self bag_URLForKey:@"uncommitted_search_url"];
  if (!v3)
  {
    v3 = [(PARBag *)self searchURL];
  }

  return v3;
}

- (NSURL)searchURL
{
  v3 = [(PARBag *)self bag_URLForKey:@"search_url"];
  if (!v3)
  {
    v3 = [(PARBag *)self bag_URLForKey:@"fallback_search_url"];
  }

  return v3;
}

- (double)minimumIntervalBetweenQueriesFromBag
{
  v2 = [(PARBag *)self bag_numberForKey:@"retry_after"];
  v3 = ([v2 integerValue] / 1000);

  return v3;
}

- (double)subscriptionTTL
{
  v2 = [(PARBag *)self bag_numberForKey:@"subscription_ttl"];
  v3 = (86400 * [v2 integerValue]);

  return v3;
}

- (NSNumber)minSearchRenderTimeout
{
  v2 = [(PARBag *)self bag_numberForKey:@"min_search_render_timeout"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:300];
  }

  v5 = v4;

  return v5;
}

- (double)expirationDate
{
  v2 = [(PARBag *)self valueForKey:@"__expiration"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (id)valueForKey:(id)a3 override:(BOOL)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 length])
  {
    v6 = [@"bag." stringByAppendingString:v5];
    v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:v6];
    if (v7)
    {
      v8 = v7;
      if (PARLogHandleForCategory_onceToken_105 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
      }

      v9 = PARLogHandleForCategory_logHandles_3_107;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEBUG))
      {
        userDefaults = self->_userDefaults;
        *buf = 138412802;
        v19 = v8;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = userDefaults;
        _os_log_debug_impl(&dword_1B1064000, v9, OS_LOG_TYPE_DEBUG, "value: %@ key: %@ userDefaults: %@", buf, 0x20u);
      }

      v10 = v8;
      v11 = v10;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, @"overrides", 0}];
      bagData = self->_bagData;
      _CFPropertyListCreateFiltered();
      if (PARLogHandleForCategory_onceToken_105 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
      }

      v14 = PARLogHandleForCategory_logHandles_3_107;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B1064000, v14, OS_LOG_TYPE_ERROR, "Could not parse mapped plist", buf, 2u);
      }

      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (PARBag)initWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = PARBag;
  v12 = [(PARBag *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bagData, a3);
    v14 = [v10 copy];
    userAgent = v13->_userAgent;
    v13->_userAgent = v14;

    clientName = v13->_clientName;
    v13->_clientName = &stru_1F277AB70;

    if (v10)
    {
      v17 = [_TtC10CoreParsec10ClientName extractClientNameFromUserAgent:v10 allowAbbreviation:1];
      v18 = v13->_clientName;
      v13->_clientName = v17;
    }

    if (v11)
    {
      objc_storeStrong(&v13->_userDefaults, a5);
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.parsecd"];
      userDefaults = v13->_userDefaults;
      v13->_userDefaults = v19;

      if (!v13->_userDefaults)
      {
        v21 = [MEMORY[0x1E695E000] standardUserDefaults];
        v22 = v13->_userDefaults;
        v13->_userDefaults = v21;

        if (PARLogHandleForCategory_onceToken_105 != -1)
        {
          dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
        }

        v23 = PARLogHandleForCategory_logHandles_3_107;
        if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_DEBUG))
        {
          *v25 = 0;
          _os_log_debug_impl(&dword_1B1064000, v23, OS_LOG_TYPE_DEBUG, "bag using standardUserDefaults", v25, 2u);
        }
      }
    }
  }

  return v13;
}

- (PARBag)initWithURL:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:8 error:&v17];
  v12 = v17;
  if (v12)
  {
    if (PARLogHandleForCategory_onceToken_105 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_105, &__block_literal_global_106);
    }

    v13 = PARLogHandleForCategory_logHandles_3_107;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_3_107, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v12;
      _os_log_error_impl(&dword_1B1064000, v13, OS_LOG_TYPE_ERROR, "Could not read bag plist from %@: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    self = [(PARBag *)self initWithData:v11 userAgent:v9 userDefaults:v10];
    v14 = self;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end