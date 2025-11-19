@interface IMTapToRadarDraft
+ (void)submitAndOpenTapToRadarWithNotificationIdentifier:(id)a3 notificationTitle:(id)a4 notificationBody:(id)a5 draftTitle:(id)a6 problemDescription:(id)a7 attachments:(id)a8 deviceClasses:(id)a9 classification:(id)a10 reproducibility:(id)a11;
- (IMTapToRadarDraft)init;
@end

@implementation IMTapToRadarDraft

+ (void)submitAndOpenTapToRadarWithNotificationIdentifier:(id)a3 notificationTitle:(id)a4 notificationBody:(id)a5 draftTitle:(id)a6 problemDescription:(id)a7 attachments:(id)a8 deviceClasses:(id)a9 classification:(id)a10 reproducibility:(id)a11
{
  v32 = sub_1A88C82E8();
  v31 = v11;
  v30 = sub_1A88C82E8();
  v13 = v12;
  v29 = sub_1A88C82E8();
  v15 = v14;
  v28 = sub_1A88C82E8();
  v17 = v16;
  v18 = sub_1A88C82E8();
  v20 = v19;
  sub_1A88C72E8();
  v21 = sub_1A88C85F8();
  v22 = sub_1A88C85F8();
  v23 = sub_1A88C82E8();
  v25 = v24;
  v26 = sub_1A88C82E8();
  sub_1A87DE998(v32, v31, v30, v13, v29, v15, v28, v17, v18, v20, v21, v22, v23, v25, v26, v27);
}

- (IMTapToRadarDraft)init
{
  v3.receiver = self;
  v3.super_class = IMTapToRadarDraft;
  return [(IMTapToRadarDraft *)&v3 init];
}

@end