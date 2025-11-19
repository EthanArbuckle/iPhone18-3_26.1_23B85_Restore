@interface VCPProtoImageFeatureResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)a3;
@end

@implementation VCPProtoImageFeatureResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageFeatureResult;
  v4 = [(VCPProtoImageFeatureResult *)&v8 description];
  v5 = [(VCPProtoImageFeatureResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  featureBlob = self->_featureBlob;
  if (featureBlob)
  {
    [v3 setObject:featureBlob forKey:@"featureBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_featureBlob copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    featureBlob = self->_featureBlob;
    if (featureBlob | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(VCPProtoImageFeatureResult *)self setFeatureBlob:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
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
  v3 = [(VCPProtoImageFeatureResult *)self featureBlob];

  if (v3)
  {
    v11 = @"attributes";
    v9 = @"featureVector";
    v4 = [(VCPProtoImageFeatureResult *)self featureBlob];
    v10 = v4;
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