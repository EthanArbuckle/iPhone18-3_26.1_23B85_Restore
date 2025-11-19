@interface VCPProtoMovieAnimalprintResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieAnimalprintResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieAnimalprintResult;
  v4 = [(VCPProtoMovieAnimalprintResult *)&v8 description];
  v5 = [(VCPProtoMovieAnimalprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_animalID];
  [v3 setObject:v4 forKey:@"animalID"];

  animalprintBlob = self->_animalprintBlob;
  if (animalprintBlob)
  {
    [v3 setObject:animalprintBlob forKey:@"animalprintBlob"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_animalLabel];
  [v3 setObject:v6 forKey:@"animalLabel"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDataField();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_animalID;
  animalprintBlob = self->_animalprintBlob;
  v5 = a3;
  [v5 setAnimalprintBlob:animalprintBlob];
  v5[3] = self->_animalLabel;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_animalID;
  v6 = [(NSData *)self->_animalprintBlob copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 12) = self->_animalLabel;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && self->_animalID == *(v4 + 2) && ((animalprintBlob = self->_animalprintBlob, !(animalprintBlob | *(v4 + 2))) || -[NSData isEqual:](animalprintBlob, "isEqual:")) && self->_animalLabel == *(v4 + 3);

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_animalID = v4[2];
  if (*(v4 + 2))
  {
    v5 = v4;
    [(VCPProtoMovieAnimalprintResult *)self setAnimalprintBlob:?];
    v4 = v5;
  }

  self->_animalLabel = v4[3];
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"animalId"];
  v6 = [v3 objectForKeyedSubscript:@"flags"];
  v7 = [v4 objectForKeyedSubscript:@"animalPrint"];
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v6 == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_alloc_init(VCPProtoMovieAnimalprintResult);
    -[VCPProtoMovieAnimalprintResult setAnimalID:](v11, "setAnimalID:", [v5 unsignedIntValue]);
    [(VCPProtoMovieAnimalprintResult *)v11 setAnimalprintBlob:v8];
    -[VCPProtoMovieAnimalprintResult setAnimalLabel:](v11, "setAnimalLabel:", ([v6 unsignedIntegerValue] & 0x200000000) == 0);
  }

  return v11;
}

- (id)exportToLegacyDictionary
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [(VCPProtoMovieAnimalprintResult *)self animalLabel];
  if (v3)
  {
    v4 = (v3 == 1) << 34;
  }

  else
  {
    v4 = 0x200000000;
  }

  v13[0] = @"flags";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
  v14[0] = v5;
  v13[1] = @"attributes";
  v11[0] = @"animalId";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieAnimalprintResult animalID](self, "animalID")}];
  v12[0] = v6;
  v11[1] = @"animalPrint";
  v7 = [(VCPProtoMovieAnimalprintResult *)self animalprintBlob];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

@end