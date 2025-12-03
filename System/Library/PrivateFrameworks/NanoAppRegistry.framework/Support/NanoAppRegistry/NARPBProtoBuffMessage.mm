@interface NARPBProtoBuffMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NARPBProtoBuffMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = NARPBProtoBuffMessage;
  v3 = [(NARPBProtoBuffMessage *)&v7 description];
  dictionaryRepresentation = [(NARPBProtoBuffMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  applicationWrapper = self->_applicationWrapper;
  if (applicationWrapper)
  {
    dictionaryRepresentation = [(NARPBApplicationWrapper *)applicationWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"applicationWrapper"];
  }

  workspaceMetadata = self->_workspaceMetadata;
  if (workspaceMetadata)
  {
    dictionaryRepresentation2 = [(NARPBWorkspaceMetadata *)workspaceMetadata dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"workspaceMetadata"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_applicationWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_workspaceMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_applicationWrapper)
  {
    [toCopy setApplicationWrapper:?];
    toCopy = v5;
  }

  if (self->_workspaceMetadata)
  {
    [v5 setWorkspaceMetadata:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NARPBApplicationWrapper *)self->_applicationWrapper copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NARPBWorkspaceMetadata *)self->_workspaceMetadata copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((applicationWrapper = self->_applicationWrapper, !(applicationWrapper | equalCopy[1])) || -[NARPBApplicationWrapper isEqual:](applicationWrapper, "isEqual:")))
  {
    workspaceMetadata = self->_workspaceMetadata;
    if (workspaceMetadata | equalCopy[2])
    {
      v7 = [(NARPBWorkspaceMetadata *)workspaceMetadata isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  applicationWrapper = self->_applicationWrapper;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (applicationWrapper)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NARPBApplicationWrapper *)applicationWrapper mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NARPBProtoBuffMessage *)self setApplicationWrapper:?];
  }

  fromCopy = v9;
LABEL_7:
  workspaceMetadata = self->_workspaceMetadata;
  v8 = fromCopy[2];
  if (workspaceMetadata)
  {
    if (v8)
    {
      [(NARPBWorkspaceMetadata *)workspaceMetadata mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NARPBProtoBuffMessage *)self setWorkspaceMetadata:?];
  }

  _objc_release_x1();
}

@end