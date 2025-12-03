@interface ISGraphicIconConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ISGraphicIconConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSArray *)self->_enclosureColors copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_symbolColors copy];
  v8 = v4[1];
  v4[1] = v7;

  v4[3] = self->_renderingMode;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ISGraphicIconConfiguration;
  v4 = [(ISGraphicIconConfiguration *)&v9 description];
  symbolColors = [(ISGraphicIconConfiguration *)self symbolColors];
  enclosureColors = [(ISGraphicIconConfiguration *)self enclosureColors];
  v7 = [v3 stringWithFormat:@"%@ Symbol color: %@ Enclosure color: %@ Rendering mode: %ld", v4, symbolColors, enclosureColors, -[ISGraphicIconConfiguration renderingMode](self, "renderingMode")];

  return v7;
}

@end