@interface GDKTSSegmentData
- (GDKTSSegmentData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata;
- (NSString)description;
@end

@implementation GDKTSSegmentData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  segmentEntityId = [(GDKTSSegmentData *)self segmentEntityId];
  segmentId = [(GDKTSSegmentData *)self segmentId];
  data = [(GDKTSSegmentData *)self data];
  context = [(GDKTSSegmentData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSSegmentData<segmentEntityId: %@, identifier: %@, data: %@, context: %@>", segmentEntityId, segmentId, data, context];

  return v8;
}

- (GDKTSSegmentData)initWithIdentifier:(id)identifier context:(id)context data:(id)data metadata:(id)metadata
{
  identifierCopy = identifier;
  contextCopy = context;
  dataCopy = data;
  metadataCopy = metadata;
  v27.receiver = self;
  v27.super_class = GDKTSSegmentData;
  v14 = [(GDKTSSegmentData *)&v27 init];
  if (v14)
  {
    v15 = [[GDEntityIdentifier alloc] initWithString:identifierCopy];
    segmentEntityId = v14->_segmentEntityId;
    v14->_segmentEntityId = v15;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    segmentId = [metadataCopy segmentId];
    v20 = [segmentId copy];
    segmentId = v14->_segmentId;
    v14->_segmentId = v20;

    v22 = [dataCopy copy];
    data = v14->_data;
    v14->_data = v22;

    v24 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v24;
  }

  return v14;
}

@end