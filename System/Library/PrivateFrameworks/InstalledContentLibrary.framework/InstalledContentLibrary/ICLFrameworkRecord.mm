@interface ICLFrameworkRecord
- (id)legacyRecordDictionary;
@end

@implementation ICLFrameworkRecord

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = ICLFrameworkRecord;
  v4 = [(ICLBundleRecord *)&v7 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:v4];

  [v3 setObject:@"Framework" forKeyedSubscript:@"ApplicationType"];
  v5 = [v3 copy];

  return v5;
}

@end