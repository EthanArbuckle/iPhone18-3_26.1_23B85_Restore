@interface BWInferenceMetadataRequirement
- (BWInferenceMetadataRequirement)initWithMetadataKeys:(id)a3 mappingOption:(signed __int16)a4;
- (BWInferenceMetadataRequirement)initWithMetadataRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation BWInferenceMetadataRequirement

- (BWInferenceMetadataRequirement)initWithMetadataKeys:(id)a3 mappingOption:(signed __int16)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceMetadataRequirement;
  v6 = [(BWInferenceDataRequirement *)&v8 init];
  if (v6)
  {
    v6->_metadataKeys = [a3 copy];
    v6->_mappingOption = a4;
  }

  return v6;
}

- (BWInferenceMetadataRequirement)initWithMetadataRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceMetadataRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 initWithDataRequirement:?];
  if (v4)
  {
    v4->_metadataKeys = [objc_msgSend(a3 "metadataKeys")];
    v4->_mappingOption = [a3 mappingOption];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceMetadataRequirement;
  [(BWInferenceMetadataRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithMetadataRequirement:self];
}

@end