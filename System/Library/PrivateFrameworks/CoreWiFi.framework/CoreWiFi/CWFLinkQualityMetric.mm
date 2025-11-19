@interface CWFLinkQualityMetric
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLinkQualityMetric:(id)a3;
- (CWFLinkQualityMetric)initWithCoder:(id)a3;
- (NSArray)mLOLinks;
- (NSString)description;
- (double)rxRate;
- (double)txRate;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)RSSI;
- (int64_t)noise;
- (unint64_t)CCA;
- (unint64_t)txPacketErrorRate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFLinkQualityMetric

- (double)rxRate
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  v4 = 0.0;
  if (v2 && [v2 length] == 472)
  {
    v4 = (*([v3 bytes] + 72) / 0x3E8u);
  }

  return v4;
}

- (int64_t)RSSI
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  if (v2 && [v2 length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *v4))
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)CCA
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  if (v2 && [v2 length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *(v4 + 18)))
  {
    v5 = *(v4 + 19);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)txRate
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  v4 = 0.0;
  if (v2 && [v2 length] == 472)
  {
    v4 = (*([v3 bytes] + 64) / 0x3E8u);
  }

  return v4;
}

- (int64_t)noise
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  if (v2 && [v2 length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *(v4 + 14)))
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v4 = v3;
  if (v3 && [v3 length] == 472)
  {
    v5 = [v4 bytes];
    v6 = [MEMORY[0x1E696AD60] string];
    v8 = v6;
    if (*v5)
    {
      [v6 appendFormat:@"rssi=%ddBm ", *(v5 + 4)];
    }

    if (*(v5 + 8))
    {
      objc_msgSend(v8, "appendString:", @"per_ant_rssi=(");
      [v8 appendFormat:@"%ddBm, ", *(v5 + 9)];
      [v8 appendFormat:@"%ddBm, ", *(v5 + 10)];
      if ([v8 hasSuffix:{@", "}])
      {
        [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 2, 2}];
      }

      [v8 appendString:@" "]);
    }

    if (*(v5 + 14))
    {
      [v8 appendFormat:@"noise=%ddBm ", *(v5 + 16)];
    }

    if (*(v5 + 11))
    {
      [v8 appendFormat:@"snr=%d ", *(v5 + 12)];
    }

    if (*(v5 + 18))
    {
      [v8 appendFormat:@"cca=%.1f%% ", *(v5 + 19)];
    }

    if (*(v5 + 308))
    {
      [v8 appendFormat:@"ccaSelfTotal=%d ccaOtherTotal=%d interferenceTotal=%d ", *(v5 + 312), *(v5 + 313), *(v5 + 314)];
    }

    LODWORD(v7) = *(v5 + 64);
    [v8 appendFormat:@"txRate=%.1fMbps ", v7 / 1000.0];
    LODWORD(v9) = *(v5 + 68);
    [v8 appendFormat:@"txFrames=%d txFail=%d txRetrans=%d txFallbackRate=%.1fMbps ", *(v5 + 28), *(v5 + 20), *(v5 + 24), v9 / 1000.0];
    LODWORD(v10) = *(v5 + 72);
    [v8 appendFormat:@"rxRate=%.1fMbps ", v10 / 1000.0];
    [v8 appendFormat:@"rxFrames=%d rxRetryFrames=%d ", *(v5 + 36), *(v5 + 32)];
    [v8 appendFormat:@"rxToss=%d ", *(v5 + 76)];
    if (*(v5 + 48))
    {
      [v8 appendFormat:@"beaconRecv=%d beaconSched=%d ", *(v5 + 40), *(v5 + 44)];
    }

    if (*(v5 + 49))
    {
      [v8 appendFormat:@"txFwFrames=%d txFwFail=%d txFwRetrans=%d", *(v5 + 60), *(v5 + 52), *(v5 + 56)];
    }

    v11 = [v8 copy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CWFLinkQualityMetric;
    v11 = [(CWFLinkQualityMetric *)&v13 description];
  }

  return v11;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFLinkQualityMetric *)self updatedAt];
  [v3 setObject:v4 forKeyedSubscript:@"updated_at"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFLinkQualityMetric RSSI](self, "RSSI")}];
  [v3 setObject:v5 forKeyedSubscript:@"rssi"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFLinkQualityMetric noise](self, "noise")}];
  [v3 setObject:v6 forKeyedSubscript:@"noise"];

  v7 = MEMORY[0x1E696AD98];
  [(CWFLinkQualityMetric *)self txRate];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"tx_rate"];

  v9 = MEMORY[0x1E696AD98];
  [(CWFLinkQualityMetric *)self rxRate];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"rx_rate"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFLinkQualityMetric CCA](self, "CCA")}];
  [v3 setObject:v11 forKeyedSubscript:@"cca"];

  v12 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v13 = v12;
  if (v12 && [v12 length] >= 0x1D8)
  {
    v14 = [v13 bytes];
    if (*(v14 + 8))
    {
      v15 = [MEMORY[0x1E695DF70] array];
      v16 = [MEMORY[0x1E696AD98] numberWithChar:*(v14 + 9)];
      [v15 addObject:v16];

      v17 = [MEMORY[0x1E696AD98] numberWithChar:*(v14 + 10)];
      [v15 addObject:v17];

      [v3 setObject:v15 forKeyedSubscript:@"per_ant_rssi"];
    }

    if (*(v14 + 11))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithShort:*(v14 + 12)];
      [v3 setObject:v18 forKeyedSubscript:@"snr"];
    }

    if (*(v14 + 308))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithChar:*(v14 + 312)];
      [v3 setObject:v19 forKeyedSubscript:@"cca_self_total"];

      v20 = [MEMORY[0x1E696AD98] numberWithChar:*(v14 + 313)];
      [v3 setObject:v20 forKeyedSubscript:@"cca_other_total"];

      v21 = [MEMORY[0x1E696AD98] numberWithChar:*(v14 + 314)];
      [v3 setObject:v21 forKeyedSubscript:@"cca_interference_total"];
    }

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 28)];
    [v3 setObject:v22 forKeyedSubscript:@"tx_frames"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 20)];
    [v3 setObject:v23 forKeyedSubscript:@"tx_fail"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 24)];
    [v3 setObject:v24 forKeyedSubscript:@"tx_retrans"];

    LODWORD(v25) = *(v14 + 68);
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v25 / 1000.0];
    [v3 setObject:v26 forKeyedSubscript:@"tx_fallback_rate"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 36)];
    [v3 setObject:v27 forKeyedSubscript:@"rx_frames"];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 32)];
    [v3 setObject:v28 forKeyedSubscript:@"rx_retry_frames"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 76)];
    [v3 setObject:v29 forKeyedSubscript:@"rx_toss"];

    if (*(v14 + 48))
    {
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 40)];
      [v3 setObject:v30 forKeyedSubscript:@"beacon_recv"];

      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 44)];
      [v3 setObject:v31 forKeyedSubscript:@"beacon_sched"];
    }

    if (*(v14 + 49))
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 60)];
      [v3 setObject:v32 forKeyedSubscript:@"tx_fw_frames"];

      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 52)];
      [v3 setObject:v33 forKeyedSubscript:@"tx_fw_fail"];

      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v14 + 56)];
      [v3 setObject:v34 forKeyedSubscript:@"tx_fw_retrans"];
    }
  }

  v35 = sub_1E0BCEC64(v3, 0, 1u);
  if (v35)
  {
    v36 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v35];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (unint64_t)txPacketErrorRate
{
  v2 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = v2;
  if (v2 && [v2 length] == 472 && (v4 = objc_msgSend(v3, "bytes"), (v6 = *(v4 + 28)) != 0))
  {
    LODWORD(v5) = *(v4 + 20);
    v7 = (v5 / v6 * 100.0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)mLOLinks
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v5 = v4;
  if (v4)
  {
    if ([v4 length] == 472)
    {
      v6 = [v5 bytes];
      if (*(v6 + 332))
      {
        v7 = v6;
        v8 = 0;
        v9 = (v6 + 349);
        do
        {
          v10 = objc_alloc_init(CWFMLOLink);
          [(CWFMLOLink *)v10 setBand:*v9 >> 14];
          [(CWFMLOLink *)v10 setChannel:*v9];
          [(CWFMLOLink *)v10 setWidth:(*v9 >> 11) & 7];
          [(CWFMLOLink *)v10 setSubchannel:v9[1] & 7];
          [(CWFMLOLink *)v10 setIsPrimaryLink:*(v9 - 1) != 0];
          [v3 addObject:v10];

          ++v8;
          v9 += 40;
        }

        while (v8 < *(v7 + 332));
      }
    }
  }

  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqualToLinkQualityMetric:(id)a3
{
  v6 = a3;
  updatedAt = self->_updatedAt;
  v8 = [v6 updatedAt];
  if (updatedAt != v8)
  {
    if (!self->_updatedAt || ([v6 updatedAt], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_updatedAt;
    v4 = [v6 updatedAt];
    if (![(NSDate *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  linkQualityMetricData = self->_linkQualityMetricData;
  v13 = [v6 linkQualityMetricData];
  v11 = linkQualityMetricData == v13;
  if (v11 || !self->_linkQualityMetricData)
  {
    goto LABEL_11;
  }

  v14 = [v6 linkQualityMetricData];
  if (v14)
  {
    v15 = v14;
    v16 = self->_linkQualityMetricData;
    v17 = [v6 linkQualityMetricData];
    v11 = [(NSData *)v16 isEqual:v17];

LABEL_11:
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  if (updatedAt != v8)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFLinkQualityMetric *)self isEqualToLinkQualityMetric:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFLinkQualityMetric allocWithZone:?]];
  [(CWFLinkQualityMetric *)v4 setLinkQualityMetricData:self->_linkQualityMetricData];
  [(CWFLinkQualityMetric *)v4 setUpdatedAt:self->_updatedAt];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  linkQualityMetricData = self->_linkQualityMetricData;
  v5 = a3;
  [v5 encodeObject:linkQualityMetricData forKey:@"_linkQualityMetricData"];
  [v5 encodeObject:self->_updatedAt forKey:@"_updatedAt"];
}

- (CWFLinkQualityMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFLinkQualityMetric;
  v5 = [(CWFLinkQualityMetric *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_linkQualityMetricData"];
    linkQualityMetricData = v5->_linkQualityMetricData;
    v5->_linkQualityMetricData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_updatedAt"];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v8;
  }

  return v5;
}

@end