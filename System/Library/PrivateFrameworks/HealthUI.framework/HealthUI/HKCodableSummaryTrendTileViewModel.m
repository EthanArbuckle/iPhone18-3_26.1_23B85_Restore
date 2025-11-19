@interface HKCodableSummaryTrendTileViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)diagramStyleAsString:(int)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDiagramStyle:(id)a3;
- (int)diagramStyle;
- (unint64_t)hash;
- (void)addVisualizationPoints:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDiagramStyle:(BOOL)a3;
- (void)setHasOriginalEventDateData:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryTrendTileViewModel

- (int)diagramStyle
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_diagramStyle;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDiagramStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)diagramStyleAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E81B5C70[a3];
  }

  return v4;
}

- (int)StringAsDiagramStyle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"bar"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"line"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"minMax"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"distribution"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"bloodPressure"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addVisualizationPoints:(id)a3
{
  v4 = a3;
  visualizationPoints = self->_visualizationPoints;
  v8 = v4;
  if (!visualizationPoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visualizationPoints;
    self->_visualizationPoints = v6;

    v4 = v8;
    visualizationPoints = self->_visualizationPoints;
  }

  [(NSMutableArray *)visualizationPoints addObject:v4];
}

- (void)setHasOriginalEventDateData:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryTrendTileViewModel;
  v4 = [(HKCodableSummaryTrendTileViewModel *)&v8 description];
  v5 = [(HKCodableSummaryTrendTileViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  trendDescription = self->_trendDescription;
  if (trendDescription)
  {
    [v3 setObject:trendDescription forKey:@"trendDescription"];
  }

  changeTypeRawValue = self->_changeTypeRawValue;
  if (changeTypeRawValue)
  {
    [v4 setObject:changeTypeRawValue forKey:@"changeTypeRawValue"];
  }

  if ((*&self->_has & 4) != 0)
  {
    diagramStyle = self->_diagramStyle;
    if (diagramStyle >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_diagramStyle];
    }

    else
    {
      v8 = off_1E81B5C70[diagramStyle];
    }

    [v4 setObject:v8 forKey:@"diagramStyle"];
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [v4 setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
  }

  coveredDateRangeRawValue = self->_coveredDateRangeRawValue;
  if (coveredDateRangeRawValue)
  {
    [v4 setObject:coveredDateRangeRawValue forKey:@"coveredDateRangeRawValue"];
  }

  baseTrendLine = self->_baseTrendLine;
  if (baseTrendLine)
  {
    v12 = [(HKCodableSummaryTrendLineViewModel *)baseTrendLine dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"baseTrendLine"];
  }

  changeTrendLine = self->_changeTrendLine;
  if (changeTrendLine)
  {
    v14 = [(HKCodableSummaryTrendLineViewModel *)changeTrendLine dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"changeTrendLine"];
  }

  if ([(NSMutableArray *)self->_visualizationPoints count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_visualizationPoints, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = self->_visualizationPoints;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"visualizationPoints"];
  }

  notificationIdentifier = self->_notificationIdentifier;
  if (notificationIdentifier)
  {
    [v4 setObject:notificationIdentifier forKey:@"notificationIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_discoveryDateData];
    [v4 setObject:v24 forKey:@"discoveryDateData"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_originalEventDateData];
    [v4 setObject:v25 forKey:@"originalEventDateData"];
  }

  trendDescriptionSharingPreviewOverride = self->_trendDescriptionSharingPreviewOverride;
  if (trendDescriptionSharingPreviewOverride)
  {
    [v4 setObject:trendDescriptionSharingPreviewOverride forKey:@"trendDescriptionSharingPreviewOverride"];
  }

  cellHeaderViewModel = self->_cellHeaderViewModel;
  if (cellHeaderViewModel)
  {
    v28 = [(HKCodableCellHeaderViewModel *)cellHeaderViewModel dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"cellHeaderViewModel"];
  }

  pregnancyLabelValue = self->_pregnancyLabelValue;
  if (pregnancyLabelValue)
  {
    [v4 setObject:pregnancyLabelValue forKey:@"pregnancyLabelValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_trendDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_changeTypeRawValue)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_coveredDateRangeRawValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_baseTrendLine)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_changeTrendLine)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visualizationPoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_notificationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_trendDescriptionSharingPreviewOverride)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cellHeaderViewModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_pregnancyLabelValue)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_trendDescription)
  {
    [v4 setTrendDescription:?];
    v4 = v10;
  }

  if (self->_changeTypeRawValue)
  {
    [v10 setChangeTypeRawValue:?];
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 16) = self->_diagramStyle;
    *(v4 + 120) |= 4u;
  }

  if (self->_objectTypeIdentifier)
  {
    [v10 setObjectTypeIdentifier:?];
  }

  if (self->_coveredDateRangeRawValue)
  {
    [v10 setCoveredDateRangeRawValue:?];
  }

  if (self->_baseTrendLine)
  {
    [v10 setBaseTrendLine:?];
  }

  if (self->_changeTrendLine)
  {
    [v10 setChangeTrendLine:?];
  }

  if ([(HKCodableSummaryTrendTileViewModel *)self visualizationPointsCount])
  {
    [v10 clearVisualizationPoints];
    v5 = [(HKCodableSummaryTrendTileViewModel *)self visualizationPointsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableSummaryTrendTileViewModel *)self visualizationPointsAtIndex:i];
        [v10 addVisualizationPoints:v8];
      }
    }
  }

  if (self->_notificationIdentifier)
  {
    [v10 setNotificationIdentifier:?];
  }

  v9 = v10;
  if (*&self->_has)
  {
    *(v10 + 1) = *&self->_discoveryDateData;
    *(v10 + 120) |= 1u;
  }

  if (self->_trendDescriptionSharingPreviewOverride)
  {
    [v10 setTrendDescriptionSharingPreviewOverride:?];
    v9 = v10;
  }

  if (self->_cellHeaderViewModel)
  {
    [v10 setCellHeaderViewModel:?];
    v9 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9[2] = *&self->_originalEventDateData;
    *(v9 + 120) |= 2u;
  }

  if (self->_pregnancyLabelValue)
  {
    [v10 setPregnancyLabelValue:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_trendDescription copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  v8 = [(NSString *)self->_changeTypeRawValue copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_diagramStyle;
    *(v5 + 120) |= 4u;
  }

  v10 = [(NSString *)self->_objectTypeIdentifier copyWithZone:a3];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v12 = [(NSString *)self->_coveredDateRangeRawValue copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(HKCodableSummaryTrendLineViewModel *)self->_baseTrendLine copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(HKCodableSummaryTrendLineViewModel *)self->_changeTrendLine copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = self->_visualizationPoints;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v33 + 1) + 8 * v22) copyWithZone:{a3, v33}];
        [v5 addVisualizationPoints:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_notificationIdentifier copyWithZone:a3];
  v25 = *(v5 + 72);
  *(v5 + 72) = v24;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_discoveryDateData;
    *(v5 + 120) |= 1u;
  }

  v26 = [(NSString *)self->_trendDescriptionSharingPreviewOverride copyWithZone:a3, v33];
  v27 = *(v5 + 104);
  *(v5 + 104) = v26;

  v28 = [(HKCodableCellHeaderViewModel *)self->_cellHeaderViewModel copyWithZone:a3];
  v29 = *(v5 + 32);
  *(v5 + 32) = v28;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_originalEventDateData;
    *(v5 + 120) |= 2u;
  }

  v30 = [(NSString *)self->_pregnancyLabelValue copyWithZone:a3];
  v31 = *(v5 + 88);
  *(v5 + 88) = v30;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  trendDescription = self->_trendDescription;
  if (trendDescription | *(v4 + 12))
  {
    if (![(NSString *)trendDescription isEqual:?])
    {
      goto LABEL_39;
    }
  }

  changeTypeRawValue = self->_changeTypeRawValue;
  if (changeTypeRawValue | *(v4 + 6))
  {
    if (![(NSString *)changeTypeRawValue isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 120) & 4) == 0 || self->_diagramStyle != *(v4 + 16))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 120) & 4) != 0)
  {
LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier | *(v4 + 10) && ![(NSString *)objectTypeIdentifier isEqual:?])
  {
    goto LABEL_39;
  }

  coveredDateRangeRawValue = self->_coveredDateRangeRawValue;
  if (coveredDateRangeRawValue | *(v4 + 7))
  {
    if (![(NSString *)coveredDateRangeRawValue isEqual:?])
    {
      goto LABEL_39;
    }
  }

  baseTrendLine = self->_baseTrendLine;
  if (baseTrendLine | *(v4 + 3))
  {
    if (![(HKCodableSummaryTrendLineViewModel *)baseTrendLine isEqual:?])
    {
      goto LABEL_39;
    }
  }

  changeTrendLine = self->_changeTrendLine;
  if (changeTrendLine | *(v4 + 5))
  {
    if (![(HKCodableSummaryTrendLineViewModel *)changeTrendLine isEqual:?])
    {
      goto LABEL_39;
    }
  }

  visualizationPoints = self->_visualizationPoints;
  if (visualizationPoints | *(v4 + 14))
  {
    if (![(NSMutableArray *)visualizationPoints isEqual:?])
    {
      goto LABEL_39;
    }
  }

  notificationIdentifier = self->_notificationIdentifier;
  if (notificationIdentifier | *(v4 + 9))
  {
    if (![(NSString *)notificationIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_discoveryDateData != *(v4 + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_39;
  }

  trendDescriptionSharingPreviewOverride = self->_trendDescriptionSharingPreviewOverride;
  if (trendDescriptionSharingPreviewOverride | *(v4 + 13) && ![(NSString *)trendDescriptionSharingPreviewOverride isEqual:?])
  {
    goto LABEL_39;
  }

  cellHeaderViewModel = self->_cellHeaderViewModel;
  if (cellHeaderViewModel | *(v4 + 4))
  {
    if (![(HKCodableCellHeaderViewModel *)cellHeaderViewModel isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_originalEventDateData != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
    goto LABEL_39;
  }

  pregnancyLabelValue = self->_pregnancyLabelValue;
  if (pregnancyLabelValue | *(v4 + 11))
  {
    v16 = [(NSString *)pregnancyLabelValue isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_40:

  return v16;
}

- (unint64_t)hash
{
  v26 = [(NSString *)self->_trendDescription hash];
  v25 = [(NSString *)self->_changeTypeRawValue hash];
  if ((*&self->_has & 4) != 0)
  {
    v24 = 2654435761 * self->_diagramStyle;
  }

  else
  {
    v24 = 0;
  }

  v23 = [(NSString *)self->_objectTypeIdentifier hash];
  v3 = [(NSString *)self->_coveredDateRangeRawValue hash];
  v4 = [(HKCodableSummaryTrendLineViewModel *)self->_baseTrendLine hash];
  v5 = [(HKCodableSummaryTrendLineViewModel *)self->_changeTrendLine hash];
  v6 = [(NSMutableArray *)self->_visualizationPoints hash];
  v7 = [(NSString *)self->_notificationIdentifier hash];
  if (*&self->_has)
  {
    discoveryDateData = self->_discoveryDateData;
    if (discoveryDateData < 0.0)
    {
      discoveryDateData = -discoveryDateData;
    }

    *v8.i64 = floor(discoveryDateData + 0.5);
    v12 = (discoveryDateData - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(NSString *)self->_trendDescriptionSharingPreviewOverride hash];
  v15 = [(HKCodableCellHeaderViewModel *)self->_cellHeaderViewModel hash];
  if ((*&self->_has & 2) != 0)
  {
    originalEventDateData = self->_originalEventDateData;
    if (originalEventDateData < 0.0)
    {
      originalEventDateData = -originalEventDateData;
    }

    *v16.i64 = floor(originalEventDateData + 0.5);
    v20 = (originalEventDateData - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  return v25 ^ v26 ^ v24 ^ v23 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15 ^ v18 ^ [(NSString *)self->_pregnancyLabelValue hash];
}

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 12))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setTrendDescription:?];
  }

  if (*(v4 + 6))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setChangeTypeRawValue:?];
  }

  if ((*(v4 + 120) & 4) != 0)
  {
    self->_diagramStyle = *(v4 + 16);
    *&self->_has |= 4u;
  }

  if (*(v4 + 10))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setObjectTypeIdentifier:?];
  }

  if (*(v4 + 7))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setCoveredDateRangeRawValue:?];
  }

  baseTrendLine = self->_baseTrendLine;
  v6 = *(v4 + 3);
  if (baseTrendLine)
  {
    if (v6)
    {
      [(HKCodableSummaryTrendLineViewModel *)baseTrendLine mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableSummaryTrendTileViewModel *)self setBaseTrendLine:?];
  }

  changeTrendLine = self->_changeTrendLine;
  v8 = *(v4 + 5);
  if (changeTrendLine)
  {
    if (v8)
    {
      [(HKCodableSummaryTrendLineViewModel *)changeTrendLine mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HKCodableSummaryTrendTileViewModel *)self setChangeTrendLine:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(v4 + 14);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HKCodableSummaryTrendTileViewModel *)self addVisualizationPoints:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (*(v4 + 9))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setNotificationIdentifier:?];
  }

  if (*(v4 + 120))
  {
    self->_discoveryDateData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 13))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setTrendDescriptionSharingPreviewOverride:?];
  }

  cellHeaderViewModel = self->_cellHeaderViewModel;
  v15 = *(v4 + 4);
  if (cellHeaderViewModel)
  {
    if (v15)
    {
      [(HKCodableCellHeaderViewModel *)cellHeaderViewModel mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(HKCodableSummaryTrendTileViewModel *)self setCellHeaderViewModel:?];
  }

  if ((*(v4 + 120) & 2) != 0)
  {
    self->_originalEventDateData = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 11))
  {
    [(HKCodableSummaryTrendTileViewModel *)self setPregnancyLabelValue:?];
  }
}

@end