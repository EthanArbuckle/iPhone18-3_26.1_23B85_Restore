@interface ODCurareReportFillerDataSetStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerDataSetStats

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerDataSetStats;
  v4 = [(ODCurareReportFillerDataSetStats *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerDataSetStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  featureName = self->_featureName;
  if (featureName)
  {
    [dictionary setObject:featureName forKey:@"featureName"];
  }

  featureValueMin = self->_featureValueMin;
  if (featureValueMin)
  {
    [v4 setObject:featureValueMin forKey:@"featureValueMin"];
  }

  featureValueMax = self->_featureValueMax;
  if (featureValueMax)
  {
    [v4 setObject:featureValueMax forKey:@"featureValueMax"];
  }

  featureValueMean = self->_featureValueMean;
  if (featureValueMean)
  {
    [v4 setObject:featureValueMean forKey:@"featureValueMean"];
  }

  featureValueStd = self->_featureValueStd;
  if (featureValueStd)
  {
    [v4 setObject:featureValueStd forKey:@"featureValueStd"];
  }

  featureValuePercentile10 = self->_featureValuePercentile10;
  if (featureValuePercentile10)
  {
    [v4 setObject:featureValuePercentile10 forKey:@"featureValuePercentile10"];
  }

  featureValuePercentile25 = self->_featureValuePercentile25;
  if (featureValuePercentile25)
  {
    [v4 setObject:featureValuePercentile25 forKey:@"featureValuePercentile25"];
  }

  featureValuePercentile50 = self->_featureValuePercentile50;
  if (featureValuePercentile50)
  {
    [v4 setObject:featureValuePercentile50 forKey:@"featureValuePercentile50"];
  }

  featureValuePercentile75 = self->_featureValuePercentile75;
  if (featureValuePercentile75)
  {
    [v4 setObject:featureValuePercentile75 forKey:@"featureValuePercentile75"];
  }

  featureValuePercentile90 = self->_featureValuePercentile90;
  if (featureValuePercentile90)
  {
    [v4 setObject:featureValuePercentile90 forKey:@"featureValuePercentile90"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_featureName)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValueMin)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValueMax)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValueMean)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValueStd)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValuePercentile10)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValuePercentile25)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValuePercentile50)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValuePercentile75)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_featureValuePercentile90)
  {
    [ODCurareReportFillerDataSetStats writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  featureName = self->_featureName;
  toCopy = to;
  [toCopy setFeatureName:featureName];
  [toCopy setFeatureValueMin:self->_featureValueMin];
  [toCopy setFeatureValueMax:self->_featureValueMax];
  [toCopy setFeatureValueMean:self->_featureValueMean];
  [toCopy setFeatureValueStd:self->_featureValueStd];
  [toCopy setFeatureValuePercentile10:self->_featureValuePercentile10];
  [toCopy setFeatureValuePercentile25:self->_featureValuePercentile25];
  [toCopy setFeatureValuePercentile50:self->_featureValuePercentile50];
  [toCopy setFeatureValuePercentile75:self->_featureValuePercentile75];
  [toCopy setFeatureValuePercentile90:self->_featureValuePercentile90];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_featureName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_featureValueMin copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_featureValueMax copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_featureValueMean copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_featureValueStd copyWithZone:zone];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NSString *)self->_featureValuePercentile10 copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_featureValuePercentile25 copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_featureValuePercentile50 copyWithZone:zone];
  v21 = v5[7];
  v5[7] = v20;

  v22 = [(NSString *)self->_featureValuePercentile75 copyWithZone:zone];
  v23 = v5[8];
  v5[8] = v22;

  v24 = [(NSString *)self->_featureValuePercentile90 copyWithZone:zone];
  v25 = v5[9];
  v5[9] = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  featureName = self->_featureName;
  if (featureName | equalCopy[1])
  {
    if (![(NSString *)featureName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  featureValueMin = self->_featureValueMin;
  if (featureValueMin | equalCopy[4] && ![(NSString *)featureValueMin isEqual:?])
  {
    goto LABEL_22;
  }

  if (((featureValueMax = self->_featureValueMax, !(featureValueMax | equalCopy[2])) || [(NSString *)featureValueMax isEqual:?]) && ((featureValueMean = self->_featureValueMean, !(featureValueMean | equalCopy[3])) || [(NSString *)featureValueMean isEqual:?]) && ((featureValueStd = self->_featureValueStd, !(featureValueStd | equalCopy[10])) || [(NSString *)featureValueStd isEqual:?]) && ((featureValuePercentile10 = self->_featureValuePercentile10, !(featureValuePercentile10 | equalCopy[5])) || [(NSString *)featureValuePercentile10 isEqual:?]) && ((featureValuePercentile25 = self->_featureValuePercentile25, !(featureValuePercentile25 | equalCopy[6])) || [(NSString *)featureValuePercentile25 isEqual:?]) && ((featureValuePercentile50 = self->_featureValuePercentile50, !(featureValuePercentile50 | equalCopy[7])) || [(NSString *)featureValuePercentile50 isEqual:?]) && ((featureValuePercentile75 = self->_featureValuePercentile75, !(featureValuePercentile75 | equalCopy[8])) || [(NSString *)featureValuePercentile75 isEqual:?]))
  {
    featureValuePercentile90 = self->_featureValuePercentile90;
    if (featureValuePercentile90 | equalCopy[9])
    {
      v15 = [(NSString *)featureValuePercentile90 isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_featureName hash];
  v4 = [(NSString *)self->_featureValueMin hash]^ v3;
  v5 = [(NSString *)self->_featureValueMax hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_featureValueMean hash];
  v7 = [(NSString *)self->_featureValueStd hash];
  v8 = v7 ^ [(NSString *)self->_featureValuePercentile10 hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_featureValuePercentile25 hash];
  v10 = [(NSString *)self->_featureValuePercentile50 hash];
  v11 = v10 ^ [(NSString *)self->_featureValuePercentile75 hash];
  return v9 ^ v11 ^ [(NSString *)self->_featureValuePercentile90 hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureName:?];
  }

  if (fromCopy[4])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValueMin:?];
  }

  if (fromCopy[2])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValueMax:?];
  }

  if (fromCopy[3])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValueMean:?];
  }

  if (fromCopy[10])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValueStd:?];
  }

  if (fromCopy[5])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValuePercentile10:?];
  }

  if (fromCopy[6])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValuePercentile25:?];
  }

  if (fromCopy[7])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValuePercentile50:?];
  }

  if (fromCopy[8])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValuePercentile75:?];
  }

  if (fromCopy[9])
  {
    [(ODCurareReportFillerDataSetStats *)self setFeatureValuePercentile90:?];
  }
}

@end