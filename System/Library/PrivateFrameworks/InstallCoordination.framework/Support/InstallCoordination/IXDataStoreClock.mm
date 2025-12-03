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
  v3 = +[NSUUID UUID];
  v4 = [v2 initWithGUID:v3 sequenceNumber:0];

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
    v12 = [[NSUUID alloc] initWithUUIDString:v6];
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
    v4 = +[NSUUID UUID];
    [(IXDataStoreClock *)self setGuid:v4];

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

  v6 = [NSNumber numberWithUnsignedLongLong:[(IXDataStoreClock *)self sequenceNumber]];
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
  v8[0] = @"sequenceNumber";
  v3 = [NSNumber numberWithUnsignedLongLong:[(IXDataStoreClock *)self sequenceNumber]];
  v8[1] = @"guid";
  v9[0] = v3;
  guid = [(IXDataStoreClock *)self guid];
  uUIDString = [guid UUIDString];
  v9[1] = uUIDString;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (NSDictionary)notificationDictionary
{
  v8[0] = @"sequenceNumber";
  v3 = [NSNumber numberWithUnsignedLongLong:[(IXDataStoreClock *)self sequenceNumber]];
  v8[1] = @"guid";
  v9[0] = v3;
  guid = [(IXDataStoreClock *)self guid];
  uUIDString = [guid UUIDString];
  v9[1] = uUIDString;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  guid = [(IXDataStoreClock *)self guid];
  v6 = [NSString stringWithFormat:@"<%@ guid:%@ serialNumber:%llu>", v4, guid, [(IXDataStoreClock *)self sequenceNumber]];

  return v6;
}

@end