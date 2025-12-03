@interface CWFLinkQualityMetric
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLinkQualityMetric:(id)metric;
- (CWFLinkQualityMetric)initWithCoder:(id)coder;
- (NSArray)mLOLinks;
- (NSString)description;
- (double)rxRate;
- (double)txRate;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)RSSI;
- (int64_t)noise;
- (unint64_t)CCA;
- (unint64_t)txPacketErrorRate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFLinkQualityMetric

- (double)rxRate
{
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  v4 = 0.0;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472)
  {
    v4 = (*([v3 bytes] + 72) / 0x3E8u);
  }

  return v4;
}

- (int64_t)RSSI
{
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *v4))
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
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *(v4 + 18)))
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
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  v4 = 0.0;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472)
  {
    v4 = (*([v3 bytes] + 64) / 0x3E8u);
  }

  return v4;
}

- (int64_t)noise
{
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472 && (v4 = objc_msgSend(v3, "bytes"), *(v4 + 14)))
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
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v4 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472)
  {
    bytes = [v4 bytes];
    string = [MEMORY[0x1E696AD60] string];
    v8 = string;
    if (*bytes)
    {
      [string appendFormat:@"rssi=%ddBm ", *(bytes + 4)];
    }

    if (*(bytes + 8))
    {
      objc_msgSend(v8, "appendString:", @"per_ant_rssi=(");
      [v8 appendFormat:@"%ddBm, ", *(bytes + 9)];
      [v8 appendFormat:@"%ddBm, ", *(bytes + 10)];
      if ([v8 hasSuffix:{@", "}])
      {
        [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 2, 2}];
      }

      [v8 appendString:@" "]);
    }

    if (*(bytes + 14))
    {
      [v8 appendFormat:@"noise=%ddBm ", *(bytes + 16)];
    }

    if (*(bytes + 11))
    {
      [v8 appendFormat:@"snr=%d ", *(bytes + 12)];
    }

    if (*(bytes + 18))
    {
      [v8 appendFormat:@"cca=%.1f%% ", *(bytes + 19)];
    }

    if (*(bytes + 308))
    {
      [v8 appendFormat:@"ccaSelfTotal=%d ccaOtherTotal=%d interferenceTotal=%d ", *(bytes + 312), *(bytes + 313), *(bytes + 314)];
    }

    LODWORD(v7) = *(bytes + 64);
    [v8 appendFormat:@"txRate=%.1fMbps ", v7 / 1000.0];
    LODWORD(v9) = *(bytes + 68);
    [v8 appendFormat:@"txFrames=%d txFail=%d txRetrans=%d txFallbackRate=%.1fMbps ", *(bytes + 28), *(bytes + 20), *(bytes + 24), v9 / 1000.0];
    LODWORD(v10) = *(bytes + 72);
    [v8 appendFormat:@"rxRate=%.1fMbps ", v10 / 1000.0];
    [v8 appendFormat:@"rxFrames=%d rxRetryFrames=%d ", *(bytes + 36), *(bytes + 32)];
    [v8 appendFormat:@"rxToss=%d ", *(bytes + 76)];
    if (*(bytes + 48))
    {
      [v8 appendFormat:@"beaconRecv=%d beaconSched=%d ", *(bytes + 40), *(bytes + 44)];
    }

    if (*(bytes + 49))
    {
      [v8 appendFormat:@"txFwFrames=%d txFwFail=%d txFwRetrans=%d", *(bytes + 60), *(bytes + 52), *(bytes + 56)];
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
  updatedAt = [(CWFLinkQualityMetric *)self updatedAt];
  [v3 setObject:updatedAt forKeyedSubscript:@"updated_at"];

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

  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v13 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] >= 0x1D8)
  {
    bytes = [v13 bytes];
    if (*(bytes + 8))
    {
      array = [MEMORY[0x1E695DF70] array];
      v16 = [MEMORY[0x1E696AD98] numberWithChar:*(bytes + 9)];
      [array addObject:v16];

      v17 = [MEMORY[0x1E696AD98] numberWithChar:*(bytes + 10)];
      [array addObject:v17];

      [v3 setObject:array forKeyedSubscript:@"per_ant_rssi"];
    }

    if (*(bytes + 11))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithShort:*(bytes + 12)];
      [v3 setObject:v18 forKeyedSubscript:@"snr"];
    }

    if (*(bytes + 308))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithChar:*(bytes + 312)];
      [v3 setObject:v19 forKeyedSubscript:@"cca_self_total"];

      v20 = [MEMORY[0x1E696AD98] numberWithChar:*(bytes + 313)];
      [v3 setObject:v20 forKeyedSubscript:@"cca_other_total"];

      v21 = [MEMORY[0x1E696AD98] numberWithChar:*(bytes + 314)];
      [v3 setObject:v21 forKeyedSubscript:@"cca_interference_total"];
    }

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 28)];
    [v3 setObject:v22 forKeyedSubscript:@"tx_frames"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 20)];
    [v3 setObject:v23 forKeyedSubscript:@"tx_fail"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 24)];
    [v3 setObject:v24 forKeyedSubscript:@"tx_retrans"];

    LODWORD(v25) = *(bytes + 68);
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v25 / 1000.0];
    [v3 setObject:v26 forKeyedSubscript:@"tx_fallback_rate"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 36)];
    [v3 setObject:v27 forKeyedSubscript:@"rx_frames"];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 32)];
    [v3 setObject:v28 forKeyedSubscript:@"rx_retry_frames"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 76)];
    [v3 setObject:v29 forKeyedSubscript:@"rx_toss"];

    if (*(bytes + 48))
    {
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 40)];
      [v3 setObject:v30 forKeyedSubscript:@"beacon_recv"];

      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 44)];
      [v3 setObject:v31 forKeyedSubscript:@"beacon_sched"];
    }

    if (*(bytes + 49))
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 60)];
      [v3 setObject:v32 forKeyedSubscript:@"tx_fw_frames"];

      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 52)];
      [v3 setObject:v33 forKeyedSubscript:@"tx_fw_fail"];

      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(bytes + 56)];
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
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v3 = linkQualityMetricData;
  if (linkQualityMetricData && [linkQualityMetricData length] == 472 && (v4 = objc_msgSend(v3, "bytes"), (v6 = *(v4 + 28)) != 0))
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
  array = [MEMORY[0x1E695DF70] array];
  linkQualityMetricData = [(CWFLinkQualityMetric *)self linkQualityMetricData];
  v5 = linkQualityMetricData;
  if (linkQualityMetricData)
  {
    if ([linkQualityMetricData length] == 472)
    {
      bytes = [v5 bytes];
      if (*(bytes + 332))
      {
        v7 = bytes;
        v8 = 0;
        v9 = (bytes + 349);
        do
        {
          v10 = objc_alloc_init(CWFMLOLink);
          [(CWFMLOLink *)v10 setBand:*v9 >> 14];
          [(CWFMLOLink *)v10 setChannel:*v9];
          [(CWFMLOLink *)v10 setWidth:(*v9 >> 11) & 7];
          [(CWFMLOLink *)v10 setSubchannel:v9[1] & 7];
          [(CWFMLOLink *)v10 setIsPrimaryLink:*(v9 - 1) != 0];
          [array addObject:v10];

          ++v8;
          v9 += 40;
        }

        while (v8 < *(v7 + 332));
      }
    }
  }

  v11 = [array copy];

  return v11;
}

