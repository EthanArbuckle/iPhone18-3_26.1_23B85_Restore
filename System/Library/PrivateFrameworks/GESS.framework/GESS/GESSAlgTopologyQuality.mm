@interface GESSAlgTopologyQuality
- (id).cxx_construct;
- (void)setQualityImpl:(const TopologyQuality *)impl;
@end

@implementation GESSAlgTopologyQuality

- (void)setQualityImpl:(const TopologyQuality *)impl
{
  v3 = *&impl->nVertices;
  *&self->_qualityImpl.nFaces = *&impl->nFaces;
  *&self->_qualityImpl.nVertices = v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end