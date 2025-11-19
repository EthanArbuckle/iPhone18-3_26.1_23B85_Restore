@interface HMBMutableModelField
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMBMutableModelField

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMBModelField allocWithZone:?], "initWithClass:", [(HMBModelField *)self classObj]];
  [(HMBModelField *)v4 setOptional:[(HMBModelField *)self isOptional]];
  [(HMBModelField *)v4 setLoggingVisibility:[(HMBModelField *)self loggingVisibility]];
  v5 = [(HMBModelField *)self defaultValue];
  [(HMBModelField *)v4 setDefaultValue:v5];

  v6 = [(HMBModelField *)self readonlyVersion];
  [(HMBModelField *)v4 setReadonlyVersion:v6];

  v7 = [(HMBModelField *)self unavailableVersion];
  [(HMBModelField *)v4 setUnavailableVersion:v7];

  v8 = [(HMBModelField *)self externalRecordField];
  [(HMBModelField *)v4 setExternalRecordField:v8];

  [(HMBModelField *)v4 setConformsToHMBModelNativeCKWrapper:[(HMBModelField *)self conformsToHMBModelNativeCKWrapper]];
  [(HMBModelField *)v4 setExcludeFromCloudStorage:[(HMBModelField *)self excludeFromCloudStorage]];
  v9 = [(HMBModelField *)self encodeBlock];
  [(HMBModelField *)v4 setEncodeBlock:v9];

  v10 = [(HMBModelField *)self decodeBlock];
  [(HMBModelField *)v4 setDecodeBlock:v10];

  v11 = [(HMBModelField *)self descriptionBlock];
  [(HMBModelField *)v4 setDescriptionBlock:v11];

  return v4;
}

@end