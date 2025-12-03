@interface HKCodableDismissibleCellHeaderViewModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableDismissibleCellHeaderViewModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableDismissibleCellHeaderViewModel;
  v4 = [(HKCodableDismissibleCellHeaderViewModel *)&v8 description];
  dictionaryRepresentation = [(HKCodableDismissibleCellHeaderViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  viewModel = self->_viewModel;
  if (viewModel)
  {
    dictionaryRepresentation = [(HKCodableCellHeaderViewModel *)viewModel dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"viewModel"];
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    dictionaryRepresentation2 = [(HKCodableColorRepresentation *)backgroundColor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"backgroundColor"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_viewModel)
  {
    [HKCodableDismissibleCellHeaderViewModel writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setViewModel:self->_viewModel];
  if (self->_backgroundColor)
  {
    [toCopy setBackgroundColor:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableCellHeaderViewModel *)self->_viewModel copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableColorRepresentation *)self->_backgroundColor copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((viewModel = self->_viewModel, !(viewModel | equalCopy[2])) || -[HKCodableCellHeaderViewModel isEqual:](viewModel, "isEqual:")))
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  viewModel = self->_viewModel;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  backgroundColor = self->_backgroundColor;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](backgroundColor, fromCopy);
}

@end