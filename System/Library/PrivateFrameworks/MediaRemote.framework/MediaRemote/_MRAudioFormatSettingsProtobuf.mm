@interface _MRAudioFormatSettingsProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAudioFormatSettingsProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioFormatSettingsProtobuf;
  v4 = [(_MRAudioFormatSettingsProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAudioFormatSettingsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  formatSettingsPlistData = self->_formatSettingsPlistData;
  if (formatSettingsPlistData)
  {
    [dictionary setObject:formatSettingsPlistData forKey:@"formatSettingsPlistData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_formatSettingsPlistData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  formatSettingsPlistData = self->_formatSettingsPlistData;
  if (formatSettingsPlistData)
  {
    [to setFormatSettingsPlistData:formatSettingsPlistData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_formatSettingsPlistData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    formatSettingsPlistData = self->_formatSettingsPlistData;
    if (formatSettingsPlistData | equalCopy[1])
    {
      v6 = [(NSData *)formatSettingsPlistData isEqual:?];
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
    [(_MRAudioFormatSettingsProtobuf *)self setFormatSettingsPlistData:?];
  }
}

@end