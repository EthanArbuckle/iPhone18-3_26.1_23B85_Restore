@interface RTMapItemExtendedAttributes
+ (id)fingerprintLabelTypeToString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapItemExtendedAttributes:(id)a3;
- (RTMapItemExtendedAttributes)initWithCoder:(id)a3;
- (RTMapItemExtendedAttributes)initWithExtendedAttributesMO:(id)a3;
- (RTMapItemExtendedAttributes)initWithIdentifier:(id)a3 addressIdentifier:(id)a4 isMe:(BOOL)a5 wifiConfidence:(double)a6 wifiFingerprintLabelType:(int64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTMapItemExtendedAttributes

+ (id)fingerprintLabelTypeToString:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[RTMapItemExtendedAttributes fingerprintLabelTypeToString:]";
      v8 = 1024;
      v9 = 43;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "unknown wifi fingerprint label (in %s:%d)", &v6, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = off_1E80B4C38[a3];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (RTMapItemExtendedAttributes)initWithExtendedAttributesMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 identifier];
    v6 = [v4 addressIdentifier];
    v7 = [v4 isMe];
    v8 = [v7 BOOLValue];
    v9 = [v4 wifiConfidence];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v4 wifiFingerprintLabelType];

    self = -[RTMapItemExtendedAttributes initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:](self, "initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:", v5, v6, v8, [v12 integerValue], v11);
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (RTMapItemExtendedAttributes)initWithIdentifier:(id)a3 addressIdentifier:(id)a4 isMe:(BOOL)a5 wifiConfidence:(double)a6 wifiFingerprintLabelType:(int64_t)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (!v13)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTMapItemExtendedAttributes initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:]";
      v26 = 1024;
      v27 = 71;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  if (a7 >= 3)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTMapItemExtendedAttributes initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:]";
      v26 = 1024;
      v27 = 72;
      _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, "invalid wifi label type (in %s:%d)", buf, 0x12u);
    }
  }

  if (a6 < 0.0 || a6 > 1.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTMapItemExtendedAttributes initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:]";
      v26 = 1024;
      v27 = 73;
      _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "invalid wifiConfidence (in %s:%d)", buf, 0x12u);
    }
  }

  v18 = 0;
  if (v13 && a6 <= 1.0 && a6 >= 0.0 && a7 <= 2)
  {
    v23.receiver = self;
    v23.super_class = RTMapItemExtendedAttributes;
    v19 = [(RTMapItemExtendedAttributes *)&v23 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, a3);
      objc_storeStrong(&v20->_addressIdentifier, a4);
      v20->_isMe = a5;
      v20->_wifiConfidence = a6;
      v20->_wifiFingerprintLabelType = a7;
    }

    self = v20;
    v18 = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  addressIdentifier = self->_addressIdentifier;
  if (self->_isMe)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  wifiConfidence = self->_wifiConfidence;
  v7 = [objc_opt_class() fingerprintLabelTypeToString:self->_wifiFingerprintLabelType];
  v8 = [v2 stringWithFormat:@"identifier, %@, address identifier, %@, isMe, %@, wifiConfidence, %.3lf, labelType, %@", identifier, addressIdentifier, v5, *&wifiConfidence, v7];

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTMapItemExtendedAttributes *)self isEqualToMapItemExtendedAttributes:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSString *)self->_addressIdentifier hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMe];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_wifiConfidence];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_wifiFingerprintLabelType];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqualToMapItemExtendedAttributes:(id)a3
{
  v6 = a3;
  v7 = v6;
  identifier = self->_identifier;
  v9 = identifier;
  if (identifier)
  {
LABEL_4:
    v4 = [v7 identifier];
    v10 = [(NSUUID *)v9 isEqual:v4];

    if (identifier)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v6 identifier];
  if (v3)
  {
    v9 = self->_identifier;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  addressIdentifier = self->_addressIdentifier;
  v12 = addressIdentifier;
  if (addressIdentifier)
  {
    goto LABEL_11;
  }

  v4 = [v7 addressIdentifier];
  if (v4)
  {
    v12 = self->_addressIdentifier;
LABEL_11:
    v13 = [v7 addressIdentifier];
    v14 = [(NSString *)v12 isEqual:v13];

    if (addressIdentifier)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 1;
LABEL_14:

LABEL_15:
  isMe = self->_isMe;
  v16 = [v7 isMe] & 1;
  wifiConfidence = self->_wifiConfidence;
  [v7 wifiConfidence];
  v19 = v18;
  wifiFingerprintLabelType = self->_wifiFingerprintLabelType;
  v21 = [v7 wifiFingerprintLabelType];
  v22 = v10 & v14;
  if (v16 != isMe)
  {
    v22 = 0;
  }

  if (wifiConfidence != v19)
  {
    v22 = 0;
  }

  if (wifiFingerprintLabelType == v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (RTMapItemExtendedAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addressIdentifier"];
  v7 = [v4 decodeBoolForKey:@"isMe"];
  [v4 decodeDoubleForKey:@"wifiConfidence"];
  v9 = v8;
  v10 = [v4 decodeIntegerForKey:@"wifiFingerprintLabelType"];

  v11 = [(RTMapItemExtendedAttributes *)self initWithIdentifier:v5 addressIdentifier:v6 isMe:v7 wifiConfidence:v10 wifiFingerprintLabelType:v9];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_addressIdentifier forKey:@"addressIdentifier"];
  [v5 encodeBool:self->_isMe forKey:@"isMe"];
  [v5 encodeDouble:@"wifiConfidence" forKey:self->_wifiConfidence];
  [v5 encodeInteger:self->_wifiFingerprintLabelType forKey:@"wifiFingerprintLabelType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  addressIdentifier = self->_addressIdentifier;
  isMe = self->_isMe;
  wifiConfidence = self->_wifiConfidence;
  wifiFingerprintLabelType = self->_wifiFingerprintLabelType;
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier addressIdentifier:addressIdentifier isMe:isMe wifiConfidence:wifiFingerprintLabelType wifiFingerprintLabelType:wifiConfidence];
}

@end