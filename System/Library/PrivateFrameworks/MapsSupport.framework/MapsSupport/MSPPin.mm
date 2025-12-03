@interface MSPPin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)writeTo:(id)to;
@end

@implementation MSPPin

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPin;
  v4 = [(MSPPin *)&v8 description];
  dictionaryRepresentation = [(MSPPin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    dictionaryRepresentation = [(MSPDroppedPin *)droppedPin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"droppedPin"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_droppedPin)
  {
    v4 = MEMORY[0x277D43178];
    toCopy = to;
    v7 = objc_alloc_init(v4);
    [(MSPDroppedPin *)self->_droppedPin writeTo:v7];
    data = [v7 data];
    [toCopy writeData:data forTag:1];
  }
}

- (void)copyTo:(id)to
{
  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    [to setDroppedPin:droppedPin];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MSPDroppedPin *)self->_droppedPin copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    droppedPin = self->_droppedPin;
    if (droppedPin | equalCopy[1])
    {
      v6 = [(MSPDroppedPin *)droppedPin isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end