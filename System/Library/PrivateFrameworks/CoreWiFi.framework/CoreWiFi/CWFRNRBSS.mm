@interface CWFRNRBSS
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRNRBSS:(id)a3;
- (CWFRNRBSS)initWithCoder:(id)a3;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRNRBSS

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"ssid=%lu, ", -[CWFRNRBSS shortSSID](self, "shortSSID")];
  v4 = [(CWFRNRBSS *)self BSSID];
  v5 = CWFCorrectEthernetAddressString(v4);
  v6 = [v5 redactedForWiFi];
  [v3 appendFormat:@"bssid=%@, ", v6];

  v7 = [(CWFRNRBSS *)self channel];
  [v3 appendFormat:@"channel=%@, ", v7];

  if ([(CWFRNRBSS *)self isSameSSID])
  {
    [v3 appendString:{@"same=yes, "}];
  }

  if ([(CWFRNRBSS *)self isUPRActive])
  {
    [v3 appendString:{@"upr=yes, "}];
  }

  if ([(CWFRNRBSS *)self isMultipleBSSID])
  {
    [v3 appendString:{@"multiBSS=yes, "}];
  }

  if ([(CWFRNRBSS *)self isTransmittedBSSID])
  {
    [v3 appendString:{@"transmit=yes, "}];
  }

  if ([(CWFRNRBSS *)self isMultiband6GHz])
  {
    [v3 appendString:{@"multiband=yes, "}];
  }

  if ([(CWFRNRBSS *)self isColocatedAP])
  {
    [v3 appendString:{@"colocated=yes, "}];
  }

  [v3 appendFormat:@"tbtt=%lu, ", -[CWFRNRBSS TBTTOffset](self, "TBTTOffset")];
  [v3 appendFormat:@"psd=%lu, ", -[CWFRNRBSS primary20MHzPSD](self, "primary20MHzPSD")];
  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  return v3;
}

- (BOOL)isEqualToRNRBSS:(id)a3
{
  v6 = a3;
  shortSSID = self->_shortSSID;
  if (shortSSID == [v6 shortSSID])
  {
    BSSID = self->_BSSID;
    v9 = [v6 BSSID];
    if (BSSID == v9)
    {
      goto LABEL_9;
    }

    if (!self->_BSSID || ([v6 BSSID], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v3 = v10;
    v11 = self->_BSSID;
    v4 = [v6 BSSID];
    if ([(NSString *)v11 isEqual:v4])
    {
LABEL_9:
      sameSSID = self->_sameSSID;
      if (sameSSID == [v6 isSameSSID] && (UPRActive = self->_UPRActive, UPRActive == objc_msgSend(v6, "isUPRActive")) && (multipleBSSID = self->_multipleBSSID, multipleBSSID == objc_msgSend(v6, "isMultipleBSSID")) && (transmittedBSSID = self->_transmittedBSSID, transmittedBSSID == objc_msgSend(v6, "isTransmittedBSSID")) && (multiband6GHz = self->_multiband6GHz, multiband6GHz == objc_msgSend(v6, "isMultiband6GHz")) && (colocatedAP = self->_colocatedAP, colocatedAP == objc_msgSend(v6, "isColocatedAP")) && (TBTTOffset = self->_TBTTOffset, TBTTOffset == objc_msgSend(v6, "TBTTOffset")))
      {
        primary20MHzPSD = self->_primary20MHzPSD;
        v12 = primary20MHzPSD == [v6 primary20MHzPSD];
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      if (BSSID == v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_21:

  return v13;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRNRBSS *)self isEqualToRNRBSS:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shortSSID];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_BSSID hash];
  v6 = v5 ^ [(CWFChannel *)self->_channel hash]^ self->_sameSSID ^ v4 ^ self->_UPRActive ^ self->_multipleBSSID ^ self->_transmittedBSSID ^ self->_multiband6GHz ^ self->_colocatedAP;
  v7 = self->_TBTTOffset ^ self->_primary20MHzPSD;

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFRNRBSS allocWithZone:?]];
  [(CWFRNRBSS *)v4 setShortSSID:self->_shortSSID];
  [(CWFRNRBSS *)v4 setBSSID:self->_BSSID];
  [(CWFRNRBSS *)v4 setChannel:self->_channel];
  [(CWFRNRBSS *)v4 setSameSSID:self->_sameSSID];
  [(CWFRNRBSS *)v4 setUPRActive:self->_UPRActive];
  [(CWFRNRBSS *)v4 setMultipleBSSID:self->_multipleBSSID];
  [(CWFRNRBSS *)v4 setTransmittedBSSID:self->_transmittedBSSID];
  [(CWFRNRBSS *)v4 setMultiband6GHz:self->_multiband6GHz];
  [(CWFRNRBSS *)v4 setColocatedAP:self->_colocatedAP];
  [(CWFRNRBSS *)v4 setTBTTOffset:self->_TBTTOffset];
  [(CWFRNRBSS *)v4 setPrimary20MHzPSD:self->_primary20MHzPSD];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  shortSSID = self->_shortSSID;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:shortSSID];
  [v6 encodeObject:v7 forKey:@"_shortSSID"];

  [v6 encodeObject:self->_BSSID forKey:@"_BSSID"];
  [v6 encodeObject:self->_channel forKey:@"_channel"];
  [v6 encodeBool:self->_sameSSID forKey:@"_sameSSID"];
  [v6 encodeBool:self->_UPRActive forKey:@"_UPRActive"];
  [v6 encodeBool:self->_multipleBSSID forKey:@"_multipleBSSID"];
  [v6 encodeBool:self->_transmittedBSSID forKey:@"_transmittedBSSID"];
  [v6 encodeBool:self->_multiband6GHz forKey:@"_multiband6GHz"];
  [v6 encodeBool:self->_colocatedAP forKey:@"_colocatedAP"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_TBTTOffset];
  [v6 encodeObject:v8 forKey:@"_TBTTOffset"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_primary20MHzPSD];
  [v6 encodeObject:v9 forKey:@"_primary20MHzPSD"];
}

