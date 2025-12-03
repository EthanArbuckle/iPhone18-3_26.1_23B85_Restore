@interface BMPhotosPhotoViewEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPhotosPhotoViewEvent)initWithCoder:(id)coder;
- (BMPhotosPhotoViewEvent)initWithProto:(id)proto;
- (BMPhotosPhotoViewEvent)initWithProtoData:(id)data;
- (BMPhotosPhotoViewEvent)initWithUniqueId:(id)id personaId:(id)personaId locations:(id)locations absoluteTimestamp:(double)timestamp contentProtection:(id)protection;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMPhotosPhotoViewEvent

- (BMPhotosPhotoViewEvent)initWithUniqueId:(id)id personaId:(id)personaId locations:(id)locations absoluteTimestamp:(double)timestamp contentProtection:(id)protection
{
  idCopy = id;
  personaIdCopy = personaId;
  locationsCopy = locations;
  protectionCopy = protection;
  if (idCopy)
  {
    if (locationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosPhotoViewEvent initWithUniqueId:a2 personaId:self locations:? absoluteTimestamp:? contentProtection:?];
    if (locationsCopy)
    {
      goto LABEL_3;
    }
  }

  [BMPhotosPhotoViewEvent initWithUniqueId:a2 personaId:self locations:? absoluteTimestamp:? contentProtection:?];
LABEL_3:
  v21.receiver = self;
  v21.super_class = BMPhotosPhotoViewEvent;
  v18 = [(BMPhotosPhotoViewEvent *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_locations, locations);
    v19->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v19->_uniqueId, id);
    objc_storeStrong(&v19->_personaId, personaId);
    objc_storeStrong(&v19->_contentProtection, protection);
  }

  return v19;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosPhotoViewEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMPhotosPhotoViewEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMPhotosPhotoViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPhotosPhotoViewEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMPhotosPhotoViewEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMPhotosPhotoViewEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosPhotoViewEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMPhotosPhotoViewEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMPhotosPhotoViewEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasAbsoluteTimestamp]&& ([v5 hasUniqueId]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        personaId = [v5 personaId];
        locations = [v5 locations];
        [v5 absoluteTimestamp];
        v10 = v9;
        contentProtection = [v5 contentProtection];
        self = [(BMPhotosPhotoViewEvent *)self initWithUniqueId:uniqueId personaId:personaId locations:locations absoluteTimestamp:contentProtection contentProtection:v10];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosPhotoViewEvent initWithProto:v13];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosPhotoViewEvent initWithProto:v5];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMPhotosPhotoViewEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPhotosPhotoViewEvent alloc] initWithData:dataCopy];

    self = [(BMPhotosPhotoViewEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  locations = [(BMPhotosPhotoViewEvent *)self locations];
  v5 = [locations mutableCopy];
  [v3 setLocations:v5];

  [(BMPhotosPhotoViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  uniqueId = [(BMPhotosPhotoViewEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  personaId = [(BMPhotosPhotoViewEvent *)self personaId];
  [v3 setPersonaId:personaId];

  contentProtection = [(BMPhotosPhotoViewEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_uniqueId hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMPhotosPhotoViewEvent *)self proto];
    proto2 = [v5 proto];

    v8 = [proto isEqual:proto2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  if ([(NSArray *)self->_locations count]&& self->_uniqueId)
  {
    return 1;
  }

  if (!error)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  v8 = v7;
  result = 0;
  *error = v7;
  return result;
}

@end