@interface CKTranscriptMultilineLabelCell
+ (id)createStampLabelView;
@end

@implementation CKTranscriptMultilineLabelCell

+ (id)createStampLabelView
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CKTranscriptMultilineLabelCell;
  v2 = objc_msgSendSuper2(&v4, sel_createStampLabelView);
  [v2 setNumberOfLines:0];

  return v2;
}

@end