@interface C2MetricOperationOptions
- (BOOL)isEqual:(id)a3;
- (C2MetricOperationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MetricOperationOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [C2MetricOperationOptions allocWithZone:a3];
  if (v4)
  {
    v5 = [(C2MetricOperationOptions *)self operationGroup];
    [(C2MetricOperationOptions *)v4 setOperationGroup:v5];

    v6 = [(C2MetricOperationOptions *)self operationId];
    [(C2MetricOperationOptions *)v4 setOperationId:v6];

    v7 = [(C2MetricOperationOptions *)self operationType];
    [(C2MetricOperationOptions *)v4 setOperationType:v7];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      operationGroup = self->_operationGroup;
      v7 = [(C2MetricOperationOptions *)v5 operationGroup];
      v8 = v7;
      if (operationGroup == v7)
      {
      }

      else
      {
        v9 = self->_operationGroup;
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = [(C2MetricOperationOptions *)v5 operationGroup];
        v11 = [(C2MetricOperationGroupOptions *)v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      operationId = self->_operationId;
      v14 = [(C2MetricOperationOptions *)v5 operationId];
      v8 = v14;
      if (operationId == v14)
      {
      }

      else
      {
        v15 = self->_operationId;
        if (!v15)
        {
          goto LABEL_19;
        }

        v16 = [(C2MetricOperationOptions *)v5 operationId];
        v17 = [(NSString *)v15 isEqual:v16];

        if (!v17)
        {
          goto LABEL_20;
        }
      }

      operationType = self->_operationType;
      v19 = [(C2MetricOperationOptions *)v5 operationType];
      v8 = v19;
      if (operationType == v19)
      {

LABEL_24:
        v12 = 1;
        goto LABEL_21;
      }

      v20 = self->_operationType;
      if (v20)
      {
        v21 = [(C2MetricOperationOptions *)v5 operationType];
        v22 = [(NSString *)v20 isEqual:v21];

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

- (void)encodeWithCoder:(id)a3
{
  operationGroup = self->_operationGroup;
  v5 = a3;
  [v5 encodeObject:operationGroup forKey:@"operationGroup"];
  [v5 encodeObject:self->_operationId forKey:@"operationId"];
  [v5 encodeObject:self->_operationType forKey:@"operationType"];
}

- (C2MetricOperationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = C2MetricOperationOptions;
  v5 = [(C2MetricOperationOptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationGroup"];
    operationGroup = v5->_operationGroup;
    v5->_operationGroup = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationId"];
    operationId = v5->_operationId;
    v5->_operationId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationType"];
    operationType = v5->_operationType;
    v5->_operationType = v10;
  }

  return v5;
}

@end