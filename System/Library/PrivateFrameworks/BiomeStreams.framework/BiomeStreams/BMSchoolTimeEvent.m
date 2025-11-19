@interface BMSchoolTimeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSchoolTimeEvent)initWithProto:(id)a3;
- (BMSchoolTimeEvent)initWithProtoData:(id)a3;
- (BMSchoolTimeEvent)initWithStarting:(BOOL)a3 reason:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSchoolTimeEvent

- (BMSchoolTimeEvent)initWithStarting:(BOOL)a3 reason:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BMSchoolTimeEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_starting = a3;
    result->_reason = a4;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v5 = [v3 initWithFormat:@"SchoolTimeEvent event with starting: %@", v4];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMSchoolTimeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSchoolTimeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 starting];
      v7 = [v5 reason];
      v8 = v7;
      if (v7 >= 3)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSchoolTimeEvent initWithProto:v8];
        }

        v9 = 0;
      }

      else
      {
        v9 = v7;
      }

      self = [(BMSchoolTimeEvent *)self initWithStarting:v6 reason:v9];
      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMSchoolTimeEvent *)self initWithProto:v5];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMSchoolTimeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSchoolTimeEvent alloc] initWithData:v4];

    self = [(BMSchoolTimeEvent *)self initWithProto:v5];
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
  [v3 setStarting:{-[BMSchoolTimeEvent isStarting](self, "isStarting")}];
  v4 = [(BMSchoolTimeEvent *)self reason];
  if (v4 >= 3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMSchoolTimeEvent *)v4 proto];
    }

    v5 = 0;
  }

  else
  {
    [v3 setReason:v4];
    v5 = v3;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_reason];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    starting = self->_starting;
    if (starting == [v5 isStarting])
    {
      reason = self->_reason;
      v8 = reason == [v5 reason];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end