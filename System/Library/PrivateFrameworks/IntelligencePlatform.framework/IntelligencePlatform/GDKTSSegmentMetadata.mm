@interface GDKTSSegmentMetadata
- (GDKTSSegmentMetadata)initWithSegmentId:(id)id;
@end

@implementation GDKTSSegmentMetadata

- (GDKTSSegmentMetadata)initWithSegmentId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = GDKTSSegmentMetadata;
  v5 = [(GDKTSSegmentMetadata *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    segmentId = v5->_segmentId;
    v5->_segmentId = v6;
  }

  return v5;
}

@end