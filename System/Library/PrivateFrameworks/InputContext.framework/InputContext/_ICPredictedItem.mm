@interface _ICPredictedItem
+ (id)predictedItemFromQuickTypeItem:(id)item trigger:(id)trigger;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPredictedItem:(id)item;
- (_ICPredictedItem)initWithCoder:(id)coder;
- (_ICPredictedItem)initWithIdentifier:(id)identifier itemType:(unsigned __int8)type score:(double)score value:(id)value label:(id)label name:(id)name date:(id)date originatingBundleID:(id)self0 originatingWebsiteURL:(id)self1 predictionAge:(unint64_t)self2 shouldAggregate:(BOOL)self3 flags:(unsigned __int8)self4 targetBundleID:(id)self5 operationData:(id)self6 proactiveTrigger:(id)self7;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ICPredictedItem

- (_ICPredictedItem)initWithIdentifier:(id)identifier itemType:(unsigned __int8)type score:(double)score value:(id)value label:(id)label name:(id)name date:(id)date originatingBundleID:(id)self0 originatingWebsiteURL:(id)self1 predictionAge:(unint64_t)self2 shouldAggregate:(BOOL)self3 flags:(unsigned __int8)self4 targetBundleID:(id)self5 operationData:(id)self6 proactiveTrigger:(id)self7
{
  identifierCopy = identifier;
  obj = value;
  valueCopy = value;
  labelCopy = label;
  labelCopy2 = label;
  nameCopy = name;
  nameCopy2 = name;
  dateCopy = date;
  dCopy = d;
  lCopy = l;
  iDCopy = iD;
  dataCopy = data;
  triggerCopy = trigger;
  v41.receiver = self;
  v41.super_class = _ICPredictedItem;
  v30 = [(_ICPredictedItem *)&v41 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_identifier, identifier);
    v31->_itemType = type;
    v31->_score = score;
    objc_storeStrong(&v31->_value, obj);
    objc_storeStrong(&v31->_label, labelCopy);
    objc_storeStrong(&v31->_name, nameCopy);
    objc_storeStrong(&v31->_date, date);
    objc_storeStrong(&v31->_originatingBundleID, d);
    objc_storeStrong(&v31->_originatingWebsiteURL, l);
    v31->_predictionAge = age;
    v31->_shouldAggregate = aggregate;
    v31->_flags = flags;
    objc_storeStrong(&v31->_targetBundleID, iD);
    objc_storeStrong(&v31->_operationData, data);
    objc_storeStrong(&v31->_trigger, trigger);
    v31->_layoutHint = 0;
  }

  return v31;
}

+ (id)predictedItemFromQuickTypeItem:(id)item trigger:(id)trigger
{
  itemCopy = item;
  triggerCopy = trigger;
  flags = [itemCopy flags];
  v8 = [itemCopy flags] & 2 | flags & 1;
  if (([itemCopy source] & 0xA) != 0)
  {
    v8 |= [itemCopy flags] & 4;
  }

  v22 = [self alloc];
  sourceIdentifier = [itemCopy sourceIdentifier];
  [itemCopy score];
  v10 = v9;
  value = [itemCopy value];
  label = [itemCopy label];
  name = [itemCopy name];
  date = [itemCopy date];
  originatingBundleID = [itemCopy originatingBundleID];
  originatingWebsiteURL = [itemCopy originatingWebsiteURL];
  predictionAge = [itemCopy predictionAge];
  BYTE1(v20) = v8;
  LOBYTE(v20) = [itemCopy shouldAggregate];
  v18 = [v22 initWithIdentifier:sourceIdentifier itemType:0 score:value value:label label:name name:date date:v10 originatingBundleID:originatingBundleID originatingWebsiteURL:originatingWebsiteURL predictionAge:predictionAge shouldAggregate:v20 flags:0 targetBundleID:0 operationData:triggerCopy proactiveTrigger:?];

  return v18;
}

- (id)description
{
  if (self->_itemType)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<_ICPredictedItem  '%@' %@>", self->_targetBundleID, self->_operationData, v4, v5, v6, v7];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<_ICPredictedItem '%@' %@=%@ [%@] s:%f f:%lu>", self->_name, self->_label, self->_value, self->_date, *&self->_score, self->_flags];
  }
  v2 = ;

  return v2;
}

- (unint64_t)hash
{
  v3 = [(_ICProactiveTrigger *)self->_trigger hash];
  v4 = [(NSString *)self->_name hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_label hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_value hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_name hash]- v6 + 32 * v6;
  v8 = [(NSDate *)self->_date hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_originatingBundleID hash]- v8 + 32 * v8;
  v10 = [(NSURL *)self->_originatingWebsiteURL hash];
  v11 = self->_predictionAge - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = self->_shouldAggregate - v11 + 32 * v11;
  v13 = self->_flags - v12 + 32 * v12;
  v14 = self->_score - v13 + 32 * v13;
  v15 = self->_itemType - v14 + 32 * v14;
  v16 = [(NSString *)self->_targetBundleID hash]- v15 + 32 * v15;
  return [(NSDictionary *)self->_operationData hash]- v16 + 32 * v16;
}

