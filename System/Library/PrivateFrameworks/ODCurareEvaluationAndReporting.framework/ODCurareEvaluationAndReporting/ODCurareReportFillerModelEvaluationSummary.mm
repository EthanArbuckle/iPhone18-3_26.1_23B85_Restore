@interface ODCurareReportFillerModelEvaluationSummary
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addModelEvaluationResults:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODCurareReportFillerModelEvaluationSummary

- (void)addModelEvaluationResults:(id)a3
{
  v4 = a3;
  modelEvaluationResults = self->_modelEvaluationResults;
  v8 = v4;
  if (!modelEvaluationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelEvaluationResults;
    self->_modelEvaluationResults = v6;

    v4 = v8;
    modelEvaluationResults = self->_modelEvaluationResults;
  }

  [(NSMutableArray *)modelEvaluationResults addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelEvaluationSummary;
  v4 = [(ODCurareReportFillerModelEvaluationSummary *)&v8 description];
  v5 = [(ODCurareReportFillerModelEvaluationSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  modelName = self->_modelName;
  if (modelName)
  {
    [v3 setObject:modelName forKey:@"modelName"];
  }

  evaluationDate = self->_evaluationDate;
  if (evaluationDate)
  {
    [v4 setObject:evaluationDate forKey:@"evaluationDate"];
  }

  if ([(NSMutableArray *)self->_modelEvaluationResults count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelEvaluationResults, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_modelEvaluationResults;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"modelEvaluationResults"];
  }

  dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
  if (dataUsedToEvaluateModel)
  {
    v15 = [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"dataUsedToEvaluateModel"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_modelName)
  {
    [ODCurareReportFillerModelEvaluationSummary writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_evaluationDate)
  {
    [ODCurareReportFillerModelEvaluationSummary writeTo:];
  }

  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_modelEvaluationResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_dataUsedToEvaluateModel)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setModelName:self->_modelName];
  [v8 setEvaluationDate:self->_evaluationDate];
  if ([(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsCount])
  {
    [v8 clearModelEvaluationResults];
    v4 = [(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsAtIndex:i];
        [v8 addModelEvaluationResults:v7];
      }
    }
  }

  if (self->_dataUsedToEvaluateModel)
  {
    [v8 setDataUsedToEvaluateModel:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_modelName copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_evaluationDate copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_modelEvaluationResults;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * v14) copyWithZone:{a3, v20}];
        [v5 addModelEvaluationResults:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(ODCurareReportFillerDataSet *)self->_dataUsedToEvaluateModel copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((modelName = self->_modelName, !(modelName | v4[4])) || -[NSString isEqual:](modelName, "isEqual:")) && ((evaluationDate = self->_evaluationDate, !(evaluationDate | v4[2])) || -[NSString isEqual:](evaluationDate, "isEqual:")) && ((modelEvaluationResults = self->_modelEvaluationResults, !(modelEvaluationResults | v4[3])) || -[NSMutableArray isEqual:](modelEvaluationResults, "isEqual:")))
  {
    dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
    if (dataUsedToEvaluateModel | v4[1])
    {
      v9 = [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelName hash];
  v4 = [(NSString *)self->_evaluationDate hash]^ v3;
  v5 = [(NSMutableArray *)self->_modelEvaluationResults hash];
  return v4 ^ v5 ^ [(ODCurareReportFillerDataSet *)self->_dataUsedToEvaluateModel hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setModelName:?];
  }

  if (*(v4 + 2))
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setEvaluationDate:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ODCurareReportFillerModelEvaluationSummary *)self addModelEvaluationResults:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
  v11 = *(v4 + 1);
  if (dataUsedToEvaluateModel)
  {
    if (v11)
    {
      [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setDataUsedToEvaluateModel:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end