@interface DEDBugSessionOperation
+ (id)archivedClasses;
+ (id)hashingKeyWithId:(id)a3 type:(int64_t)a4;
- (DEDBugSessionOperation)initWithCoder:(id)a3;
- (NSString)description;
- (id)hashingKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEDBugSessionOperation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DEDBugSessionOperation;
  v4 = [(DEDBugSessionOperation *)&v11 description];
  v5 = [(DEDBugSessionOperation *)self type];
  if (v5 > 99)
  {
    if (v5 == 100)
    {
      v6 = "Notify";
      goto LABEL_15;
    }

    if (v5 != 1000)
    {
      if (v5 == 2000)
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
    if (!v5)
    {
      v6 = "Kill";
      goto LABEL_15;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
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
  v7 = [(DEDBugSessionOperation *)self identifier];
  v8 = [(DEDBugSessionOperation *)self options];
  v9 = [v3 stringWithFormat:@"%@ type: [%s] id: [%@] options: %@", v4, v6, v7, v8];

  return v9;
}

+ (id)hashingKeyWithId:(id)a3 type:(int64_t)a4
{
  if (a4 > 99)
  {
    switch(a4)
    {
      case 100:
        v6 = "Notify";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
      case 1000:
        v6 = "Finish";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
      case 2000:
        v6 = "Cancel";
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
    }

LABEL_12:
    v6 = "Unknown";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
  }

  if (!a4)
  {
    v6 = "Kill";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
  }

  if (a4 == 1)
  {
    v6 = "Collect";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
  }

  if (a4 != 2)
  {
    goto LABEL_12;
  }

  v6 = "CollectDefer";
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%s(%@)", v6, a3, v4, v5];
}

- (id)hashingKey
{
  v3 = objc_opt_class();
  v4 = [(DEDBugSessionOperation *)self identifier];
  v5 = [v3 hashingKeyWithId:v4 type:{-[DEDBugSessionOperation type](self, "type")}];

  return v5;
}

- (DEDBugSessionOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DEDBugSessionOperation;
  v5 = [(DEDBugSessionOperation *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionOpID"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"sessionOpType"];
    v8 = +[DEDBugSessionOperation archivedClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sessionOpOptions"];
    options = v5->_options;
    v5->_options = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSessionOperation *)self identifier];
  [v4 encodeObject:v5 forKey:@"sessionOpID"];

  [v4 encodeInteger:-[DEDBugSessionOperation type](self forKey:{"type"), @"sessionOpType"}];
  v6 = [(DEDBugSessionOperation *)self options];
  [v4 encodeObject:v6 forKey:@"sessionOpOptions"];
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