- (_ICPredictedItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = _ICPredictedItem;
  v5 = [(_ICPredictedItem *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    [coderCopy decodeDoubleForKey:@"score"];
    v5->_score = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingBundleID"];
    originatingBundleID = v5->_originatingBundleID;
    v5->_originatingBundleID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingWebsiteURL"];
    originatingWebsiteURL = v5->_originatingWebsiteURL;
    v5->_originatingWebsiteURL = v19;

    v5->_predictionAge = [coderCopy decodeIntegerForKey:@"predictionAge"];
    v5->_shouldAggregate = [coderCopy decodeBoolForKey:@"shouldAggregate"];
    v5->_flags = [coderCopy decodeInt64ForKey:@"flags"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    trigger = v5->_trigger;
    v5->_trigger = v21;

    v5->_itemType = [coderCopy decodeInt64ForKey:@"itemType"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleID"];
    targetBundleID = v5->_targetBundleID;
    v5->_targetBundleID = v23;

    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"operationData"];
    v29 = [v28 copy];
    operationData = v5->_operationData;
    v5->_operationData = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_originatingBundleID forKey:@"originatingBundleID"];
  [coderCopy encodeObject:self->_originatingWebsiteURL forKey:@"originatingWebsiteURL"];
  [coderCopy encodeInteger:self->_predictionAge forKey:@"predictionAge"];
  [coderCopy encodeBool:self->_shouldAggregate forKey:@"shouldAggregate"];
  [coderCopy encodeInt64:self->_flags forKey:@"flags"];
  [coderCopy encodeObject:self->_trigger forKey:@"trigger"];
  [coderCopy encodeInt64:self->_itemType forKey:@"itemType"];
  [coderCopy encodeObject:self->_targetBundleID forKey:@"targetBundleID"];
  [coderCopy encodeObject:self->_operationData forKey:@"operationData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v5[11] = *&self->_score;
    v8 = [(NSString *)self->_label copyWithZone:zone];
    v9 = v5[4];
    v5[4] = v8;

    v10 = [(NSString *)self->_value copyWithZone:zone];
    v11 = v5[5];
    v5[5] = v10;

    v12 = [(NSString *)self->_name copyWithZone:zone];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [(NSDate *)self->_date copyWithZone:zone];
    v15 = v5[7];
    v5[7] = v14;

    v16 = [(NSString *)self->_originatingBundleID copyWithZone:zone];
    v17 = v5[8];
    v5[8] = v16;

    v18 = [(NSURL *)self->_originatingWebsiteURL copyWithZone:zone];
    v19 = v5[9];
    v5[9] = v18;

    v5[10] = self->_predictionAge;
    *(v5 + 9) = self->_shouldAggregate;
    *(v5 + 10) = self->_flags;
    v20 = [(_ICProactiveTrigger *)self->_trigger copyWithZone:zone];
    v21 = v5[3];
    v5[3] = v20;

    *(v5 + 8) = self->_itemType;
    v22 = [(NSString *)self->_targetBundleID copyWithZone:zone];
    v23 = v5[12];
    v5[12] = v22;

    v24 = [(NSDictionary *)self->_operationData copyWithZone:zone];
    v25 = v5[13];
    v5[13] = v24;
  }

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICPredictedItem *)self isEqualToPredictedItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPredictedItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_27;
  }

  identifier = self->_identifier;
  if (identifier != itemCopy[2] && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_27;
  }

  label = self->_label;
  if (label != itemCopy[4] && ![(NSString *)label isEqual:?])
  {
    goto LABEL_27;
  }

  if (((value = self->_value, value == itemCopy[5]) || [(NSString *)value isEqual:?]) && ((name = self->_name, name == itemCopy[6]) || [(NSString *)name isEqual:?]) && ((date = self->_date, date == itemCopy[7]) || [(NSDate *)date isEqual:?]) && ((originatingBundleID = self->_originatingBundleID, originatingBundleID == itemCopy[8]) || [(NSString *)originatingBundleID isEqual:?]) && ((originatingWebsiteURL = self->_originatingWebsiteURL, originatingWebsiteURL == itemCopy[9]) || [(NSURL *)originatingWebsiteURL isEqual:?]) && self->_predictionAge == itemCopy[10] && [(_ICPredictedItem *)self hasScoreSimilarToItem:itemCopy]&& ((trigger = self->_trigger, trigger == itemCopy[3]) || [(_ICProactiveTrigger *)trigger isEqual:?]) && self->_flags == *(itemCopy + 10) && self->_shouldAggregate == *(itemCopy + 9) && self->_itemType == *(itemCopy + 8) && ((targetBundleID = self->_targetBundleID, targetBundleID == itemCopy[12]) || [(NSString *)targetBundleID isEqual:?]))
  {
    operationData = self->_operationData;
    if (operationData == itemCopy[13])
    {
      v15 = 1;
    }

    else
    {
      v15 = [(NSDictionary *)operationData isEqual:?];
    }
  }

  else
  {
LABEL_27:
    v15 = 0;
  }

  return v15;
}

@end