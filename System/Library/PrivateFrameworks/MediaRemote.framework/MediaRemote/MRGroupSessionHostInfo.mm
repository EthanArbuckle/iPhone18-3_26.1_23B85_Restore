@interface MRGroupSessionHostInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isInAppBannerAllowed;
- (MRGroupSessionHostInfo)initWithCoder:(id)coder;
- (MRGroupSessionHostInfo)initWithRouteType:(unsigned __int8)type displayName:(id)name modelIdentifier:(id)identifier color:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupSessionHostInfo

- (MRGroupSessionHostInfo)initWithRouteType:(unsigned __int8)type displayName:(id)name modelIdentifier:(id)identifier color:(id)color
{
  nameCopy = name;
  identifierCopy = identifier;
  colorCopy = color;
  v22.receiver = self;
  v22.super_class = MRGroupSessionHostInfo;
  v13 = [(MRGroupSessionHostInfo *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_routeType = type;
    v15 = [nameCopy copy];
    displayName = v14->_displayName;
    v14->_displayName = v15;

    v17 = [identifierCopy copy];
    modelIdentifier = v14->_modelIdentifier;
    v14->_modelIdentifier = v17;

    v19 = [colorCopy copy];
    color = v14->_color;
    v14->_color = v19;
  }

  return v14;
}

- (MRGroupSessionHostInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MRGroupSessionHostInfo;
  v5 = [(MRGroupSessionHostInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dm"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dc"];
    color = v5->_color;
    v5->_color = v10;

    v5->_routeType = [coderCopy decodeIntForKey:@"rt"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  routeType = self->_routeType;
  coderCopy = coder;
  [coderCopy encodeInt:routeType forKey:@"rt"];
  [coderCopy encodeObject:self->_displayName forKey:@"dn"];
  [coderCopy encodeObject:self->_modelIdentifier forKey:@"dm"];
  [coderCopy encodeObject:self->_color forKey:@"dc"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MRGroupSessionHostInfo alloc];
  routeType = self->_routeType;
  displayName = self->_displayName;
  modelIdentifier = self->_modelIdentifier;
  color = self->_color;

  return [(MRGroupSessionHostInfo *)v4 initWithRouteType:routeType displayName:displayName modelIdentifier:modelIdentifier color:color];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      displayName = self->_displayName;
      displayName = [(MRGroupSessionHostInfo *)v5 displayName];
      if ([(NSString *)displayName isEqual:displayName])
      {
        routeType = self->_routeType;
        v9 = routeType == [(MRGroupSessionHostInfo *)v5 routeType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = self->_displayName;
  v6 = MRGroupSessionRouteTypeDescription(self->_routeType);
  v7 = [v3 stringWithFormat:@"<%@: %p displayName=%@ routeType=%@ modelID=%@>", v4, self, displayName, v6, self->_modelIdentifier];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayName hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_routeType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isInAppBannerAllowed
{
  modelIdentifier = [(MRGroupSessionHostInfo *)self modelIdentifier];
  v3 = [modelIdentifier containsString:@"AudioAccessory"];

  return v3 ^ 1;
}

@end