@interface VCPProtoEmbeddingResult
+ (id)imageEmbeddingVSKAssetFromResults:(id)results localIdentifier:(id)identifier;
+ (id)resultFromLegacyDictionary:(id)dictionary;
+ (id)resultsFromVSKAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoEmbeddingResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = v4;
  if (v13.start.flags)
  {
    v6 = 0;
    if ((v13.duration.flags & 1) != 0 && !v13.duration.epoch)
    {
      v6 = 0;
      if ((v13.duration.value & 0x8000000000000000) == 0)
      {
        if (v4)
        {
          v8 = objc_alloc_init(VCPProtoEmbeddingResult);
          v12 = v13;
          v9 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v12];
          [(VCPProtoEmbeddingResult *)v8 setTimeRange:v9];

          v10 = [v5 objectForKeyedSubscript:@"embeddings"];
          if (v10)
          {
            [(VCPProtoEmbeddingResult *)v8 setEmbeddingBlob:v10];
            v11 = [v5 objectForKeyedSubscript:@"embeddingVersion"];
            if (v11)
            {
              [(VCPProtoEmbeddingResult *)v8 setHasVersion:1];
              -[VCPProtoEmbeddingResult setVersion:](v8, "setVersion:", [v11 unsignedIntValue]);
            }

            v6 = v8;
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)exportToLegacyDictionary
{
  timeRange = [(VCPProtoEmbeddingResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  range = v11;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  embeddingBlob = [(VCPProtoEmbeddingResult *)self embeddingBlob];
  [dictionary setObject:embeddingBlob forKeyedSubscript:@"embeddings"];

  if ([(VCPProtoEmbeddingResult *)self hasVersion])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoEmbeddingResult version](self, "version")}];
    [dictionary setObject:v9 forKeyedSubscript:@"embeddingVersion"];
  }

  [v6 setObject:dictionary forKeyedSubscript:{@"attributes", *&v11.start.value, *&v11.start.epoch, *&v11.duration.timescale}];

  return v6;
}

+ (id)resultsFromVSKAsset:(id)asset
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v18 = assetCopy;
  if (assetCopy)
  {
    v4 = assetCopy;
    mad_photosLocalIdentifier = [assetCopy mad_photosLocalIdentifier];
    vectors = [v4 vectors];
    v6 = [vectors count];

    if (v6)
    {
      array = [MEMORY[0x1E695DF70] array];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = [v18 vectors];
      v8 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v8)
      {
        v9 = *v21;
        v10 = MEMORY[0x1E6960CA8];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = objc_alloc_init(VCPProtoEmbeddingResult);
            [(VCPProtoEmbeddingResult *)v13 setEmbeddingBlob:v12];
            v14 = v10[1];
            *buf = *v10;
            v25 = v14;
            v26 = v10[2];
            v15 = [VCPProtoTimeRange timeRangeWithCMTimeRange:buf];
            [(VCPProtoEmbeddingResult *)v13 setTimeRange:v15];

            [(VCPProtoEmbeddingResult *)v13 setVersion:+[VCPVideoTransformerBackbone embeddingVersion]];
            [array addObject:v13];
          }

          v8 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v8);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = mad_photosLocalIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset->ImageEmbeddingProto][%@] VSKAsset contains no embedding", buf, 0xCu);
      }

      array = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset->ImageEmbeddingProto] No VSKAsset", buf, 2u);
    }

    array = 0;
  }

  return array;
}

+ (id)imageEmbeddingVSKAssetFromResults:(id)results localIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  identifierCopy = identifier;
  if ([resultsCopy count])
  {
    v20 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierFromLocalIdentifier:identifierCopy embeddingType:1];
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = resultsCopy;
    version2 = 0;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if (![v13 hasVersion] || !MADIsVisualEmbeddingVersionCompatibleWithLatest(objc_msgSend(v13, "version")))
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              hasVersion = [v13 hasVersion];
              version = [v13 version];
              *buf = 138412802;
              v26 = identifierCopy;
              v27 = 1024;
              v28 = hasVersion;
              v29 = 1024;
              v30 = version;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageEmbeddingProto->VSKAsset][%@] Invalid embedding version (hasVersion: %d, version: %d) in VCPProtoEmbeddingResult", buf, 0x18u);
            }

            goto LABEL_20;
          }

          embeddingBlob = [v13 embeddingBlob];
          [array addObject:embeddingBlob];

          if (!version2)
          {
            version2 = [v13 version];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([array count] && version2)
    {
      v15 = [MEMORY[0x1E69DF5F8] mad_attributesWithEmbeddingVersion:version2];
      v16 = [objc_alloc(MEMORY[0x1E69DF5F8]) initWithStringIdentifier:v20 vectors:array attributes:v15 payload:0];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = identifierCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageEmbeddingProto->VSKAsset][%@] No valid embedding data/version in VCPProtoEmbeddingResult", buf, 0xCu);
      }

LABEL_20:
      v16 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageEmbeddingProto->VSKAsset][%@] No VCPProtoEmbeddingResult", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoEmbeddingResult;
  v4 = [(VCPProtoEmbeddingResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoEmbeddingResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  embeddingBlob = self->_embeddingBlob;
  if (embeddingBlob)
  {
    [dictionary setObject:embeddingBlob forKey:@"embeddingBlob"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v7 forKey:@"version"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  [toCopy setEmbeddingBlob:self->_embeddingBlob];
  if (*&self->_has)
  {
    *(toCopy + 6) = self->_version;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_embeddingBlob copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  timeRange = self->_timeRange;
  if (timeRange | *(equalCopy + 2))
  {
    if (![(VCPProtoTimeRange *)timeRange isEqual:?])
    {
      goto LABEL_10;
    }
  }

  embeddingBlob = self->_embeddingBlob;
  if (embeddingBlob | *(equalCopy + 1))
  {
    if (![(NSData *)embeddingBlob isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_version == *(equalCopy + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = [(NSData *)self->_embeddingBlob hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_version;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoEmbeddingResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(VCPProtoEmbeddingResult *)self setEmbeddingBlob:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 1u;
  }
}

@end