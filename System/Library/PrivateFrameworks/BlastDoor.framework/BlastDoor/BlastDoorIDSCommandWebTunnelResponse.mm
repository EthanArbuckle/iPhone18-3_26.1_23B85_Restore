@interface BlastDoorIDSCommandWebTunnelResponse
- (BlastDoorAPSUserPayloadHttpHeaders)httpHeaders;
- (BlastDoorIDSCommandWebTunnelResponse)init;
- (NSData)httpBody;
- (NSString)description;
- (NSString)httpBodyUrl;
- (NSString)httpErrorMsg;
- (NSString)httpUrl;
- (int64_t)epochTimeNanos;
- (int64_t)httpResponseStatus;
- (int64_t)messageId;
- (int64_t)responseStatus;
@end

@implementation BlastDoorIDSCommandWebTunnelResponse

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse, sizeof(__dst));
  memcpy(v6, self + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse, sizeof(v6));
  sub_2145923AC(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (int64_t)messageId
{
  if (self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 8])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse];
  }
}

- (int64_t)responseStatus
{
  if (self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 40])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 32];
  }
}

- (int64_t)epochTimeNanos
{
  if (self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 72])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 64];
  }
}

- (NSString)httpUrl
{
  if (*&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 88])
  {
    v2 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 80];
    v3 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 88];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorAPSUserPayloadHttpHeaders)httpHeaders
{
  v2 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 96];
  v3 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 104];
  v4 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 128];
  v5 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 160];
  v23 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 144];
  v24 = v5;
  v25 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 176];
  v21 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 112];
  v22 = v4;
  v28 = v23;
  v29 = v5;
  v30 = v25;
  v26 = v21;
  v27 = v4;
  if (v3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
    *v9 = v2;
    *(v9 + 1) = v3;
    v10 = v29;
    *(v9 + 3) = v28;
    *(v9 + 4) = v10;
    *(v9 + 5) = v30;
    v11 = v27;
    *(v9 + 1) = v26;
    *(v9 + 2) = v11;
    v15[0] = v2;
    v15[1] = v3;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_21454AF44(v15, v14);
    v13.receiver = v8;
    v13.super_class = v7;
    v6 = [(BlastDoorIDSCommandWebTunnelResponse *)&v13 init];
  }

  return v6;
}

- (NSData)httpBody
{
  v2 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 200];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 192];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)httpBodyUrl
{
  if (*&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 216])
  {
    v2 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 208];
    v3 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 216];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)httpResponseStatus
{
  if (self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 248])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 240];
  }
}

- (NSString)httpErrorMsg
{
  if (*&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 264])
  {
    v2 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 256];
    v3 = *&self->iDSCommandWebTunnelResponse[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 264];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorIDSCommandWebTunnelResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end