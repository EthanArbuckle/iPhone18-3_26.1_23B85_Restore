@interface MADDeferredProcessingEntry
+ (id)entryWithLocalIdentifier:(id)a3 requestDate:(id)a4;
- (MADDeferredProcessingEntry)initWithLocalIdentifier:(id)a3 requestDate:(id)a4;
@end

@implementation MADDeferredProcessingEntry

- (MADDeferredProcessingEntry)initWithLocalIdentifier:(id)a3 requestDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADDeferredProcessingEntry;
  v9 = [(MADDeferredProcessingEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localIdentifier, a3);
    objc_storeStrong(&v10->_requestDate, a4);
  }

  return v10;
}

+ (id)entryWithLocalIdentifier:(id)a3 requestDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:v6 requestDate:v5];

  return v7;
}

@end