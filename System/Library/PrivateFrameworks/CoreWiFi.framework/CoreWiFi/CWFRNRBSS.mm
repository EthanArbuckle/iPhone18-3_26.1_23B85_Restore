@interface CWFRNRBSS
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRNRBSS:(id)s;
- (CWFRNRBSS)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFRNRBSS

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"ssid=%lu, ", -[CWFRNRBSS shortSSID](self, "shortSSID")];
  bSSID = [(CWFRNRBSS *)self BSSID];
  v5 = CWFCorrectEthernetAddressString(bSSID);
  redactedForWiFi = [v5 redactedForWiFi];
  [string appendFormat:@"bssid=%@, ", redactedForWiFi];

  channel = [(CWFRNRBSS *)self channel];
  [string appendFormat:@"channel=%@, ", channel];

  if ([(CWFRNRBSS *)self isSameSSID])
  {
    [string appendString:{@"same=yes, "}];
  }

  if ([(CWFRNRBSS *)self isUPRActive])
  {
    [string appendString:{@"upr=yes, "}];
  }

  if ([(CWFRNRBSS *)self isMultipleBSSID])
  {
    [string appendString:{@"multiBSS=yes, "}];
  }

  if ([(CWFRNRBSS *)self isTransmittedBSSID])
  {
    [string appendString:{@"transmit=yes, "}];
  }

  if ([(CWFRNRBSS *)self isMultiband6GHz])
  {
    [string appendString:{@"multiband=yes, "}];
  }

  if ([(CWFRNRBSS *)self isColocatedAP])
  {
    [string appendString:{@"colocated=yes, "}];
  }

  [string appendFormat:@"tbtt=%lu, ", -[CWFRNRBSS TBTTOffset](self, "TBTTOffset")];
  [string appendFormat:@"psd=%lu, ", -[CWFRNRBSS primary20MHzPSD](self, "primary20MHzPSD")];
  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (BOOL)isEqualToRNRBSS:(id)s
{
  sCopy = s;
  shortSSID = self->_shortSSID;
  if (shortSSID == [sCopy shortSSID])
  {
    BSSID = self->_BSSID;
    bSSID = [sCopy BSSID];
    if (BSSID == bSSID)
    {
      goto LABEL_9;
    }

    if (!self->_BSSID || ([sCopy BSSID], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v3 = v10;
    v11 = self->_BSSID;
    bSSID2 = [sCopy BSSID];
    if ([(NSString *)v11 isEqual:bSSID2])
    {
LABEL_9:
      sameSSID = self->_sameSSID;
      if (sameSSID == [sCopy isSameSSID] && (UPRActive = self->_UPRActive, UPRActive == objc_msgSend(sCopy, "isUPRActive")) && (multipleBSSID = self->_multipleBSSID, multipleBSSID == objc_msgSend(sCopy, "isMultipleBSSID")) && (transmittedBSSID = self->_transmittedBSSID, transmittedBSSID == objc_msgSend(sCopy, "isTransmittedBSSID")) && (multiband6GHz = self->_multiband6GHz, multiband6GHz == objc_msgSend(sCopy, "isMultiband6GHz")) && (colocatedAP = self->_colocatedAP, colocatedAP == objc_msgSend(sCopy, "isColocatedAP")) && (TBTTOffset = self->_TBTTOffset, TBTTOffset == objc_msgSend(sCopy, "TBTTOffset")))
      {
        primary20MHzPSD = self->_primary20MHzPSD;
        v12 = primary20MHzPSD == [sCopy primary20MHzPSD];
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      if (BSSID == bSSID)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRNRBSS *)self isEqualToRNRBSS:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  shortSSID = self->_shortSSID;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:shortSSID];
  [coderCopy encodeObject:v7 forKey:@"_shortSSID"];

  [coderCopy encodeObject:self->_BSSID forKey:@"_BSSID"];
  [coderCopy encodeObject:self->_channel forKey:@"_channel"];
  [coderCopy encodeBool:self->_sameSSID forKey:@"_sameSSID"];
  [coderCopy encodeBool:self->_UPRActive forKey:@"_UPRActive"];
  [coderCopy encodeBool:self->_multipleBSSID forKey:@"_multipleBSSID"];
  [coderCopy encodeBool:self->_transmittedBSSID forKey:@"_transmittedBSSID"];
  [coderCopy encodeBool:self->_multiband6GHz forKey:@"_multiband6GHz"];
  [coderCopy encodeBool:self->_colocatedAP forKey:@"_colocatedAP"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_TBTTOffset];
  [coderCopy encodeObject:v8 forKey:@"_TBTTOffset"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_primary20MHzPSD];
  [coderCopy encodeObject:v9 forKey:@"_primary20MHzPSD"];
}

- (CWFRNRBSS)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CWFRNRBSS;
  v5 = [(CWFRNRBSS *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shortSSID"];
    v5->_shortSSID = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v9;

    v5->_sameSSID = [coderCopy decodeBoolForKey:@"_sameSSID"];
    v5->_UPRActive = [coderCopy decodeBoolForKey:@"_UPRActive"];
    v5->_multipleBSSID = [coderCopy decodeBoolForKey:@"_multipleBSSID"];
    v5->_transmittedBSSID = [coderCopy decodeBoolForKey:@"_transmittedBSSID"];
    v5->_multiband6GHz = [coderCopy decodeBoolForKey:@"_multiband6GHz"];
    v5->_colocatedAP = [coderCopy decodeBoolForKey:@"_colocatedAP"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_TBTTOffset"];
    v5->_TBTTOffset = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primary20MHzPSD"];
    v5->_primary20MHzPSD = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bSSID = [(CWFRNRBSS *)self BSSID];
  [v3 setObject:bSSID forKeyedSubscript:@"BSSID"];

  channel = [(CWFRNRBSS *)self channel];
  jSONCompatibleKeyValueMap = [channel JSONCompatibleKeyValueMap];
  [v3 setObject:jSONCompatibleKeyValueMap forKeyedSubscript:@"channel"];

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