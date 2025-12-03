@interface ODCurareReportFillerModelInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerModelInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelInformation;
  v4 = [(ODCurareReportFillerModelInformation *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerModelInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  modelName = self->_modelName;
  if (modelName)
  {
    [dictionary setObject:modelName forKey:@"modelName"];
  }

  modelCreationDate = self->_modelCreationDate;
  if (modelCreationDate)
  {
    [v4 setObject:modelCreationDate forKey:@"modelCreationDate"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDefaultModel];
  [v4 setObject:v7 forKey:@"isDefaultModel"];

  dataUsedToPersonalizeModel = self->_dataUsedToPersonalizeModel;
  if (dataUsedToPersonalizeModel)
  {
    dictionaryRepresentation = [(ODCurareReportFillerDataSet *)dataUsedToPersonalizeModel dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"dataUsedToPersonalizeModel"];
  }

  modelHyperparameters = self->_modelHyperparameters;
  if (modelHyperparameters)
  {
    dictionaryRepresentation2 = [(ODCurareReportFillerModelHyperparameters *)modelHyperparameters dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"modelHyperparameters"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_modelName)
  {
    [ODCurareReportFillerModelInformation writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_modelCreationDate)
  {
    PBDataWriterWriteStringField();
  }

  isDefaultModel = self->_isDefaultModel;
  PBDataWriterWriteBOOLField();
  if (self->_dataUsedToPersonalizeModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_modelHyperparameters)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setModelName:self->_modelName];
  if (self->_modelCreationDate)
  {
    [toCopy setModelCreationDate:?];
  }

  v4 = toCopy;
  toCopy[40] = self->_isDefaultModel;
  if (self->_dataUsedToPersonalizeModel)
  {
    [toCopy setDataUsedToPersonalizeModel:?];
    v4 = toCopy;
  }

  if (self->_modelHyperparameters)
  {
    [toCopy setModelHyperparameters:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_modelName copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_modelCreationDate copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 40) = self->_isDefaultModel;
  v10 = [(ODCurareReportFillerDataSet *)self->_dataUsedToPersonalizeModel copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(ODCurareReportFillerModelHyperparameters *)self->_modelHyperparameters copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  modelName = self->_modelName;
  if (modelName | *(equalCopy + 4))
  {
    if (![(NSString *)modelName isEqual:?])
    {
      goto LABEL_14;
    }
  }

  modelCreationDate = self->_modelCreationDate;
  if (modelCreationDate | *(equalCopy + 2))
  {
    if (![(NSString *)modelCreationDate isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v7 = *(equalCopy + 40);
  if (self->_isDefaultModel)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  dataUsedToPersonalizeModel = self->_dataUsedToPersonalizeModel;
  if (dataUsedToPersonalizeModel | *(equalCopy + 1) && ![(ODCurareReportFillerDataSet *)dataUsedToPersonalizeModel isEqual:?])
  {
    goto LABEL_14;
  }

  modelHyperparameters = self->_modelHyperparameters;
  if (modelHyperparameters | *(equalCopy + 3))
  {
    v10 = [(ODCurareReportFillerModelHyperparameters *)modelHyperparameters isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelName hash];
  v4 = [(NSString *)self->_modelCreationDate hash]^ v3;
  v5 = 2654435761 * self->_isDefaultModel;
  v6 = v4 ^ [(ODCurareReportFillerDataSet *)self->_dataUsedToPersonalizeModel hash];
  return v6 ^ [(ODCurareReportFillerModelHyperparameters *)self->_modelHyperparameters hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(ODCurareReportFillerModelInformation *)self setModelName:?];
  }

  if (*(fromCopy + 2))
  {
    [(ODCurareReportFillerModelInformation *)self setModelCreationDate:?];
  }

  self->_isDefaultModel = *(fromCopy + 40);
  dataUsedToPersonalizeModel = self->_dataUsedToPersonalizeModel;
  v5 = *(fromCopy + 1);
  if (dataUsedToPersonalizeModel)
  {
    if (v5)
    {
      [(ODCurareReportFillerDataSet *)dataUsedToPersonalizeModel mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(ODCurareReportFillerModelInformation *)self setDataUsedToPersonalizeModel:?];
  }

  modelHyperparameters = self->_modelHyperparameters;
  v7 = *(fromCopy + 3);
  if (modelHyperparameters)
  {
    if (v7)
    {
      [(ODCurareReportFillerModelHyperparameters *)modelHyperparameters mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(ODCurareReportFillerModelInformation *)self setModelHyperparameters:?];
  }
}

@end