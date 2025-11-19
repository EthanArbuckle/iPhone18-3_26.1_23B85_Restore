@interface VCPProtoImageSceneprintResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)a3;
@end

@implementation VCPProtoImageSceneprintResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"sceneprint"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoImageSceneprintResult);
    [(VCPProtoImageSceneprintResult *)v5 setSceneprintBlob:v4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[LegacyDict->ProtoImageSceneprint] No sceneprint result", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(VCPProtoImageSceneprintResult *)self sceneprintBlob];
  v3 = v2;
  if (v2)
  {
    v9 = v2;
    v10 = @"attributes";
    v8 = @"sceneprint";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProtoImageSceneprint->LegacyDict] No sceneprint result", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageSceneprintResult;
  v4 = [(VCPProtoImageSceneprintResult *)&v8 description];
  v5 = [(VCPProtoImageSceneprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sceneprintBlob = self->_sceneprintBlob;
  if (sceneprintBlob)
  {
    [v3 setObject:sceneprintBlob forKey:@"sceneprintBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_sceneprintBlob copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    sceneprintBlob = self->_sceneprintBlob;
    if (sceneprintBlob | v4[1])
    {
      v6 = [(NSData *)sceneprintBlob isEqual:?];
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
    [(VCPProtoImageSceneprintResult *)self setSceneprintBlob:?];
  }
}

@end