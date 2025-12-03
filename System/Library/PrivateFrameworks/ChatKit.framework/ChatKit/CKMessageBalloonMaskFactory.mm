@interface CKMessageBalloonMaskFactory
+ (id)balloonShapeViewWithConfiguration:(id)configuration;
- (_TtC7ChatKit27CKMessageBalloonMaskFactory)init;
@end

@implementation CKMessageBalloonMaskFactory

+ (id)balloonShapeViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_190AFEF44(configurationCopy);

  return v4;
}

- (_TtC7ChatKit27CKMessageBalloonMaskFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKMessageBalloonMaskFactory();
  return [(CKMessageBalloonMaskFactory *)&v3 init];
}

@end