@interface MRGroupSessionHostInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isInAppBannerAllowed;
- (MRGroupSessionHostInfo)initWithCoder:(id)a3;
- (MRGroupSessionHostInfo)initWithRouteType:(unsigned __int8)a3 displayName:(id)a4 modelIdentifier:(id)a5 color:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupSessionHostInfo

- (MRGroupSessionHostInfo)initWithRouteType:(unsigned __int8)a3 displayName:(id)a4 modelIdentifier:(id)a5 color:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = MRGroupSessionHostInfo;
  v13 = [(MRGroupSessionHostInfo *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_routeType = a3;
    v15 = [v10 copy];
    displayName = v14->_displayName;
    v14->_displayName = v15;

    v17 = [v11 copy];
    modelIdentifier = v14->_modelIdentifier;
    v14->_modelIdentifier = v17;

    v19 = [v12 copy];
    color = v14->_color;
    v14->_color = v19;
  }

  return v14;
}

- (MRGroupSessionHostInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRGroupSessionHostInfo;
  v5 = [(MRGroupSessionHostInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dm"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dc"];
    color = v5->_color;
    v5->_color = v10;

    v5->_routeType = [v4 decodeIntForKey:@"rt"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  routeType = self->_routeType;
  v5 = a3;
  [v5 encodeInt:routeType forKey:@"rt"];
  [v5 encodeObject:self->_displayName forKey:@"dn"];
  [v5 encodeObject:self->_modelIdentifier forKey:@"dm"];
  [v5 encodeObject:self->_color forKey:@"dc"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MRGroupSessionHostInfo alloc];
  routeType = self->_routeType;
  displayName = self->_displayName;
  modelIdentifier = self->_modelIdentifier;
  color = self->_color;

  return [(MRGroupSessionHostInfo *)v4 initWithRouteType:routeType displayName:displayName modelIdentifier:modelIdentifier color:color];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      displayName = self->_displayName;
      v7 = [(MRGroupSessionHostInfo *)v5 displayName];
      if ([(NSString *)displayName isEqual:v7])
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
  v2 = [(MRGroupSessionHostInfo *)self modelIdentifier];
  v3 = [v2 containsString:@"AudioAccessory"];

  return v3 ^ 1;
}

@end