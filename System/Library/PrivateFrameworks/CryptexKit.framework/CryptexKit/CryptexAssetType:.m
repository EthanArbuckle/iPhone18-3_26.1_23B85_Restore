@interface CryptexAssetType:
- (unint64_t)CryptexAsset;
@end

@implementation CryptexAssetType:

- (unint64_t)CryptexAsset
{
  result = lazy protocol witness table cache variable for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMd, &_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMR);
    lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B]);
  }

  return result;
}

@end