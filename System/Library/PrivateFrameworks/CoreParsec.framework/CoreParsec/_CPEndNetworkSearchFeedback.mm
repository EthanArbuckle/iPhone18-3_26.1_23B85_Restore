@interface _CPEndNetworkSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPEndNetworkSearchFeedback)init;
- (_CPEndNetworkSearchFeedback)initWithFacade:(id)a3;
- (_CPEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 parsecStatus:(id)a6 parsecDuration:(double)a7 fbq:(id)a8 partialClientIp:(id)a9 networkTimingData:(id)a10;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPEndNetworkSearchFeedback

- (unint64_t)hash
{
  v3 = (2654435761 * self->_responseSize) ^ (2654435761u * self->_timestamp);
  v4 = 2654435761 * self->_statusCode;
  v5 = v3 ^ v4 ^ [(NSString *)self->_uuid hash];
  v6 = [(NSString *)self->_parsecStatus hash];
  v7 = [(NSString *)self->_fbq hash];
  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v8.i64 = round(duration);
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = v6 ^ v7;
  v13 = (*vbslq_s8(vnegq_f64(v11), v9, v8).i64 * 2654435760.0) + vcvtd_n_u64_f64(duration - *v8.i64, 0x40uLL);
  v14 = [(NSString *)self->_partialClientIp hash];
  v15 = [(_CPNetworkTimingData *)self->_timingData hash];
  v16 = 2654435761 * self->_endpointType;
  v17 = 2654435761u * self->_rawResponseSize;
  v18 = 2654435761u * self->_decompressedResponseSize;
  return v5 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_edge hash]^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_39;
  }

  responseSize = self->_responseSize;
  if (responseSize != [v4 responseSize])
  {
    goto LABEL_39;
  }

  statusCode = self->_statusCode;
  if (statusCode != [v4 statusCode])
  {
    goto LABEL_39;
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self uuid];
  v9 = [v4 uuid];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_38;
  }

  v10 = [(_CPEndNetworkSearchFeedback *)self uuid];
  if (v10)
  {
    v11 = v10;
    v12 = [(_CPEndNetworkSearchFeedback *)self uuid];
    v13 = [v4 uuid];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
  v9 = [v4 parsecStatus];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_38;
  }

  v15 = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
  if (v15)
  {
    v16 = v15;
    v17 = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
    v18 = [v4 parsecStatus];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self fbq];
  v9 = [v4 fbq];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_38;
  }

  v20 = [(_CPEndNetworkSearchFeedback *)self fbq];
  if (v20)
  {
    v21 = v20;
    v22 = [(_CPEndNetworkSearchFeedback *)self fbq];
    v23 = [v4 fbq];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  duration = self->_duration;
  [v4 duration];
  if (duration != v26)
  {
    goto LABEL_39;
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
  v9 = [v4 partialClientIp];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_38;
  }

  v27 = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
  if (v27)
  {
    v28 = v27;
    v29 = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
    v30 = [v4 partialClientIp];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self timingData];
  v9 = [v4 timingData];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_38;
  }

  v32 = [(_CPEndNetworkSearchFeedback *)self timingData];
  if (v32)
  {
    v33 = v32;
    v34 = [(_CPEndNetworkSearchFeedback *)self timingData];
    v35 = [v4 timingData];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  endpointType = self->_endpointType;
  if (endpointType != [v4 endpointType])
  {
    goto LABEL_39;
  }

  rawResponseSize = self->_rawResponseSize;
  if (rawResponseSize != [v4 rawResponseSize])
  {
    goto LABEL_39;
  }

  decompressedResponseSize = self->_decompressedResponseSize;
  if (decompressedResponseSize != [v4 decompressedResponseSize])
  {
    goto LABEL_39;
  }

  v8 = [(_CPEndNetworkSearchFeedback *)self edge];
  v9 = [v4 edge];
  if ((v8 != 0) == (v9 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  v40 = [(_CPEndNetworkSearchFeedback *)self edge];
  if (!v40)
  {

LABEL_42:
    v45 = 1;
    goto LABEL_40;
  }

  v41 = v40;
  v42 = [(_CPEndNetworkSearchFeedback *)self edge];
  v43 = [v4 edge];
  v44 = [v42 isEqual:v43];

  if (v44)
  {
    goto LABEL_42;
  }

LABEL_39:
  v45 = 0;
LABEL_40:

  return v45;
}

- (void)writeTo:(id)a3
{
  v25 = a3;
  if ([(_CPEndNetworkSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPEndNetworkSearchFeedback *)self responseSize])
  {
    responseSize = self->_responseSize;
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPEndNetworkSearchFeedback *)self statusCode])
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_CPEndNetworkSearchFeedback *)self uuid];

  if (v7)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  v9 = [(_CPEndNetworkSearchFeedback *)self parsecStatus];

  if (v9)
  {
    parsecStatus = self->_parsecStatus;
    PBDataWriterWriteStringField();
  }

  v11 = [(_CPEndNetworkSearchFeedback *)self fbq];

  if (v11)
  {
    fbq = self->_fbq;
    PBDataWriterWriteStringField();
  }

  [(_CPEndNetworkSearchFeedback *)self duration];
  if (v13 != 0.0)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v15 = [(_CPEndNetworkSearchFeedback *)self partialClientIp];

  if (v15)
  {
    partialClientIp = self->_partialClientIp;
    PBDataWriterWriteStringField();
  }

  v17 = [(_CPEndNetworkSearchFeedback *)self timingData];

  if (v17)
  {
    v18 = [(_CPEndNetworkSearchFeedback *)self timingData];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPEndNetworkSearchFeedback *)self endpointType])
  {
    endpointType = self->_endpointType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPEndNetworkSearchFeedback *)self rawResponseSize])
  {
    rawResponseSize = self->_rawResponseSize;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPEndNetworkSearchFeedback *)self decompressedResponseSize])
  {
    decompressedResponseSize = self->_decompressedResponseSize;
    PBDataWriterWriteUint64Field();
  }

  v22 = [(_CPEndNetworkSearchFeedback *)self edge];

  v23 = v25;
  if (v22)
  {
    edge = self->_edge;
    PBDataWriterWriteStringField();
    v23 = v25;
  }
}

