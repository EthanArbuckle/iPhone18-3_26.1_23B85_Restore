@interface VCPProtoImageSceneprintResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)from;
@end

@implementation VCPProtoImageSceneprintResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
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
  sceneprintBlob = [(VCPProtoImageSceneprintResult *)self sceneprintBlob];
  v3 = sceneprintBlob;
  if (sceneprintBlob)
  {
    v9 = sceneprintBlob;
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
  dictionaryRepresentation = [(VCPProtoImageSceneprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sceneprintBlob = self->_sceneprintBlob;
  if (sceneprintBlob)
  {
    [dictionary setObject:sceneprintBlob forKey:@"sceneprintBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_sceneprintBlob copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sceneprintBlob = self->_sceneprintBlob;
    if (sceneprintBlob | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(VCPProtoImageSceneprintResult *)self setSceneprintBlob:?];
  }
}

@end