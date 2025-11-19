@interface BMHomeKitClientBase
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMHomeKitClientBase)initWithDateInterval:(id)a3 homeUniqueIdentifier:(id)a4 homeOccupancy:(int)a5 source:(id)a6 clientName:(id)a7 eventCorrelationIdentifier:(id)a8;
- (BMHomeKitClientBase)initWithProto:(id)a3;
- (BMHomeKitClientBase)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientBase

- (BMHomeKitClientBase)initWithDateInterval:(id)a3 homeUniqueIdentifier:(id)a4 homeOccupancy:(int)a5 source:(id)a6 clientName:(id)a7 eventCorrelationIdentifier:(id)a8
{
  v14 = a3;
  v24 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = BMHomeKitClientBase;
  v18 = [(BMHomeKitClientBase *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dateInterval, a3);
    v20 = [v14 startDate];
    v19->_absoluteTimestamp = MEMORY[0x1865F69C0]();

    [v14 duration];
    v19->_duration = v21;
    objc_storeStrong(&v19->_homeUniqueIdentifier, a4);
    v19->_homeOccupancy = a5;
    objc_storeStrong(&v19->_source, a6);
    objc_storeStrong(&v19->_clientName, a7);
    objc_storeStrong(&v19->_eventCorrelationIdentifier, a8);
  }

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_homeOccupancy];
  v6 = [v3 stringWithFormat:@"BMHomeKitClientBase homeUUID:%@, homeOccupancy:%@, source:%@, clientName:%@", homeUniqueIdentifier, v5, self->_source, self->_clientName];

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMHomeKitClientBase eventWithData:v7 dataVersion:?];
    }

    v8 = 0;
  }

  else
  {
    v8 = [[a1 alloc] initWithProtoData:v6];
  }

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMHomeKitClientBase *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMHomeKitClientBase)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(BMHomeKitClientBase *)self initWithProto:v17];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AB80];
  v6 = v4;
  v7 = [v5 alloc];
  v8 = MEMORY[0x1E695DF00];
  [v6 absoluteTimestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  [v6 duration];
  v10 = [v7 initWithStartDate:v9 duration:?];

  v11 = [v6 homeUniqueIdentifier];
  v12 = [v6 homeOccupancy];
  v13 = [v6 source];
  v14 = [v6 clientName];
  v15 = [v6 eventCorrelationIdentifier];

  self = [(BMHomeKitClientBase *)self initWithDateInterval:v10 homeUniqueIdentifier:v11 homeOccupancy:v12 source:v13 clientName:v14 eventCorrelationIdentifier:v15];
  v16 = self;
LABEL_8:

  return v16;
}

- (BMHomeKitClientBase)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBHomeKitClientBase alloc] initWithData:v4];

    self = [(BMHomeKitClientBase *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setDuration:self->_duration];
  [v3 setHomeUniqueIdentifier:self->_homeUniqueIdentifier];
  [v3 setHomeOccupancy:self->_homeOccupancy];
  [v3 setSource:self->_source];
  [v3 setClientName:self->_clientName];
  [v3 setEventCorrelationIdentifier:self->_eventCorrelationIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v9 = v8;
  v10 = [(BMHomeKitClientBase *)self dateInterval];
  if (!v10)
  {
    v4 = [v9 dateInterval];
    if (!v4)
    {
      v30 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v3 = [(BMHomeKitClientBase *)self dateInterval];
  v5 = [v9 dateInterval];
  v30 = [v3 isEqual:v5];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [(BMHomeKitClientBase *)self homeUniqueIdentifier];
  if (!v12)
  {
    v5 = [v9 homeUniqueIdentifier];
    if (!v5)
    {
      v29 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v3 = [(BMHomeKitClientBase *)self homeUniqueIdentifier];
  v13 = [v9 homeUniqueIdentifier];
  v29 = [v3 isEqual:v13];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  v28 = [(BMHomeKitClientBase *)self homeOccupancy];
  v14 = [v9 homeOccupancy];
  v15 = [(BMHomeKitClientBase *)self source];
  if (!v15)
  {
    v6 = [v9 source];
    if (!v6)
    {
      v17 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  v3 = [(BMHomeKitClientBase *)self source];
  v16 = [v9 source];
  v17 = [v3 isEqual:v16];

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  v18 = [(BMHomeKitClientBase *)self clientName];
  if (!v18)
  {
    v3 = [v9 clientName];
    if (!v3)
    {
      v21 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  v19 = [(BMHomeKitClientBase *)self clientName];
  v20 = [v9 clientName];
  v21 = [v19 isEqual:v20];

  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_27:

  v22 = [(BMHomeKitClientBase *)self eventCorrelationIdentifier];
  if (!v22)
  {
    v3 = [v9 eventCorrelationIdentifier];
    if (!v3)
    {
      v25 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  v23 = [(BMHomeKitClientBase *)self eventCorrelationIdentifier];
  v24 = [v9 eventCorrelationIdentifier];
  v25 = [v23 isEqual:v24];

  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_33:

  v26 = v30 & v29;
  if (v28 != v14)
  {
    v26 = 0;
  }

  v11 = v26 & v17 & v21 & v25;

LABEL_36:
  return v11;
}

@end