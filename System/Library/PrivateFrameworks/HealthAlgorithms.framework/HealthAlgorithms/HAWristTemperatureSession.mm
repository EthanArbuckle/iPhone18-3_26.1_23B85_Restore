@interface HAWristTemperatureSession
- (BOOL)parsePacket:()variant<PackedWristTemperatureHeaderV0;
- (HAWristTemperatureEnumerator)wristTemperatureEnumerator;
- (HAWristTemperatureSession)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(id)timestamp;
- (id)sessionIntervalV0WithStartTime:(double)time;
@end

@implementation HAWristTemperatureSession

- (id)sessionIntervalV0WithStartTime:(double)time
{
  representation = [(HAWristTemperatureSession *)self representation];
  [representation getBytes:v12 range:{-[HAWristTemperatureSession firstSampleOffset](self, "firstSampleOffset") + 21 * -[HAWristTemperatureSession numWristTemperatures](self, "numWristTemperatures") - 21, 21}];

  if ([(HAWristTemperatureSession *)self numWristTemperatures])
  {
    LODWORD(v6) = v12[0];
    v7 = v6 / 1000.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:time];
  v10 = [v8 initWithStartDate:v9 duration:v7];

  return v10;
}

- (BOOL)parsePacket:()variant<PackedWristTemperatureHeaderV0
{
  v11 = &selfCopy;
  selfCopy = self;
  var6_low = LODWORD(a3->var0.var0.var1.var0.var6);
  if (var6_low == -1)
  {
    goto LABEL_7;
  }

  v13 = &v11;
  v5 = (off_286352738[var6_low])(&v13, a3);
  if (v5)
  {
    v6 = LODWORD(a3->var0.var0.var1.var0.var6);
    if (v6 != -1)
    {
      v13 = &v11;
      v7 = (off_286352750[v6])(&v13, a3);
      selfCopy->_isPublishable = v7;
      v8 = LODWORD(a3->var0.var0.var1.var0.var6);
      if (v8 != -1)
      {
        v13 = &v11;
        v9 = (off_286352768[v8])(&v13, a3);
        selfCopy->_c0UserDeviceCorrectionCoefficient = v9;
        return v5;
      }
    }

LABEL_7:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return v5;
}

- (HAWristTemperatureSession)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(id)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length])
  {
    v17.receiver = self;
    v17.super_class = HAWristTemperatureSession;
    v8 = [(HAWristTemperatureSession *)&v17 init];
    v9 = v8;
    if (v8)
    {
      [representationCopy getBytes:&v8->_dataVersion length:1];
      objc_storeStrong(&v9->_representation, representation);
      dataVersion = v9->_dataVersion;
      if (dataVersion == 2)
      {
        v19 = 2;
        v11 = [(HAWristTemperatureSession *)v9 parsePacket:v18];
      }

      else if (dataVersion == 1)
      {
        v19 = 1;
        v11 = [(HAWristTemperatureSession *)v9 parsePacket:v18];
      }

      else
      {
        if (v9->_dataVersion)
        {
          v14 = ha_get_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [HAWristTemperatureSession initWithBinarySampleRepresentation:v14 metadata:? timestamp:?];
          }

          goto LABEL_19;
        }

        v19 = 0;
        v11 = [(HAWristTemperatureSession *)v9 parsePacket:v18];
      }

      if (v11)
      {
        self = v9;
        selfCopy = self;
        goto LABEL_20;
      }

LABEL_19:
      selfCopy = 0;
      self = v9;
      goto LABEL_20;
    }

    self = 0;
  }

  else
  {
    v12 = ha_get_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      -[HAWristTemperatureSession initWithBinarySampleRepresentation:metadata:timestamp:].cold.2(v18, [representationCopy length]);
    }
  }

  selfCopy = 0;
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HAWristTemperatureEnumerator)wristTemperatureEnumerator
{
  v3 = [HAWristTemperatureEnumerator alloc];
  representation = [(HAWristTemperatureSession *)self representation];
  sessionInterval = [(HAWristTemperatureSession *)self sessionInterval];
  startDate = [sessionInterval startDate];
  v7 = [(HAWristTemperatureEnumerator *)v3 initWithData:representation withSessionStartDate:startDate numWristTemperatures:[(HAWristTemperatureSession *)self numWristTemperatures] firstSampleOffset:[(HAWristTemperatureSession *)self firstSampleOffset]];

  return v7;
}

- (void)initWithBinarySampleRepresentation:(unsigned __int8 *)a1 metadata:(NSObject *)a2 timestamp:.cold.1(unsigned __int8 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_251282000, a2, OS_LOG_TYPE_FAULT, "unrecognized wrist temperature reading data version (%uhh)", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithBinarySampleRepresentation:(_DWORD *)a1 metadata:(uint64_t)a2 timestamp:.cold.2(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 1);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

@end