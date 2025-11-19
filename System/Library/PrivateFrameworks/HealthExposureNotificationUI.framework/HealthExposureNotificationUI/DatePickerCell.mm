@interface DatePickerCell
- (_TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DatePickerCell

- (_TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_251703164();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_251688288(a3, a4, v6);
}

- (_TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  result = sub_251703584();
  __break(1u);
  return result;
}

@end