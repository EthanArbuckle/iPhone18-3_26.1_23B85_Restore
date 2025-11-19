@interface _ICPredictedItem
+ (id)predictedItemFromQuickTypeItem:(id)a3 trigger:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPredictedItem:(id)a3;
- (_ICPredictedItem)initWithCoder:(id)a3;
- (_ICPredictedItem)initWithIdentifier:(id)a3 itemType:(unsigned __int8)a4 score:(double)a5 value:(id)a6 label:(id)a7 name:(id)a8 date:(id)a9 originatingBundleID:(id)a10 originatingWebsiteURL:(id)a11 predictionAge:(unint64_t)a12 shouldAggregate:(BOOL)a13 flags:(unsigned __int8)a14 targetBundleID:(id)a15 operationData:(id)a16 proactiveTrigger:(id)a17;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ICPredictedItem

- (_ICPredictedItem)initWithIdentifier:(id)a3 itemType:(unsigned __int8)a4 score:(double)a5 value:(id)a6 label:(id)a7 name:(id)a8 date:(id)a9 originatingBundleID:(id)a10 originatingWebsiteURL:(id)a11 predictionAge:(unint64_t)a12 shouldAggregate:(BOOL)a13 flags:(unsigned __int8)a14 targetBundleID:(id)a15 operationData:(id)a16 proactiveTrigger:(id)a17
{
  v38 = a3;
  obj = a6;
  v23 = a6;
  v35 = a7;
  v24 = a7;
  v36 = a8;
  v25 = a8;
  v40 = a9;
  v39 = a10;
  v26 = a11;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v41.receiver = self;
  v41.super_class = _ICPredictedItem;
  v30 = [(_ICPredictedItem *)&v41 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_identifier, a3);
    v31->_itemType = a4;
    v31->_score = a5;
    objc_storeStrong(&v31->_value, obj);
    objc_storeStrong(&v31->_label, v35);
    objc_storeStrong(&v31->_name, v36);
    objc_storeStrong(&v31->_date, a9);
    objc_storeStrong(&v31->_originatingBundleID, a10);
    objc_storeStrong(&v31->_originatingWebsiteURL, a11);
    v31->_predictionAge = a12;
    v31->_shouldAggregate = a13;
    v31->_flags = a14;
    objc_storeStrong(&v31->_targetBundleID, a15);
    objc_storeStrong(&v31->_operationData, a16);
    objc_storeStrong(&v31->_trigger, a17);
    v31->_layoutHint = 0;
  }

  return v31;
}

