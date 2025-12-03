@interface VideoPreviewLayerView
+ (Class)layerClass;
- (BOOL)isHidden;
- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithCoder:(id)coder;
- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
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

  selfCopy = self;
  [(VideoPreviewLayerView *)selfCopy alpha];
  if (v5 == 0.0)
  {

    return 1;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    isHidden = [(VideoPreviewLayerView *)&v8 isHidden];

    return isHidden;
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
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
  [(VideoPreviewLayerView *)&v6 setHidden:hiddenCopy];
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

- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(VideoPreviewLayerView *)&v11 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC18CosmeticAssessment21VideoPreviewLayerView)initWithCoder:(id)coder
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
  coderCopy = coder;
  v7 = [(VideoPreviewLayerView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end