@interface IMLocationShareStatusChangeItem
- (BOOL)isEqual:(id)equal;
- (IMLocationShareStatusChangeItem)init;
- (IMLocationShareStatusChangeItem)initWithCoder:(id)coder;
- (IMLocationShareStatusChangeItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMLocationShareStatusChangeItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMLocationShareStatusChangeItem;
  [(IMLocationShareStatusChangeItem *)&v3 dealloc];
}

- (IMLocationShareStatusChangeItem)init
{
  v5.receiver = self;
  v5.super_class = IMLocationShareStatusChangeItem;
  v2 = [(IMLocationShareStatusChangeItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMItem *)v2 setType:4];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 copyWithZone:zone];
  [v4 setOtherUnformattedID:{-[IMLocationShareStatusChangeItem otherUnformattedID](self, "otherUnformattedID")}];
  [v4 setOtherHandle:{-[IMLocationShareStatusChangeItem otherHandle](self, "otherHandle")}];
  [v4 setOtherCountryCode:{-[IMLocationShareStatusChangeItem otherCountryCode](self, "otherCountryCode")}];
  [v4 setStatus:{-[IMLocationShareStatusChangeItem status](self, "status")}];
  [v4 setDirection:{-[IMLocationShareStatusChangeItem direction](self, "direction")}];
  [v4 setActionable:{-[IMLocationShareStatusChangeItem actionable](self, "actionable")}];
  [v4 setExpired:{-[IMLocationShareStatusChangeItem expired](self, "expired")}];
  [v4 _setMessageID:{-[IMItem messageID](self, "messageID")}];
  return v4;
}

- (IMLocationShareStatusChangeItem)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 initWithCoder:?];
  if (v4)
  {
    -[IMLocationShareStatusChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMLocationShareStatusChangeItem setOtherHandle:](v4, "setOtherHandle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMLocationShareStatusChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    v4->_status = [coder decodeInt64ForKey:@"status"];
    v4->_direction = [coder decodeInt64ForKey:@"direction"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IMLocationShareStatusChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[IMLocationShareStatusChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [coder encodeObject:-[IMLocationShareStatusChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [coder encodeObject:-[IMLocationShareStatusChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [coder encodeInt64:self->_status forKey:@"status"];
  [coder encodeInt64:self->_direction forKey:@"direction"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v16 = v3;
    v17 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15.receiver = self;
      v15.super_class = IMLocationShareStatusChangeItem;
      v7 = [(IMItem *)&v15 isEqual:equal];
      if (v7)
      {
        status = self->_status;
        if (status == [equal status] && (direction = self->_direction, direction == objc_msgSend(equal, "direction")))
        {
          otherCountryCode = self->_otherCountryCode;
          if (otherCountryCode == [equal otherCountryCode] || (v7 = -[NSString isEqualToString:](self->_otherCountryCode, "isEqualToString:", objc_msgSend(equal, "otherCountryCode"))))
          {
            otherHandle = self->_otherHandle;
            if (otherHandle == [equal otherHandle] || (v7 = -[NSString isEqualToString:](self->_otherHandle, "isEqualToString:", objc_msgSend(equal, "otherHandle"))))
            {
              otherUnformattedID = self->_otherUnformattedID;
              LOBYTE(v7) = otherUnformattedID == [equal otherUnformattedID] || -[NSString isEqualToString:](self->_otherUnformattedID, "isEqualToString:", objc_msgSend(equal, "otherUnformattedID"));
            }
          }
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = IMLocationShareStatusChangeItem;
      LOBYTE(v7) = [(IMItem *)&v14 isEqual:equal];
    }
  }

  return v7;
}

- (IMLocationShareStatusChangeItem)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMLocationShareStatusChangeItem setStatus:](v4, "setStatus:", [objc_msgSend(dictionary objectForKey:{@"status", "longLongValue"}]);
    -[IMLocationShareStatusChangeItem setDirection:](v4, "setDirection:", [objc_msgSend(dictionary objectForKey:{@"direction", "longLongValue"}]);
    -[IMLocationShareStatusChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [dictionary objectForKey:@"otherCountryCode"]);
    -[IMLocationShareStatusChangeItem setOtherHandle:](v4, "setOtherHandle:", [dictionary objectForKey:@"otherHandle"]);
    -[IMLocationShareStatusChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [dictionary objectForKey:@"otherUnformattedID"]);
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = IMLocationShareStatusChangeItem;
  copyDictionaryRepresentation = [(IMItem *)&v11 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_status];
  if (v8)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"status", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_direction];
  if (v9)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"direction", v9);
  }

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

@end