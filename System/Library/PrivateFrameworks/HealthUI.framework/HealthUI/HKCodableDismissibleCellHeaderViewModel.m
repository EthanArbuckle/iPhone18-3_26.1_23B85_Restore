@interface HKCodableDismissibleCellHeaderViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableDismissibleCellHeaderViewModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableDismissibleCellHeaderViewModel;
  v4 = [(HKCodableDismissibleCellHeaderViewModel *)&v8 description];
  v5 = [(HKCodableDismissibleCellHeaderViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  viewModel = self->_viewModel;
  if (viewModel)
  {
    v5 = [(HKCodableCellHeaderViewModel *)viewModel dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"viewModel"];
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    v7 = [(HKCodableColorRepresentation *)backgroundColor dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"backgroundColor"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_viewModel)
  {
    [HKCodableDismissibleCellHeaderViewModel writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setViewModel:self->_viewModel];
  if (self->_backgroundColor)
  {
    [v4 setBackgroundColor:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableCellHeaderViewModel *)self->_viewModel copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableColorRepresentation *)self->_backgroundColor copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((viewModel = self->_viewModel, !(viewModel | v4[2])) || -[HKCodableCellHeaderViewModel isEqual:](viewModel, "isEqual:")))
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor | v4[1])
    {
      v7 = [(HKCodableColorRepresentation *)backgroundColor isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  viewModel = self->_viewModel;
  v6 = v4[2];
  v9 = v4;
  if (viewModel)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableCellHeaderViewModel *)viewModel mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableDismissibleCellHeaderViewModel *)self setViewModel:?];
  }

  v4 = v9;
LABEL_7:
  backgroundColor = self->_backgroundColor;
  v8 = v4[1];
  if (backgroundColor)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    backgroundColor = [(HKCodableColorRepresentation *)backgroundColor mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    backgroundColor = [(HKCodableDismissibleCellHeaderViewModel *)self setBackgroundColor:?];
  }

  v4 = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](backgroundColor, v4);
}

@end