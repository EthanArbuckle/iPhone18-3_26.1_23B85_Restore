@interface IMActionCalendar
- (IMActionCalendar)init;
- (IMActionCalendar)initWithStartTime:(id)a3 endTime:(id)a4 title:(id)a5 calDescription:(id)a6 fallbackUrl:(id)a7;
- (id)dictionaryRepresentation;
@end

@implementation IMActionCalendar

- (IMActionCalendar)initWithStartTime:(id)a3 endTime:(id)a4 title:(id)a5 calDescription:(id)a6 fallbackUrl:(id)a7
{
  v10 = sub_1A88C82E8();
  v12 = v11;
  v13 = sub_1A88C82E8();
  v15 = v14;
  v16 = sub_1A88C82E8();
  v18 = v17;
  if (!a6)
  {
    v20 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    v22 = 0;
    goto LABEL_6;
  }

  a6 = sub_1A88C82E8();
  v20 = v19;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = sub_1A88C82E8();
LABEL_6:
  v23 = (self + OBJC_IVAR___IMActionCalendar_startTime);
  *v23 = v10;
  v23[1] = v12;
  v24 = (self + OBJC_IVAR___IMActionCalendar_endTime);
  *v24 = v13;
  v24[1] = v15;
  v25 = (self + OBJC_IVAR___IMActionCalendar_title);
  *v25 = v16;
  v25[1] = v18;
  v26 = (self + OBJC_IVAR___IMActionCalendar_calDescription);
  *v26 = a6;
  v26[1] = v20;
  v27 = (self + OBJC_IVAR___IMActionCalendar_fallbackUrl);
  *v27 = v21;
  v27[1] = v22;
  v29.receiver = self;
  v29.super_class = IMActionCalendar;
  return [(IMActionCalendar *)&v29 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A87576D8();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionCalendar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end