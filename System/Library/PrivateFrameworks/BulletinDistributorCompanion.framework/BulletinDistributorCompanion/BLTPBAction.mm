@interface BLTPBAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAction;
  v4 = [(BLTPBAction *)&v8 description];
  dictionaryRepresentation = [(BLTPBAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  appearance = self->_appearance;
  if (appearance)
  {
    dictionaryRepresentation = [(BLTPBAppearance *)appearance dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"appearance"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_activationMode];
  [v4 setObject:v8 forKey:@"activationMode"];

  launchURL = self->_launchURL;
  if (launchURL)
  {
    [v4 setObject:launchURL forKey:@"launchURL"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_behavior];
    [v4 setObject:v10 forKey:@"behavior"];
  }

  behaviorParameters = self->_behaviorParameters;
  if (behaviorParameters)
  {
    [v4 setObject:behaviorParameters forKey:@"behaviorParameters"];
  }

  behaviorParametersNulls = self->_behaviorParametersNulls;
  if (behaviorParametersNulls)
  {
    [v4 setObject:behaviorParametersNulls forKey:@"behaviorParametersNulls"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (!self->_appearance)
  {
    [BLTPBAction writeTo:];
  }

  PBDataWriterWriteSubmessage();
  activationMode = self->_activationMode;
  PBDataWriterWriteInt32Field();
  if (self->_launchURL)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    behavior = self->_behavior;
    PBDataWriterWriteInt32Field();
  }

  v6 = toCopy;
  if (self->_behaviorParameters)
  {
    PBDataWriterWriteDataField();
    v6 = toCopy;
  }

  if (self->_behaviorParametersNulls)
  {
    PBDataWriterWriteDataField();
    v6 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  [toCopy setAppearance:self->_appearance];
  v4 = toCopy;
  toCopy[2] = self->_activationMode;
  if (self->_launchURL)
  {
    [toCopy setLaunchURL:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[6] = self->_behavior;
    *(v4 + 64) |= 1u;
  }

  if (self->_behaviorParameters)
  {
    [toCopy setBehaviorParameters:?];
    v4 = toCopy;
  }

  if (self->_behaviorParametersNulls)
  {
    [toCopy setBehaviorParametersNulls:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(BLTPBAppearance *)self->_appearance copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 8) = self->_activationMode;
  v10 = [(NSString *)self->_launchURL copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_behavior;
    *(v5 + 64) |= 1u;
  }

  v12 = [(NSData *)self->_behaviorParameters copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSData *)self->_behaviorParametersNulls copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 6))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  appearance = self->_appearance;
  if (appearance | *(equalCopy + 2))
  {
    if (![(BLTPBAppearance *)appearance isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (self->_activationMode != *(equalCopy + 2))
  {
    goto LABEL_18;
  }

  launchURL = self->_launchURL;
  if (launchURL | *(equalCopy + 7))
  {
    if (![(NSString *)launchURL isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_behavior != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  behaviorParameters = self->_behaviorParameters;
  if (behaviorParameters | *(equalCopy + 4) && ![(NSData *)behaviorParameters isEqual:?])
  {
    goto LABEL_18;
  }

  behaviorParametersNulls = self->_behaviorParametersNulls;
  if (behaviorParametersNulls | *(equalCopy + 5))
  {
    v11 = [(NSData *)behaviorParametersNulls isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(BLTPBAppearance *)self->_appearance hash];
  activationMode = self->_activationMode;
  v6 = [(NSString *)self->_launchURL hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_behavior;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v6 ^ v7 ^ [(NSData *)self->_behaviorParameters hash]^ (2654435761 * activationMode);
  return v8 ^ [(NSData *)self->_behaviorParametersNulls hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(BLTPBAction *)self setIdentifier:?];
    fromCopy = v7;
  }

  appearance = self->_appearance;
  v6 = *(fromCopy + 2);
  if (appearance)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BLTPBAppearance *)appearance mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BLTPBAction *)self setAppearance:?];
  }

  fromCopy = v7;
LABEL_9:
  self->_activationMode = fromCopy[2];
  if (*(fromCopy + 7))
  {
    [(BLTPBAction *)self setLaunchURL:?];
    fromCopy = v7;
  }

  if (fromCopy[16])
  {
    self->_behavior = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(BLTPBAction *)self setBehaviorParameters:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(BLTPBAction *)self setBehaviorParametersNulls:?];
  }

  MEMORY[0x2821F96F8]();
}

@end