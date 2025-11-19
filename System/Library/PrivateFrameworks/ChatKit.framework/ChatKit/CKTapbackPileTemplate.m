@interface CKTapbackPileTemplate
+ (double)topTapbackCenterXOffsetFromSourcePoint;
- (CKTapbackPileTemplate)init;
@end

@implementation CKTapbackPileTemplate

+ (double)topTapbackCenterXOffsetFromSourcePoint
{
  if (qword_1EAD51A48 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EAD9DBA0;
  if (qword_1EAD51A40 != -1)
  {
    swift_once();
  }

  result = (v2 + 22.0) * 0.587785252 + 8.96444549;
  if (result <= *&qword_1EAD9DB98 + 17.0)
  {
    return *&qword_1EAD9DB98 + 17.0;
  }

  return result;
}

- (CKTapbackPileTemplate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackPileTemplate();
  return [(CKTapbackPileTemplate *)&v3 init];
}

@end