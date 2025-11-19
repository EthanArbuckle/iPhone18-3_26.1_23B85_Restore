@interface CRKLogEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (CRKLogEvent)init;
- (CRKLogEvent)initWithCoder:(id)a3;
- (CRKLogEvent)initWithName:(id)a3 date:(id)a4 userInfo:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKLogEvent

- (CRKLogEvent)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(CRKLogEvent *)self initWithName:@"NO NAME" date:v3 userInfo:0];

  return v4;
}

- (CRKLogEvent)initWithName:(id)a3 date:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKLogEvent initWithName:a2 date:self userInfo:?];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [CRKLogEvent initWithName:a2 date:self userInfo:?];
LABEL_3:
  v18.receiver = self;
  v18.super_class = CRKLogEvent;
  v12 = [(CRKLogEvent *)&v18 init];
  if (v12)
  {
    v13 = [v9 copy];
    name = v12->_name;
    v12->_name = v13;

    objc_storeStrong(&v12->_date, a4);
    v15 = [v11 copy];
    userInfo = v12->_userInfo;
    v12->_userInfo = v15;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(CRKLogEvent *)self name];
  v4 = [v3 hash];
  v5 = [(CRKLogEvent *)self date];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKLogEvent *)self userInfo];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKLogEvent *)self isEqualToEvent:v4];

  return v5;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRKLogEvent *)self name];
    v6 = [v4 name];
    v7 = v5;
    v8 = v6;
    if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
    {
      v17 = 0;
    }

    else
    {
      v10 = [(CRKLogEvent *)self date];
      v11 = [v4 date];
      v12 = v10;
      v13 = v11;
      if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
      {
        v17 = 0;
      }

      else
      {
        v15 = [(CRKLogEvent *)self userInfo];
        v16 = [v4 userInfo];
        if (v15 | v16)
        {
          v17 = [v15 isEqual:v16];
        }

        else
        {
          v17 = 1;
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKLogEvent *)self name];
  v6 = [(CRKLogEvent *)self date];
  v7 = [(CRKLogEvent *)self userInfo];
  v8 = [v3 stringWithFormat:@"<%@: %p { name = %@, date = %@, userInfo = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKLogEvent *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(CRKLogEvent *)self date];
  [v4 encodeObject:v6 forKey:@"date"];

  v7 = [(CRKLogEvent *)self userInfo];
  [v4 encodeObject:v7 forKey:@"userInfo"];
}

- (CRKLogEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CRKLogEvent;
  v5 = [(CRKLogEvent *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v26 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v26 setWithObjects:{v25, v24, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v21;
  }

  return v5;
}

- (void)initWithName:(uint64_t)a1 date:(uint64_t)a2 userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKLogEvent.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)initWithName:(uint64_t)a1 date:(uint64_t)a2 userInfo:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKLogEvent.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

@end