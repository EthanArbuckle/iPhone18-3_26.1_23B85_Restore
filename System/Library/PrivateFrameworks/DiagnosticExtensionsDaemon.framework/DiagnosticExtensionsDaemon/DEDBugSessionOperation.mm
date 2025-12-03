@interface DEDBugSessionOperation
+ (id)archivedClasses;
+ (id)hashingKeyWithId:(id)id type:(int64_t)type;
- (DEDBugSessionOperation)initWithCoder:(id)coder;
- (NSString)description;
- (id)hashingKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEDBugSessionOperation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DEDBugSessionOperation;
  v4 = [(DEDBugSessionOperation *)&v11 description];
  type = [(DEDBugSessionOperation *)self type];
  if (type > 99)
  {
    if (type == 100)
    {
      v6 = "Notify";
      goto LABEL_15;
    }

    if (type != 1000)
    {
      if (type == 2000)
      {
        v6 = "Cancel";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = "Finish";
  }

  else
  {
    if (!type)
    {
      v6 = "Kill";
      goto LABEL_15;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        v6 = "CollectDefer";
        goto LABEL_15;
      }

LABEL_12:
      v6 = "Unknown";
      goto LABEL_15;
    }

    v6 = "Collect";
  }

LABEL_15:
  identifier = [(DEDBugSessionOperation *)self identifier];
  options = [(DEDBugSessionOperation *)self options];
  v9 = [v3 stringWithFormat:@"%@ type: [%s] id: [%@] options: %@", v4, v6, identifier, options];

  return v9;
}

+ (id)hashingKeyWithId:(id)id type:(int64_t)type
{
  if (type > 99)
  {
    switch(type)
    {
      case 100:
        v6 = "Notify";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
      case 1000:
        v6 = "Finish";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
      case 2000:
        v6 = "Cancel";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
    }

LABEL_12:
    v6 = "Unknown";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
  }

  if (!type)
  {
    v6 = "Kill";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
  }

  if (type == 1)
  {
    v6 = "Collect";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
  }

  if (type != 2)
  {
    goto LABEL_12;
  }

  v6 = "CollectDefer";
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, id, v4, v5];
}

- (id)hashingKey
{
  v3 = objc_opt_class();
  identifier = [(DEDBugSessionOperation *)self identifier];
  v5 = [v3 hashingKeyWithId:identifier type:{-[DEDBugSessionOperation type](self, "type")}];

  return v5;
}

- (DEDBugSessionOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DEDBugSessionOperation;
  v5 = [(DEDBugSessionOperation *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionOpID"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"sessionOpType"];
    v8 = +[DEDBugSessionOperation archivedClasses];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sessionOpOptions"];
    options = v5->_options;
    v5->_options = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DEDBugSessionOperation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"sessionOpID"];

  [coderCopy encodeInteger:-[DEDBugSessionOperation type](self forKey:{"type"), @"sessionOpType"}];
  options = [(DEDBugSessionOperation *)self options];
  [coderCopy encodeObject:options forKey:@"sessionOpOptions"];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

@end