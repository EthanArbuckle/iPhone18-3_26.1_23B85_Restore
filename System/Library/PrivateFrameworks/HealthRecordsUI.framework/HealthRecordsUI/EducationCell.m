@interface EducationCell
- (_TtC15HealthRecordsUI13EducationCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation EducationCell

- (_TtC15HealthRecordsUI13EducationCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_arrangedView;
  *(&self->super.super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_educationLabel;
  *(&self->super.super.super.super.super.super.super.isa + v9) = sub_1D130D1FC();
  v10 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_attributionLabel;
  *(&self->super.super.super.super.super.super.super.isa + v10) = sub_1D130D408();
  v11 = self + OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_item;
  v12 = type metadata accessor for EducationCell();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(EducationCell *)&v15 initWithFrame:x, y, width, height];
  sub_1D130D844();

  return v13;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EducationCell();
  v2 = v3.receiver;
  [(EducationCell *)&v3 awakeFromNib];
  sub_1D130D844();
}

@end