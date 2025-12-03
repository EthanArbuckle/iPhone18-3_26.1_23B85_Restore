@interface CKTapbackClassicAssetProvider
+ (id)assetForAssociatedMessageType:(int64_t)type;
- (CKTapbackClassicAssetProvider)init;
@end

@implementation CKTapbackClassicAssetProvider

+ (id)assetForAssociatedMessageType:(int64_t)type
{
  v3 = _s7ChatKit27TapbackClassicAssetProviderC5asset3forAA0cdE0CSgSo23IMAssociatedMessageTypeV_tFZ_0(type);

  return v3;
}

- (CKTapbackClassicAssetProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackClassicAssetProvider();
  return [(CKTapbackClassicAssetProvider *)&v3 init];
}

@end