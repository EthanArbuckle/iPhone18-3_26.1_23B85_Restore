@interface BBGlobalSettings
- (BBGlobalSettings)initWithCoder:(id)a3;
- (BBGlobalSettings)initWithContentPreviewSetting:(int64_t)a3 announceSetting:(int64_t)a4 announceHeadphonesSetting:(int64_t)a5 announceCarPlaySetting:(int64_t)a6 scheduledDeliverySetting:(int64_t)a7 scheduledDeliveryTimes:(id)a8 scheduledDeliveryShowNextSummarySetting:(int64_t)a9 notificationListDisplayStyleSetting:(int64_t)a10 summarizationSetting:(int64_t)a11 highlightsSettings:(int64_t)a12;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)globalSpokenNotificationSetting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBGlobalSettings

- (BBGlobalSettings)initWithContentPreviewSetting:(int64_t)a3 announceSetting:(int64_t)a4 announceHeadphonesSetting:(int64_t)a5 announceCarPlaySetting:(int64_t)a6 scheduledDeliverySetting:(int64_t)a7 scheduledDeliveryTimes:(id)a8 scheduledDeliveryShowNextSummarySetting:(int64_t)a9 notificationListDisplayStyleSetting:(int64_t)a10 summarizationSetting:(int64_t)a11 highlightsSettings:(int64_t)a12
{
  v18 = a8;
  v24.receiver = self;
  v24.super_class = BBGlobalSettings;
  v19 = [(BBGlobalSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_globalContentPreviewSetting = a3;
    v19->_globalAnnounceSetting = a4;
    v19->_globalAnnounceHeadphonesSetting = a5;
    v19->_globalAnnounceCarPlaySetting = a6;
    v19->_globalScheduledDeliverySetting = a7;
    v21 = [v18 copy];
    globalScheduledDeliveryTimes = v20->_globalScheduledDeliveryTimes;
    v20->_globalScheduledDeliveryTimes = v21;

    v20->_globalScheduledDeliveryShowNextSummarySetting = a9;
    v20->_globalNotificationListDisplayStyleSetting = a10;
    v20->_globalSummarizationSetting = a11;
    v20->_globalHighlightsSetting = a12;
  }

  return v20;
}

- (id)description
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(BBGlobalSettings *)self globalContentPreviewSetting])
  {
    v3 = BBStringFromBBContentPreviewSetting([(BBGlobalSettings *)self globalContentPreviewSetting]);
    v4 = [@" Global Settings: " stringByAppendingFormat:@"Content Preview Setting: '%@'", v3];
  }

  else
  {
    v4 = @" Global Settings: ";
  }

  if ([(BBGlobalSettings *)self globalAnnounceSetting])
  {
    v5 = BBStringFromBBAnnounceSetting([(BBGlobalSettings *)self globalAnnounceSetting]);
    v6 = [(__CFString *)v4 stringByAppendingFormat:@"Announce Setting: '%@'", v5];

    v4 = v6;
  }

  if ([(BBGlobalSettings *)self globalAnnounceHeadphonesSetting])
  {
    v7 = BBStringFromBBAnnounceSetting([(BBGlobalSettings *)self globalAnnounceHeadphonesSetting]);
    v8 = [(__CFString *)v4 stringByAppendingFormat:@"Announce Headphone Setting: '%@'", v7];

    v4 = v8;
  }

  if ([(BBGlobalSettings *)self globalAnnounceCarPlaySetting])
  {
    v9 = BBStringFromBBAnnounceCarPlaySetting([(BBGlobalSettings *)self globalAnnounceCarPlaySetting]);
    v10 = [(__CFString *)v4 stringByAppendingFormat:@"Announce CarPlay Setting: '%@'", v9];

    v4 = v10;
  }

  if ([(BBGlobalSettings *)self globalScheduledDeliverySetting])
  {
    v11 = BBStringFromBBScheduledDeliverySetting([(BBGlobalSettings *)self globalScheduledDeliverySetting]);
    v12 = [(__CFString *)v4 stringByAppendingFormat:@"Scheduled Delivery Setting: '%@'", v11];

    v4 = v12;
  }

  v13 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];

  if (v13)
  {
    v14 = [(__CFString *)v4 stringByAppendingFormat:@"Scheduled Delivery Times: [ "];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        v19 = 0;
        v20 = v14;
        do
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v14 = [v20 stringByAppendingFormat:@" %li:%li, ", objc_msgSend(*(*(&v34 + 1) + 8 * v19), "hour"), objc_msgSend(*(*(&v34 + 1) + 8 * v19), "minute")];

          ++v19;
          v20 = v14;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    v4 = [v14 stringByAppendingFormat:@" ]"];
  }

  if ([(BBGlobalSettings *)self globalScheduledDeliveryShowNextSummarySetting])
  {
    v21 = BBStringFromBBSystemSetting([(BBGlobalSettings *)self globalScheduledDeliveryShowNextSummarySetting]);
    v22 = [(__CFString *)v4 stringByAppendingFormat:@"Scheduled Delivery Show Next Summary Setting: '%@'", v21];

    v4 = v22;
  }

  if ([(BBGlobalSettings *)self globalNotificationListDisplayStyleSetting])
  {
    v23 = BBStringFromBBNotificationListDisplayStyleSetting([(BBGlobalSettings *)self globalNotificationListDisplayStyleSetting]);
    v24 = [(__CFString *)v4 stringByAppendingFormat:@"Notification List State Setting: '%@'", v23];

    v4 = v24;
  }

  if ([(BBGlobalSettings *)self globalSummarizationSetting])
  {
    v25 = BBStringFromBBSystemSetting([(BBGlobalSettings *)self globalSummarizationSetting]);
    v26 = [(__CFString *)v4 stringByAppendingFormat:@"Summarization Setting: '%@'", v25];

    v4 = v26;
  }

  if ([(BBGlobalSettings *)self globalHighlightsSetting])
  {
    v27 = BBStringFromBBSystemSetting([(BBGlobalSettings *)self globalHighlightsSetting]);
    v28 = [(__CFString *)v4 stringByAppendingFormat:@"Highlights Setting: '%@'", v27];

    v4 = v28;
  }

  v33.receiver = self;
  v33.super_class = BBGlobalSettings;
  v29 = [(BBGlobalSettings *)&v33 description];
  v30 = [v29 stringByAppendingString:v4];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (unint64_t)hash
{
  v3 = [(BBGlobalSettings *)self globalContentPreviewSetting];
  v4 = [(BBGlobalSettings *)self globalAnnounceSetting]^ v3;
  v5 = [(BBGlobalSettings *)self globalAnnounceHeadphonesSetting];
  v6 = v4 ^ v5 ^ [(BBGlobalSettings *)self globalAnnounceCarPlaySetting];
  v7 = [(BBGlobalSettings *)self globalScheduledDeliverySetting];
  v8 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(BBGlobalSettings *)self globalScheduledDeliveryShowNextSummarySetting];
  v11 = v10 ^ [(BBGlobalSettings *)self globalNotificationListDisplayStyleSetting];
  v12 = v11 ^ [(BBGlobalSettings *)self globalSummarizationSetting];
  v13 = v12 ^ [(BBGlobalSettings *)self globalHighlightsSetting];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBGlobalSettings *)self globalContentPreviewSetting];
      if (v6 == [(BBGlobalSettings *)v5 globalContentPreviewSetting]&& (v7 = [(BBGlobalSettings *)self globalAnnounceSetting], v7 == [(BBGlobalSettings *)v5 globalAnnounceSetting]) && (v8 = [(BBGlobalSettings *)self globalAnnounceHeadphonesSetting], v8 == [(BBGlobalSettings *)v5 globalAnnounceHeadphonesSetting]) && (v9 = [(BBGlobalSettings *)self globalAnnounceCarPlaySetting], v9 == [(BBGlobalSettings *)v5 globalAnnounceCarPlaySetting]) && (v10 = [(BBGlobalSettings *)self globalScheduledDeliverySetting], v10 == [(BBGlobalSettings *)v5 globalScheduledDeliverySetting]))
      {
        v11 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
        v12 = [(BBGlobalSettings *)v5 globalScheduledDeliveryTimes];
        if ([v11 isEqualToArray:v12] && (v13 = -[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self, "globalScheduledDeliveryShowNextSummarySetting"), v13 == -[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](v5, "globalScheduledDeliveryShowNextSummarySetting")) && (v14 = -[BBGlobalSettings globalNotificationListDisplayStyleSetting](self, "globalNotificationListDisplayStyleSetting"), v14 == -[BBGlobalSettings globalNotificationListDisplayStyleSetting](v5, "globalNotificationListDisplayStyleSetting")) && (v15 = -[BBGlobalSettings globalSummarizationSetting](self, "globalSummarizationSetting"), v15 == -[BBGlobalSettings globalSummarizationSetting](v5, "globalSummarizationSetting")))
        {
          v16 = [(BBGlobalSettings *)self globalHighlightsSetting];
          v17 = v16 == [(BBGlobalSettings *)v5 globalHighlightsSetting];
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setGlobalContentPreviewSetting:{-[BBGlobalSettings globalContentPreviewSetting](self, "globalContentPreviewSetting")}];
  [v4 setGlobalAnnounceSetting:{-[BBGlobalSettings globalAnnounceSetting](self, "globalAnnounceSetting")}];
  [v4 setGlobalAnnounceHeadphonesSetting:{-[BBGlobalSettings globalAnnounceHeadphonesSetting](self, "globalAnnounceHeadphonesSetting")}];
  [v4 setGlobalAnnounceCarPlaySetting:{-[BBGlobalSettings globalAnnounceCarPlaySetting](self, "globalAnnounceCarPlaySetting")}];
  [v4 setGlobalScheduledDeliverySetting:{-[BBGlobalSettings globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  v5 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  [v4 setGlobalScheduledDeliveryTimes:v5];

  [v4 setGlobalScheduledDeliveryShowNextSummarySetting:{-[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self, "globalScheduledDeliveryShowNextSummarySetting")}];
  [v4 setGlobalNotificationListDisplayStyleSetting:{-[BBGlobalSettings globalNotificationListDisplayStyleSetting](self, "globalNotificationListDisplayStyleSetting")}];
  [v4 setGlobalSummarizationSetting:{-[BBGlobalSettings globalSummarizationSetting](self, "globalSummarizationSetting")}];
  [v4 setGlobalHighlightsSetting:{-[BBGlobalSettings globalHighlightsSetting](self, "globalHighlightsSetting")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[BBGlobalSettings globalContentPreviewSetting](self forKey:{"globalContentPreviewSetting"), @"contentPreviews"}];
  [v5 encodeInteger:-[BBGlobalSettings globalAnnounceSetting](self forKey:{"globalAnnounceSetting"), @"announce"}];
  [v5 encodeInteger:-[BBGlobalSettings globalAnnounceHeadphonesSetting](self forKey:{"globalAnnounceHeadphonesSetting"), @"announceHeadphones"}];
  [v5 encodeInteger:-[BBGlobalSettings globalAnnounceCarPlaySetting](self forKey:{"globalAnnounceCarPlaySetting"), @"announceCarPlay"}];
  [v5 encodeInteger:-[BBGlobalSettings globalScheduledDeliverySetting](self forKey:{"globalScheduledDeliverySetting"), @"scheduledDelivery"}];
  v4 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  [v5 encodeObject:v4 forKey:@"scheduledDeliveryTimes"];

  [v5 encodeInteger:-[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self forKey:{"globalScheduledDeliveryShowNextSummarySetting"), @"scheduledDeliveryShowNextSummary"}];
  [v5 encodeInteger:-[BBGlobalSettings globalNotificationListDisplayStyleSetting](self forKey:{"globalNotificationListDisplayStyleSetting"), @"notificationListDisplayStyle"}];
  [v5 encodeInteger:-[BBGlobalSettings globalSummarizationSetting](self forKey:{"globalSummarizationSetting"), @"summarization"}];
  [v5 encodeInteger:-[BBGlobalSettings globalHighlightsSetting](self forKey:{"globalHighlightsSetting"), @"highlights"}];
}

- (BBGlobalSettings)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeIntegerForKey:@"contentPreviews"];
  if ([v3 containsValueForKey:@"announce"])
  {
    v5 = @"announce";
  }

  else
  {
    v5 = @"spokenNotifications";
  }

  v6 = [v3 decodeIntegerForKey:v5];
  v7 = [v3 decodeIntegerForKey:@"announceHeadphones"];
  v8 = [v3 decodeIntegerForKey:@"announceCarPlay"];
  v9 = [v3 decodeIntegerForKey:@"scheduledDelivery"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"scheduledDeliveryTimes"];

  v14 = -[BBGlobalSettings initWithContentPreviewSetting:announceSetting:announceHeadphonesSetting:announceCarPlaySetting:scheduledDeliverySetting:scheduledDeliveryTimes:scheduledDeliveryShowNextSummarySetting:notificationListDisplayStyleSetting:summarizationSetting:highlightsSettings:](self, "initWithContentPreviewSetting:announceSetting:announceHeadphonesSetting:announceCarPlaySetting:scheduledDeliverySetting:scheduledDeliveryTimes:scheduledDeliveryShowNextSummarySetting:notificationListDisplayStyleSetting:summarizationSetting:highlightsSettings:", v4, v6, v7, v8, v9, v13, [v3 decodeIntegerForKey:@"scheduledDeliveryShowNextSummary"], objc_msgSend(v3, "decodeIntegerForKey:", @"notificationListDisplayStyle"), objc_msgSend(v3, "decodeIntegerForKey:", @"summarization"), objc_msgSend(v3, "decodeIntegerForKey:", @"highlights"));
  return v14;
}

- (int64_t)globalSpokenNotificationSetting
{
  v2 = [(BBGlobalSettings *)self globalAnnounceSetting];

  return BBSpokenNotificationSettingForAnnounceSetting(v2);
}

@end