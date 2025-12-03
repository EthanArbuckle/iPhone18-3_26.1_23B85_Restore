@interface VCPProtoMovieAnimalprintResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieAnimalprintResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieAnimalprintResult;
  v4 = [(VCPProtoMovieAnimalprintResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieAnimalprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_animalID];
  [dictionary setObject:v4 forKey:@"animalID"];

  animalprintBlob = self->_animalprintBlob;
  if (animalprintBlob)
  {
    [dictionary setObject:animalprintBlob forKey:@"animalprintBlob"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_animalLabel];
  [dictionary setObject:v6 forKey:@"animalLabel"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDataField();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_animalID;
  animalprintBlob = self->_animalprintBlob;
  toCopy = to;
  [toCopy setAnimalprintBlob:animalprintBlob];
  toCopy[3] = self->_animalLabel;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_animalID;
  v6 = [(NSData *)self->_animalprintBlob copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 12) = self->_animalLabel;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_animalID == *(equalCopy + 2) && ((animalprintBlob = self->_animalprintBlob, !(animalprintBlob | *(equalCopy + 2))) || -[NSData isEqual:](animalprintBlob, "isEqual:")) && self->_animalLabel == *(equalCopy + 3);

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_animalID = fromCopy[2];
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(VCPProtoMovieAnimalprintResult *)self setAnimalprintBlob:?];
    fromCopy = v5;
  }

  self->_animalLabel = fromCopy[3];
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"animalId"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
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
  animalLabel = [(VCPProtoMovieAnimalprintResult *)self animalLabel];
  if (animalLabel)
  {
    v4 = (animalLabel == 1) << 34;
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
  animalprintBlob = [(VCPProtoMovieAnimalprintResult *)self animalprintBlob];
  v12[1] = animalprintBlob;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

@end