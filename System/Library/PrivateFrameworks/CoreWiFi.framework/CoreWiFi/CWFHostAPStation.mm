@interface CWFHostAPStation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHostAPStation:(id)station;
- (CWFHostAPStation)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CWFHostAPStation

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bSSID = [(CWFHostAPStation *)self BSSID];
  redactedForWiFi = [bSSID redactedForWiFi];
  [v3 setObject:redactedForWiFi forKeyedSubscript:@"bssid"];

  v6 = sub_1E0BCEC64(v3, 0, 1u);
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  bSSID = [(CWFHostAPStation *)self BSSID];
  redactedForWiFi = [bSSID redactedForWiFi];
  [string appendFormat:@"bssid=%@", redactedForWiFi];

  return string;
}

- (BOOL)isEqualToHostAPStation:(id)station
{
  stationCopy = station;
  BSSID = self->_BSSID;
  bSSID = [stationCopy BSSID];
  if (BSSID == bSSID)
  {
    v10 = 1;
  }

  else if (self->_BSSID)
  {
    bSSID2 = [stationCopy BSSID];
    if (bSSID2)
    {
      v8 = self->_BSSID;
      bSSID3 = [stationCopy BSSID];
      v10 = [(NSString *)v8 isEqual:bSSID3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFHostAPStation *)self isEqualToHostAPStation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFHostAPStation allocWithZone:?]];
  [(CWFHostAPStation *)v4 setBSSID:self->_BSSID];
  return v4;
}

- (CWFHostAPStation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CWFHostAPStation;
  v5 = [(CWFHostAPStation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v6;
  }

  return v5;
}

@end