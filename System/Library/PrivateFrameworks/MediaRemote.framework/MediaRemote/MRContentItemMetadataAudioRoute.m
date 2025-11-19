@interface MRContentItemMetadataAudioRoute
- (BOOL)isEqual:(id)a3;
- (MRContentItemMetadataAudioRoute)initWithProtobuf:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (_MRAudioRouteProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
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
  v6 = [(MRContentItemMetadataAudioRoute *)self name];
  v7 = [v6 copy];
  [(_MRAudioRouteProtobuf *)v3 setName:v7];

  return v3;
}

- (MRContentItemMetadataAudioRoute)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = MRContentItemMetadataAudioRoute;
    v5 = [(MRContentItemMetadataAudioRoute *)&v11 init];
    if (v5)
    {
      v5->_type = [v4 type];
      v5->_hasType = [v4 hasType];
      v5->_supportsSpatialization = [v4 supportsSpatialization];
      v5->_hasSupportsSpatialization = [v4 hasSupportsSpatialization];
      v5->_spatializationEnabled = [v4 spatializationEnabled];
      v5->_hasSpatializationEnabled = [v4 hasSpatializationEnabled];
      v6 = [v4 name];
      v7 = [v6 copy];
      name = v5->_name;
      v5->_name = v7;
    }

    self = v5;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if ([(MRContentItemMetadataAudioRoute *)self hasType])
  {
    [v5 setType:{-[MRContentItemMetadataAudioRoute type](self, "type")}];
  }

  v6 = [(MRContentItemMetadataAudioRoute *)self name];
  v7 = [v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = [(MRContentItemMetadataAudioRoute *)v4 hasType];
  if (v5 != [(MRContentItemMetadataAudioRoute *)self hasType])
  {
    goto LABEL_16;
  }

  if ([(MRContentItemMetadataAudioRoute *)v4 hasType])
  {
    if ([(MRContentItemMetadataAudioRoute *)self hasType])
    {
      v6 = [(MRContentItemMetadataAudioRoute *)v4 type];
      if (v6 != [(MRContentItemMetadataAudioRoute *)self type])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(MRContentItemMetadataAudioRoute *)v4 name];
  v8 = [(MRContentItemMetadataAudioRoute *)self name];
  v9 = v8;
  if (v7 == v8)
  {

LABEL_11:
    v13 = [(MRContentItemMetadataAudioRoute *)v4 hasSupportsSpatialization];
    if (v13 != [(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
    {
      goto LABEL_16;
    }

    if ([(MRContentItemMetadataAudioRoute *)v4 hasSupportsSpatialization])
    {
      if ([(MRContentItemMetadataAudioRoute *)self hasSupportsSpatialization])
      {
        v14 = [(MRContentItemMetadataAudioRoute *)v4 supportsSpatialization];
        if (v14 != [(MRContentItemMetadataAudioRoute *)self supportsSpatialization])
        {
          goto LABEL_16;
        }
      }
    }

    v15 = [(MRContentItemMetadataAudioRoute *)v4 hasSpatializationEnabled];
    if (v15 != [(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
    {
      goto LABEL_16;
    }

    if ([(MRContentItemMetadataAudioRoute *)v4 hasSpatializationEnabled])
    {
      if ([(MRContentItemMetadataAudioRoute *)self hasSpatializationEnabled])
      {
        v17 = [(MRContentItemMetadataAudioRoute *)v4 isSpatializationEnabled];
        if (v17 != [(MRContentItemMetadataAudioRoute *)self isSpatializationEnabled])
        {
          goto LABEL_16;
        }
      }
    }

LABEL_20:
    v16 = 1;
    goto LABEL_21;
  }

  v10 = [(MRContentItemMetadataAudioRoute *)v4 name];
  v11 = [(MRContentItemMetadataAudioRoute *)self name];
  v12 = [v10 isEqual:v11];

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

  v5 = [(MRContentItemMetadataAudioRoute *)self name];
  [v3 setObject:v5 forKeyedSubscript:@"name"];

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