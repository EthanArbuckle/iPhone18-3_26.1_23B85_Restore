@interface IXDataStoreClock
+ (id)newClock;
+ (id)newClockWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (IXDataStoreClock)initWithCoder:(id)coder;
- (IXDataStoreClock)initWithGUID:(id)d sequenceNumber:(unint64_t)number;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)notificationDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)increment;
@end

@implementation IXDataStoreClock

+ (id)newClock
{
  v2 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v2 initWithGUID:uUID sequenceNumber:0];

  return v4;
}

+ (id)newClockWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
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

  v7 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNumber"];

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

- (IXDataStoreClock)initWithGUID:(id)d sequenceNumber:(unint64_t)number
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = IXDataStoreClock;
  v8 = [(IXDataStoreClock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_guid, d);
    v9->_sequenceNumber = number;
  }

  return v9;
}

- (void)increment
{
  sequenceNumber = [(IXDataStoreClock *)self sequenceNumber];
  if (sequenceNumber == -1)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(IXDataStoreClock *)self setGuid:uUID];

    sequenceNumber = 0;
  }

  [(IXDataStoreClock *)self setSequenceNumber:sequenceNumber + 1];
}

- (IXDataStoreClock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IXDataStoreClock;
  v5 = [(IXDataStoreClock *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    guid = v5->_guid;
    v5->_guid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequenceNumber"];
    v5->_sequenceNumber = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  guid = [(IXDataStoreClock *)self guid];
  [coderCopy encodeObject:guid forKey:@"guid"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];
  [coderCopy encodeObject:v6 forKey:@"sequenceNumber"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  guid = [(IXDataStoreClock *)self guid];
  v7 = [guid copyWithZone:zone];
  v8 = [v5 initWithGUID:v7 sequenceNumber:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      guid = [(IXDataStoreClock *)self guid];
      guid2 = [(IXDataStoreClock *)v5 guid];
      v8 = guid;
      v9 = guid2;
      v10 = v9;
      if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
      {

        v11 = 0;
      }

      else
      {

        sequenceNumber = [(IXDataStoreClock *)self sequenceNumber];
        v11 = sequenceNumber == [(IXDataStoreClock *)v5 sequenceNumber];
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
  guid = [(IXDataStoreClock *)self guid];
  v4 = [guid hash];
  sequenceNumber = [(IXDataStoreClock *)self sequenceNumber];

  return sequenceNumber ^ v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sequenceNumber";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataStoreClock sequenceNumber](self, "sequenceNumber")}];
  v9[1] = @"guid";
  v10[0] = v3;
  guid = [(IXDataStoreClock *)self guid];
  uUIDString = [guid UUIDString];
  v10[1] = uUIDString;
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
  guid = [(IXDataStoreClock *)self guid];
  uUIDString = [guid UUIDString];
  v10[1] = uUIDString;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  guid = [(IXDataStoreClock *)self guid];
  v7 = [v3 stringWithFormat:@"<%@ guid:%@ serialNumber:%llu>", v5, guid, -[IXDataStoreClock sequenceNumber](self, "sequenceNumber")];

  return v7;
}

@end