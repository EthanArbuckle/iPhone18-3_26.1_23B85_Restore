@interface GDKTSSegmentMetadata
- (GDKTSSegmentMetadata)initWithSegmentId:(id)a3;
@end

@implementation GDKTSSegmentMetadata

- (GDKTSSegmentMetadata)initWithSegmentId:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDKTSSegmentMetadata;
  v5 = [(GDKTSSegmentMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    segmentId = v5->_segmentId;
    v5->_segmentId = v6;
  }

  return v5;
}

@end