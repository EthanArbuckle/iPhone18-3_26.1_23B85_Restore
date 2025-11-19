@interface MTRPluginPBMClusterPath
+ (MTRPluginPBMClusterPath)clusterPathWithEndpointID:(id)a3 clusterID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRClusterPath)clusterPath;
- (MTRPluginPBMClusterPath)initWithClusterPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setClusterPath:(id)a3;
- (void)setHasEndpointID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMClusterPath

- (void)setHasEndpointID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMClusterPath;
  v4 = [(MTRPluginPBMClusterPath *)&v8 description];
  v5 = [(MTRPluginPBMClusterPath *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_endpointID];
    [v3 setObject:v5 forKey:@"endpointID"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clusterID];
    [v3 setObject:v6 forKey:@"clusterID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    endpointID = self->_endpointID;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    clusterID = self->_clusterID;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_endpointID;
    *(v4 + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_clusterID;
    *(v4 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_endpointID;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_clusterID;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_endpointID != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_clusterID != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_endpointID;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_clusterID;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_endpointID = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_clusterID = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

- (MTRPluginPBMClusterPath)initWithClusterPath:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMClusterPath *)self init]) != 0)
  {
    v5 = [v4 endpoint];
    -[MTRPluginPBMClusterPath setEndpointID:](self, "setEndpointID:", [v5 unsignedIntValue]);

    v6 = [v4 cluster];
    -[MTRPluginPBMClusterPath setClusterID:](self, "setClusterID:", [v6 unsignedIntValue]);

    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (MTRPluginPBMClusterPath)clusterPathWithEndpointID:(id)a3 clusterID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MTRPluginPBMClusterPath);
  v8 = [v6 unsignedIntValue];

  [(MTRPluginPBMClusterPath *)v7 setEndpointID:v8];
  v9 = [v5 unsignedIntValue];

  [(MTRPluginPBMClusterPath *)v7 setClusterID:v9];

  return v7;
}

- (void)setClusterPath:(id)a3
{
  v4 = a3;
  v5 = [v4 endpoint];
  -[MTRPluginPBMClusterPath setEndpointID:](self, "setEndpointID:", [v5 unsignedIntValue]);

  v6 = [v4 cluster];

  -[MTRPluginPBMClusterPath setClusterID:](self, "setClusterID:", [v6 unsignedIntValue]);
}

- (MTRClusterPath)clusterPath
{
  v3 = MEMORY[0x277CD5290];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMClusterPath endpointID](self, "endpointID")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMClusterPath clusterID](self, "clusterID")}];
  v6 = [v3 clusterPathWithEndpointID:v4 clusterID:v5];

  return v6;
}

- (BOOL)isValid
{
  v3 = [(MTRPluginPBMClusterPath *)self hasEndpointID];
  if (v3)
  {

    LOBYTE(v3) = [(MTRPluginPBMClusterPath *)self hasClusterID];
  }

  return v3;
}

@end