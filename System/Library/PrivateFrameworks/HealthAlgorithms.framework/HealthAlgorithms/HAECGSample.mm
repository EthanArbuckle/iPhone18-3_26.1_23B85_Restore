@interface HAECGSample
- (BOOL)parseRepresentation:(id)representation withMetadata:(id)metadata;
- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata;
- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (id)decodeHALV1Payload:(id *)payload withMetadata:(id)metadata;
- (id)decodeHALV2Payload:(id *)payload withMetadata:(id)metadata withPayloadVersion2:(BOOL)version2;
- (void)setTimestampWithRtpTicks:(unint64_t)ticks withMetadata:(id)metadata;
@end

@implementation HAECGSample

- (void)setTimestampWithRtpTicks:(unint64_t)ticks withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [metadataCopy objectForKeyedSubscript:@"timestampReference"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];
  v8 = [metadataCopy objectForKeyedSubscript:@"rtpTicksPerSecond"];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = [metadataCopy objectForKeyedSubscript:@"wallclockTimeReference"];
  [v10 doubleValue];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:(ticks - unsignedLongLongValue) / unsignedIntValue + v11];
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

- (id)decodeHALV2Payload:(id *)payload withMetadata:(id)metadata withPayloadVersion2:(BOOL)version2
{
  version2Copy = version2;
  self->_frequency = *(&payload->var5 + 1) * 0.000015259;
  [(HAECGSample *)self setTimestampWithRtpTicks:*(&payload->var4 + 1) withMetadata:metadata];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  if (payload->var2)
  {
    v8 = 0;
    v9 = (&payload->var6.var4 + 3);
    do
    {
      v10 = (*v9 >> 6) & 2;
      if (*v9 & 0xFFFFFD7F | *(v9 - 1) & 0x2660)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = CinnAlgs::convertAdcAcVolt(payload, v8, version2Copy);
      v13 = [HAECGData alloc];
      *&v14 = v12;
      v15 = [(HAECGData *)v13 initWithFlags:v11 value:v14];
      [v7 addObject:v15];
      v9 += 7;

      ++v8;
    }

    while (v8 < payload->var2);
  }

  return v7;
}

- (id)decodeHALV1Payload:(id *)payload withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *&v13[16] = 0u;
  v14 = 0u;
  *v13 = 0u;
  v13[4] = payload->var2;
  *&v13[9] = *(&payload->var4 + 1);
  *&v13[17] = *(&payload->var5 + 1);
  *&v13[25] = *(&payload->var5 + 5);
  if (v13[4])
  {
    v7 = 0;
    v8 = 28 * v13[4];
    v9 = &payload->var6 + 1;
    do
    {
      v10 = &v13[v7];
      *(v10 + 33) = *v9;
      *(v10 + 35) = *(v9 + 2);
      *(v10 + 47) = *(v9 + 3);
      v7 += 28;
      v9 += 18;
    }

    while (v8 != v7);
  }

  v11 = [(HAECGSample *)self decodeHALV2Payload:v13 withMetadata:metadataCopy withPayloadVersion2:0];

  return v11;
}

- (BOOL)parseRepresentation:(id)representation withMetadata:(id)metadata
{
  v41 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  metadataCopy = metadata;
  v35 = 0;
  if ([representationCopy length] <= 1)
  {
    v8 = ha_get_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.7(&v36, [representationCopy length]);
    }

    goto LABEL_28;
  }

  if (!metadataCopy)
  {
    v19 = ha_get_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HAECGSample parseRepresentation:v19 withMetadata:?];
    }

    goto LABEL_27;
  }

  v9 = [metadataCopy objectForKeyedSubscript:@"timestampReference"];
  if (!v9)
  {
LABEL_25:
    v19 = ha_get_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [HAECGSample parseRepresentation:v19 withMetadata:?];
    }

