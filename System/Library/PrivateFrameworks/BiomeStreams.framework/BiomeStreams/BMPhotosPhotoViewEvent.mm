@interface BMPhotosPhotoViewEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPhotosPhotoViewEvent)initWithCoder:(id)a3;
- (BMPhotosPhotoViewEvent)initWithProto:(id)a3;
- (BMPhotosPhotoViewEvent)initWithProtoData:(id)a3;
- (BMPhotosPhotoViewEvent)initWithUniqueId:(id)a3 personaId:(id)a4 locations:(id)a5 absoluteTimestamp:(double)a6 contentProtection:(id)a7;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMPhotosPhotoViewEvent

- (BMPhotosPhotoViewEvent)initWithUniqueId:(id)a3 personaId:(id)a4 locations:(id)a5 absoluteTimestamp:(double)a6 contentProtection:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosPhotoViewEvent initWithUniqueId:a2 personaId:self locations:? absoluteTimestamp:? contentProtection:?];
    if (v16)
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
    objc_storeStrong(&v18->_locations, a5);
    v19->_absoluteTimestamp = a6;
    objc_storeStrong(&v19->_uniqueId, a3);
    objc_storeStrong(&v19->_personaId, a4);
    objc_storeStrong(&v19->_contentProtection, a7);
  }

  return v19;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosPhotoViewEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMPhotosPhotoViewEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMPhotosPhotoViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMPhotosPhotoViewEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMPhotosPhotoViewEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosPhotoViewEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMPhotosPhotoViewEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPhotosPhotoViewEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasAbsoluteTimestamp]&& ([v5 hasUniqueId]& 1) != 0)
      {
        v6 = [v5 uniqueId];
        v7 = [v5 personaId];
        v8 = [v5 locations];
        [v5 absoluteTimestamp];
        v10 = v9;
        v11 = [v5 contentProtection];
        self = [(BMPhotosPhotoViewEvent *)self initWithUniqueId:v6 personaId:v7 locations:v8 absoluteTimestamp:v11 contentProtection:v10];

        v12 = self;
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

    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (BMPhotosPhotoViewEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPhotosPhotoViewEvent alloc] initWithData:v4];

    self = [(BMPhotosPhotoViewEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMPhotosPhotoViewEvent *)self locations];
  v5 = [v4 mutableCopy];
  [v3 setLocations:v5];

  [(BMPhotosPhotoViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v6 = [(BMPhotosPhotoViewEvent *)self uniqueId];
  [v3 setUniqueId:v6];

  v7 = [(BMPhotosPhotoViewEvent *)self personaId];
  [v3 setPersonaId:v7];

  v8 = [(BMPhotosPhotoViewEvent *)self contentProtection];
  [v3 setContentProtection:v8];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_uniqueId hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPhotosPhotoViewEvent *)self proto];
    v7 = [v5 proto];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  if ([(NSArray *)self->_locations count]&& self->_uniqueId)
  {
    return 1;
  }

  if (!a4)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  v8 = v7;
  result = 0;
  *a4 = v7;
  return result;
}

@end