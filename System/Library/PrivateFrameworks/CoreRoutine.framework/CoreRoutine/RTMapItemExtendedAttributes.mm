@interface RTMapItemExtendedAttributes
+ (id)fingerprintLabelTypeToString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMapItemExtendedAttributes:(id)attributes;
- (RTMapItemExtendedAttributes)initWithCoder:(id)coder;
- (RTMapItemExtendedAttributes)initWithExtendedAttributesMO:(id)o;
- (RTMapItemExtendedAttributes)initWithIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier isMe:(BOOL)me wifiConfidence:(double)confidence wifiFingerprintLabelType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTMapItemExtendedAttributes

+ (id)fingerprintLabelTypeToString:(int64_t)string
{
  v10 = *MEMORY[0x1E69E9840];
  if (string >= 3)
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
    result = off_1E80B4C38[string];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (RTMapItemExtendedAttributes)initWithExtendedAttributesMO:(id)o
{
  if (o)
  {
    oCopy = o;
    identifier = [oCopy identifier];
    addressIdentifier = [oCopy addressIdentifier];
    isMe = [oCopy isMe];
    bOOLValue = [isMe BOOLValue];
    wifiConfidence = [oCopy wifiConfidence];
    [wifiConfidence doubleValue];
    v11 = v10;
    wifiFingerprintLabelType = [oCopy wifiFingerprintLabelType];

    self = -[RTMapItemExtendedAttributes initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:](self, "initWithIdentifier:addressIdentifier:isMe:wifiConfidence:wifiFingerprintLabelType:", identifier, addressIdentifier, bOOLValue, [wifiFingerprintLabelType integerValue], v11);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemExtendedAttributes)initWithIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier isMe:(BOOL)me wifiConfidence:(double)confidence wifiFingerprintLabelType:(int64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  addressIdentifierCopy = addressIdentifier;
  if (!identifierCopy)
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

  if (type >= 3)
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

  if (confidence < 0.0 || confidence > 1.0)
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

  selfCopy = 0;
  if (identifierCopy && confidence <= 1.0 && confidence >= 0.0 && type <= 2)
  {
    v23.receiver = self;
    v23.super_class = RTMapItemExtendedAttributes;
    v19 = [(RTMapItemExtendedAttributes *)&v23 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, identifier);
      objc_storeStrong(&v20->_addressIdentifier, addressIdentifier);
      v20->_isMe = me;
      v20->_wifiConfidence = confidence;
      v20->_wifiFingerprintLabelType = type;
    }

    self = v20;
    selfCopy = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTMapItemExtendedAttributes *)self isEqualToMapItemExtendedAttributes:v5];
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

- (BOOL)isEqualToMapItemExtendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  identifier = self->_identifier;
  v9 = identifier;
  if (identifier)
  {
LABEL_4:
    identifier = [v7 identifier];
    v10 = [(NSUUID *)v9 isEqual:identifier];

    if (identifier)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  identifier2 = [attributesCopy identifier];
  if (identifier2)
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

  identifier = [v7 addressIdentifier];
  if (identifier)
  {
    v12 = self->_addressIdentifier;
LABEL_11:
    addressIdentifier = [v7 addressIdentifier];
    v14 = [(NSString *)v12 isEqual:addressIdentifier];

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
  wifiFingerprintLabelType = [v7 wifiFingerprintLabelType];
  v22 = v10 & v14;
  if (v16 != isMe)
  {
    v22 = 0;
  }

  if (wifiConfidence != v19)
  {
    v22 = 0;
  }

  if (wifiFingerprintLabelType == wifiFingerprintLabelType)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (RTMapItemExtendedAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"isMe"];
  [coderCopy decodeDoubleForKey:@"wifiConfidence"];
  v9 = v8;
  v10 = [coderCopy decodeIntegerForKey:@"wifiFingerprintLabelType"];

  v11 = [(RTMapItemExtendedAttributes *)self initWithIdentifier:v5 addressIdentifier:v6 isMe:v7 wifiConfidence:v10 wifiFingerprintLabelType:v9];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_addressIdentifier forKey:@"addressIdentifier"];
  [coderCopy encodeBool:self->_isMe forKey:@"isMe"];
  [coderCopy encodeDouble:@"wifiConfidence" forKey:self->_wifiConfidence];
  [coderCopy encodeInteger:self->_wifiFingerprintLabelType forKey:@"wifiFingerprintLabelType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  addressIdentifier = self->_addressIdentifier;
  isMe = self->_isMe;
  wifiConfidence = self->_wifiConfidence;
  wifiFingerprintLabelType = self->_wifiFingerprintLabelType;
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier addressIdentifier:addressIdentifier isMe:isMe wifiConfidence:wifiFingerprintLabelType wifiFingerprintLabelType:wifiConfidence];
}

@end