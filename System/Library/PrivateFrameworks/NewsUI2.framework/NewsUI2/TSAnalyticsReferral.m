@interface TSAnalyticsReferral
- (TSAnalyticsReferral)init;
- (TSAnalyticsReferral)initWithUserActivityType:(id)a3 creativeID:(id)a4 campaignID:(id)a5 campaignType:(id)a6 referringApplication:(id)a7 referringURL:(id)a8 widgetModeGroupID:(id)a9 widgetEngagement:(id)a10 appOpenedByUserActivity:(BOOL)a11 appSessionStartMethod:(int)a12 appSessionStartNotificationType:(int)a13;
@end

@implementation TSAnalyticsReferral

- (TSAnalyticsReferral)initWithUserActivityType:(id)a3 creativeID:(id)a4 campaignID:(id)a5 campaignType:(id)a6 referringApplication:(id)a7 referringURL:(id)a8 widgetModeGroupID:(id)a9 widgetEngagement:(id)a10 appOpenedByUserActivity:(BOOL)a11 appSessionStartMethod:(int)a12 appSessionStartNotificationType:(int)a13
{
  if (a3)
  {
    v18 = sub_219BF5414();
    v49 = v19;
    v50 = v18;
    v21 = a9;
    v20 = a10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v47 = 0;
    v48 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v49 = 0;
  v50 = 0;
  v21 = a9;
  v20 = a10;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = sub_219BF5414();
  v47 = v23;
  v48 = v22;
  if (a5)
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
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = v21;
  v42 = v20;
  if (v26)
  {
    v30 = sub_219BF5414();
    v43 = v31;
    v44 = v30;

    if (v27)
    {
      goto LABEL_10;
    }

LABEL_13:
    v32 = 0;
    v34 = 0;
    if (v28)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v43 = 0;
  v44 = 0;
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_10:
  v32 = sub_219BF5414();
  v34 = v33;

  if (v28)
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

  return AnalyticsReferral.init(userActivityType:creativeID:campaignID:campaignType:referringApplication:referringURL:widgetModeGroupID:widgetEngagement:appOpenedByUserActivity:appSessionStartMethod:appSessionStartNotificationType:)(v50, v49, v48, v47, v46, v45, v44, v43, v32, v34, v35, v37, v38, v40, v42, a11, a12, a13);
}

- (TSAnalyticsReferral)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end