@interface CKTapbackPickerBalloonLayoutTemplate
+ (double)pickerPillBottomTailBaseline;
+ (double)requiredDisplayHeight;
+ (double)topOffsetForUnobscuredTranscriptPresentation;
+ (double)widthConstrainedBaselineWithDisplayConfiguration:(id)a3;
- (CKTapbackPickerBalloonLayoutTemplate)init;
@end

@implementation CKTapbackPickerBalloonLayoutTemplate

+ (double)topOffsetForUnobscuredTranscriptPresentation
{
  if (qword_1EAD52140 != -1)
  {
    swift_once();
  }

  return *&qword_1EAD63110;
}

+ (double)pickerPillBottomTailBaseline
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EAD9E738;
  if (qword_1EAD52128 != -1)
  {
    swift_once();
  }

  return v2 + (v2 + 37.4 + *&qword_1EAD9E760) * 0.64278761 + 37.4;
}

+ (double)widthConstrainedBaselineWithDisplayConfiguration:(id)a3
{
  v4 = (a3 + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  swift_beginAccess();
  v5 = v4[1];
  v6 = qword_1EAD520F0;
  v7 = a3;
  if (v6 != -1)
  {
    v10 = v7;
    swift_once();
    v7 = v10;
  }

  v8 = *&qword_1EAD9E728;

  return v5 + 44.0 + v8;
}

+ (double)requiredDisplayHeight
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EAD9E738;
  if (qword_1EAD52128 != -1)
  {
    swift_once();
  }

  v3 = v2 + (v2 + 37.4 + *&qword_1EAD9E760) * 0.64278761 + 37.4;
  _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
  return v4 + v3;
}

- (CKTapbackPickerBalloonLayoutTemplate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackPickerBalloonLayoutTemplate();
  return [(CKTapbackPickerBalloonLayoutTemplate *)&v3 init];
}

@end