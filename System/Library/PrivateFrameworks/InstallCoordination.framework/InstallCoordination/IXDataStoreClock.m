@interface IXDataStoreClock
+ (id)newClock;
+ (id)newClockWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IXDataStoreClock)initWithCoder:(id)a3;
- (IXDataStoreClock)initWithGUID:(id)a3 sequenceNumber:(unint64_t)a4;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)notificationDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)increment;
@end

@implementation IXDataStoreClock

+ (id)newClock
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v2 initWithGUID:v3 sequenceNumber:0];

  return v4;
}

+ (id)newClockWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"guid"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"sequenceNumber"];

  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (v6 && v9)
  {
    v11 = objc_alloc(objc_opt_class());
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    v10 = [v11 initWithGUID:v12 sequenceNumber:{objc_msgSend(v9, "unsignedLongLongValue")}];
  }

  return v10;
}

- (IXDataStoreClock)initWithGUID:(id)a3 sequenceNumber:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IXDataStoreClock;
  v8 = [(IXDataStoreClock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_guid, a3);
    v9->_sequenceNumber = a4;
  }

  return v9;
}

- (void)increment
{
  v3 = [(IXDataStoreClock *)self sequenceNumber];
  if (v3 == -1)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    [(IXDataStoreClock *)self setGuid:v4];

    v3 = 0;
  }

  [(IXDataStoreClock *)self setSequenceNumber:v3 + 1];
}

- (IXDataStoreClock)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IXDataStoreClock;
  v5 = [(IXDataStoreClock *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    guid = v5->_guid;
    v5->_guid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequenceNumber"];
    v5->_sequenceNumber = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXDataStoreClock *)self guid];
  [v4 encodeObject:v5 forKey:@"guid"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];
  [v4 encodeObject:v6 forKey:@"sequenceNumber"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(IXDataStoreClock *)self guid];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithGUID:v7 sequenceNumber:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IXDataStoreClock *)self guid];
      v7 = [(IXDataStoreClock *)v5 guid];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
      {

        v11 = 0;
      }

      else
      {

        v12 = [(IXDataStoreClock *)self sequenceNumber];
        v11 = v12 == [(IXDataStoreClock *)v5 sequenceNumber];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(IXDataStoreClock *)self guid];
  v4 = [v3 hash];
  v5 = [(IXDataStoreClock *)self sequenceNumber];

  return v5 ^ v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sequenceNumber";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];
  v9[1] = @"guid";
  v10[0] = v3;
  v4 = [(IXDataStoreClock *)self guid];
  v5 = [v4 UUIDString];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSDictionary)notificationDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sequenceNumber";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];
  v9[1] = @"guid";
  v10[0] = v3;
  v4 = [(IXDataStoreClock *)self guid];
  v5 = [v4 UUIDString];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IXDataStoreClock *)self guid];
  v7 = [v3 stringWithFormat:@"<%@ guid:%@ serialNumber:%llu>", v5, v6, -[IXDataStoreClock sequenceNumber](self, "sequenceNumber")];

  return v7;
}

@end