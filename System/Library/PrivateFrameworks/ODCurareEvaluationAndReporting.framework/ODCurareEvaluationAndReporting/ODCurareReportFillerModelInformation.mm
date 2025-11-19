@interface ODCurareReportFillerModelInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODCurareReportFillerModelInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelInformation;
  v4 = [(ODCurareReportFillerModelInformation *)&v8 description];
  v5 = [(ODCurareReportFillerModelInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  modelName = self->_modelName;
  if (modelName)
  {
    [v3 setObject:modelName forKey:@"modelName"];
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
    v9 = [(ODCurareReportFillerDataSet *)dataUsedToPersonalizeModel dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"dataUsedToPersonalizeModel"];
  }

  modelHyperparameters = self->_modelHyperparameters;
  if (modelHyperparameters)
  {
    v11 = [(ODCurareReportFillerModelHyperparameters *)modelHyperparameters dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"modelHyperparameters"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_modelName)
  {
    [ODCurareReportFillerModelInformation writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setModelName:self->_modelName];
  if (self->_modelCreationDate)
  {
    [v5 setModelCreationDate:?];
  }

  v4 = v5;
  v5[40] = self->_isDefaultModel;
  if (self->_dataUsedToPersonalizeModel)
  {
    [v5 setDataUsedToPersonalizeModel:?];
    v4 = v5;
  }

  if (self->_modelHyperparameters)
  {
    [v5 setModelHyperparameters:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_modelName copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_modelCreationDate copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 40) = self->_isDefaultModel;
  v10 = [(ODCurareReportFillerDataSet *)self->_dataUsedToPersonalizeModel copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(ODCurareReportFillerModelHyperparameters *)self->_modelHyperparameters copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  modelName = self->_modelName;
  if (modelName | *(v4 + 4))
  {
    if (![(NSString *)modelName isEqual:?])
    {
      goto LABEL_14;
    }
  }

  modelCreationDate = self->_modelCreationDate;
  if (modelCreationDate | *(v4 + 2))
  {
    if (![(NSString *)modelCreationDate isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v7 = *(v4 + 40);
  if (self->_isDefaultModel)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  dataUsedToPersonalizeModel = self->_dataUsedToPersonalizeModel;
  if (dataUsedToPersonalizeModel | *(v4 + 1) && ![(ODCurareReportFillerDataSet *)dataUsedToPersonalizeModel isEqual:?])
  {
    goto LABEL_14;
  }

  modelHyperparameters = self->_modelHyperparameters;
  if (modelHyperparameters | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (*(v8 + 4))
  {
    [(ODCurareReportFillerModelInformation *)self setModelName:?];
  }

  if (*(v8 + 2))
  {
    [(ODCurareReportFillerModelInformation *)self setModelCreationDate:?];
  }

  self->_isDefaultModel = *(v8 + 40);
  dataUsedToPersonalizeModel = self->_dataUsedToPersonalizeModel;
  v5 = *(v8 + 1);
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
  v7 = *(v8 + 3);
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