LABEL_27:

    goto LABEL_28;
  }

  v10 = [metadataCopy objectForKeyedSubscript:@"rtpTicksPerSecond"];
  if (!v10)
  {
LABEL_24:

    goto LABEL_25;
  }

  v11 = [metadataCopy objectForKeyedSubscript:@"wallclockTimeReference"];
  if (!v11)
  {
LABEL_23:

    goto LABEL_24;
  }

  v12 = [metadataCopy objectForKeyedSubscript:@"sessionIdentifier"];
  if (!v12)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = [metadataCopy objectForKeyedSubscript:@"ecgApp"];
  if (!v13)
  {

    goto LABEL_22;
  }

  v14 = [metadataCopy objectForKeyedSubscript:@"contactDetected"];

  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = [metadataCopy objectForKeyedSubscript:@"contactDetected"];
  bOOLValue = [v15 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_28;
  }

  [representationCopy getBytes:&v35 length:2];
  if (v35 > 0x105u)
  {
    if (v35 == 262)
    {
      if ([representationCopy length] != 13)
      {
        v34 = ha_get_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v36, [representationCopy length]);
        }

        goto LABEL_57;
      }

      [representationCopy getBytes:&v38 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v40 withMetadata:metadataCopy];
      if (!v39)
      {
        goto LABEL_41;
      }

      v23 = self->_flags | 1;
    }

    else
    {
      if (v35 != 265)
      {
        goto LABEL_28;
      }

      if ([representationCopy length] != 13)
      {
        v34 = ha_get_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v36, [representationCopy length]);
        }

        goto LABEL_57;
      }

      [representationCopy getBytes:&v38 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v40 withMetadata:metadataCopy];
      if (!v39)
      {
        goto LABEL_41;
      }

      v23 = self->_flags | 2;
    }

    self->_flags = v23;
    goto LABEL_41;
  }

  if (v35 == 170)
  {
    if ([representationCopy length] == 315)
    {
      [representationCopy getBytes:&v36 length:315];
      v24 = [(HAECGSample *)self decodeHALV1Payload:v37 withMetadata:metadataCopy];
      ecgData = self->_ecgData;
      self->_ecgData = v24;

      goto LABEL_41;
    }

    v34 = ha_get_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.4(&v38, [representationCopy length]);
    }

    goto LABEL_57;
  }

  if (v35 != 216)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if ([representationCopy length] != 483)
  {
    v34 = ha_get_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.3(&v38, [representationCopy length]);
    }

LABEL_57:

    goto LABEL_28;
  }

  [representationCopy getBytes:&v36 length:483];
  v17 = [(HAECGSample *)self decodeHALV2Payload:v37 withMetadata:metadataCopy withPayloadVersion2:1];
  v18 = self->_ecgData;
  self->_ecgData = v17;

LABEL_41:
  v26 = [metadataCopy objectForKeyedSubscript:@"sessionIdentifier"];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = v26;

  v28 = [metadataCopy objectForKeyedSubscript:@"ecgApp"];
  bOOLValue2 = [v28 BOOLValue];
  v30 = 4;
  if (!bOOLValue2)
  {
    v30 = 0;
  }

  self->_flags |= v30;

  v31 = [metadataCopy objectForKeyedSubscript:@"rightWrist"];
  bOOLValue3 = [v31 BOOLValue];
  v33 = 8;
  if (bOOLValue3)
  {
    v33 = 0;
  }

  self->_flags |= v33;

  v20 = 1;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = HAECGSample;
  v9 = [(HAECGSample *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(HAECGSample *)v9 parseRepresentation:representationCopy withMetadata:metadataCopy];
    v11 = v10;
  }

  return v10;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata
{
  representationCopy = representation;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = HAECGSample;
  v8 = [(HAECGSample *)&v12 init];
  v9 = v8;
  if (v8 && [(HAECGSample *)v8 parseRepresentation:representationCopy withMetadata:metadataCopy])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.1(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 13);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.3(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 483);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.4(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 315);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.7(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 2);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

@end