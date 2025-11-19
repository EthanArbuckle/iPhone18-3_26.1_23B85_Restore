@interface CKTranscriptLayoutUtilitiesSwift
+ (id)dynamicWidthLayoutGroupWithLayoutItem:(id)a3;
+ (id)dynamicWidthLayoutSizeWithHeight:(double)a3;
+ (id)layoutSizeWithSize:(CGSize)a3;
- (CKTranscriptLayoutUtilitiesSwift)init;
@end

@implementation CKTranscriptLayoutUtilitiesSwift

+ (id)layoutSizeWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_opt_self();
  v6 = [v5 absoluteDimension_];
  v7 = [v5 absoluteDimension_];
  v8 = [objc_opt_self() sizeWithWidthDimension:v6 heightDimension:v7];

  return v8;
}

+ (id)dynamicWidthLayoutSizeWithHeight:(double)a3
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

+ (id)dynamicWidthLayoutGroupWithLayoutItem:(id)a3
{
  v3 = a3;
  v4 = _s15MessagesSupport25TranscriptLayoutUtilitiesC012dynamicWidthD5Group10layoutItemSo012NSCollectiondH0CSo0kdJ0C_tFZ_0(v3);

  return v4;
}

- (CKTranscriptLayoutUtilitiesSwift)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CKTranscriptLayoutUtilitiesSwift *)&v3 init];
}

@end