+ (id)predictedItemFromQuickTypeItem:(id)a3 trigger:(id)a4
{
  v6 = a3;
  v23 = a4;
  v7 = [v6 flags];
  v8 = [v6 flags] & 2 | v7 & 1;
  if (([v6 source] & 0xA) != 0)
  {
    v8 |= [v6 flags] & 4;
  }

  v22 = [a1 alloc];
  v21 = [v6 sourceIdentifier];
  [v6 score];
  v10 = v9;
  v11 = [v6 value];
  v12 = [v6 label];
  v13 = [v6 name];
  v14 = [v6 date];
  v15 = [v6 originatingBundleID];
  v16 = [v6 originatingWebsiteURL];
  v17 = [v6 predictionAge];
  BYTE1(v20) = v8;
  LOBYTE(v20) = [v6 shouldAggregate];
  v18 = [v22 initWithIdentifier:v21 itemType:0 score:v11 value:v12 label:v13 name:v14 date:v10 originatingBundleID:v15 originatingWebsiteURL:v16 predictionAge:v17 shouldAggregate:v20 flags:0 targetBundleID:0 operationData:v23 proactiveTrigger:?];

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

- (_ICPredictedItem)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = _ICPredictedItem;
  v5 = [(_ICPredictedItem *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    [v4 decodeDoubleForKey:@"score"];
    v5->_score = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingBundleID"];
    originatingBundleID = v5->_originatingBundleID;
    v5->_originatingBundleID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingWebsiteURL"];
    originatingWebsiteURL = v5->_originatingWebsiteURL;
    v5->_originatingWebsiteURL = v19;

    v5->_predictionAge = [v4 decodeIntegerForKey:@"predictionAge"];
    v5->_shouldAggregate = [v4 decodeBoolForKey:@"shouldAggregate"];
    v5->_flags = [v4 decodeInt64ForKey:@"flags"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    trigger = v5->_trigger;
    v5->_trigger = v21;

    v5->_itemType = [v4 decodeInt64ForKey:@"itemType"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleID"];
    targetBundleID = v5->_targetBundleID;
    v5->_targetBundleID = v23;

    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"operationData"];
    v29 = [v28 copy];
    operationData = v5->_operationData;
    v5->_operationData = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_originatingBundleID forKey:@"originatingBundleID"];
  [v5 encodeObject:self->_originatingWebsiteURL forKey:@"originatingWebsiteURL"];
  [v5 encodeInteger:self->_predictionAge forKey:@"predictionAge"];
  [v5 encodeBool:self->_shouldAggregate forKey:@"shouldAggregate"];
  [v5 encodeInt64:self->_flags forKey:@"flags"];
  [v5 encodeObject:self->_trigger forKey:@"trigger"];
  [v5 encodeInt64:self->_itemType forKey:@"itemType"];
  [v5 encodeObject:self->_targetBundleID forKey:@"targetBundleID"];
  [v5 encodeObject:self->_operationData forKey:@"operationData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v5[11] = *&self->_score;
    v8 = [(NSString *)self->_label copyWithZone:a3];
    v9 = v5[4];
    v5[4] = v8;

    v10 = [(NSString *)self->_value copyWithZone:a3];
    v11 = v5[5];
    v5[5] = v10;

    v12 = [(NSString *)self->_name copyWithZone:a3];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [(NSDate *)self->_date copyWithZone:a3];
    v15 = v5[7];
    v5[7] = v14;

    v16 = [(NSString *)self->_originatingBundleID copyWithZone:a3];
    v17 = v5[8];
    v5[8] = v16;

    v18 = [(NSURL *)self->_originatingWebsiteURL copyWithZone:a3];
    v19 = v5[9];
    v5[9] = v18;

    v5[10] = self->_predictionAge;
    *(v5 + 9) = self->_shouldAggregate;
    *(v5 + 10) = self->_flags;
    v20 = [(_ICProactiveTrigger *)self->_trigger copyWithZone:a3];
    v21 = v5[3];
    v5[3] = v20;

    *(v5 + 8) = self->_itemType;
    v22 = [(NSString *)self->_targetBundleID copyWithZone:a3];
    v23 = v5[12];
    v5[12] = v22;

    v24 = [(NSDictionary *)self->_operationData copyWithZone:a3];
    v25 = v5[13];
    v5[13] = v24;
  }

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICPredictedItem *)self isEqualToPredictedItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPredictedItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_27;
  }

  identifier = self->_identifier;
  if (identifier != v4[2] && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_27;
  }

  label = self->_label;
  if (label != v4[4] && ![(NSString *)label isEqual:?])
  {
    goto LABEL_27;
  }

  if (((value = self->_value, value == v4[5]) || [(NSString *)value isEqual:?]) && ((name = self->_name, name == v4[6]) || [(NSString *)name isEqual:?]) && ((date = self->_date, date == v4[7]) || [(NSDate *)date isEqual:?]) && ((originatingBundleID = self->_originatingBundleID, originatingBundleID == v4[8]) || [(NSString *)originatingBundleID isEqual:?]) && ((originatingWebsiteURL = self->_originatingWebsiteURL, originatingWebsiteURL == v4[9]) || [(NSURL *)originatingWebsiteURL isEqual:?]) && self->_predictionAge == v4[10] && [(_ICPredictedItem *)self hasScoreSimilarToItem:v4]&& ((trigger = self->_trigger, trigger == v4[3]) || [(_ICProactiveTrigger *)trigger isEqual:?]) && self->_flags == *(v4 + 10) && self->_shouldAggregate == *(v4 + 9) && self->_itemType == *(v4 + 8) && ((targetBundleID = self->_targetBundleID, targetBundleID == v4[12]) || [(NSString *)targetBundleID isEqual:?]))
  {
    operationData = self->_operationData;
    if (operationData == v4[13])
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