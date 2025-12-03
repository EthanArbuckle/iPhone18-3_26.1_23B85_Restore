@interface HKSelectedRangeData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelectedRangeData:(id)data;
- (HKSelectedRangeData)initWithStatisticsType:(int64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKSelectedRangeData

- (HKSelectedRangeData)initWithStatisticsType:(int64_t)type
{
  v14.receiver = self;
  v14.super_class = HKSelectedRangeData;
  v4 = [(HKSelectedRangeData *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_statisticsType = type;
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
  statisticsType = [(HKSelectedRangeData *)self statisticsType];
  v4 = [(HKSelectedRangeData *)self dataType]^ statisticsType;
  attributedString = [(HKSelectedRangeData *)self attributedString];
  v6 = v4 ^ [attributedString hash];
  valueAsNumber = [(HKSelectedRangeData *)self valueAsNumber];
  v8 = [valueAsNumber hash];
  prefixColor = [(HKSelectedRangeData *)self prefixColor];
  v10 = v6 ^ v8 ^ [prefixColor hash];
  prefersImageAffixes = [(HKSelectedRangeData *)self prefersImageAffixes];
  titleOverride = [(HKSelectedRangeData *)self titleOverride];
  v13 = v10 ^ prefersImageAffixes ^ [titleOverride hash];
  titleColorOverride = [(HKSelectedRangeData *)self titleColorOverride];
  v15 = [titleColorOverride hash];
  metadata = [(HKSelectedRangeData *)self metadata];
  v17 = v15 ^ [metadata hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
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

- (BOOL)isEqualToSelectedRangeData:(id)data
{
  dataCopy = data;
  attributedString = [(HKSelectedRangeData *)self attributedString];
  if (attributedString)
  {

LABEL_4:
    attributedString2 = [(HKSelectedRangeData *)self attributedString];
    attributedString3 = [dataCopy attributedString];
    v9 = [attributedString2 isEqualToAttributedString:attributedString3];

    v10 = v9 ^ 1;
    goto LABEL_5;
  }

  attributedString4 = [dataCopy attributedString];

  if (attributedString4)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:
  valueAsNumber = [(HKSelectedRangeData *)self valueAsNumber];
  if (valueAsNumber)
  {

LABEL_8:
    valueAsNumber2 = [(HKSelectedRangeData *)self valueAsNumber];
    valueAsNumber3 = [dataCopy valueAsNumber];
    v15 = [valueAsNumber2 isEqualToNumber:valueAsNumber3];

    v16 = v15 ^ 1;
    goto LABEL_9;
  }

  valueAsNumber4 = [dataCopy valueAsNumber];

  if (valueAsNumber4)
  {
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:
  titleOverride = [(HKSelectedRangeData *)self titleOverride];
  if (titleOverride)
  {

LABEL_12:
    titleOverride2 = [(HKSelectedRangeData *)self titleOverride];
    titleOverride3 = [dataCopy titleOverride];
    v21 = [titleOverride2 isEqualToString:titleOverride3];

    goto LABEL_13;
  }

  titleOverride4 = [dataCopy titleOverride];

  if (titleOverride4)
  {
    goto LABEL_12;
  }

  v21 = 1;
LABEL_13:
  titleColorOverride = [(HKSelectedRangeData *)self titleColorOverride];
  if (titleColorOverride)
  {

LABEL_16:
    titleColorOverride2 = [(HKSelectedRangeData *)self titleColorOverride];
    titleColorOverride3 = [dataCopy titleColorOverride];
    v26 = [titleColorOverride2 isEqual:titleColorOverride3];

    v27 = v26 ^ 1;
    goto LABEL_17;
  }

  titleColorOverride4 = [dataCopy titleColorOverride];

  if (titleColorOverride4)
  {
    goto LABEL_16;
  }

  v27 = 0;
LABEL_17:
  prefixColor = [(HKSelectedRangeData *)self prefixColor];
  if (prefixColor)
  {

LABEL_20:
    prefixColor2 = [(HKSelectedRangeData *)self prefixColor];
    prefixColor3 = [dataCopy prefixColor];
    v21 = [prefixColor2 isEqual:prefixColor3];

    goto LABEL_21;
  }

  prefixColor4 = [dataCopy prefixColor];

  if (prefixColor4)
  {
    goto LABEL_20;
  }

LABEL_21:
  statisticsType = [(HKSelectedRangeData *)self statisticsType];
  if (statisticsType == [dataCopy statisticsType] && (v33 = -[HKSelectedRangeData dataType](self, "dataType"), v33 == objc_msgSend(dataCopy, "dataType")) && (v34 = -[HKSelectedRangeData prefersImageAffixes](self, "prefersImageAffixes"), !((v34 ^ objc_msgSend(dataCopy, "prefersImageAffixes") | v10) & 1 | ((v21 & 1) == 0) | (v27 | v16) & 1)))
  {
    metadata = [(HKSelectedRangeData *)self metadata];
    metadata2 = [dataCopy metadata];
    v35 = [metadata isEqualToDictionary:metadata2];
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
  attributedString = [(HKSelectedRangeData *)self attributedString];
  titleOverride = [(HKSelectedRangeData *)self titleOverride];
  titleColorOverride = [(HKSelectedRangeData *)self titleColorOverride];
  valueAsNumber = [(HKSelectedRangeData *)self valueAsNumber];
  v9 = _NSStringFromSelectedRangeStatisticsType([(HKSelectedRangeData *)self statisticsType]);
  v10 = _NSStringFromSelectedRangeDataType([(HKSelectedRangeData *)self dataType]);
  prefixColor = [(HKSelectedRangeData *)self prefixColor];
  [(HKSelectedRangeData *)self prefersImageAffixes];
  v12 = HKStringFromBool();
  v13 = [v3 stringWithFormat:@"%@, attributed: %@, titleOverride: %@, titleColorOverride: %@, valueAsNumber: %@, statisticsType: %@, dataType: %@, prefixColor: %@, prefersImageAffixes: %@", v4, attributedString, titleOverride, titleColorOverride, valueAsNumber, v9, v10, prefixColor, v12];

  return v13;
}

@end