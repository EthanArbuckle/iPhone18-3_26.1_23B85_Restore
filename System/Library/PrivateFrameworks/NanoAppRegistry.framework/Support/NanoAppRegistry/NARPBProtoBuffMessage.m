@interface NARPBProtoBuffMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NARPBProtoBuffMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = NARPBProtoBuffMessage;
  v3 = [(NARPBProtoBuffMessage *)&v7 description];
  v4 = [(NARPBProtoBuffMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  applicationWrapper = self->_applicationWrapper;
  if (applicationWrapper)
  {
    v5 = [(NARPBApplicationWrapper *)applicationWrapper dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"applicationWrapper"];
  }

  workspaceMetadata = self->_workspaceMetadata;
  if (workspaceMetadata)
  {
    v7 = [(NARPBWorkspaceMetadata *)workspaceMetadata dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"workspaceMetadata"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_applicationWrapper)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_workspaceMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_applicationWrapper)
  {
    [v4 setApplicationWrapper:?];
    v4 = v5;
  }

  if (self->_workspaceMetadata)
  {
    [v5 setWorkspaceMetadata:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NARPBApplicationWrapper *)self->_applicationWrapper copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NARPBWorkspaceMetadata *)self->_workspaceMetadata copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((applicationWrapper = self->_applicationWrapper, !(applicationWrapper | v4[1])) || -[NARPBApplicationWrapper isEqual:](applicationWrapper, "isEqual:")))
  {
    workspaceMetadata = self->_workspaceMetadata;
    if (workspaceMetadata | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  applicationWrapper = self->_applicationWrapper;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  workspaceMetadata = self->_workspaceMetadata;
  v8 = v4[2];
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