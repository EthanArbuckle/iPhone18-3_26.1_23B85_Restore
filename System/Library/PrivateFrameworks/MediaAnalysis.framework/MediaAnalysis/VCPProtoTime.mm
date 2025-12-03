@interface VCPProtoTime
+ (VCPProtoTime)timeWithCMTime:(id *)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeValue;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoTime

+ (VCPProtoTime)timeWithCMTime:(id *)time
{
  v4 = objc_alloc_init(VCPProtoTime);
  [(VCPProtoTime *)v4 setValue:time->var0];
  [(VCPProtoTime *)v4 setTimescale:time->var1];
  [(VCPProtoTime *)v4 setFlags:time->var2];
  [(VCPProtoTime *)v4 setEpoch:time->var3];

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
  dictionaryRepresentation = [(VCPProtoTime *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_value];
  [dictionary setObject:v4 forKey:@"value"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_timescale];
  [dictionary setObject:v5 forKey:@"timescale"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_flags];
  [dictionary setObject:v6 forKey:@"flags"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_epoch];
  [dictionary setObject:v7 forKey:@"epoch"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_value;
  *(to + 7) = self->_timescale;
  *(to + 6) = self->_flags;
  *(to + 1) = self->_epoch;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_value;
  *(result + 7) = self->_timescale;
  *(result + 6) = self->_flags;
  *(result + 1) = self->_epoch;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_value == *(equalCopy + 2) && self->_timescale == *(equalCopy + 7) && self->_flags == *(equalCopy + 6) && self->_epoch == *(equalCopy + 1);

  return v5;
}

- (void)mergeFrom:(id)from
{
  self->_value = *(from + 2);
  self->_timescale = *(from + 7);
  self->_flags = *(from + 6);
  self->_epoch = *(from + 1);
}

@end