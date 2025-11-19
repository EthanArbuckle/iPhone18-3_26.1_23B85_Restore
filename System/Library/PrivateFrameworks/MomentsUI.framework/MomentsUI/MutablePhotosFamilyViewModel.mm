@interface MutablePhotosFamilyViewModel
- (_TtC9MomentsUI28MutablePhotosFamilyViewModel)initWithCoder:(id)a3;
@end

@implementation MutablePhotosFamilyViewModel

- (_TtC9MomentsUI28MutablePhotosFamilyViewModel)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = self + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = self + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  *v7 = 0;
  v7[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end