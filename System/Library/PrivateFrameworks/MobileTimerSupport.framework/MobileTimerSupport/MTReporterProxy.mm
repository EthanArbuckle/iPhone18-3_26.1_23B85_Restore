@interface MTReporterProxy
- (void)didCreateLiveActivityForAlarm:(id)a3 withId:(id)a4 date:(id)a5;
- (void)didPostNotificationForAlarm:(id)a3 fullNotificationId:(id)a4 shortNotificationId:(id)a5;
- (void)didRenderSceneForAlarm:(id)a3 withType:(id)a4;
- (void)didRetrieveDeliveredNotificationForAlarm:(id)a3 date:(id)a4;
- (void)didUpdateAudioReporterId:(unint64_t)a3;
- (void)processFiredAlarm:(id)a3;
@end

@implementation MTReporterProxy

- (void)processFiredAlarm:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_22D81B4F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a3;
  v11 = a3;
  v12 = self;
  sub_22D75D890(0, 0, v8, &unk_22D820A88, v10);
}

- (void)didPostNotificationForAlarm:(id)a3 fullNotificationId:(id)a4 shortNotificationId:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  if (a3)
  {
    a3 = sub_22D81B2C8();
    v14 = v13;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  a4 = sub_22D81B2C8();
  v16 = v15;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  a5 = sub_22D81B2C8();
  v18 = v17;
LABEL_8:
  v19 = self;
  v20 = sub_22D81B4F8();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = a4;
  v21[6] = v16;
  v21[7] = a5;
  v21[8] = v18;
  v21[9] = a3;
  v21[10] = v14;
  sub_22D75D890(0, 0, v12, &unk_22D820A80, v21);
}

- (void)didRetrieveDeliveredNotificationForAlarm:(id)a3 date:(id)a4
{
  v24 = self;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_22D81A8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = sub_22D81B2C8();
  v17 = v16;
  sub_22D81A878();
  v18 = sub_22D81B4F8();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v9 + 16))(v12, v14, v8);
  v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v24;
  *(v20 + 4) = v24;
  *(v20 + 5) = v15;
  *(v20 + 6) = v17;
  (*(v9 + 32))(&v20[v19], v12, v8);
  v22 = v21;
  sub_22D75D890(0, 0, v7, &unk_22D820A78, v20);

  (*(v9 + 8))(v14, v8);
}

- (void)didCreateLiveActivityForAlarm:(id)a3 withId:(id)a4 date:(id)a5
{
  v30 = self;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = sub_22D81B2C8();
  v28 = v17;
  v29 = v16;
  v18 = sub_22D81B2C8();
  v20 = v19;
  sub_22D81A878();
  v21 = sub_22D81B4F8();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v10 + 16))(v13, v15, v9);
  v22 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v29;
  v25 = v30;
  *(v23 + 4) = v30;
  *(v23 + 5) = v24;
  *(v23 + 6) = v28;
  *(v23 + 7) = v18;
  *(v23 + 8) = v20;
  (*(v10 + 32))(&v23[v22], v13, v9);
  v26 = v25;
  sub_22D75D890(0, 0, v8, &unk_22D820A70, v23);

  (*(v10 + 8))(v15, v9);
}

- (void)didRenderSceneForAlarm:(id)a3 withType:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_22D81B2C8();
  v11 = v10;
  v12 = sub_22D81B2C8();
  v14 = v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v12;
  v16[8] = v14;
  v17 = self;
  sub_22D75D890(0, 0, v8, &unk_22D820A68, v16);
}

- (void)didUpdateAudioReporterId:(unint64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_22D81B4F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a3;
  v11 = self;
  sub_22D75D890(0, 0, v8, &unk_22D820A38, v10);
}

@end