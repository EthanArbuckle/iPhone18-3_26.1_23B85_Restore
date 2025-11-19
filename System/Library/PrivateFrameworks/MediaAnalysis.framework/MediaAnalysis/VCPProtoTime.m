@interface VCPProtoTime
+ (VCPProtoTime)timeWithCMTime:(id *)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeValue;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoTime

+ (VCPProtoTime)timeWithCMTime:(id *)a3
{
  v4 = objc_alloc_init(VCPProtoTime);
  [(VCPProtoTime *)v4 setValue:a3->var0];
  [(VCPProtoTime *)v4 setTimescale:a3->var1];
  [(VCPProtoTime *)v4 setFlags:a3->var2];
  [(VCPProtoTime *)v4 setEpoch:a3->var3];

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeValue
{
  retstr->var0 = [(VCPProtoTime *)self value];
  retstr->var1 = [(VCPProtoTime *)self timescale];
  retstr->var2 = [(VCPProtoTime *)self flags];
  result = [(VCPProtoTime *)self epoch];
  retstr->var3 = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoTime;
  v4 = [(VCPProtoTime *)&v8 description];
  v5 = [(VCPProtoTime *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_value];
  [v3 setObject:v4 forKey:@"value"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_timescale];
  [v3 setObject:v5 forKey:@"timescale"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_flags];
  [v3 setObject:v6 forKey:@"flags"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_epoch];
  [v3 setObject:v7 forKey:@"epoch"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_value;
  *(a3 + 7) = self->_timescale;
  *(a3 + 6) = self->_flags;
  *(a3 + 1) = self->_epoch;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_value;
  *(result + 7) = self->_timescale;
  *(result + 6) = self->_flags;
  *(result + 1) = self->_epoch;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_value == *(v4 + 2) && self->_timescale == *(v4 + 7) && self->_flags == *(v4 + 6) && self->_epoch == *(v4 + 1);

  return v5;
}

- (void)mergeFrom:(id)a3
{
  self->_value = *(a3 + 2);
  self->_timescale = *(a3 + 7);
  self->_flags = *(a3 + 6);
  self->_epoch = *(a3 + 1);
}

@end