@interface HAECGSample
- (BOOL)parseRepresentation:(id)a3 withMetadata:(id)a4;
- (HAECGSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4;
- (HAECGSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (id)decodeHALV1Payload:(id *)a3 withMetadata:(id)a4;
- (id)decodeHALV2Payload:(id *)a3 withMetadata:(id)a4 withPayloadVersion2:(BOOL)a5;
- (void)setTimestampWithRtpTicks:(unint64_t)a3 withMetadata:(id)a4;
@end

@implementation HAECGSample

- (void)setTimestampWithRtpTicks:(unint64_t)a3 withMetadata:(id)a4
{
  v14 = a4;
  v6 = [v14 objectForKeyedSubscript:@"timestampReference"];
  v7 = [v6 unsignedLongLongValue];
  v8 = [v14 objectForKeyedSubscript:@"rtpTicksPerSecond"];
  v9 = [v8 unsignedIntValue];
  v10 = [v14 objectForKeyedSubscript:@"wallclockTimeReference"];
  [v10 doubleValue];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:(a3 - v7) / v9 + v11];
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

- (id)decodeHALV2Payload:(id *)a3 withMetadata:(id)a4 withPayloadVersion2:(BOOL)a5
{
  v5 = a5;
  self->_frequency = *(&a3->var5 + 1) * 0.000015259;
  [(HAECGSample *)self setTimestampWithRtpTicks:*(&a3->var4 + 1) withMetadata:a4];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  if (a3->var2)
  {
    v8 = 0;
    v9 = (&a3->var6.var4 + 3);
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

      v12 = CinnAlgs::convertAdcAcVolt(a3, v8, v5);
      v13 = [HAECGData alloc];
      *&v14 = v12;
      v15 = [(HAECGData *)v13 initWithFlags:v11 value:v14];
      [v7 addObject:v15];
      v9 += 7;

      ++v8;
    }

    while (v8 < a3->var2);
  }

  return v7;
}

- (id)decodeHALV1Payload:(id *)a3 withMetadata:(id)a4
{
  v6 = a4;
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
  v13[4] = a3->var2;
  *&v13[9] = *(&a3->var4 + 1);
  *&v13[17] = *(&a3->var5 + 1);
  *&v13[25] = *(&a3->var5 + 5);
  if (v13[4])
  {
    v7 = 0;
    v8 = 28 * v13[4];
    v9 = &a3->var6 + 1;
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

  v11 = [(HAECGSample *)self decodeHALV2Payload:v13 withMetadata:v6 withPayloadVersion2:0];

  return v11;
}

- (BOOL)parseRepresentation:(id)a3 withMetadata:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  if ([v6 length] <= 1)
  {
    v8 = ha_get_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.7(&v36, [v6 length]);
    }

    goto LABEL_28;
  }

  if (!v7)
  {
    v19 = ha_get_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HAECGSample parseRepresentation:v19 withMetadata:?];
    }

    goto LABEL_27;
  }

  v9 = [v7 objectForKeyedSubscript:@"timestampReference"];
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

  v10 = [v7 objectForKeyedSubscript:@"rtpTicksPerSecond"];
  if (!v10)
  {
LABEL_24:

    goto LABEL_25;
  }

  v11 = [v7 objectForKeyedSubscript:@"wallclockTimeReference"];
  if (!v11)
  {
LABEL_23:

    goto LABEL_24;
  }

  v12 = [v7 objectForKeyedSubscript:@"sessionIdentifier"];
  if (!v12)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = [v7 objectForKeyedSubscript:@"ecgApp"];
  if (!v13)
  {

    goto LABEL_22;
  }

  v14 = [v7 objectForKeyedSubscript:@"contactDetected"];

  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = [v7 objectForKeyedSubscript:@"contactDetected"];
  v16 = [v15 BOOLValue];

  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  [v6 getBytes:&v35 length:2];
  if (v35 > 0x105u)
  {
    if (v35 == 262)
    {
      if ([v6 length] != 13)
      {
        v34 = ha_get_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v36, [v6 length]);
        }

        goto LABEL_57;
      }

      [v6 getBytes:&v38 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v40 withMetadata:v7];
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

      if ([v6 length] != 13)
      {
        v34 = ha_get_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v36, [v6 length]);
        }

        goto LABEL_57;
      }

      [v6 getBytes:&v38 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v40 withMetadata:v7];
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
    if ([v6 length] == 315)
    {
      [v6 getBytes:&v36 length:315];
      v24 = [(HAECGSample *)self decodeHALV1Payload:v37 withMetadata:v7];
      ecgData = self->_ecgData;
      self->_ecgData = v24;

      goto LABEL_41;
    }

    v34 = ha_get_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.4(&v38, [v6 length]);
    }

    goto LABEL_57;
  }

  if (v35 != 216)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if ([v6 length] != 483)
  {
    v34 = ha_get_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.3(&v38, [v6 length]);
    }

LABEL_57:

    goto LABEL_28;
  }

  [v6 getBytes:&v36 length:483];
  v17 = [(HAECGSample *)self decodeHALV2Payload:v37 withMetadata:v7 withPayloadVersion2:1];
  v18 = self->_ecgData;
  self->_ecgData = v17;

LABEL_41:
  v26 = [v7 objectForKeyedSubscript:@"sessionIdentifier"];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = v26;

  v28 = [v7 objectForKeyedSubscript:@"ecgApp"];
  v29 = [v28 BOOLValue];
  v30 = 4;
  if (!v29)
  {
    v30 = 0;
  }

  self->_flags |= v30;

  v31 = [v7 objectForKeyedSubscript:@"rightWrist"];
  v32 = [v31 BOOLValue];
  v33 = 8;
  if (v32)
  {
    v33 = 0;
  }

  self->_flags |= v33;

  v20 = 1;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HAECGSample;
  v9 = [(HAECGSample *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(HAECGSample *)v9 parseRepresentation:v7 withMetadata:v8];
    v11 = v10;
  }

  return v10;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HAECGSample;
  v8 = [(HAECGSample *)&v12 init];
  v9 = v8;
  if (v8 && [(HAECGSample *)v8 parseRepresentation:v6 withMetadata:v7])
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