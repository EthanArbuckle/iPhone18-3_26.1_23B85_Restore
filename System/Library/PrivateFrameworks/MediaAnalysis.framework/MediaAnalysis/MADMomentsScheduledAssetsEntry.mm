@interface MADMomentsScheduledAssetsEntry
+ (id)entryWithLocalIdentifier:(id)a3 requestDate:(id)a4 taskID:(unint64_t)a5;
- (MADMomentsScheduledAssetsEntry)initWithLocalIdentifier:(id)a3 requestDate:(id)a4 taskID:(unint64_t)a5;
@end

@implementation MADMomentsScheduledAssetsEntry

- (MADMomentsScheduledAssetsEntry)initWithLocalIdentifier:(id)a3 requestDate:(id)a4 taskID:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MADMomentsScheduledAssetsEntry;
  v11 = [(MADMomentsScheduledAssetsEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localIdentifier, a3);
    objc_storeStrong(&v12->_requestDate, a4);
    v12->_taskID = a5;
  }

  return v12;
}

+ (id)entryWithLocalIdentifier:(id)a3 requestDate:(id)a4 taskID:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:v7 requestDate:v8 taskID:a5];

  return v9;
}

@end