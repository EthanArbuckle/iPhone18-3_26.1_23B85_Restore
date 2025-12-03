@interface VCPProtoMoviePreEncodeResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)from;
@end

@implementation VCPProtoMoviePreEncodeResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"Data"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoMoviePreEncodeResult);
    [(VCPProtoMoviePreEncodeResult *)v5 setStatisticsBlob:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"attributes";
  v6 = @"Data";
  statisticsBlob = [(VCPProtoMoviePreEncodeResult *)self statisticsBlob];
  v7 = statisticsBlob;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMoviePreEncodeResult;
  v4 = [(VCPProtoMoviePreEncodeResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMoviePreEncodeResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  statisticsBlob = self->_statisticsBlob;
  if (statisticsBlob)
  {
    [dictionary setObject:statisticsBlob forKey:@"statisticsBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_statisticsBlob copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    statisticsBlob = self->_statisticsBlob;
    if (statisticsBlob | equalCopy[1])
    {
      v6 = [(NSData *)statisticsBlob isEqual:?];
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
    [(VCPProtoMoviePreEncodeResult *)self setStatisticsBlob:?];
  }
}

@end