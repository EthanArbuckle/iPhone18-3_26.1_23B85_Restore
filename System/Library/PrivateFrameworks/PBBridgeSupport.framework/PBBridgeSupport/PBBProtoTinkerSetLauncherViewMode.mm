@interface PBBProtoTinkerSetLauncherViewMode
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PBBProtoTinkerSetLauncherViewMode

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoTinkerSetLauncherViewMode;
  v4 = [(PBBProtoTinkerSetLauncherViewMode *)&v8 description];
  dictionaryRepresentation = [(PBBProtoTinkerSetLauncherViewMode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_launcherViewMode];
  [dictionary setObject:v4 forKey:@"launcherViewMode"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_launcherViewMode;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_launcherViewMode == equalCopy[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end