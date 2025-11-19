@interface BMStreamInternalMetadata
- (BMStreamInternalMetadata)initWithSummary:(id)a3 description:(id)a4 eventName:(id)a5 radarComponent:(id)a6 publiclyIndexable:(BOOL)a7;
@end

@implementation BMStreamInternalMetadata

- (BMStreamInternalMetadata)initWithSummary:(id)a3 description:(id)a4 eventName:(id)a5 radarComponent:(id)a6 publiclyIndexable:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BMStreamInternalMetadata;
  v17 = [(BMStreamInternalMetadata *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_summary, a3);
    objc_storeStrong(&v18->_eventName, a5);
    objc_storeStrong(&v18->_radarComponent, a6);
    objc_storeStrong(&v18->_fullDescription, a4);
    v18->_publiclyIndexable = a7;
  }

  return v18;
}

@end