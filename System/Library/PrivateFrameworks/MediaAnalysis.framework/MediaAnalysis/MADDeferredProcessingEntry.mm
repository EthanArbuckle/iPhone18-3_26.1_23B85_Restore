@interface MADDeferredProcessingEntry
+ (id)entryWithLocalIdentifier:(id)identifier requestDate:(id)date;
- (MADDeferredProcessingEntry)initWithLocalIdentifier:(id)identifier requestDate:(id)date;
@end

@implementation MADDeferredProcessingEntry

- (MADDeferredProcessingEntry)initWithLocalIdentifier:(id)identifier requestDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = MADDeferredProcessingEntry;
  v9 = [(MADDeferredProcessingEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localIdentifier, identifier);
    objc_storeStrong(&v10->_requestDate, date);
  }

  return v10;
}

+ (id)entryWithLocalIdentifier:(id)identifier requestDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:identifierCopy requestDate:dateCopy];

  return v7;
}

@end