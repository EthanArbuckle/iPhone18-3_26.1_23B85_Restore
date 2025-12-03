@interface BBGlobalSettings
- (BBGlobalSettings)initWithCoder:(id)coder;
- (BBGlobalSettings)initWithContentPreviewSetting:(int64_t)setting announceSetting:(int64_t)announceSetting announceHeadphonesSetting:(int64_t)headphonesSetting announceCarPlaySetting:(int64_t)playSetting scheduledDeliverySetting:(int64_t)deliverySetting scheduledDeliveryTimes:(id)times scheduledDeliveryShowNextSummarySetting:(int64_t)summarySetting notificationListDisplayStyleSetting:(int64_t)self0 summarizationSetting:(int64_t)self1 highlightsSettings:(int64_t)self2;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)globalSpokenNotificationSetting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBGlobalSettings

- (BBGlobalSettings)initWithContentPreviewSetting:(int64_t)setting announceSetting:(int64_t)announceSetting announceHeadphonesSetting:(int64_t)headphonesSetting announceCarPlaySetting:(int64_t)playSetting scheduledDeliverySetting:(int64_t)deliverySetting scheduledDeliveryTimes:(id)times scheduledDeliveryShowNextSummarySetting:(int64_t)summarySetting notificationListDisplayStyleSetting:(int64_t)self0 summarizationSetting:(int64_t)self1 highlightsSettings:(int64_t)self2
{
  timesCopy = times;
  v24.receiver = self;
  v24.super_class = BBGlobalSettings;
  v19 = [(BBGlobalSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_globalContentPreviewSetting = setting;
    v19->_globalAnnounceSetting = announceSetting;
    v19->_globalAnnounceHeadphonesSetting = headphonesSetting;
    v19->_globalAnnounceCarPlaySetting = playSetting;
    v19->_globalScheduledDeliverySetting = deliverySetting;
    v21 = [timesCopy copy];
    globalScheduledDeliveryTimes = v20->_globalScheduledDeliveryTimes;
    v20->_globalScheduledDeliveryTimes = v21;

    v20->_globalScheduledDeliveryShowNextSummarySetting = summarySetting;
    v20->_globalNotificationListDisplayStyleSetting = styleSetting;
    v20->_globalSummarizationSetting = summarizationSetting;
    v20->_globalHighlightsSetting = settings;
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

  globalScheduledDeliveryTimes = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];

  if (globalScheduledDeliveryTimes)
  {
    v14 = [(__CFString *)v4 stringByAppendingFormat:@"Scheduled Delivery Times: [ "];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    globalScheduledDeliveryTimes2 = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
    v16 = [globalScheduledDeliveryTimes2 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(globalScheduledDeliveryTimes2);
          }

          v14 = [v20 stringByAppendingFormat:@" %li:%li, ", objc_msgSend(*(*(&v34 + 1) + 8 * v19), "hour"), objc_msgSend(*(*(&v34 + 1) + 8 * v19), "minute")];

          ++v19;
          v20 = v14;
        }

        while (v17 != v19);
        v17 = [globalScheduledDeliveryTimes2 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
  globalContentPreviewSetting = [(BBGlobalSettings *)self globalContentPreviewSetting];
  v4 = [(BBGlobalSettings *)self globalAnnounceSetting]^ globalContentPreviewSetting;
  globalAnnounceHeadphonesSetting = [(BBGlobalSettings *)self globalAnnounceHeadphonesSetting];
  v6 = v4 ^ globalAnnounceHeadphonesSetting ^ [(BBGlobalSettings *)self globalAnnounceCarPlaySetting];
  globalScheduledDeliverySetting = [(BBGlobalSettings *)self globalScheduledDeliverySetting];
  globalScheduledDeliveryTimes = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  v9 = v6 ^ globalScheduledDeliverySetting ^ [globalScheduledDeliveryTimes hash];
  globalScheduledDeliveryShowNextSummarySetting = [(BBGlobalSettings *)self globalScheduledDeliveryShowNextSummarySetting];
  v11 = globalScheduledDeliveryShowNextSummarySetting ^ [(BBGlobalSettings *)self globalNotificationListDisplayStyleSetting];
  v12 = v11 ^ [(BBGlobalSettings *)self globalSummarizationSetting];
  v13 = v12 ^ [(BBGlobalSettings *)self globalHighlightsSetting];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      globalContentPreviewSetting = [(BBGlobalSettings *)self globalContentPreviewSetting];
      if (globalContentPreviewSetting == [(BBGlobalSettings *)v5 globalContentPreviewSetting]&& (v7 = [(BBGlobalSettings *)self globalAnnounceSetting], v7 == [(BBGlobalSettings *)v5 globalAnnounceSetting]) && (v8 = [(BBGlobalSettings *)self globalAnnounceHeadphonesSetting], v8 == [(BBGlobalSettings *)v5 globalAnnounceHeadphonesSetting]) && (v9 = [(BBGlobalSettings *)self globalAnnounceCarPlaySetting], v9 == [(BBGlobalSettings *)v5 globalAnnounceCarPlaySetting]) && (v10 = [(BBGlobalSettings *)self globalScheduledDeliverySetting], v10 == [(BBGlobalSettings *)v5 globalScheduledDeliverySetting]))
      {
        globalScheduledDeliveryTimes = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
        globalScheduledDeliveryTimes2 = [(BBGlobalSettings *)v5 globalScheduledDeliveryTimes];
        if ([globalScheduledDeliveryTimes isEqualToArray:globalScheduledDeliveryTimes2] && (v13 = -[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self, "globalScheduledDeliveryShowNextSummarySetting"), v13 == -[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](v5, "globalScheduledDeliveryShowNextSummarySetting")) && (v14 = -[BBGlobalSettings globalNotificationListDisplayStyleSetting](self, "globalNotificationListDisplayStyleSetting"), v14 == -[BBGlobalSettings globalNotificationListDisplayStyleSetting](v5, "globalNotificationListDisplayStyleSetting")) && (v15 = -[BBGlobalSettings globalSummarizationSetting](self, "globalSummarizationSetting"), v15 == -[BBGlobalSettings globalSummarizationSetting](v5, "globalSummarizationSetting")))
        {
          globalHighlightsSetting = [(BBGlobalSettings *)self globalHighlightsSetting];
          v17 = globalHighlightsSetting == [(BBGlobalSettings *)v5 globalHighlightsSetting];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setGlobalContentPreviewSetting:{-[BBGlobalSettings globalContentPreviewSetting](self, "globalContentPreviewSetting")}];
  [v4 setGlobalAnnounceSetting:{-[BBGlobalSettings globalAnnounceSetting](self, "globalAnnounceSetting")}];
  [v4 setGlobalAnnounceHeadphonesSetting:{-[BBGlobalSettings globalAnnounceHeadphonesSetting](self, "globalAnnounceHeadphonesSetting")}];
  [v4 setGlobalAnnounceCarPlaySetting:{-[BBGlobalSettings globalAnnounceCarPlaySetting](self, "globalAnnounceCarPlaySetting")}];
  [v4 setGlobalScheduledDeliverySetting:{-[BBGlobalSettings globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  globalScheduledDeliveryTimes = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  [v4 setGlobalScheduledDeliveryTimes:globalScheduledDeliveryTimes];

  [v4 setGlobalScheduledDeliveryShowNextSummarySetting:{-[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self, "globalScheduledDeliveryShowNextSummarySetting")}];
  [v4 setGlobalNotificationListDisplayStyleSetting:{-[BBGlobalSettings globalNotificationListDisplayStyleSetting](self, "globalNotificationListDisplayStyleSetting")}];
  [v4 setGlobalSummarizationSetting:{-[BBGlobalSettings globalSummarizationSetting](self, "globalSummarizationSetting")}];
  [v4 setGlobalHighlightsSetting:{-[BBGlobalSettings globalHighlightsSetting](self, "globalHighlightsSetting")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BBGlobalSettings globalContentPreviewSetting](self forKey:{"globalContentPreviewSetting"), @"contentPreviews"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalAnnounceSetting](self forKey:{"globalAnnounceSetting"), @"announce"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalAnnounceHeadphonesSetting](self forKey:{"globalAnnounceHeadphonesSetting"), @"announceHeadphones"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalAnnounceCarPlaySetting](self forKey:{"globalAnnounceCarPlaySetting"), @"announceCarPlay"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalScheduledDeliverySetting](self forKey:{"globalScheduledDeliverySetting"), @"scheduledDelivery"}];
  globalScheduledDeliveryTimes = [(BBGlobalSettings *)self globalScheduledDeliveryTimes];
  [coderCopy encodeObject:globalScheduledDeliveryTimes forKey:@"scheduledDeliveryTimes"];

  [coderCopy encodeInteger:-[BBGlobalSettings globalScheduledDeliveryShowNextSummarySetting](self forKey:{"globalScheduledDeliveryShowNextSummarySetting"), @"scheduledDeliveryShowNextSummary"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalNotificationListDisplayStyleSetting](self forKey:{"globalNotificationListDisplayStyleSetting"), @"notificationListDisplayStyle"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalSummarizationSetting](self forKey:{"globalSummarizationSetting"), @"summarization"}];
  [coderCopy encodeInteger:-[BBGlobalSettings globalHighlightsSetting](self forKey:{"globalHighlightsSetting"), @"highlights"}];
}

- (BBGlobalSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeIntegerForKey:@"contentPreviews"];
  if ([coderCopy containsValueForKey:@"announce"])
  {
    v5 = @"announce";
  }

  else
  {
    v5 = @"spokenNotifications";
  }

  v6 = [coderCopy decodeIntegerForKey:v5];
  v7 = [coderCopy decodeIntegerForKey:@"announceHeadphones"];
  v8 = [coderCopy decodeIntegerForKey:@"announceCarPlay"];
  v9 = [coderCopy decodeIntegerForKey:@"scheduledDelivery"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"scheduledDeliveryTimes"];

  v14 = -[BBGlobalSettings initWithContentPreviewSetting:announceSetting:announceHeadphonesSetting:announceCarPlaySetting:scheduledDeliverySetting:scheduledDeliveryTimes:scheduledDeliveryShowNextSummarySetting:notificationListDisplayStyleSetting:summarizationSetting:highlightsSettings:](self, "initWithContentPreviewSetting:announceSetting:announceHeadphonesSetting:announceCarPlaySetting:scheduledDeliverySetting:scheduledDeliveryTimes:scheduledDeliveryShowNextSummarySetting:notificationListDisplayStyleSetting:summarizationSetting:highlightsSettings:", v4, v6, v7, v8, v9, v13, [coderCopy decodeIntegerForKey:@"scheduledDeliveryShowNextSummary"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"notificationListDisplayStyle"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"summarization"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"highlights"));
  return v14;
}

- (int64_t)globalSpokenNotificationSetting
{
  globalAnnounceSetting = [(BBGlobalSettings *)self globalAnnounceSetting];

  return BBSpokenNotificationSettingForAnnounceSetting(globalAnnounceSetting);
}

@end