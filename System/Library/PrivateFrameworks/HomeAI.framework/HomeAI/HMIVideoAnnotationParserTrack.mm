@interface HMIVideoAnnotationParserTrack
- (HMIVideoAnnotationParserTrack)initWithEventClass:(Class)a3 records:(id)a4 UUID:(id)a5;
@end

@implementation HMIVideoAnnotationParserTrack

- (HMIVideoAnnotationParserTrack)initWithEventClass:(Class)a3 records:(id)a4 UUID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMIVideoAnnotationParserTrack;
  v11 = [(HMIVideoAnnotationParserTrack *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventClass, a3);
    objc_storeStrong(&v12->_records, a4);
    objc_storeStrong(&v12->_UUID, a5);
  }

  return v12;
}

@end