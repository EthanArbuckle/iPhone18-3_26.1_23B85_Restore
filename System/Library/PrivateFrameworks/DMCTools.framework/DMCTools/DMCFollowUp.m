@interface DMCFollowUp
+ (BOOL)clearWithClientID:(id)a3 error:(id *)a4;
+ (BOOL)clearWithID:(id)a3 clientID:(id)a4 error:(id *)a5;
- (BOOL)clearAndReturnError:(id *)a3;
- (BOOL)presentAndReturnError:(id *)a3;
- (DMCFollowUp)init;
- (DMCFollowUp)initWithStyle:(unint64_t)a3 identifier:(id)a4 clientID:(id)a5 userInfo:(id)a6 title:(id)a7 message:(id)a8 notificationTitle:(id)a9 notificationMessage:(id)a10 actionTitle:(id)a11 actionURL:(id)a12 dismissTitle:(id)a13 dismissURL:(id)a14;
- (NSDictionary)userInfo;
@end

@implementation DMCFollowUp

- (NSDictionary)userInfo
{
  v2 = *(self + OBJC_IVAR___DMCFollowUp_userInfo);

  v3 = sub_247F23E9C();

  return v3;
}

- (DMCFollowUp)initWithStyle:(unint64_t)a3 identifier:(id)a4 clientID:(id)a5 userInfo:(id)a6 title:(id)a7 message:(id)a8 notificationTitle:(id)a9 notificationMessage:(id)a10 actionTitle:(id)a11 actionURL:(id)a12 dismissTitle:(id)a13 dismissURL:(id)a14
{
  v60 = a3;
  v61 = self;
  v48 = a11;
  v49 = a12;
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
  if (a9)
  {
    v30 = sub_247F23F3C();
    v46 = v31;
    v47 = v30;
    v32 = a13;
    v33 = a14;
    if (a10)
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
    v32 = a13;
    v33 = a14;
    if (a10)
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
  if (!v32)
  {
    v39 = 0;
    v41 = v33;
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_10:
    v43 = 1;
    goto LABEL_11;
  }

  v39 = sub_247F23F3C();
  v32 = v40;
  v41 = v33;
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
  DMCFollowUp.init(style:identifier:clientID:userInfo:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:)(v60, v58, v57, v56, v55, v54, v53, v52, v51, v50, v47, v46, v45, v35, v36, v38, v21, v39, v32, v17);
  return result;
}

- (BOOL)presentAndReturnError:(id *)a3
{
  v4 = self;
  DMCFollowUp.present()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_247F23C8C();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)clearAndReturnError:(id *)a3
{
  v3 = self;
  v4 = [(DMCFollowUp *)v3 controller];
  sub_247F0F93C(v4);

  return 1;
}

+ (BOOL)clearWithClientID:(id)a3 error:(id *)a4
{
  v4 = sub_247F23F3C();
  sub_247F0F9E0(v4, v5);

  return 1;
}

+ (BOOL)clearWithID:(id)a3 clientID:(id)a4 error:(id *)a5
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