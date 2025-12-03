@interface MRContentItemMetadataAudioRoute
- (BOOL)isEqual:(id)equal;
- (MRContentItemMetadataAudioRoute)initWithProtobuf:(id)protobuf;
- (NSDictionary)dictionaryRepresentation;
- (_MRAudioRouteProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MRContentItemMetadataAudioRoute

- (_MRAudioRouteProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRAudioRouteProtobuf);
  v3->_type = [(MRContentItemMetadataAudioRoute *)self type];
  *&v3->_has = *&v3->_has & 0xFE | [(MRContentItemMetadataAudioRoute *)self hasType];
  v3->_supportsSpatialization = [(MRContentItemMetadataAudioRoute *)self supportsSpatialization];
  if ([(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFB | v4;
  v3->_spatializationEnabled = [(MRContentItemMetadataAudioRoute *)self isSpatializationEnabled];
  if ([(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&v3->_has = *&v3->_has & 0xFD | v5;
  name = [(MRContentItemMetadataAudioRoute *)self name];
  v7 = [name copy];
  [(_MRAudioRouteProtobuf *)v3 setName:v7];

  return v3;
}

- (MRContentItemMetadataAudioRoute)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v11.receiver = self;
    v11.super_class = MRContentItemMetadataAudioRoute;
    v5 = [(MRContentItemMetadataAudioRoute *)&v11 init];
    if (v5)
    {
      v5->_type = [protobufCopy type];
      v5->_hasType = [protobufCopy hasType];
      v5->_supportsSpatialization = [protobufCopy supportsSpatialization];
      v5->_hasSupportsSpatialization = [protobufCopy hasSupportsSpatialization];
      v5->_spatializationEnabled = [protobufCopy spatializationEnabled];
      v5->_hasSpatializationEnabled = [protobufCopy hasSpatializationEnabled];
      name = [protobufCopy name];
      v7 = [name copy];
      name = v5->_name;
      v5->_name = v7;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if ([(MRContentItemMetadataAudioRoute *)self hasType])
  {
    [v5 setType:{-[MRContentItemMetadataAudioRoute type](self, "type")}];
  }

  name = [(MRContentItemMetadataAudioRoute *)self name];
  v7 = [name copyWithZone:zone];
  [v5 setName:v7];

  if ([(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
  {
    [v5 setSupportsSpatialization:{-[MRContentItemMetadataAudioRoute supportsSpatialization](self, "supportsSpatialization")}];
  }

  if ([(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
  {
    [v5 setSpatializationEnabled:{-[MRContentItemMetadataAudioRoute isSpatializationEnabled](self, "isSpatializationEnabled")}];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  hasType = [(MRContentItemMetadataAudioRoute *)equalCopy hasType];
  if (hasType != [(MRContentItemMetadataAudioRoute *)self hasType])
  {
    goto LABEL_16;
  }

  if ([(MRContentItemMetadataAudioRoute *)equalCopy hasType])
  {
    if ([(MRContentItemMetadataAudioRoute *)self hasType])
    {
      type = [(MRContentItemMetadataAudioRoute *)equalCopy type];
      if (type != [(MRContentItemMetadataAudioRoute *)self type])
      {
        goto LABEL_16;
      }
    }
  }

  name = [(MRContentItemMetadataAudioRoute *)equalCopy name];
  name2 = [(MRContentItemMetadataAudioRoute *)self name];
  v9 = name2;
  if (name == name2)
  {

LABEL_11:
    hasSupportsSpatialization = [(MRContentItemMetadataAudioRoute *)equalCopy hasSupportsSpatialization];
    if (hasSupportsSpatialization != [(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
    {
      goto LABEL_16;
    }

    if ([(MRContentItemMetadataAudioRoute *)equalCopy hasSupportsSpatialization])
    {
      if ([(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
      {
        supportsSpatialization = [(MRContentItemMetadataAudioRoute *)equalCopy supportsSpatialization];
        if (supportsSpatialization != [(MRContentItemMetadataAudioRoute *)self supportsSpatialization])
        {
          goto LABEL_16;
        }
      }
    }

    hasSpatializationEnabled = [(MRContentItemMetadataAudioRoute *)equalCopy hasSpatializationEnabled];
    if (hasSpatializationEnabled != [(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
    {
      goto LABEL_16;
    }

    if ([(MRContentItemMetadataAudioRoute *)equalCopy hasSpatializationEnabled])
    {
      if ([(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
      {
        isSpatializationEnabled = [(MRContentItemMetadataAudioRoute *)equalCopy isSpatializationEnabled];
        if (isSpatializationEnabled != [(MRContentItemMetadataAudioRoute *)self isSpatializationEnabled])
        {
          goto LABEL_16;
        }
      }
    }

LABEL_20:
    v16 = 1;
    goto LABEL_21;
  }

  name3 = [(MRContentItemMetadataAudioRoute *)equalCopy name];
  name4 = [(MRContentItemMetadataAudioRoute *)self name];
  v12 = [name3 isEqual:name4];

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_16:
  v16 = 0;
LABEL_21:

  return v16;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRContentItemMetadataAudioRoute *)self hasType])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadataAudioRoute type](self, "type")}];
    [v3 setObject:v4 forKeyedSubscript:@"type"];
  }

  name = [(MRContentItemMetadataAudioRoute *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  if ([(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadataAudioRoute supportsSpatialization](self, "supportsSpatialization")}];
    [v3 setObject:v6 forKeyedSubscript:@"supportsSpatialization"];

    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadataAudioRoute isSpatializationEnabled](self, "isSpatializationEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSpatializationEnabled"];
  }

  return v3;
}

@end