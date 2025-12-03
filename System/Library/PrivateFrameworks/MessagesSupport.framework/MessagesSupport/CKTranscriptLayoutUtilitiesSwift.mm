@interface CKTranscriptLayoutUtilitiesSwift
+ (id)dynamicWidthLayoutGroupWithLayoutItem:(id)item;
+ (id)dynamicWidthLayoutSizeWithHeight:(double)height;
+ (id)layoutSizeWithSize:(CGSize)size;
- (CKTranscriptLayoutUtilitiesSwift)init;
@end

@implementation CKTranscriptLayoutUtilitiesSwift

+ (id)layoutSizeWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_self();
  absoluteDimension_ = [v5 absoluteDimension_];
  absoluteDimension_2 = [v5 absoluteDimension_];
  v8 = [objc_opt_self() sizeWithWidthDimension:absoluteDimension_ heightDimension:absoluteDimension_2];

  return v8;
}

+ (id)dynamicWidthLayoutSizeWithHeight:(double)height
{
  v4 = objc_opt_self();
  fractionalWidthDimension_ = [v4 fractionalWidthDimension_];
  absoluteDimension_ = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:fractionalWidthDimension_ heightDimension:absoluteDimension_];

  return v7;
}

+ (id)dynamicWidthLayoutGroupWithLayoutItem:(id)item
{
  itemCopy = item;
  v4 = _s15MessagesSupport25TranscriptLayoutUtilitiesC012dynamicWidthD5Group10layoutItemSo012NSCollectiondH0CSo0kdJ0C_tFZ_0(itemCopy);

  return v4;
}

- (CKTranscriptLayoutUtilitiesSwift)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CKTranscriptLayoutUtilitiesSwift *)&v3 init];
}

@end