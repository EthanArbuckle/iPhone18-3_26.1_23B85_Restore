@interface TSAnalyticsReferral
- (TSAnalyticsReferral)init;
- (TSAnalyticsReferral)initWithUserActivityType:(id)type creativeID:(id)d campaignID:(id)iD campaignType:(id)campaignType referringApplication:(id)application referringURL:(id)l widgetModeGroupID:(id)groupID widgetEngagement:(id)self0 appOpenedByUserActivity:(BOOL)self1 appSessionStartMethod:(int)self2 appSessionStartNotificationType:(int)self3;
@end

@implementation TSAnalyticsReferral

- (TSAnalyticsReferral)initWithUserActivityType:(id)type creativeID:(id)d campaignID:(id)iD campaignType:(id)campaignType referringApplication:(id)application referringURL:(id)l widgetModeGroupID:(id)groupID widgetEngagement:(id)self0 appOpenedByUserActivity:(BOOL)self1 appSessionStartMethod:(int)self2 appSessionStartNotificationType:(int)self3
{
  if (type)
  {
    v18 = sub_219BF5414();
    v49 = v19;
    v50 = v18;
    groupIDCopy2 = groupID;
    engagementCopy2 = engagement;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_6:
    v47 = 0;
    v48 = 0;
    if (iD)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v49 = 0;
  v50 = 0;
  groupIDCopy2 = groupID;
  engagementCopy2 = engagement;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = sub_219BF5414();
  v47 = v23;
  v48 = v22;
  if (iD)
  {
LABEL_4:
    v24 = sub_219BF5414();
    v45 = v25;
    v46 = v24;
    goto LABEL_8;
  }

LABEL_7:
  v45 = 0;
  v46 = 0;
LABEL_8:
  campaignTypeCopy = campaignType;
  applicationCopy = application;
  lCopy = l;
  v29 = groupIDCopy2;
  v42 = engagementCopy2;
  if (campaignTypeCopy)
  {
    v30 = sub_219BF5414();
    v43 = v31;
    v44 = v30;

    if (applicationCopy)
    {
      goto LABEL_10;
    }

LABEL_13:
    v32 = 0;
    v34 = 0;
    if (lCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v43 = 0;
  v44 = 0;
  if (!applicationCopy)
  {
    goto LABEL_13;
  }

LABEL_10:
  v32 = sub_219BF5414();
  v34 = v33;

  if (lCopy)
  {
LABEL_11:
    v35 = sub_219BF5414();
    v37 = v36;

    goto LABEL_15;
  }

LABEL_14:
  v35 = 0;
  v37 = 0;
LABEL_15:
  if (v29)
  {
    v38 = sub_219BF5414();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  return AnalyticsReferral.init(userActivityType:creativeID:campaignID:campaignType:referringApplication:referringURL:widgetModeGroupID:widgetEngagement:appOpenedByUserActivity:appSessionStartMethod:appSessionStartNotificationType:)(v50, v49, v48, v47, v46, v45, v44, v43, v32, v34, v35, v37, v38, v40, v42, activity, method, notificationType);
}

- (TSAnalyticsReferral)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end