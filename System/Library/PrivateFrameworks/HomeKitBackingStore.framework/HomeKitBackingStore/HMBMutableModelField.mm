@interface HMBMutableModelField
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMBMutableModelField

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMBModelField allocWithZone:?], "initWithClass:", [(HMBModelField *)self classObj]];
  [(HMBModelField *)v4 setOptional:[(HMBModelField *)self isOptional]];
  [(HMBModelField *)v4 setLoggingVisibility:[(HMBModelField *)self loggingVisibility]];
  defaultValue = [(HMBModelField *)self defaultValue];
  [(HMBModelField *)v4 setDefaultValue:defaultValue];

  readonlyVersion = [(HMBModelField *)self readonlyVersion];
  [(HMBModelField *)v4 setReadonlyVersion:readonlyVersion];

  unavailableVersion = [(HMBModelField *)self unavailableVersion];
  [(HMBModelField *)v4 setUnavailableVersion:unavailableVersion];

  externalRecordField = [(HMBModelField *)self externalRecordField];
  [(HMBModelField *)v4 setExternalRecordField:externalRecordField];

  [(HMBModelField *)v4 setConformsToHMBModelNativeCKWrapper:[(HMBModelField *)self conformsToHMBModelNativeCKWrapper]];
  [(HMBModelField *)v4 setExcludeFromCloudStorage:[(HMBModelField *)self excludeFromCloudStorage]];
  encodeBlock = [(HMBModelField *)self encodeBlock];
  [(HMBModelField *)v4 setEncodeBlock:encodeBlock];

  decodeBlock = [(HMBModelField *)self decodeBlock];
  [(HMBModelField *)v4 setDecodeBlock:decodeBlock];

  descriptionBlock = [(HMBModelField *)self descriptionBlock];
  [(HMBModelField *)v4 setDescriptionBlock:descriptionBlock];

  return v4;
}

@end