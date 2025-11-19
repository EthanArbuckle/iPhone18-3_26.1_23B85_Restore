@interface CWFMLOLink
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMLOLink:(id)a3;
- (CWFMLOLink)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFMLOLink

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BEE588(self->_band);
  channel = self->_channel;
  v6 = sub_1E0BEE5AC(self->_width);
  v7 = [v3 stringWithFormat:@"band=%@, channel=%ld, width=%@, subchannel=%d", v4, channel, v6, self->_subchannel];

  return v7;
}

- (BOOL)isEqualToMLOLink:(id)a3
{
  v4 = a3;
  band = self->_band;
  if (band == [v4 band] && (channel = self->_channel, channel == objc_msgSend(v4, "channel")) && (width = self->_width, width == objc_msgSend(v4, "width")))
  {
    subchannel = self->_subchannel;
    v9 = subchannel == [v4 subchannel];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFMLOLink *)self isEqualToMLOLink:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFMLOLink allocWithZone:?]];
  [(CWFMLOLink *)v4 setBand:self->_band];
  [(CWFMLOLink *)v4 setChannel:self->_channel];
  [(CWFMLOLink *)v4 setWidth:self->_width];
  [(CWFMLOLink *)v4 setSubchannel:self->_subchannel];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  band = self->_band;
  v5 = a3;
  [v5 encodeInt:band forKey:@"_band"];
  [v5 encodeInt:self->_channel forKey:@"_channel"];
  [v5 encodeInt:self->_width forKey:@"_width"];
  [v5 encodeInt:self->_subchannel forKey:@"_subchannel"];
}

- (CWFMLOLink)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CWFMLOLink;
  v5 = [(CWFMLOLink *)&v7 init];
  if (v5)
  {
    v5->_band = [v4 decodeIntForKey:@"_band"];
    v5->_channel = [v4 decodeIntForKey:@"_channel"];
    v5->_width = [v4 decodeIntForKey:@"_width"];
    v5->_subchannel = [v4 decodeIntForKey:@"_subchannel"];
  }

  return v5;
}

@end