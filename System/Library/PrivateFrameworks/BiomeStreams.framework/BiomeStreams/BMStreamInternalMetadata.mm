@interface BMStreamInternalMetadata
- (BMStreamInternalMetadata)initWithSummary:(id)summary description:(id)description eventName:(id)name radarComponent:(id)component publiclyIndexable:(BOOL)indexable;
@end

@implementation BMStreamInternalMetadata

- (BMStreamInternalMetadata)initWithSummary:(id)summary description:(id)description eventName:(id)name radarComponent:(id)component publiclyIndexable:(BOOL)indexable
{
  summaryCopy = summary;
  descriptionCopy = description;
  nameCopy = name;
  componentCopy = component;
  v20.receiver = self;
  v20.super_class = BMStreamInternalMetadata;
  v17 = [(BMStreamInternalMetadata *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_summary, summary);
    objc_storeStrong(&v18->_eventName, name);
    objc_storeStrong(&v18->_radarComponent, component);
    objc_storeStrong(&v18->_fullDescription, description);
    v18->_publiclyIndexable = indexable;
  }

  return v18;
}

@end