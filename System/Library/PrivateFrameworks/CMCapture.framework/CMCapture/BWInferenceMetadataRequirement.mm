@interface BWInferenceMetadataRequirement
- (BWInferenceMetadataRequirement)initWithMetadataKeys:(id)keys mappingOption:(signed __int16)option;
- (BWInferenceMetadataRequirement)initWithMetadataRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation BWInferenceMetadataRequirement

- (BWInferenceMetadataRequirement)initWithMetadataKeys:(id)keys mappingOption:(signed __int16)option
{
  v8.receiver = self;
  v8.super_class = BWInferenceMetadataRequirement;
  v6 = [(BWInferenceDataRequirement *)&v8 init];
  if (v6)
  {
    v6->_metadataKeys = [keys copy];
    v6->_mappingOption = option;
  }

  return v6;
}

- (BWInferenceMetadataRequirement)initWithMetadataRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceMetadataRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 initWithDataRequirement:?];
  if (v4)
  {
    v4->_metadataKeys = [objc_msgSend(requirement "metadataKeys")];
    v4->_mappingOption = [requirement mappingOption];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceMetadataRequirement;
  [(BWInferenceMetadataRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithMetadataRequirement:self];
}

@end