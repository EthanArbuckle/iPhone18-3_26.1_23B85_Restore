@interface RecordImageCell
- (_TtC15HealthRecordsUI15RecordImageCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI15RecordImageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation RecordImageCell

- (_TtC15HealthRecordsUI15RecordImageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_1D139016C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC15HealthRecordsUI15RecordImageCell_recordImageView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  if (v7)
  {
    v9 = sub_1D139012C();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for RecordImageCell();
  v10 = [(RecordImageCell *)&v13 initWithStyle:a3 reuseIdentifier:v9];

  v11 = v10;
  sub_1D1377E04();

  return v11;
}

- (_TtC15HealthRecordsUI15RecordImageCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI15RecordImageCell_recordImageView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end