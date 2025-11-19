@interface IMLocationShareStatusChangeItem
- (BOOL)isEqual:(id)a3;
- (IMLocationShareStatusChangeItem)init;
- (IMLocationShareStatusChangeItem)initWithCoder:(id)a3;
- (IMLocationShareStatusChangeItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 copyWithZone:a3];
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

- (IMLocationShareStatusChangeItem)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 initWithCoder:?];
  if (v4)
  {
    -[IMLocationShareStatusChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMLocationShareStatusChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMLocationShareStatusChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    v4->_status = [a3 decodeInt64ForKey:@"status"];
    v4->_direction = [a3 decodeInt64ForKey:@"direction"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMLocationShareStatusChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [a3 encodeObject:-[IMLocationShareStatusChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [a3 encodeObject:-[IMLocationShareStatusChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [a3 encodeObject:-[IMLocationShareStatusChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [a3 encodeInt64:self->_status forKey:@"status"];
  [a3 encodeInt64:self->_direction forKey:@"direction"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
      v7 = [(IMItem *)&v15 isEqual:a3];
      if (v7)
      {
        status = self->_status;
        if (status == [a3 status] && (direction = self->_direction, direction == objc_msgSend(a3, "direction")))
        {
          otherCountryCode = self->_otherCountryCode;
          if (otherCountryCode == [a3 otherCountryCode] || (v7 = -[NSString isEqualToString:](self->_otherCountryCode, "isEqualToString:", objc_msgSend(a3, "otherCountryCode"))))
          {
            otherHandle = self->_otherHandle;
            if (otherHandle == [a3 otherHandle] || (v7 = -[NSString isEqualToString:](self->_otherHandle, "isEqualToString:", objc_msgSend(a3, "otherHandle"))))
            {
              otherUnformattedID = self->_otherUnformattedID;
              LOBYTE(v7) = otherUnformattedID == [a3 otherUnformattedID] || -[NSString isEqualToString:](self->_otherUnformattedID, "isEqualToString:", objc_msgSend(a3, "otherUnformattedID"));
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
      LOBYTE(v7) = [(IMItem *)&v14 isEqual:a3];
    }
  }

  return v7;
}

- (IMLocationShareStatusChangeItem)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMLocationShareStatusChangeItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMLocationShareStatusChangeItem setStatus:](v4, "setStatus:", [objc_msgSend(a3 objectForKey:{@"status", "longLongValue"}]);
    -[IMLocationShareStatusChangeItem setDirection:](v4, "setDirection:", [objc_msgSend(a3 objectForKey:{@"direction", "longLongValue"}]);
    -[IMLocationShareStatusChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 objectForKey:@"otherCountryCode"]);
    -[IMLocationShareStatusChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 objectForKey:@"otherHandle"]);
    -[IMLocationShareStatusChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 objectForKey:@"otherUnformattedID"]);
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = IMLocationShareStatusChangeItem;
  v3 = [(IMItem *)&v11 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(v3, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(v3, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(v3, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_status];
  if (v8)
  {
    CFDictionarySetValue(v3, @"status", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_direction];
  if (v9)
  {
    CFDictionarySetValue(v3, @"direction", v9);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

@end