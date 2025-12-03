@interface DMCFollowUp
+ (BOOL)clearWithClientID:(id)d error:(id *)error;
+ (BOOL)clearWithID:(id)d clientID:(id)iD error:(id *)error;
- (BOOL)clearAndReturnError:(id *)error;
- (BOOL)presentAndReturnError:(id *)error;
- (DMCFollowUp)init;
- (DMCFollowUp)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d userInfo:(id)info title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4;
- (NSDictionary)userInfo;
@end

@implementation DMCFollowUp

- (NSDictionary)userInfo
{
  v2 = *(self + OBJC_IVAR___DMCFollowUp_userInfo);

  v3 = sub_247F23E9C();

  return v3;
}

- (DMCFollowUp)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d userInfo:(id)info title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4
{
  styleCopy = style;
  selfCopy = self;
  actionTitleCopy = actionTitle;
  lCopy = l;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v59 = sub_247F23D3C();
  v18 = *(v59 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v59);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247F23F3C();
  v57 = v23;
  v58 = v22;
  v24 = sub_247F23F3C();
  v55 = v25;
  v56 = v24;
  v54 = sub_247F23EAC();
  v26 = sub_247F23F3C();
  v52 = v27;
  v53 = v26;
  v28 = sub_247F23F3C();
  v50 = v29;
  v51 = v28;
  if (notificationTitle)
  {
    v30 = sub_247F23F3C();
    v46 = v31;
    v47 = v30;
    dismissTitleCopy2 = dismissTitle;
    rLCopy2 = rL;
    if (notificationMessage)
    {
LABEL_3:
      v45 = sub_247F23F3C();
      v35 = v34;
      goto LABEL_6;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    dismissTitleCopy2 = dismissTitle;
    rLCopy2 = rL;
    if (notificationMessage)
    {
      goto LABEL_3;
    }
  }

  v45 = 0;
  v35 = 0;
LABEL_6:
  v36 = sub_247F23F3C();
  v38 = v37;
  sub_247F23CFC();
  if (!dismissTitleCopy2)
  {
    v39 = 0;
    v41 = rLCopy2;
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_10:
    v43 = 1;
    goto LABEL_11;
  }

  v39 = sub_247F23F3C();
  dismissTitleCopy2 = v40;
  v41 = rLCopy2;
  if (!v41)
  {
    goto LABEL_10;
  }

LABEL_8:
  v42 = v41;
  sub_247F23CFC();

  v43 = 0;
LABEL_11:
  (*(v18 + 56))(v17, v43, 1, v59);
  DMCFollowUp.init(style:identifier:clientID:userInfo:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:)(styleCopy, v58, v57, v56, v55, v54, v53, v52, v51, v50, v47, v46, v45, v35, v36, v38, v21, v39, dismissTitleCopy2, v17);
  return result;
}

- (BOOL)presentAndReturnError:(id *)error
{
  selfCopy = self;
  DMCFollowUp.present()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_247F23C8C();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)clearAndReturnError:(id *)error
{
  selfCopy = self;
  controller = [(DMCFollowUp *)selfCopy controller];
  sub_247F0F93C(controller);

  return 1;
}

+ (BOOL)clearWithClientID:(id)d error:(id *)error
{
  v4 = sub_247F23F3C();
  sub_247F0F9E0(v4, v5);

  return 1;
}

+ (BOOL)clearWithID:(id)d clientID:(id)iD error:(id *)error
{
  v5 = sub_247F23F3C();
  v7 = v6;
  v8 = sub_247F23F3C();
  sub_247F0FC14(v5, v7, v8, v9);

  return 1;
}

- (DMCFollowUp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end