- (CWFRNRBSS)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CWFRNRBSS;
  v5 = [(CWFRNRBSS *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shortSSID"];
    v5->_shortSSID = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v9;

    v5->_sameSSID = [v4 decodeBoolForKey:@"_sameSSID"];
    v5->_UPRActive = [v4 decodeBoolForKey:@"_UPRActive"];
    v5->_multipleBSSID = [v4 decodeBoolForKey:@"_multipleBSSID"];
    v5->_transmittedBSSID = [v4 decodeBoolForKey:@"_transmittedBSSID"];
    v5->_multiband6GHz = [v4 decodeBoolForKey:@"_multiband6GHz"];
    v5->_colocatedAP = [v4 decodeBoolForKey:@"_colocatedAP"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_TBTTOffset"];
    v5->_TBTTOffset = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primary20MHzPSD"];
    v5->_primary20MHzPSD = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFRNRBSS *)self BSSID];
  [v3 setObject:v4 forKeyedSubscript:@"BSSID"];

  v5 = [(CWFRNRBSS *)self channel];
  v6 = [v5 JSONCompatibleKeyValueMap];
  [v3 setObject:v6 forKeyedSubscript:@"channel"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isUPRActive](self, "isUPRActive")}];
  [v3 setObject:v7 forKeyedSubscript:@"upr_active"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isSameSSID](self, "isSameSSID")}];
  [v3 setObject:v8 forKeyedSubscript:@"same_ssid"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isMultipleBSSID](self, "isMultipleBSSID")}];
  [v3 setObject:v9 forKeyedSubscript:@"multiple_bssid"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isTransmittedBSSID](self, "isTransmittedBSSID")}];
  [v3 setObject:v10 forKeyedSubscript:@"transmitted_bssid"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isMultiband6GHz](self, "isMultiband6GHz")}];
  [v3 setObject:v11 forKeyedSubscript:@"multiband_6ghz"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFRNRBSS isColocatedAP](self, "isColocatedAP")}];
  [v3 setObject:v12 forKeyedSubscript:@"colocated_ap"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRNRBSS TBTTOffset](self, "TBTTOffset")}];
  [v3 setObject:v13 forKeyedSubscript:@"tbtt_offset"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRNRBSS primary20MHzPSD](self, "primary20MHzPSD")}];
  [v3 setObject:v14 forKeyedSubscript:@"primary_20mhz_psd"];

  v15 = sub_1E0BCEC64(v3, 0, 1u);
  if (v15)
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end