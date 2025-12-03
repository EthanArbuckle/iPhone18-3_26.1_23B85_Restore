@interface MADMomentsScheduledAssetsEntry
+ (id)entryWithLocalIdentifier:(id)identifier requestDate:(id)date taskID:(unint64_t)d;
- (MADMomentsScheduledAssetsEntry)initWithLocalIdentifier:(id)identifier requestDate:(id)date taskID:(unint64_t)d;
@end

@implementation MADMomentsScheduledAssetsEntry

- (MADMomentsScheduledAssetsEntry)initWithLocalIdentifier:(id)identifier requestDate:(id)date taskID:(unint64_t)d
{
  identifierCopy = identifier;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MADMomentsScheduledAssetsEntry;
  v11 = [(MADMomentsScheduledAssetsEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localIdentifier, identifier);
    objc_storeStrong(&v12->_requestDate, date);
    v12->_taskID = d;
  }

  return v12;
}

+ (id)entryWithLocalIdentifier:(id)identifier requestDate:(id)date taskID:(unint64_t)d
{
  identifierCopy = identifier;
  dateCopy = date;
  v9 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:identifierCopy requestDate:dateCopy taskID:d];

  return v9;
}

@end