@interface GESSAlgTopologyQuality
- (id).cxx_construct;
- (void)setQualityImpl:(const TopologyQuality *)a3;
@end

@implementation GESSAlgTopologyQuality

- (void)setQualityImpl:(const TopologyQuality *)a3
{
  v3 = *&a3->nVertices;
  *&self->_qualityImpl.nFaces = *&a3->nFaces;
  *&self->_qualityImpl.nVertices = v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end