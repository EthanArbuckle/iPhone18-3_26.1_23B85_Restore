@interface VCPProtoMoviePreEncodeResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)mergeFrom:(id)a3;
@end

@implementation VCPProtoMoviePreEncodeResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
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
  v2 = [(VCPProtoMoviePreEncodeResult *)self statisticsBlob];
  v7 = v2;
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
  v5 = [(VCPProtoMoviePreEncodeResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  statisticsBlob = self->_statisticsBlob;
  if (statisticsBlob)
  {
    [v3 setObject:statisticsBlob forKey:@"statisticsBlob"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_statisticsBlob copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    statisticsBlob = self->_statisticsBlob;
    if (statisticsBlob | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(VCPProtoMoviePreEncodeResult *)self setStatisticsBlob:?];
  }
}

@end