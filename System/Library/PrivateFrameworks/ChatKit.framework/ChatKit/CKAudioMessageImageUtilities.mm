@interface CKAudioMessageImageUtilities
+ (id)audioMessageImageFor:(id)a3 with:(CGSize)a4;
- (_TtC7ChatKit28CKAudioMessageImageUtilities)init;
@end

@implementation CKAudioMessageImageUtilities

+ (id)audioMessageImageFor:(id)a3 with:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = _s7ChatKit28CKAudioMessageImageUtilitiesC05audiodE03for4withSo7UIImageCSo9IMMessageCSg_So6CGSizeVtFZ_0(a3, width, height);

  return v8;
}

- (_TtC7ChatKit28CKAudioMessageImageUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return [(CKAudioMessageImageUtilities *)&v3 init];
}

@end