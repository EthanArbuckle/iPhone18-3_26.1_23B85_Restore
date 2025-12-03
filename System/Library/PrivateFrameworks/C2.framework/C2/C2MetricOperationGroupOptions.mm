@interface C2MetricOperationGroupOptions
- (BOOL)isEqual:(id)equal;
- (C2MetricOperationGroupOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MetricOperationGroupOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [C2MetricOperationGroupOptions allocWithZone:zone];
  if (v4)
  {
    operationGroupId = [(C2MetricOperationGroupOptions *)self operationGroupId];
    [(C2MetricOperationGroupOptions *)v4 setOperationGroupId:operationGroupId];

    operationGroupName = [(C2MetricOperationGroupOptions *)self operationGroupName];
    [(C2MetricOperationGroupOptions *)v4 setOperationGroupName:operationGroupName];
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
      operationGroupId = self->_operationGroupId;
      operationGroupId = [(C2MetricOperationGroupOptions *)v5 operationGroupId];
      v8 = operationGroupId;
      if (operationGroupId == operationGroupId)
      {
      }

      else
      {
        v9 = self->_operationGroupId;
        if (!v9)
        {
          goto LABEL_14;
        }

        operationGroupId2 = [(C2MetricOperationGroupOptions *)v5 operationGroupId];
        v11 = [(NSString *)v9 isEqual:operationGroupId2];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      operationGroupName = self->_operationGroupName;
      operationGroupName = [(C2MetricOperationGroupOptions *)v5 operationGroupName];
      v8 = operationGroupName;
      if (operationGroupName == operationGroupName)
      {

LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      v15 = self->_operationGroupName;
      if (v15)
      {
        operationGroupName2 = [(C2MetricOperationGroupOptions *)v5 operationGroupName];
        v17 = [(NSString *)v15 isEqual:operationGroupName2];

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

- (void)encodeWithCoder:(id)coder
{
  operationGroupId = self->_operationGroupId;
  coderCopy = coder;
  [coderCopy encodeObject:operationGroupId forKey:@"id"];
  [coderCopy encodeObject:self->_operationGroupName forKey:@"name"];
}

- (C2MetricOperationGroupOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = C2MetricOperationGroupOptions;
  v5 = [(C2MetricOperationGroupOptions *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    operationGroupId = v5->_operationGroupId;
    v5->_operationGroupId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    operationGroupName = v5->_operationGroupName;
    v5->_operationGroupName = v8;
  }

  return v5;
}

@end