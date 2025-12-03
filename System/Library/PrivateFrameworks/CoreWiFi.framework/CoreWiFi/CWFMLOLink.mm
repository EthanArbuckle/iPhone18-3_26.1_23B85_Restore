@interface CWFMLOLink
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMLOLink:(id)link;
- (CWFMLOLink)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqualToMLOLink:(id)link
{
  linkCopy = link;
  band = self->_band;
  if (band == [linkCopy band] && (channel = self->_channel, channel == objc_msgSend(linkCopy, "channel")) && (width = self->_width, width == objc_msgSend(linkCopy, "width")))
  {
    subchannel = self->_subchannel;
    v9 = subchannel == [linkCopy subchannel];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFMLOLink *)self isEqualToMLOLink:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFMLOLink allocWithZone:?]];
  [(CWFMLOLink *)v4 setBand:self->_band];
  [(CWFMLOLink *)v4 setChannel:self->_channel];
  [(CWFMLOLink *)v4 setWidth:self->_width];
  [(CWFMLOLink *)v4 setSubchannel:self->_subchannel];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  band = self->_band;
  coderCopy = coder;
  [coderCopy encodeInt:band forKey:@"_band"];
  [coderCopy encodeInt:self->_channel forKey:@"_channel"];
  [coderCopy encodeInt:self->_width forKey:@"_width"];
  [coderCopy encodeInt:self->_subchannel forKey:@"_subchannel"];
}

- (CWFMLOLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CWFMLOLink;
  v5 = [(CWFMLOLink *)&v7 init];
  if (v5)
  {
    v5->_band = [coderCopy decodeIntForKey:@"_band"];
    v5->_channel = [coderCopy decodeIntForKey:@"_channel"];
    v5->_width = [coderCopy decodeIntForKey:@"_width"];
    v5->_subchannel = [coderCopy decodeIntForKey:@"_subchannel"];
  }

  return v5;
}

@end