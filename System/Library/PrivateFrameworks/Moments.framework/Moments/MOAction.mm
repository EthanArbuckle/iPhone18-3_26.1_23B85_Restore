@interface MOAction
+ (id)actionNameFromLifeEvent:(id)event;
+ (unint64_t)actionTypeFromLifeEvent:(id)event;
- (BOOL)isEqual:(id)equal;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionMetaData:(id)data;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence;
- (MOAction)initWithCoder:(id)coder;
- (MOAction)initWithIdentifier:(id)identifier;
- (MOAction)initWithIdentifier:(id)identifier actionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence actionMetaData:(id)data;
- (MOAction)initWithLifeEvent:(id)event;
- (id)bundleSourceType;
- (id)description;
- (unint64_t)accessTypeFromActionType:(unint64_t)type actionSubtype:(int64_t)subtype;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOAction

+ (id)actionNameFromLifeEvent:(id)event
{
  lifeEventCategory = [event lifeEventCategory];
  switch(lifeEventCategory)
  {
    case 1:
      v4 = kActionNameShopping;
      goto LABEL_7;
    case 4:
      v4 = kActionNameFlight;
      goto LABEL_7;
    case 2:
      v4 = kActionNameDining;
LABEL_7:
      v5 = *v4;
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (unint64_t)actionTypeFromLifeEvent:(id)event
{
  lifeEventCategory = [event lifeEventCategory];
  if ((lifeEventCategory - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_22D931CC0[lifeEventCategory - 1];
  }
}

- (MOAction)initWithLifeEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy category] == 22)
  {
    v5 = [MOAction actionNameFromLifeEvent:eventCopy];
    v6 = [MOAction actionTypeFromLifeEvent:eventCopy];
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      selfCopy = 0;
    }

    else
    {
      v8 = v6;
      uUID = [MEMORY[0x277CCAD78] UUID];
      [eventCopy confidenceScore];
      self = [(MOAction *)self initWithIdentifier:uUID actionName:v5 actionType:v8 actionSubtype:0 actionNameConfidence:0 actionMetaData:?];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)bundleSourceType
{
  actionType = [(MOAction *)self actionType];
  v4 = 0;
  v5 = &MOEventBundleSourceTypeVisitLocation;
  if (actionType > 6)
  {
    if ((actionType - 9) >= 3)
    {
      if (actionType == 7)
      {
        v5 = &MOEventBundleSourceTypePhoto;
      }

      else
      {
        if (actionType != 12)
        {
          goto LABEL_19;
        }

        v5 = &MOEventBundleSourceTypeStateOfMind;
      }
    }
  }

  else if (actionType > 3)
  {
    if (actionType == 4)
    {
      v5 = &MOEventBundleSourceTypeActivity;
    }

    else if (actionType == 5)
    {
      v5 = &MOEventBundleSourceTypeContact;
    }

    else
    {
      v5 = &MOEventBundleSourceTypeMedia;
    }
  }

  else if ((actionType - 2) >= 2)
  {
    if (actionType != 1)
    {
      goto LABEL_19;
    }

    actionSubtype = [(MOAction *)self actionSubtype];
    if ((actionSubtype - 4) >= 6)
    {
      v5 = &MOEventBundleSourceTypeVisitLocation;
    }

    else
    {
      v5 = off_2787739C8[actionSubtype - 4];
    }
  }

  v4 = *v5;
LABEL_19:

  return v4;
}

- (MOAction)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOAction initWithIdentifier:v6];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOAction.m" lineNumber:34 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOAction initWithIdentifier:]", 34}];
  }

  v8 = [(MOAction *)self initWithIdentifier:identifierCopy actionName:@"action" actionType:0 actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v8;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type
{
  v6 = MEMORY[0x277CCAD78];
  nameCopy = name;
  uUID = [v6 UUID];
  v9 = [(MOAction *)self initWithIdentifier:uUID actionName:nameCopy actionType:type actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v9;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype
{
  v8 = MEMORY[0x277CCAD78];
  nameCopy = name;
  uUID = [v8 UUID];
  v11 = [(MOAction *)self initWithIdentifier:uUID actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:0 actionMetaData:-1.0];

  return v11;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence
{
  v10 = MEMORY[0x277CCAD78];
  nameCopy = name;
  uUID = [v10 UUID];
  v13 = [(MOAction *)self initWithIdentifier:uUID actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:0 actionMetaData:confidence];

  return v13;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionMetaData:(id)data
{
  v10 = MEMORY[0x277CCAD78];
  dataCopy = data;
  nameCopy = name;
  uUID = [v10 UUID];
  v14 = [(MOAction *)self initWithIdentifier:uUID actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:dataCopy actionMetaData:-1.0];

  return v14;
}

- (MOAction)initWithIdentifier:(id)identifier actionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence actionMetaData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = MOAction;
  v16 = [(MOAction *)&v20 init];
  if (v16)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v16->_identifier;
    v16->_identifier = uUID;

    objc_storeStrong(&v16->_actionName, name);
    v16->_actionType = type;
    v16->_actionSubtype = subtype;
    v16->_actionNameConfidence = confidence;
    objc_storeStrong(&v16->_actionMetaData, data);
    v16->_sourceEventAccessType = [(MOAction *)v16 accessTypeFromActionType:type actionSubtype:subtype];
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(MOAction *)self identifier];
  actionName = [(MOAction *)self actionName];
  mask = [actionName mask];
  actionType = [(MOAction *)self actionType];
  actionSubtype = [(MOAction *)self actionSubtype];
  [(MOAction *)self actionNameConfidence];
  v10 = [v3 stringWithFormat:@"<MOAction identifier, %@, action, %@, type, %lu, subtype, %lu, confidence, %f>", identifier, mask, actionType, actionSubtype, v9];

  return v10;
}

- (unint64_t)accessTypeFromActionType:(unint64_t)type actionSubtype:(int64_t)subtype
{
  result = 5;
  if (type <= 3)
  {
    if (type - 2 < 2)
    {
      return result;
    }

    if (type == 1)
    {
      if (subtype != 6)
      {
        if ((subtype - 3) >= 2)
        {
          if (subtype <= 9 && ((1 << subtype) & 0x302) != 0)
          {
            return 5;
          }

          return 0;
        }

        return 3;
      }

      return 2;
    }

    return 0;
  }

  if (type <= 0xC)
  {
    if (((1 << type) & 0xE00) != 0)
    {
      return result;
    }

    if (((1 << type) & 0x1180) == 0)
    {
      if (type != 6)
      {
        goto LABEL_6;
      }

      return 2;
    }

    return 0;
  }

LABEL_6:
  if (type != 4)
  {
    if (type != 5)
    {
      return 0;
    }

    return 3;
  }

  return 1;
}

- (MOAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
  v7 = [coderCopy decodeInt64ForKey:@"actionType"];
  v8 = [coderCopy decodeInt64ForKey:@"actionSubtype"];
  [coderCopy decodeDoubleForKey:@"actionNameConfidence"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionMetaData"];
  v12 = [MODictionaryEncoder decodeToDictionary:v11];
  v13 = [(MOAction *)self initWithIdentifier:v5 actionName:v6 actionType:v7 actionSubtype:v8 actionNameConfidence:v12 actionMetaData:v10];

  if (v13)
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOAction *)v13 setSourceEventIdentifier:v14];

    -[MOAction setSourceEventAccessType:](v13, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInt64:self->_actionType forKey:@"actionType"];
  [coderCopy encodeInt64:self->_actionSubtype forKey:@"actionSubtype"];
  [coderCopy encodeObject:self->_actionName forKey:@"actionName"];
  [coderCopy encodeDouble:@"actionNameConfidence" forKey:self->_actionNameConfidence];
  v5 = [MODictionaryEncoder encodeDictionary:self->_actionMetaData];
  [coderCopy encodeObject:v5 forKey:@"actionMetaData"];

  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  identifier = [(MOAction *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(MOAction *)self identifier];
        if (identifier || ([(MOAction *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOAction *)self identifier];
          identifier3 = [(MOAction *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MOAction initWithIdentifier:]";
  v4 = 1024;
  v5 = 34;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end