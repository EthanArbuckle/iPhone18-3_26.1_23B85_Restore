@interface _CPEndNetworkSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPEndNetworkSearchFeedback)init;
- (_CPEndNetworkSearchFeedback)initWithFacade:(id)facade;
- (_CPEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code parsecStatus:(id)status parsecDuration:(double)duration fbq:(id)fbq partialClientIp:(id)ip networkTimingData:(id)self0;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_39;
  }

  responseSize = self->_responseSize;
  if (responseSize != [equalCopy responseSize])
  {
    goto LABEL_39;
  }

  statusCode = self->_statusCode;
  if (statusCode != [equalCopy statusCode])
  {
    goto LABEL_39;
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self uuid];
  uuid2 = [equalCopy uuid];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_38;
  }

  uuid3 = [(_CPEndNetworkSearchFeedback *)self uuid];
  if (uuid3)
  {
    v11 = uuid3;
    uuid4 = [(_CPEndNetworkSearchFeedback *)self uuid];
    uuid5 = [equalCopy uuid];
    v14 = [uuid4 isEqual:uuid5];

    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
  uuid2 = [equalCopy parsecStatus];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_38;
  }

  parsecStatus = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
  if (parsecStatus)
  {
    v16 = parsecStatus;
    parsecStatus2 = [(_CPEndNetworkSearchFeedback *)self parsecStatus];
    parsecStatus3 = [equalCopy parsecStatus];
    v19 = [parsecStatus2 isEqual:parsecStatus3];

    if (!v19)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self fbq];
  uuid2 = [equalCopy fbq];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_38;
  }

  v20 = [(_CPEndNetworkSearchFeedback *)self fbq];
  if (v20)
  {
    v21 = v20;
    v22 = [(_CPEndNetworkSearchFeedback *)self fbq];
    v23 = [equalCopy fbq];
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
  [equalCopy duration];
  if (duration != v26)
  {
    goto LABEL_39;
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
  uuid2 = [equalCopy partialClientIp];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_38;
  }

  partialClientIp = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
  if (partialClientIp)
  {
    v28 = partialClientIp;
    partialClientIp2 = [(_CPEndNetworkSearchFeedback *)self partialClientIp];
    partialClientIp3 = [equalCopy partialClientIp];
    v31 = [partialClientIp2 isEqual:partialClientIp3];

    if (!v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self timingData];
  uuid2 = [equalCopy timingData];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_38;
  }

  timingData = [(_CPEndNetworkSearchFeedback *)self timingData];
  if (timingData)
  {
    v33 = timingData;
    timingData2 = [(_CPEndNetworkSearchFeedback *)self timingData];
    timingData3 = [equalCopy timingData];
    v36 = [timingData2 isEqual:timingData3];

    if (!v36)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  endpointType = self->_endpointType;
  if (endpointType != [equalCopy endpointType])
  {
    goto LABEL_39;
  }

  rawResponseSize = self->_rawResponseSize;
  if (rawResponseSize != [equalCopy rawResponseSize])
  {
    goto LABEL_39;
  }

  decompressedResponseSize = self->_decompressedResponseSize;
  if (decompressedResponseSize != [equalCopy decompressedResponseSize])
  {
    goto LABEL_39;
  }

  uuid = [(_CPEndNetworkSearchFeedback *)self edge];
  uuid2 = [equalCopy edge];
  if ((uuid != 0) == (uuid2 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  edge = [(_CPEndNetworkSearchFeedback *)self edge];
  if (!edge)
  {

LABEL_42:
    v45 = 1;
    goto LABEL_40;
  }

  v41 = edge;
  edge2 = [(_CPEndNetworkSearchFeedback *)self edge];
  edge3 = [equalCopy edge];
  v44 = [edge2 isEqual:edge3];

  if (v44)
  {
    goto LABEL_42;
  }

LABEL_39:
  v45 = 0;
LABEL_40:

  return v45;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  uuid = [(_CPEndNetworkSearchFeedback *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  parsecStatus = [(_CPEndNetworkSearchFeedback *)self parsecStatus];

  if (parsecStatus)
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

  partialClientIp = [(_CPEndNetworkSearchFeedback *)self partialClientIp];

  if (partialClientIp)
  {
    partialClientIp = self->_partialClientIp;
    PBDataWriterWriteStringField();
  }

  timingData = [(_CPEndNetworkSearchFeedback *)self timingData];

  if (timingData)
  {
    timingData2 = [(_CPEndNetworkSearchFeedback *)self timingData];
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

  edge = [(_CPEndNetworkSearchFeedback *)self edge];

  v23 = toCopy;
  if (edge)
  {
    edge = self->_edge;
    PBDataWriterWriteStringField();
    v23 = toCopy;
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

- (_CPEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code parsecStatus:(id)status parsecDuration:(double)duration fbq:(id)fbq partialClientIp:(id)ip networkTimingData:(id)self0
{
  searchCopy = search;
  statusCopy = status;
  fbqCopy = fbq;
  ipCopy = ip;
  dataCopy = data;
  v22 = [(_CPEndNetworkSearchFeedback *)self init];
  if (v22)
  {
    uuid = [searchCopy uuid];

    if (uuid)
    {
      uuid2 = [searchCopy uuid];
      [(_CPEndNetworkSearchFeedback *)v22 setUuid:uuid2];
    }

    if (size)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setResponseSize:size];
    }

    if (code)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setStatusCode:code];
    }

    [(_CPEndNetworkSearchFeedback *)v22 setParsecStatus:statusCopy];
    if (duration != 0.0)
    {
      [(_CPEndNetworkSearchFeedback *)v22 setDuration:duration];
    }

    [(_CPEndNetworkSearchFeedback *)v22 setFbq:fbqCopy];
    [(_CPEndNetworkSearchFeedback *)v22 setPartialClientIp:ipCopy];
    if ([dataCopy count])
    {
      v25 = [[_CPNetworkTimingData alloc] initWithTelemetryDictionary:dataCopy];
      [(_CPEndNetworkSearchFeedback *)v22 setTimingData:v25];
    }

    -[_CPEndNetworkSearchFeedback setEndpointType:](v22, "setEndpointType:", [searchCopy endpointType]);
    v26 = v22;
  }

  return v22;
}

- (_CPEndNetworkSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPEndNetworkSearchFeedback *)self init];
  if (v5)
  {
    -[_CPEndNetworkSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    uuid = [facadeCopy uuid];
    [(_CPEndNetworkSearchFeedback *)v5 setUuid:uuid];

    if ([facadeCopy responseSize])
    {
      -[_CPEndNetworkSearchFeedback setResponseSize:](v5, "setResponseSize:", [facadeCopy responseSize]);
    }

    if ([facadeCopy statusCode])
    {
      -[_CPEndNetworkSearchFeedback setStatusCode:](v5, "setStatusCode:", [facadeCopy statusCode]);
    }

    networkTimingData = [facadeCopy networkTimingData];
    v8 = [networkTimingData count];

    if (v8)
    {
      v9 = [_CPNetworkTimingData alloc];
      networkTimingData2 = [facadeCopy networkTimingData];
      v11 = [(_CPNetworkTimingData *)v9 initWithTelemetryDictionary:networkTimingData2];
      [(_CPEndNetworkSearchFeedback *)v5 setTimingData:v11];
    }

    edge = [facadeCopy edge];
    [(_CPEndNetworkSearchFeedback *)v5 setEdge:edge];

    v13 = v5;
  }

  return v5;
}

@end