- (BOOL)isEqualToLinkQualityMetric:(id)metric
{
  metricCopy = metric;
  updatedAt = self->_updatedAt;
  updatedAt = [metricCopy updatedAt];
  if (updatedAt != updatedAt)
  {
    if (!self->_updatedAt || ([metricCopy updatedAt], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_updatedAt;
    updatedAt2 = [metricCopy updatedAt];
    if (![(NSDate *)v10 isEqual:updatedAt2])
    {
      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  linkQualityMetricData = self->_linkQualityMetricData;
  linkQualityMetricData = [metricCopy linkQualityMetricData];
  v11 = linkQualityMetricData == linkQualityMetricData;
  if (v11 || !self->_linkQualityMetricData)
  {
    goto LABEL_11;
  }

  linkQualityMetricData2 = [metricCopy linkQualityMetricData];
  if (linkQualityMetricData2)
  {
    v15 = linkQualityMetricData2;
    v16 = self->_linkQualityMetricData;
    linkQualityMetricData3 = [metricCopy linkQualityMetricData];
    v11 = [(NSData *)v16 isEqual:linkQualityMetricData3];

LABEL_11:
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  if (updatedAt != updatedAt)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFLinkQualityMetric *)self isEqualToLinkQualityMetric:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFLinkQualityMetric allocWithZone:?]];
  [(CWFLinkQualityMetric *)v4 setLinkQualityMetricData:self->_linkQualityMetricData];
  [(CWFLinkQualityMetric *)v4 setUpdatedAt:self->_updatedAt];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  linkQualityMetricData = self->_linkQualityMetricData;
  coderCopy = coder;
  [coderCopy encodeObject:linkQualityMetricData forKey:@"_linkQualityMetricData"];
  [coderCopy encodeObject:self->_updatedAt forKey:@"_updatedAt"];
}

- (CWFLinkQualityMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFLinkQualityMetric;
  v5 = [(CWFLinkQualityMetric *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_linkQualityMetricData"];
    linkQualityMetricData = v5->_linkQualityMetricData;
    v5->_linkQualityMetricData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_updatedAt"];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v8;
  }

  return v5;
}

@end