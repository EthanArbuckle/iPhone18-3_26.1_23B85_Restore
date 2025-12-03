@interface HMIVideoAnnotationParserTrack
- (HMIVideoAnnotationParserTrack)initWithEventClass:(Class)class records:(id)records UUID:(id)d;
@end

@implementation HMIVideoAnnotationParserTrack

- (HMIVideoAnnotationParserTrack)initWithEventClass:(Class)class records:(id)records UUID:(id)d
{
  recordsCopy = records;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMIVideoAnnotationParserTrack;
  v11 = [(HMIVideoAnnotationParserTrack *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventClass, class);
    objc_storeStrong(&v12->_records, records);
    objc_storeStrong(&v12->_UUID, d);
  }

  return v12;
}

@end