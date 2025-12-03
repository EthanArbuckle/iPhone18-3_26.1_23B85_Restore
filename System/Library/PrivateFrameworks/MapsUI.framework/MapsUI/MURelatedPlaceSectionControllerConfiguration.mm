@interface MURelatedPlaceSectionControllerConfiguration
- (MURelatedPlaceSectionControllerConfiguration)initWithDataSource:(int64_t)source relatedPlaceList:(id)list trailHead:(id)head;
@end

@implementation MURelatedPlaceSectionControllerConfiguration

- (MURelatedPlaceSectionControllerConfiguration)initWithDataSource:(int64_t)source relatedPlaceList:(id)list trailHead:(id)head
{
  listCopy = list;
  headCopy = head;
  v14.receiver = self;
  v14.super_class = MURelatedPlaceSectionControllerConfiguration;
  v11 = [(MURelatedPlaceSectionControllerConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_dataSource = source;
    objc_storeStrong(&v11->_relatedPlaceList, list);
    objc_storeStrong(&v12->_trailHead, head);
  }

  return v12;
}

@end