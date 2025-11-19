@interface C2MetricOperationGroupOptions
- (BOOL)isEqual:(id)a3;
- (C2MetricOperationGroupOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MetricOperationGroupOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [C2MetricOperationGroupOptions allocWithZone:a3];
  if (v4)
  {
    v5 = [(C2MetricOperationGroupOptions *)self operationGroupId];
    [(C2MetricOperationGroupOptions *)v4 setOperationGroupId:v5];

    v6 = [(C2MetricOperationGroupOptions *)self operationGroupName];
    [(C2MetricOperationGroupOptions *)v4 setOperationGroupName:v6];
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
      operationGroupId = self->_operationGroupId;
      v7 = [(C2MetricOperationGroupOptions *)v5 operationGroupId];
      v8 = v7;
      if (operationGroupId == v7)
      {
      }

      else
      {
        v9 = self->_operationGroupId;
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = [(C2MetricOperationGroupOptions *)v5 operationGroupId];
        v11 = [(NSString *)v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      operationGroupName = self->_operationGroupName;
      v14 = [(C2MetricOperationGroupOptions *)v5 operationGroupName];
      v8 = v14;
      if (operationGroupName == v14)
      {

LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      v15 = self->_operationGroupName;
      if (v15)
      {
        v16 = [(C2MetricOperationGroupOptions *)v5 operationGroupName];
        v17 = [(NSString *)v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_17;
        }

LABEL_15:
        v12 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  operationGroupId = self->_operationGroupId;
  v5 = a3;
  [v5 encodeObject:operationGroupId forKey:@"id"];
  [v5 encodeObject:self->_operationGroupName forKey:@"name"];
}

- (C2MetricOperationGroupOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = C2MetricOperationGroupOptions;
  v5 = [(C2MetricOperationGroupOptions *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    operationGroupId = v5->_operationGroupId;
    v5->_operationGroupId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    operationGroupName = v5->_operationGroupName;
    v5->_operationGroupName = v8;
  }

  return v5;
}

@end