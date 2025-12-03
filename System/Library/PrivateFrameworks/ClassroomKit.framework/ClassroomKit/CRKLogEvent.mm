@interface CRKLogEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (CRKLogEvent)init;
- (CRKLogEvent)initWithCoder:(id)coder;
- (CRKLogEvent)initWithName:(id)name date:(id)date userInfo:(id)info;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKLogEvent

- (CRKLogEvent)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(CRKLogEvent *)self initWithName:@"NO NAME" date:date userInfo:0];

  return v4;
}

- (CRKLogEvent)initWithName:(id)name date:(id)date userInfo:(id)info
{
  nameCopy = name;
  dateCopy = date;
  infoCopy = info;
  if (nameCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKLogEvent initWithName:a2 date:self userInfo:?];
    if (dateCopy)
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
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    objc_storeStrong(&v12->_date, date);
    v15 = [infoCopy copy];
    userInfo = v12->_userInfo;
    v12->_userInfo = v15;
  }

  return v12;
}

- (unint64_t)hash
{
  name = [(CRKLogEvent *)self name];
  v4 = [name hash];
  date = [(CRKLogEvent *)self date];
  v6 = [date hash] ^ v4;
  userInfo = [(CRKLogEvent *)self userInfo];
  v8 = [userInfo hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKLogEvent *)self isEqualToEvent:equalCopy];

  return v5;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    name = [(CRKLogEvent *)self name];
    name2 = [eventCopy name];
    v7 = name;
    v8 = name2;
    if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
    {
      v17 = 0;
    }

    else
    {
      date = [(CRKLogEvent *)self date];
      date2 = [eventCopy date];
      v12 = date;
      v13 = date2;
      if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
      {
        v17 = 0;
      }

      else
      {
        userInfo = [(CRKLogEvent *)self userInfo];
        userInfo2 = [eventCopy userInfo];
        if (userInfo | userInfo2)
        {
          v17 = [userInfo isEqual:userInfo2];
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
  name = [(CRKLogEvent *)self name];
  date = [(CRKLogEvent *)self date];
  userInfo = [(CRKLogEvent *)self userInfo];
  v8 = [v3 stringWithFormat:@"<%@: %p { name = %@, date = %@, userInfo = %@ }>", v4, self, name, date, userInfo];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CRKLogEvent *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  date = [(CRKLogEvent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  userInfo = [(CRKLogEvent *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (CRKLogEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CRKLogEvent;
  v5 = [(CRKLogEvent *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"date"];
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
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"userInfo"];
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