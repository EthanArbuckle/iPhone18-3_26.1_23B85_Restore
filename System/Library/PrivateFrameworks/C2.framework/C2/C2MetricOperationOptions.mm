@interface C2MetricOperationOptions
- (BOOL)isEqual:(id)equal;
- (C2MetricOperationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MetricOperationOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [C2MetricOperationOptions allocWithZone:zone];
  if (v4)
  {
    operationGroup = [(C2MetricOperationOptions *)self operationGroup];
    [(C2MetricOperationOptions *)v4 setOperationGroup:operationGroup];

    operationId = [(C2MetricOperationOptions *)self operationId];
    [(C2MetricOperationOptions *)v4 setOperationId:operationId];

    operationType = [(C2MetricOperationOptions *)self operationType];
    [(C2MetricOperationOptions *)v4 setOperationType:operationType];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      operationGroup = self->_operationGroup;
      operationGroup = [(C2MetricOperationOptions *)v5 operationGroup];
      v8 = operationGroup;
      if (operationGroup == operationGroup)
      {
      }

      else
      {
        v9 = self->_operationGroup;
        if (!v9)
        {
          goto LABEL_19;
        }

        operationGroup2 = [(C2MetricOperationOptions *)v5 operationGroup];
        v11 = [(C2MetricOperationGroupOptions *)v9 isEqual:operationGroup2];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      operationId = self->_operationId;
      operationId = [(C2MetricOperationOptions *)v5 operationId];
      v8 = operationId;
      if (operationId == operationId)
      {
      }

      else
      {
        v15 = self->_operationId;
        if (!v15)
        {
          goto LABEL_19;
        }

        operationId2 = [(C2MetricOperationOptions *)v5 operationId];
        v17 = [(NSString *)v15 isEqual:operationId2];

        if (!v17)
        {
          goto LABEL_20;
        }
      }

      operationType = self->_operationType;
      operationType = [(C2MetricOperationOptions *)v5 operationType];
      v8 = operationType;
      if (operationType == operationType)
      {

LABEL_24:
        v12 = 1;
        goto LABEL_21;
      }

      v20 = self->_operationType;
      if (v20)
      {
        operationType2 = [(C2MetricOperationOptions *)v5 operationType];
        v22 = [(NSString *)v20 isEqual:operationType2];

        if (v22)
        {
          goto LABEL_24;
        }

LABEL_20:
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(C2MetricOperationGroupOptions *)self->_operationGroup hash];
  v4 = [(NSString *)self->_operationId hash]^ v3;
  return v4 ^ [(NSString *)self->_operationType hash];
}

- (void)encodeWithCoder:(id)coder
{
  operationGroup = self->_operationGroup;
  coderCopy = coder;
  [coderCopy encodeObject:operationGroup forKey:@"operationGroup"];
  [coderCopy encodeObject:self->_operationId forKey:@"operationId"];
  [coderCopy encodeObject:self->_operationType forKey:@"operationType"];
}

- (C2MetricOperationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = C2MetricOperationOptions;
  v5 = [(C2MetricOperationOptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationGroup"];
    operationGroup = v5->_operationGroup;
    v5->_operationGroup = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationId"];
    operationId = v5->_operationId;
    v5->_operationId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationType"];
    operationType = v5->_operationType;
    v5->_operationType = v10;
  }

  return v5;
}

@end