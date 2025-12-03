@interface VCPProtoImageFeatureResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)from;
@end

@implementation VCPProtoImageFeatureResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageFeatureResult;
  v4 = [(VCPProtoImageFeatureResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoImageFeatureResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  featureBlob = self->_featureBlob;
  if (featureBlob)
  {
    [dictionary setObject:featureBlob forKey:@"featureBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_featureBlob copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    featureBlob = self->_featureBlob;
    if (featureBlob | equalCopy[1])
    {
      v6 = [(NSData *)featureBlob isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(VCPProtoImageFeatureResult *)self setFeatureBlob:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"featureVector"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoImageFeatureResult);
    [(VCPProtoImageFeatureResult *)v5 setFeatureBlob:v4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->ProtoImageFeature] Failed to create proto due to no feature value", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v12[1] = *MEMORY[0x1E69E9840];
  featureBlob = [(VCPProtoImageFeatureResult *)self featureBlob];

  if (featureBlob)
  {
    v11 = @"attributes";
    v9 = @"featureVector";
    featureBlob2 = [(VCPProtoImageFeatureResult *)self featureBlob];
    v10 = featureBlob2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProtoImageFeature->LegacyDict] Failed to create dictionary due to no feature blob", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

@end