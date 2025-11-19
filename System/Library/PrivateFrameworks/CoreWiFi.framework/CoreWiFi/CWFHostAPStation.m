@interface CWFHostAPStation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHostAPStation:(id)a3;
- (CWFHostAPStation)initWithCoder:(id)a3;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CWFHostAPStation

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFHostAPStation *)self BSSID];
  v5 = [v4 redactedForWiFi];
  [v3 setObject:v5 forKeyedSubscript:@"bssid"];

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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFHostAPStation *)self BSSID];
  v5 = [v4 redactedForWiFi];
  [v3 appendFormat:@"bssid=%@", v5];

  return v3;
}

- (BOOL)isEqualToHostAPStation:(id)a3
{
  v4 = a3;
  BSSID = self->_BSSID;
  v6 = [v4 BSSID];
  if (BSSID == v6)
  {
    v10 = 1;
  }

  else if (self->_BSSID)
  {
    v7 = [v4 BSSID];
    if (v7)
    {
      v8 = self->_BSSID;
      v9 = [v4 BSSID];
      v10 = [(NSString *)v8 isEqual:v9];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFHostAPStation *)self isEqualToHostAPStation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFHostAPStation allocWithZone:?]];
  [(CWFHostAPStation *)v4 setBSSID:self->_BSSID];
  return v4;
}

- (CWFHostAPStation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CWFHostAPStation;
  v5 = [(CWFHostAPStation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v6;
  }

  return v5;
}

@end