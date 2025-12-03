@interface CKAudioMessageImageUtilities
+ (id)audioMessageImageFor:(id)for with:(CGSize)with;
- (_TtC7ChatKit28CKAudioMessageImageUtilities)init;
@end

@implementation CKAudioMessageImageUtilities

+ (id)audioMessageImageFor:(id)for with:(CGSize)with
{
  height = with.height;
  width = with.width;
  forCopy = for;
  v8 = _s7ChatKit28CKAudioMessageImageUtilitiesC05audiodE03for4withSo7UIImageCSo9IMMessageCSg_So6CGSizeVtFZ_0(for, width, height);

  return v8;
}

- (_TtC7ChatKit28CKAudioMessageImageUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return [(CKAudioMessageImageUtilities *)&v3 init];
}

@end