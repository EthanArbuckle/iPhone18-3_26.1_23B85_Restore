@interface VCPAnalyzedAsset
+ (id)assetWithLocalIdentifier:(id)identifier version:(int)version dateModified:(id)modified dateAnalyzed:(id)analyzed types:(unint64_t)types flags:(unint64_t)flags quality:(double)quality statsFlags:(unint64_t)self0 masterFingerprint:(id)self1 adjustedFingerprint:(id)self2;
- (VCPAnalyzedAsset)initWithLocalIdentifier:(id)identifier version:(int)version dateModified:(id)modified dateAnalyzed:(id)analyzed types:(unint64_t)types flags:(unint64_t)flags quality:(double)quality statsFlags:(unint64_t)self0 masterFingerprint:(id)self1 adjustedFingerprint:(id)self2;
@end

@implementation VCPAnalyzedAsset

- (VCPAnalyzedAsset)initWithLocalIdentifier:(id)identifier version:(int)version dateModified:(id)modified dateAnalyzed:(id)analyzed types:(unint64_t)types flags:(unint64_t)flags quality:(double)quality statsFlags:(unint64_t)self0 masterFingerprint:(id)self1 adjustedFingerprint:(id)self2
{
  identifierCopy = identifier;
  modifiedCopy = modified;
  analyzedCopy = analyzed;
  fingerprintCopy = fingerprint;
  adjustedFingerprintCopy = adjustedFingerprint;
  v31.receiver = self;
  v31.super_class = VCPAnalyzedAsset;
  v22 = [(VCPAnalyzedAsset *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_localIdentifier, identifier);
    v23->_version = version;
    objc_storeStrong(&v23->_dateModified, modified);
    objc_storeStrong(&v23->_dateAnalyzed, analyzed);
    v23->_types = types;
    v23->_flags = flags;
    v23->_quality = quality;
    v23->_statsFlags = statsFlags;
    v24 = [VCPFingerprint fingerprintWithMaster:fingerprintCopy adjusted:adjustedFingerprintCopy];
    fingerprint = v23->_fingerprint;
    v23->_fingerprint = v24;

    v26 = v23;
  }

  return v23;
}

+ (id)assetWithLocalIdentifier:(id)identifier version:(int)version dateModified:(id)modified dateAnalyzed:(id)analyzed types:(unint64_t)types flags:(unint64_t)flags quality:(double)quality statsFlags:(unint64_t)self0 masterFingerprint:(id)self1 adjustedFingerprint:(id)self2
{
  v17 = *&version;
  identifierCopy = identifier;
  modifiedCopy = modified;
  analyzedCopy = analyzed;
  fingerprintCopy = fingerprint;
  adjustedFingerprintCopy = adjustedFingerprint;
  v23 = [[VCPAnalyzedAsset alloc] initWithLocalIdentifier:identifierCopy version:v17 dateModified:modifiedCopy dateAnalyzed:analyzedCopy types:types flags:flags quality:quality statsFlags:statsFlags masterFingerprint:fingerprintCopy adjustedFingerprint:adjustedFingerprintCopy];

  return v23;
}

@end