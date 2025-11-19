@interface GDKTSSegmentData
- (GDKTSSegmentData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6;
- (NSString)description;
@end

@implementation GDKTSSegmentData

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDKTSSegmentData *)self segmentEntityId];
  v5 = [(GDKTSSegmentData *)self segmentId];
  v6 = [(GDKTSSegmentData *)self data];
  v7 = [(GDKTSSegmentData *)self context];
  v8 = [v3 initWithFormat:@"GDKTSSegmentData<segmentEntityId: %@, identifier: %@, data: %@, context: %@>", v4, v5, v6, v7];

  return v8;
}

- (GDKTSSegmentData)initWithIdentifier:(id)a3 context:(id)a4 data:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = GDKTSSegmentData;
  v14 = [(GDKTSSegmentData *)&v27 init];
  if (v14)
  {
    v15 = [[GDEntityIdentifier alloc] initWithString:v10];
    segmentEntityId = v14->_segmentEntityId;
    v14->_segmentEntityId = v15;

    v17 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [v13 segmentId];
    v20 = [v19 copy];
    segmentId = v14->_segmentId;
    v14->_segmentId = v20;

    v22 = [v12 copy];
    data = v14->_data;
    v14->_data = v22;

    v24 = [v11 copy];
    context = v14->_context;
    v14->_context = v24;
  }

  return v14;
}

@end