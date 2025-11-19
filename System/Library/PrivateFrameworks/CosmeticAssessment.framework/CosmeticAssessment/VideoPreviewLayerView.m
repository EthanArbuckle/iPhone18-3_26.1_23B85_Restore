@interface VideoPreviewLayerView
+ (Class)layerClass;
- (BOOL)isHidden;
- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithCoder:(id)a3;
- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation VideoPreviewLayerView

- (BOOL)isHidden
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  [(VideoPreviewLayerView *)v4 alpha];
  if (v5 == 0.0)
  {

    return 1;
  }

  else
  {
    v8.receiver = v4;
    v8.super_class = ObjectType;
    v7 = [(VideoPreviewLayerView *)&v8 isHidden];

    return v7;
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(VideoPreviewLayerView *)&v6 setHidden:v3];
}

+ (Class)layerClass
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C83030();

  return swift_getObjCClassFromMetadata();
}

- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(VideoPreviewLayerView *)&v11 initWithFrame:x, y, width, height];

  return v9;
}

- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(VideoPreviewLayerView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end