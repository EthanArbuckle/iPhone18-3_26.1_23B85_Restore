@interface GTRasterMapLayer
+ (void)initialize;
- (GTRasterMapLayer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setSize:(GTSize *)size;
@end

@implementation GTRasterMapLayer

- (void)setSize:(GTSize *)size
{
  v3 = *&size->width;
  self->_size.depth = size->depth;
  *&self->_size.width = v3;
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_size.width;
  coderCopy = coder;
  [coderCopy encodeInt64:width forKey:@"size.width"];
  [coderCopy encodeInt64:self->_size.height forKey:@"size.height"];
  [coderCopy encodeInt64:self->_size.depth forKey:@"size.depth"];
  [coderCopy encodeObject:self->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries forKey:@"horizontalLogicalCoordinatesAtPhysicalTileBoundaries"];
  [coderCopy encodeObject:self->_verticalLogicalCoordinatesAtPhysicalTileBoundaries forKey:@"verticalLogicalCoordinatesAtPhysicalTileBoundaries"];
}

- (GTRasterMapLayer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTRasterMapLayer;
  v5 = [(GTRasterMapLayer *)&v15 init];
  if (v5)
  {
    v5->_size.width = [coderCopy decodeInt64ForKey:@"size.width"];
    v5->_size.height = [coderCopy decodeInt64ForKey:@"size.height"];
    v5->_size.depth = [coderCopy decodeInt64ForKey:@"size.depth"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"horizontalLogicalCoordinatesAtPhysicalTileBoundaries"];
    horizontalLogicalCoordinatesAtPhysicalTileBoundaries = v5->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries;
    v5->_horizontalLogicalCoordinatesAtPhysicalTileBoundaries = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"verticalLogicalCoordinatesAtPhysicalTileBoundaries"];
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