- (_CPEndNetworkSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPEndNetworkSearchFeedback;
  v2 = [(_CPEndNetworkSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPEndNetworkSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 parsecStatus:(id)a6 parsecDuration:(double)a7 fbq:(id)a8 partialClientIp:(id)a9 networkTimingData:(id)a10
{
  v17 = a3;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [(_CPEndNetworkSearchFeedback *)self init];
  if (v22)
  {
    v23 = [v17 uuid];

    if (v23)
    {
      v24 = [v17 uuid];
      [(_CPEndNetworkSearchFeedback *)v22 setUuid:v24];
    }

    if (a4)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setResponseSize:a4];
    }

    if (a5)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setStatusCode:a5];
    }

    [(_CPEndNetworkSearchFeedback *)v22 setParsecStatus:v18];
    if (a7 != 0.0)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setDuration:a7];
    }

    [(_CPEndNetworkSearchFeedback *)v22 setFbq:v19];
    [(_CPEndNetworkSearchFeedback *)v22 setPartialClientIp:v20];
    if ([v21 count])
    {
      v25 = [[_CPNetworkTimingData alloc] initWithTelemetryDictionary:v21];
      [(_CPEndNetworkSearchFeedback *)v22 setTimingData:v25];
    }

    -[_CPEndNetworkSearchFeedback setEndpointType:](v22, "setEndpointType:", [v17 endpointType]);
    v26 = v22;
  }

  return v22;
}

- (_CPEndNetworkSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPEndNetworkSearchFeedback *)self init];
  if (v5)
  {
    -[_CPEndNetworkSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 uuid];
    [(_CPEndNetworkSearchFeedback *)v5 setUuid:v6];

    if ([v4 responseSize])
    {
      -[_CPEndNetworkSearchFeedback setResponseSize:](v5, "setResponseSize:", [v4 responseSize]);
    }

    if ([v4 statusCode])
    {
      -[_CPEndNetworkSearchFeedback setStatusCode:](v5, "setStatusCode:", [v4 statusCode]);
    }

    v7 = [v4 networkTimingData];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [_CPNetworkTimingData alloc];
      v10 = [v4 networkTimingData];
      v11 = [(_CPNetworkTimingData *)v9 initWithTelemetryDictionary:v10];
      [(_CPEndNetworkSearchFeedback *)v5 setTimingData:v11];
    }

    v12 = [v4 edge];
    [(_CPEndNetworkSearchFeedback *)v5 setEdge:v12];

    v13 = v5;
  }

  return v5;
}

@end