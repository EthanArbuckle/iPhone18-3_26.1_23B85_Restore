@interface VCPAnalyzedAsset
+ (id)assetWithLocalIdentifier:(id)a3 version:(int)a4 dateModified:(id)a5 dateAnalyzed:(id)a6 types:(unint64_t)a7 flags:(unint64_t)a8 quality:(double)a9 statsFlags:(unint64_t)a10 masterFingerprint:(id)a11 adjustedFingerprint:(id)a12;
- (VCPAnalyzedAsset)initWithLocalIdentifier:(id)a3 version:(int)a4 dateModified:(id)a5 dateAnalyzed:(id)a6 types:(unint64_t)a7 flags:(unint64_t)a8 quality:(double)a9 statsFlags:(unint64_t)a10 masterFingerprint:(id)a11 adjustedFingerprint:(id)a12;
@end

@implementation VCPAnalyzedAsset

- (VCPAnalyzedAsset)initWithLocalIdentifier:(id)a3 version:(int)a4 dateModified:(id)a5 dateAnalyzed:(id)a6 types:(unint64_t)a7 flags:(unint64_t)a8 quality:(double)a9 statsFlags:(unint64_t)a10 masterFingerprint:(id)a11 adjustedFingerprint:(id)a12
{
  v30 = a3;
  v29 = a5;
  v28 = a6;
  v20 = a11;
  v21 = a12;
  v31.receiver = self;
  v31.super_class = VCPAnalyzedAsset;
  v22 = [(VCPAnalyzedAsset *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_localIdentifier, a3);
    v23->_version = a4;
    objc_storeStrong(&v23->_dateModified, a5);
    objc_storeStrong(&v23->_dateAnalyzed, a6);
    v23->_types = a7;
    v23->_flags = a8;
    v23->_quality = a9;
    v23->_statsFlags = a10;
    v24 = [VCPFingerprint fingerprintWithMaster:v20 adjusted:v21];
    fingerprint = v23->_fingerprint;
    v23->_fingerprint = v24;

    v26 = v23;
  }

  return v23;
}

+ (id)assetWithLocalIdentifier:(id)a3 version:(int)a4 dateModified:(id)a5 dateAnalyzed:(id)a6 types:(unint64_t)a7 flags:(unint64_t)a8 quality:(double)a9 statsFlags:(unint64_t)a10 masterFingerprint:(id)a11 adjustedFingerprint:(id)a12
{
  v17 = *&a4;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a11;
  v22 = a12;
  v23 = [[VCPAnalyzedAsset alloc] initWithLocalIdentifier:v18 version:v17 dateModified:v19 dateAnalyzed:v20 types:a7 flags:a8 quality:a9 statsFlags:a10 masterFingerprint:v21 adjustedFingerprint:v22];

  return v23;
}

@end