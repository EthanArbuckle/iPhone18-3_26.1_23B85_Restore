@interface GTRasterMapLayer
+ (void)initialize;
- (GTRasterMapLayer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSize:(GTSize *)a3;
@end

@implementation GTRasterMapLayer

- (void)setSize:(GTSize *)a3
{
  v3 = *&a3->width;
  self->_size.depth = a3->depth;
  *&self->_size.width = v3;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_size.width;
  v5 = a3;
  [v5 encodeInt64:width forKey:@"size.width"];
  [v5 encodeInt64:self->_size.height forKey:@"size.height"];
  [v5 encodeInt64:self->_size.depth forKey:@"size.depth"];
  [v5 encodeObject:self->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries forKey:@"horizontalLogicalCoordinatesAtPhysicalTileBoundaries"];
  [v5 encodeObject:self->_verticalLogicalCoordinatesAtPhysicalTileBoundaries forKey:@"verticalLogicalCoordinatesAtPhysicalTileBoundaries"];
}

- (GTRasterMapLayer)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GTRasterMapLayer;
  v5 = [(GTRasterMapLayer *)&v15 init];
  if (v5)
  {
    v5->_size.width = [v4 decodeInt64ForKey:@"size.width"];
    v5->_size.height = [v4 decodeInt64ForKey:@"size.height"];
    v5->_size.depth = [v4 decodeInt64ForKey:@"size.depth"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"horizontalLogicalCoordinatesAtPhysicalTileBoundaries"];
    horizontalLogicalCoordinatesAtPhysicalTileBoundaries = v5->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries;
    v5->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"verticalLogicalCoordinatesAtPhysicalTileBoundaries"];
    verticalLogicalCoordinatesAtPhysicalTileBoundaries = v5->_verticalLogicalCoordinatesAtPhysicalTileBoundaries;
    v5->_verticalLogicalCoordinatesAtPhysicalTileBoundaries = v11;

    v13 = v5;
  }

  return v5;
}

+ (void)initialize
{
  [MEMORY[0x277CCAAB0] setClassName:@"GTMTLReplayRasterMapLayerQuery" forClass:objc_opt_class()];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"GTMTLReplayRasterMapLayerQuery"];
}

@end