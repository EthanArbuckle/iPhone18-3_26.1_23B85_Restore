@interface HKSelectedRangeData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelectedRangeData:(id)a3;
- (HKSelectedRangeData)initWithStatisticsType:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKSelectedRangeData

- (HKSelectedRangeData)initWithStatisticsType:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = HKSelectedRangeData;
  v4 = [(HKSelectedRangeData *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_statisticsType = a3;
    v4->_dataType = 0;
    attributedString = v4->_attributedString;
    v4->_attributedString = 0;

    titleOverride = v5->_titleOverride;
    v5->_titleOverride = 0;

    titleColorOverride = v5->_titleColorOverride;
    v5->_titleColorOverride = 0;

    valueAsNumber = v5->_valueAsNumber;
    v5->_valueAsNumber = 0;

    prefixColor = v5->_prefixColor;
    v5->_prefixColor = 0;

    v5->_prefersImageAffixes = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metadata = v5->_metadata;
    v5->_metadata = v11;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKSelectedRangeData *)self statisticsType];
  v4 = [(HKSelectedRangeData *)self dataType]^ v3;
  v5 = [(HKSelectedRangeData *)self attributedString];
  v6 = v4 ^ [v5 hash];
  v7 = [(HKSelectedRangeData *)self valueAsNumber];
  v8 = [v7 hash];
  v9 = [(HKSelectedRangeData *)self prefixColor];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HKSelectedRangeData *)self prefersImageAffixes];
  v12 = [(HKSelectedRangeData *)self titleOverride];
  v13 = v10 ^ v11 ^ [v12 hash];
  v14 = [(HKSelectedRangeData *)self titleColorOverride];
  v15 = [v14 hash];
  v16 = [(HKSelectedRangeData *)self metadata];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(HKSelectedRangeData *)self isEqualToSelectedRangeData:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToSelectedRangeData:(id)a3
{
  v4 = a3;
  v5 = [(HKSelectedRangeData *)self attributedString];
  if (v5)
  {

LABEL_4:
    v7 = [(HKSelectedRangeData *)self attributedString];
    v8 = [v4 attributedString];
    v9 = [v7 isEqualToAttributedString:v8];

    v10 = v9 ^ 1;
    goto LABEL_5;
  }

  v6 = [v4 attributedString];

  if (v6)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:
  v11 = [(HKSelectedRangeData *)self valueAsNumber];
  if (v11)
  {

LABEL_8:
    v13 = [(HKSelectedRangeData *)self valueAsNumber];
    v14 = [v4 valueAsNumber];
    v15 = [v13 isEqualToNumber:v14];

    v16 = v15 ^ 1;
    goto LABEL_9;
  }

  v12 = [v4 valueAsNumber];

  if (v12)
  {
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:
  v17 = [(HKSelectedRangeData *)self titleOverride];
  if (v17)
  {

LABEL_12:
    v19 = [(HKSelectedRangeData *)self titleOverride];
    v20 = [v4 titleOverride];
    v21 = [v19 isEqualToString:v20];

    goto LABEL_13;
  }

  v18 = [v4 titleOverride];

  if (v18)
  {
    goto LABEL_12;
  }

  v21 = 1;
LABEL_13:
  v22 = [(HKSelectedRangeData *)self titleColorOverride];
  if (v22)
  {

LABEL_16:
    v24 = [(HKSelectedRangeData *)self titleColorOverride];
    v25 = [v4 titleColorOverride];
    v26 = [v24 isEqual:v25];

    v27 = v26 ^ 1;
    goto LABEL_17;
  }

  v23 = [v4 titleColorOverride];

  if (v23)
  {
    goto LABEL_16;
  }

  v27 = 0;
LABEL_17:
  v28 = [(HKSelectedRangeData *)self prefixColor];
  if (v28)
  {

LABEL_20:
    v30 = [(HKSelectedRangeData *)self prefixColor];
    v31 = [v4 prefixColor];
    v21 = [v30 isEqual:v31];

    goto LABEL_21;
  }

  v29 = [v4 prefixColor];

  if (v29)
  {
    goto LABEL_20;
  }

LABEL_21:
  v32 = [(HKSelectedRangeData *)self statisticsType];
  if (v32 == [v4 statisticsType] && (v33 = -[HKSelectedRangeData dataType](self, "dataType"), v33 == objc_msgSend(v4, "dataType")) && (v34 = -[HKSelectedRangeData prefersImageAffixes](self, "prefersImageAffixes"), !((v34 ^ objc_msgSend(v4, "prefersImageAffixes") | v10) & 1 | ((v21 & 1) == 0) | (v27 | v16) & 1)))
  {
    v37 = [(HKSelectedRangeData *)self metadata];
    v38 = [v4 metadata];
    v35 = [v37 isEqualToDictionary:v38];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = HKSelectedRangeData;
  v4 = [(HKSelectedRangeData *)&v15 description];
  v5 = [(HKSelectedRangeData *)self attributedString];
  v6 = [(HKSelectedRangeData *)self titleOverride];
  v7 = [(HKSelectedRangeData *)self titleColorOverride];
  v8 = [(HKSelectedRangeData *)self valueAsNumber];
  v9 = _NSStringFromSelectedRangeStatisticsType([(HKSelectedRangeData *)self statisticsType]);
  v10 = _NSStringFromSelectedRangeDataType([(HKSelectedRangeData *)self dataType]);
  v11 = [(HKSelectedRangeData *)self prefixColor];
  [(HKSelectedRangeData *)self prefersImageAffixes];
  v12 = HKStringFromBool();
  v13 = [v3 stringWithFormat:@"%@, attributed: %@, titleOverride: %@, titleColorOverride: %@, valueAsNumber: %@, statisticsType: %@, dataType: %@, prefixColor: %@, prefersImageAffixes: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end